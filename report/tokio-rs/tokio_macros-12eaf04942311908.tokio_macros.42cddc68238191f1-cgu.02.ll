Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.02?download=true
inline.NumInlined: 1502
inline.NumDeleted: 343
begin_hunk_0_@_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros:bb.a
bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !3902, !noundef !76
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac)
          to label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %bb.k, !noalias !3903

_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !range !118, !alias.scope !3904, !noundef !76
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %.val.i.i.i.i = load i32, ptr %i.ag, align 4, !range !118, !alias.scope !3904, !noundef !76 ; 2 uses
  %.sroa.1016.sroa.0.0.extract.trunc17.i = trunc i32 %.val.i.i.i.i to i8
  %.sroa.1016.sroa.6.0.extract.shift18.i = and i32 %.val.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !range !119, !alias.scope !3905, !noundef !76
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i.i.i = load i32, ptr %i.aj, align 4, !range !118, !alias.scope !3905, !noundef !76
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !alias.scope !3901
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %i.al to i32
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12
  %i.an = load i8, ptr %i.am, align 4, !range !120, !alias.scope !3906, !noundef !76
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !3906
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !3906, !noundef !76 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.as, align 4, !range !118, !alias.scope !3906, !noundef !76
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.ar to i8
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.ar, -256
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ %.val.i.i.i, %bb.g ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.h ], [ %.val.i3.i.i, %bb.i ]
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.i ]
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ %i.ai, %bb.g ], [ undef, %bb.h ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.i ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.ap, %bb.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.an, %bb.i ]
  %.sink.i.i = phi i8 [ %i.x, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !range !118, !alias.scope !3901, !noundef !76
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.045.i ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.013.sroa.0.0.insert.insert.i, ptr %i.at, align 4, !noalias !3903
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.1016.sroa.0.0.insert.insert.i, ptr %.sroa.430.0..sroa_idx.i, align 4, !noalias !3903
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !3903
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %.sink.i.i, ptr %.sroa.632.0..sroa_idx.i, align 4, !noalias !3903
  %i.au = icmp eq i64 %i.s, 0
  br i1 %i.au, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !3903
  unreachable

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.045.i, ptr %i.p, align 8, !noalias !3900
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.l unwind label %bb.j, !noalias !3903

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %.lr.ph.i, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !3900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3900
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.16.i = alloca [3 x i8], align 1          ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !76 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3944
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !3944
  %i.h = load i64, ptr %i.b, align 8, !range !98, !noalias !3944, !noundef !76
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !117, !noalias !3944, !noundef !76 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !3944
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #16, !noalias !3944
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !3944, !nonnull !76, !noundef !76 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3944
  store i64 %i.k, ptr %i.c, align 8, !noalias !3944
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !3944
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %.lr.ph.i
  %.sroa.015.065.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.w, %bb.p ] ; 21 uses
  %.sroa.7.062.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.p ] ; 3 uses
  %.sroa.10.061.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.p ]
  %i.u = add i64 %.sroa.10.061.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.015.065.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 32
  %i.x = add nuw nsw i64 %.sroa.7.062.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3944
  %i.y = load i32, ptr %.sroa.015.065.i, align 8, !range !96, !alias.scope !3946, !noundef !76 ; 2 uses
  switch i32 %i.y, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !range !97, !alias.scope !3947, !noundef !76
  %i.ab = trunc nuw i32 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24
  %.val.i.i.i.i.i = load i8, ptr %i.ad, align 8, !range !3948, !alias.scope !3949, !noundef !76
  %i.ae = invoke noundef nonnull ptr @_RNvXs1_NtCsfr4kGEjnBfC_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i unwind label %bb.r, !noalias !3950

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 28
  %i.ah = load i8, ptr %i.ag, align 4, !range !3948, !alias.scope !3951, !noundef !76
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !3951, !noundef !76
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = invoke noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.r, !noalias !3950

_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i.i.i.a = phi i32 [ 0, %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.af, align 4, !range !118, !alias.scope !3952, !noundef !76
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !3952
  %i.am = inttoptr i64 %.val1.i.i.i.i.i.i.i to ptr
  %.sroa.6.sroa.0.0.extract.trunc.i.i.i = trunc i32 %storemerge.i.i.i.i.i.i.a to i8
  %i.an = zext i32 %.val2.i.i.i.i.i.i.i to i64
  %i.ao = shl nuw i64 %i.an, 32
  %2 = and i32 %storemerge.i.i.i.i.i.i.a, -256
  br label %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.f
  %.sroa.6.sroa.3.sroa.0.0.i.i.i = phi i32 [ %2, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.f ]
  %.sroa.6.sroa.0.0.i.i.i = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc.i.i.i, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val.i.i.i.i.i, %bb.f ]
  %.sroa.8.0.i.i.i = phi i8 [ %i.ah, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.f ]
  %.sroa.3.0.i.i.i = phi ptr [ %i.am, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.ae, %bb.f ]
  %.sroa.518.4.insert.insert.i = phi i64 [ %i.ao, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 1, %bb.f ]
  %i.ap = inttoptr i64 %.sroa.518.4.insert.insert.i to ptr
  %i.aq = ptrtoint ptr %.sroa.3.0.i.i.i to i64
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24
  %i.at = load i8, ptr %i.as, align 8, !range !79, !alias.scope !3953, !noundef !76 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.at, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %.noexc13.i unwind label %bb.r, !noalias !3950 ; 2 uses

.noexc13.i:                                       ; preds = %bb.j
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.au, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %.sroa.5.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.aw to i8
  %.sroa.5.sroa.4.0.extract.shift.i.i.i = and i64 %i.aw, -256
  br label %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !3954
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !range !119, !alias.scope !3954, !noundef !76
  %i.az = inttoptr i64 %.val1.i.i.i.i.i.i to ptr
  br label %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.k, %.noexc13.i
  %.sroa.5.sroa.4.sroa.0.0.i.i.i = phi i64 [ 0, %bb.k ], [ %.sroa.5.sroa.4.0.extract.shift.i.i.i, %.noexc13.i ]
  %.sroa.5.sroa.0.0.i.i.i = phi i8 [ %i.ay, %bb.k ], [ %.sroa.5.sroa.0.0.extract.trunc.i.i.i, %.noexc13.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.av, %.noexc13.i ]
  %.sroa.5.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.5.sroa.0.0.i.i.i to i64
  %.sroa.5.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.5.sroa.4.sroa.0.0.i.i.i, %.sroa.5.sroa.0.0.insert.ext.i.i.i
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !range !3955, !alias.scope !3956, !noundef !76
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 12
  %.val.i.i.i = load i8, ptr %i.bc, align 4, !range !119, !alias.scope !3956, !noundef !76
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8
  %.val1.i.i.i = load i32, ptr %i.bd, align 8, !alias.scope !3956, !noundef !76
  %.sroa.518.0.insert.ext.i = zext i32 %.val1.i.i.i to i64
  %.sroa.518.4.insert.ext28.i = zext nneg i8 %.val.i.i.i to i64
  %.sroa.518.4.insert.shift29.i = shl nuw nsw i64 %.sroa.518.4.insert.ext28.i, 32
  %.sroa.518.4.insert.insert31.i = or disjoint i64 %.sroa.518.4.insert.shift29.i, %.sroa.518.0.insert.ext.i
  %i.be = inttoptr i64 %.sroa.518.4.insert.insert31.i to ptr
  br label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !82, !alias.scope !3957, !noundef !76
  %.not.i.i2.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i2.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i unwind label %bb.r, !noalias !3950

._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i: ; preds = %bb.n
  %.sroa.518.8.copyload.pre.i = load ptr, ptr %i.a, align 8, !noalias !3958
  %.sroa.13.8.copyload.pre.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3958
  %.sroa.15.8.copyload.pre.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !3958
  br label %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 28
  %i.bj = load i8, ptr %i.bi, align 4, !range !120, !alias.scope !3959, !noundef !76 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 29
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !3959
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !3959, !noundef !76 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bh, align 8, !alias.scope !3959
  store <2 x i32> %i.bo, ptr %i.t, align 8, !noalias !3960
  store i32 %i.bn, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3960
  store i8 %i.bj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !3960
  store i8 %i.bl, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !noalias !3960
  store i64 -1, ptr %i.a, align 8, !noalias !3960
  br label %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.o, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i
  %.sroa.15.8.copyload.i = phi i8 [ %.sroa.15.8.copyload.pre.i, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ %i.bj, %bb.o ]
  %.sroa.13.8.copyload.i = phi i32 [ %.sroa.13.8.copyload.pre.i, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ %i.bn, %bb.o ] ; 2 uses
  %.sroa.518.8.copyload.i = phi ptr [ %.sroa.518.8.copyload.pre.i, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ inttoptr (i64 -1 to ptr), %bb.o ]
  %.sroa.11.8.copyload.i = load i64, ptr %i.t, align 8, !noalias !3958
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.13.8.copyload.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %.sroa.13.8.copyload.i, -256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i.i.i, i64 3, i1 false), !noalias !3958
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %bb.l, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %.sroa.518.0.i = phi ptr [ %i.ap, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0.0.i.i.i, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.be, %bb.l ], [ %.sroa.518.8.copyload.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.13.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.6.sroa.3.sroa.0.0.i.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.l ], [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.6.sroa.0.0.i.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.at, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.15.0.i = phi i8 [ %.sroa.8.0.i.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.15.8.copyload.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.11.0.i = phi i64 [ %i.aq, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.0.0.insert.insert.i.i.i, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.11.8.copyload.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.417.0.i = phi i32 [ undef, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.bb, %bb.l ], [ undef, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3944
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.062.i ; 7 uses
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or i32 %.sroa.13.sroa.6.sroa.0.0.i, %.sroa.13.sroa.0.0.insert.ext.i
  %.sroa.949.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.949.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.i, i64 3, i1 false), !noalias !3950
  store i32 %i.y, ptr %i.bp, align 8, !noalias !3950
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %.sroa.417.0.i, ptr %.sroa.444.0..sroa_idx.i, align 4, !noalias !3950
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %.sroa.518.0.i, ptr %.sroa.545.0..sroa_idx.i, align 8, !noalias !3950
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %.sroa.11.0.i, ptr %.sroa.646.0..sroa_idx.i, align 8, !noalias !3950
  %.sroa.747.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.747.0..sroa_idx.i, align 8, !noalias !3950
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  store i8 %.sroa.15.0.i, ptr %.sroa.848.0..sroa_idx.i, align 4, !noalias !3950
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  %i.bq = icmp eq i64 %i.u, 0
  br i1 %i.bq, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.c

bb.q:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !3950
  unreachable

bb.r:                                             ; preds = %bb.n, %bb.j, %bb.h, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.062.i, ptr %i.q, align 8, !noalias !3944
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.s unwind label %bb.q, !noalias !3950

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c, %bb.p, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !3944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3944
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !76 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !84, !alias.scope !3979, !noundef !76
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !3980, !noundef !76
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !84, !alias.scope !3981, !noundef !76
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !3982, !noundef !76
  %i.x = icmp eq i32 %i.w, 0
end_hunk_0
