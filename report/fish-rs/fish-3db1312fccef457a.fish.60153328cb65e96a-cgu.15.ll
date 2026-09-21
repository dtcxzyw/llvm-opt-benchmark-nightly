Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEE9from_iterCs8frGy5WneL6_4fish:bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6725
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6725 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.a) #35
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.f = icmp samesign ule i64 %spec.select.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i64 %1, %2
  br i1 %i.g, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %i.h = sub nuw i64 %2, %1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, -4                       ; 5 uses
  %i.i = add i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x i64> %vec.ind, ptr %i.j, align 8, !noalias !6726
  store <2 x i64> %step.add, ptr %i.k, align 8, !noalias !6726
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !6723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.010.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %i.p, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  %i.n = add nuw i64 %.sroa.0.010.i.i.i.i, 1      ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i, i64 %i.m
  store i64 %.sroa.0.010.i.i.i.i, ptr %i.o, align 8, !noalias !6726
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !6724

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %.val6.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ %n.vec, %middle.block ], [ %i.p, %.lr.ph.i.i.i.i ]
  store i64 %.sroa.4.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB1F_3ops5range5RangejEEE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 4 uses
  %i.c = shl i64 %spec.select.i.i, 3              ; 4 uses
  %i.d = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  %.not.i.i = icmp ugt i64 %i.c, 9223372036854775800
  %or.cond.i.i = or i1 %i.d, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6737
  %i.f = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6737 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.c) #35
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.h = icmp samesign ule i64 %spec.select.i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6738
  store ptr %i.j, ptr %i.a, align 8, !noalias !6739
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6739
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !6739
  invoke void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1p_8for_each4calljNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2C_3VecjE14extend_trustedBM_E0E0ECs8frGy5WneL6_4fish(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.l = icmp eq i64 %.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.m = shl nuw i64 %.val, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6740
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range5RangejEEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6746)
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6747
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6747 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #35, !noalias !6748
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.sroa.014.028.i = phi ptr [ %i.p, %bb.f ], [ %i.c, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.7.027.i = phi i64 [ %i.o, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.026.i = phi i64 [ %i.j, %bb.f ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.sroa.10.026.i, -1          ; 2 uses
  %i.k = icmp eq ptr %.sroa.014.028.i, %i.i
  br i1 %i.k, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.028.i, align 8, !alias.scope !6746, !noalias !6749, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.014.028.i, i64 8
  %.val13.i = load ptr, ptr %i.l, align 8, !alias.scope !6746, !noalias !6749 ; 2 uses
  %i.m = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !6748
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.027.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.7.027.i ; 2 uses
  store ptr %.val12.i, ptr %i.q, align 8, !noalias !6748
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.val13.i, ptr %i.r, align 8, !noalias !6748
  %i.s = icmp eq i64 %i.j, 0
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit, label %.lr.ph.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB16_.exit: ; preds = %bb.f, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %bb.f ]
  store i64 %i.d, ptr %0, align 8, !noalias !6746
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6746
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6746
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6755)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6756
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6756 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #35, !noalias !6757
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i, %.lr.ph.preheader.i
  %.sroa.013.027.i = phi ptr [ %i.o, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ], [ %i.c, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.026.i = phi i64 [ %i.n, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.025.i = phi i64 [ %i.j, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.sroa.10.025.i, -1          ; 2 uses
  %i.k = icmp eq ptr %.sroa.013.027.i, %i.i
  br i1 %i.k, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.013.027.i, align 8, !alias.scope !6755, !noalias !6758, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !6757
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i: ; preds = %bb.d
  %i.n = add nuw nsw i64 %.sroa.7.026.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.7.026.i
  store ptr %.val12.i, ptr %i.p, align 8, !noalias !6757
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit, label %.lr.ph.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB15_.exit: ; preds = %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit.i ]
  store i64 %i.d, ptr %0, align 8, !noalias !6755
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6755
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6755
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6787)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6788
  %i.f = mul nuw nsw i64 %i.e, 104                ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !6788
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !6788
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCs8frGy5WneL6_4fish13editable_line4EditNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6789
  %i.j = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !6789 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #35, !noalias !6788
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !6788
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !6788
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.sroa.013.077.i = phi ptr [ %i.r, %bb.n ], [ %i.d, %.lr.ph.preheader.i ] ; 12 uses
  %.sroa.7.076.i = phi i64 [ %i.s, %bb.n ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.075.i = phi i64 [ %i.o, %bb.n ], [ %i.e, %.lr.ph.preheader.i ]
  %i.o = add nsw i64 %.sroa.10.075.i, -1          ; 2 uses
  %i.p = icmp eq ptr %.sroa.013.077.i, %i.n
  br i1 %i.p, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCs8frGy5WneL6_4fish13editable_line4EditNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.e

bb.d:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 104
  %i.s = add nuw nsw i64 %.sroa.7.076.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 80
  %i.u = load i64, ptr %.sroa.013.077.i, align 8, !range !26, !alias.scope !6791, !noalias !6792, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6791, !noalias !6792
  %i.x = load <2 x i64>, ptr %i.t, align 8, !alias.scope !6791, !noalias !6792
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 96
  %.val6.i.i = load i64, ptr %i.y, align 8, !alias.scope !6793, !noalias !6792, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6794)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !6795, !noalias !6796, !nonnull !16, !noundef !16
  %i.ac = load i64, ptr %i.z, align 8, !alias.scope !6795, !noalias !6796, !noundef !16 ; 4 uses
  %i.ad = shl nuw i64 %i.ac, 2                    ; 4 uses
  %i.ae = icmp eq i64 %i.ac, 0                    ; 2 uses
  br i1 %i.ae, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6797
  %i.af = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !6797 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ad) #35
          to label %.noexc12.i unwind label %bb.d, !noalias !6788

.noexc12.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull readonly align 4 %i.ab, i64 %i.ad, i1 false), !noalias !6798
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.h, %bb.e
  %.sroa.515.0.i.i = phi ptr [ %i.af, %bb.h ], [ inttoptr (i64 4 to ptr), %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !6800, !noalias !6801, !nonnull !16, !noundef !16
  %i.ak = load i64, ptr %i.ah, align 8, !alias.scope !6800, !noalias !6801, !noundef !16 ; 4 uses
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 3 uses
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !6802
  %i.an = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.al, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !6802 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.al) #35
          to label %.noexc.i.i unwind label %bb.l, !noalias !6803

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull readonly align 4 %i.aj, i64 %i.al, i1 false), !noalias !6804
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ae, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.515.0.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !6805
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.517.0.i.i = phi ptr [ %i.an, %bb.k ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i ]
  %i.aq = trunc nuw i64 %i.u to i1
  %.sroa.5.0.i.i = select i1 %i.aq, i64 %i.w, i64 undef
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !26, !alias.scope !6791, !noalias !6792, !noundef !16 ; 2 uses
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.077.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !6791, !noalias !6792
  %.sroa.52.0.i.i = select i1 %i.at, i64 %i.av, i64 undef
  %i.aw = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %.sroa.7.076.i ; 12 uses
  store i64 %i.u, ptr %i.aw, align 8, !noalias !6788
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.as, ptr %.sroa.547.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %.sroa.52.0.i.i, ptr %.sroa.648.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.749.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.ac, ptr %.sroa.749.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.850.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %.sroa.515.0.i.i, ptr %.sroa.850.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.951.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i64 %i.ac, ptr %.sroa.951.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.1052.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i64 %i.ak, ptr %.sroa.1052.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.1153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %.sroa.517.0.i.i, ptr %.sroa.1153.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.1254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store i64 %i.ak, ptr %.sroa.1254.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.1355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store <2 x i64> %i.x, ptr %.sroa.1355.0..sroa_idx.i, align 8, !noalias !6788
  %.sroa.1557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  store i64 %.val6.i.i, ptr %.sroa.1557.0..sroa_idx.i, align 8, !noalias !6788
  %i.ax = icmp eq i64 %i.o, 0
  br i1 %i.ax, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCs8frGy5WneL6_4fish13editable_line4EditNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.ap, %bb.m ], [ %i.ap, %bb.l ]
  store i64 %.sroa.7.076.i, ptr %i.m, align 8, !noalias !6788
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #33, !noalias !6788
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCs8frGy5WneL6_4fish13editable_line4EditNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.n, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i
  %i.ay = phi ptr [ %i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i ], [ %i.m, %bb.n ], [ %i.m, %.lr.ph.i ]
  store i64 %i.e, ptr %i.ay, align 8, !noalias !6788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6788
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6811)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !6811, !noalias !6812
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_:bb.a
  br i1 %i.aw, label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit15.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7033
  %i.ax = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.av, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !7033 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.av) #35
          to label %.noexc14.i.i unwind label %bb.u, !noalias !7021

.noexc14.i.i:                                     ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr nonnull readonly align 4 %i.at, i64 %i.av, i1 false), !noalias !7034
  br label %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit15.i.i

_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit15.i.i: ; preds = %bb.t, %bb.q, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.5.sroa.4.0.i.i = phi i64 [ undef, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i ], [ %i.au, %bb.t ], [ 0, %bb.q ]
  %.sroa.5.sroa.0.0.i.i = phi ptr [ undef, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i ], [ %i.ax, %bb.t ], [ inttoptr (i64 4 to ptr), %bb.q ]
  %.sroa.0.0.i12.i = phi i64 [ -1, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i.i ], [ %i.au, %bb.t ], [ 0, %bb.q ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.0107.i, i64 108
  %i.ba = load i8, ptr %i.az, align 4, !range !17, !alias.scope !7024, !noalias !7022, !noundef !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.0107.i, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !7024, !noalias !7022, !noundef !16 ; 3 uses
  %.not8.i.i = icmp eq ptr %i.bc, null
  br i1 %.not8.i.i, label %bb.y, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.525.0.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !7035
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i

bb.w:                                             ; preds = %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit15.i.i
  %i.be = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8, !noalias !7021
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.w, %_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit15.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7021
  %i.bg = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %.sroa.7.0106.i ; 13 uses
  store i64 %i.x, ptr %i.bg, align 8, !noalias !7013
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.6.0.i.i, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.x, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.i, i64 24, i1 false), !noalias !7013
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i64 %i.aj, ptr %.sroa.752.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store ptr %.sroa.525.0.i.i, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  store i64 %i.aj, ptr %.sroa.954.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.1055.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i64 %.sroa.0.0.i12.i, ptr %.sroa.1055.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.1156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store ptr %.sroa.5.sroa.0.0.i.i, ptr %.sroa.1156.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.1257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %.sroa.5.sroa.4.0.i.i, ptr %.sroa.1257.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.1358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  store ptr %i.bc, ptr %.sroa.1358.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.1459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store i32 %i.af, ptr %.sroa.1459.0..sroa_idx.i, align 8, !noalias !7013
  %.sroa.1560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 108
  store i8 %i.ba, ptr %.sroa.1560.0..sroa_idx.i, align 4, !noalias !7013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651.i)
  %i.bh = icmp eq i64 %i.p, 0
  br i1 %i.bh, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit, label %.lr.ph.i

bb.z:                                             ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !7013
  unreachable

bb.aa:                                            ; preds = %bb.j, %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn.pn.i.i, %bb.j ], [ %.pn.pn.i.i, %bb.i ]
  store i64 %.sroa.7.0106.i, ptr %i.n, align 8, !noalias !7013
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #33
          to label %bb.ab unwind label %bb.z, !noalias !7013

bb.ab:                                            ; preds = %bb.aa
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_.exit: ; preds = %.lr.ph.i, %bb.y, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i
  %i.bj = phi ptr [ %i.j, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i ], [ %i.n, %bb.y ], [ %i.n, %.lr.ph.i ]
  store i64 %i.f, ptr %i.bj, align 8, !noalias !7013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !7012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7013
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7041, !noalias !7042
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !alias.scope !7041, !noalias !7042
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !7041, !noalias !7042
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBS_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7043
  %i.i = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7043 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.e) #35, !noalias !7044
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !7041, !noalias !7042
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !7041, !noalias !7042
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !7041
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !7041, !noalias !7042
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBS_.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBS_.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7050)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7051
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !7051 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #35, !noalias !7052
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.013.027.i = phi ptr [ %i.o, %_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.c, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.026.i = phi i64 [ %i.n, %_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.025.i = phi i64 [ %i.j, %_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.d, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.sroa.10.025.i, -1          ; 2 uses
  %i.k = icmp eq ptr %.sroa.013.027.i, %i.i
  br i1 %i.k, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.013.027.i, align 8, !alias.scope !7050, !noalias !7053, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !7052
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.d
  %i.n = add nuw nsw i64 %.sroa.7.026.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.7.026.i
  store ptr %.val12.i, ptr %i.p, align 8, !noalias !7052
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %.lr.ph.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit: ; preds = %_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %.lr.ph.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.lr.ph.i ], [ %i.g, %_RNvXsh_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRefNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  store i64 %i.d, ptr %0, align 8, !noalias !7050
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !7050
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !7050
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeccENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7059)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7059, !noalias !7060
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !alias.scope !7059, !noalias !7060
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !7059, !noalias !7060
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_incNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7061
  %i.i = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !7061 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #35, !noalias !7062
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !7059, !noalias !7060
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !7059, !noalias !7060
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull readonly align 4 %i.c, i64 %i.e, i1 false), !noalias !7059
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !7059, !noalias !7060
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_incNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_incNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7068)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7068, !noalias !7069
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !7068, !noalias !7069
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !7068, !noalias !7069
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7070
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7070 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #35, !noalias !7071
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !7068, !noalias !7069
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !7068, !noalias !7069
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !7068
  store i64 %i.d, ptr %i.k, align 8, !alias.scope !7068, !noalias !7069
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7077)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7077, !noalias !7078
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !7077, !noalias !7078
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !7077, !noalias !7078
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7079
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !7079 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #35, !noalias !7080
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !7077, !noalias !7078
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !7077, !noalias !7078
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull readonly align 8 %i.c, i64 %i.e, i1 false), !noalias !7077
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !7077, !noalias !7078
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7086)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7086, !noalias !7087
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !alias.scope !7086, !noalias !7087
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !7086, !noalias !7087
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7088
  %i.i = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !7088 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #35, !noalias !7089
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !7086, !noalias !7087
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !7086, !noalias !7087
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull readonly align 4 %i.c, i64 %i.e, i1 false), !noalias !7086
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !7086, !noalias !7087
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = load i64, ptr %i.a, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7095)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i, label %bb.b

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7095, !noalias !7096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !alias.scope !7095, !noalias !7096
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !7095, !noalias !7096
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
end_hunk_1
