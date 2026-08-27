Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiEECs8frGy5WneL6_4fish:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.g = load i64, ptr %1, align 8, !alias.scope !341, !noalias !342, !noundef !7 ; 7 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !343, !noalias !344, !noundef !7 ; 6 uses
  %.not.i = icmp sgt i64 %i.g, %i.h
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.i = sub i64 %i.h, %i.g                       ; 3 uses
  %.not = icmp eq i64 %i.i, -1
  %i.j = add nuw i64 %i.i, 1
  br i1 %.not, label %bb.e, label %bb.c, !prof !345

bb.c:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !346, !noundef !7 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !287, !alias.scope !346, !noundef !7
  %i.n = sub i64 %i.m, %i.l
  %.not27 = icmp ult i64 %i.i, %i.n
  br i1 %.not27, label %.preheader.i.i.i, label %bb.d, !prof !349

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 8)
  br label %.preheader.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !7
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.c
  %.in26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %.in26, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.r = load i64, ptr %i.k, align 8, !noundef !7 ; 4 uses
  %i.s = icmp slt i64 %i.g, %i.h
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %._crit_edge16.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %i.t = sub i64 %i.h, %i.g                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.t, -4                       ; 4 uses
  %i.u = add i64 %i.r, %n.vec                     ; 2 uses
  %i.v = add i64 %i.g, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.w = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %vec.ind, ptr %i.x, align 8, !noalias !350
  store <2 x i64> %step.add, ptr %i.y, align 8, !noalias !350
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge16.i.i.i, label %.lr.ph.i.i.i.preheader29

.lr.ph.i.i.i.preheader29:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.ph30 = phi i64 [ %i.g, %.lr.ph.i.i.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge16.i.i.i:                              ; preds = %.lr.ph.i.i.i, %middle.block, %.preheader.i.i.i
  %.sroa.5.0.i.i = phi i64 [ %i.r, %.preheader.i.i.i ], [ %i.u, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.5.0.i.i
  store i64 %i.h, ptr %i.aa, align 8, !noalias !369
  %i.ab = add i64 %.sroa.5.0.i.i, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader29, %.lr.ph.i.i.i
  %i.ac = phi i64 [ %i.ag, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader29 ] ; 2 uses
  %i.ad = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.ph30, %.lr.ph.i.i.i.preheader29 ] ; 2 uses
  %i.ae = add nsw i64 %i.ad, 1                    ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ac
  store i64 %i.ad, ptr %i.af, align 8, !noalias !350
  %i.ag = add i64 %i.ac, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond.not.i.i.i, label %._crit_edge16.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !376

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1S_3VeciE14extend_trustedB3_E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18, %._crit_edge16.i.i.i
  %i.ah = phi ptr [ %i.k, %._crit_edge16.i.i.i ], [ %i.o, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread ], [ %i.d, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18 ]
  %storemerge.i.i = phi i64 [ %i.ab, %._crit_edge16.i.i.i ], [ %i.p, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread ], [ %i.e, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit.thread18 ]
  store i64 %storemerge.i.i, ptr %i.ah, align 8, !noalias !377
  ret void

bb.e:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range14RangeInclusiveiEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !alias.scope !378, !noalias !383, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.f = load i64, ptr %1, align 8, !alias.scope !391, !noalias !392, !noundef !7 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !393, !noalias !394, !noundef !7 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.f, %i.g
  br i1 %.not.i.i, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit

.thread:                                          ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.i = sub i64 %i.g, %i.f                       ; 3 uses
  %.not = icmp eq i64 %i.i, -1
  %i.j = add nuw i64 %i.i, 1
  br i1 %.not, label %bb.e, label %bb.c, !prof !395

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !396, !noundef !7 ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !287, !alias.scope !396, !noundef !7
  %i.n = sub i64 %i.m, %i.l
  %.not11 = icmp ult i64 %i.i, %i.n
  br i1 %.not11, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit, label %bb.d, !prof !349

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.j, i64 noundef 8, i64 noundef 8)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VeciE7reserveCs8frGy5WneL6_4fish.exit: ; preds = %.thread, %bb.c, %bb.d
  %i.o = phi ptr [ %i.h, %.thread ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = load i64, ptr %i.o, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  store ptr %i.o, ptr %i.a, align 8, !noalias !403
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !403
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.54.0..sroa_idx, align 8, !noalias !403
  call void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range14RangeInclusiveiEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4calliNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2M_3VeciE14extend_trustedBM_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  ret void

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusiveiEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.a = load i64, ptr %0, align 8, !range !411, !alias.scope !412, !noundef !7
  switch i64 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i [
    i64 2, label %bb.b
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !416 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !416, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !417
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !412 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !412, !nonnull !7, !noundef !7
  %i.h = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !420
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.a = load i64, ptr %0, align 8, !range !411, !alias.scope !429, !noundef !7
  switch i64 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i [
    i64 2, label %bb.b
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !433 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !433, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !434
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.e, align 8, !alias.scope !429 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !429, !nonnull !7, !noundef !7
  %i.h = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !437
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.j = load i64, ptr %i.i, align 8, !range !411, !alias.scope !442, !noundef !7
  switch i64 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1 [
    i64 2, label %bb.h
    i64 3, label %bb.f
  ]

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.1 = load i64, ptr %i.k, align 8, !alias.scope !442 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.1, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.1 = load ptr, ptr %i.m, align 8, !alias.scope !442, !nonnull !7, !noundef !7
  %i.n = shl nuw i64 %.val.i.i.1, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.1, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !443
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %.val.i.i.i.1 = load i64, ptr %i.o, align 8, !alias.scope !446 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.1, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i.1 = load ptr, ptr %i.q, align 8, !alias.scope !446, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.1, i64 noundef %.val.i.i.i.1, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !447
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i.1: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs8frGy5WneL6_4fish6reader6reader10ReaderDataEEEB1w_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 1544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !451 ; 2 uses
  %i.b = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 1552
  %.val5.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !451, !nonnull !7, !noundef !7
  %i.d = shl nuw i64 %.val4.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !454
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 1568
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !451 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 1576
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !451, !nonnull !7, !noundef !7
  %i.h = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !457
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line12EditableLineEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %.0.val)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 184
  %.val23.i.i = load i64, ptr %i.i, align 8, !alias.scope !460 ; 2 uses
  %i.j = icmp eq i64 %.val23.i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 192
  %.val24.i.i = load ptr, ptr %i.k, align 8, !alias.scope !460, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %.val23.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !463
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader12ReaderConfigEBH_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  %.val25.i.i = load i64, ptr %i.m, align 8, !alias.scope !460 ; 2 uses
  %i.n = icmp eq i64 %.val25.i.i, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 216
  %.val26.i.i = load ptr, ptr %i.o, align 8, !alias.scope !460, !nonnull !7, !noundef !7
  %i.p = shl nuw i64 %.val25.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !466
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i14.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %.val19.i.i = load i64, ptr %i.q, align 8, !alias.scope !460 ; 2 uses
  %i.r = icmp eq i64 %.val19.i.i, 0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 240
  %.val20.i.i = load ptr, ptr %i.s, align 8, !alias.scope !460, !nonnull !7, !noundef !7
  %i.t = shl nuw i64 %.val19.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !469
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit29.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %.val15.i.i = load i64, ptr %i.u, align 8, !alias.scope !460 ; 2 uses
  %i.v = icmp eq i64 %.val15.i.i, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 264
  %.val16.i.i = load ptr, ptr %i.w, align 8, !alias.scope !460, !nonnull !7, !noundef !7
  %i.x = shl nuw i64 %.val15.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !472
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i: ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit31.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 280
  %.val11.i.i = load i64, ptr %i.y, align 8, !alias.scope !460 ; 2 uses
  %i.z = icmp eq i64 %.val11.i.i, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  %.val12.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !460, !nonnull !7, !noundef !7
  %i.ab = shl nuw i64 %.val11.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !475
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i: ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 304
  %.val.i15.i = load i64, ptr %i.ac, align 8, !alias.scope !460 ; 2 uses
  %i.ad = icmp eq i64 %.val.i15.i, 0
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 312
  %.val8.i16.i = load ptr, ptr %i.ae, align 8, !alias.scope !460, !nonnull !7, !noundef !7
  %i.af = shl nuw i64 %.val.i15.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i16.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !478
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 368
  %.val61.i.i = load i64, ptr %i.ag, align 8, !alias.scope !481 ; 2 uses
  %i.ah = icmp eq i64 %.val61.i.i, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader14AutosuggestionEBH_.exit67.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 376
  %.val62.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !481, !nonnull !7, !noundef !7
  %i.aj = shl nuw i64 %.val61.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !482
end_hunk_0
