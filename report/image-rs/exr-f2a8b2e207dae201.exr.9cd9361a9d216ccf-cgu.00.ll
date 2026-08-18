inline.NumInlined: 482
inline.NumDeleted: 291
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAbj3_E11extend_withCsdsTQD3x2eOp_3exr:bb.a
  %.sroa.01.027 = phi ptr [ %i.j, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store i24 %2, ptr %.sroa.01.027, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 3
  store i24 %2, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 6
  store i24 %2, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 9
  store i24 %2, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 12
  store i24 %2, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 15
  store i24 %2, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 18
  store i24 %2, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 21
  store i24 %2, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.027, i64 24 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !123, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !13, !alias.scope !123, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 2)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 4611686018427387904
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.f ; 6 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit
  %i.l = add i64 %1, -1                           ; 5 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %1, 17
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 5 uses
  %i.n = shl i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %i.j, i64 %i.n     ; 2 uses
  %i.p = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2
  store <8 x i16> %broadcast.splat, ptr %i.r, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.l, -4                     ; 4 uses
  %i.t = shl i64 %n.vec32, 1
  %i.u = getelementptr i8, ptr %i.j, i64 %i.t     ; 2 uses
  %i.v = or disjoint i64 %n.vec32, 1
  %broadcast.splatinsert33 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat34 = shufflevector <4 x i16> %broadcast.splatinsert33, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.w = shl i64 %index35, 1
  %next.gep36 = getelementptr i8, ptr %i.j, i64 %i.w
  store <4 x i16> %broadcast.splat34, ptr %next.gep36, align 2
  %index.next37 = add nuw i64 %index35, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %i.l, %n.vec32
  br i1 %cmp.n38, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.022.ph = phi ptr [ %i.j, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.sroa.03.021.ph = phi i64 [ 1, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.ac, %.lr.ph ]
  %i.y = add i64 %i.f, %1
  %i.z = add i64 %i.y, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa29 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa28 = phi i64 [ %i.z, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i16 %2, ptr %.sroa.0.0.lcssa29, align 2
  %i.aa = add i64 %storemerge.lcssa28, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge19 = phi i64 [ %i.aa, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge19, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.022 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.0.022.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.03.021 = phi i64 [ %i.ab, %.lr.ph ], [ %.sroa.03.021.ph, %.lr.ph.preheader ]
  %i.ab = add nuw i64 %.sroa.03.021, 1            ; 2 uses
  store i16 %2, ptr %.sroa.0.022, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 2 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !128
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE11extend_withBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.9 = alloca [23 x i8], align 1            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !129, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !129, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge unwind label %bb.c

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit_crit_edge ], [ %i.c, %bb.a ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.m = icmp ugt i64 %1, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = add i64 %i.h, %1
  %i.t = add i64 %i.s, -1
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.k, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %.sroa.0.031 = phi ptr [ %i.l, %.lr.ph ], [ %i.aj, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 5 uses
  %.sroa.03.030 = phi i64 [ 1, %.lr.ph ], [ %i.ai, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %storemerge29 = phi i64 [ %i.h, %.lr.ph ], [ %i.ak, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 2 uses
  %.sroa.722.028 = phi i8 [ undef, %.lr.ph ], [ %.sroa.722.1, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %.sroa.6.027 = phi i32 [ undef, %.lr.ph ], [ %.sroa.6.1, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.u = load i32, ptr %2, align 8, !range !135, !alias.scope !132, !noalias !136, !noundef !4 ; 2 uses
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.r, align 4, !alias.scope !132, !noalias !136, !noundef !4
  %i.w = load i8, ptr %i.n, align 8, !alias.scope !132, !noalias !136, !noundef !4
  br label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.x = load i64, ptr %i.o, align 8, !alias.scope !141, !noalias !144, !noundef !4 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 2
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !141, !noalias !144, !noundef !4 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.p, align 8, !alias.scope !141, !noalias !144, !noundef !4
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp eq ptr %i.z, null
  call void @llvm.assume(i1 %i.ab)
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i: ; preds = %bb.h, %bb.g
  %.sink13.i.i.i = phi ptr [ %i.z, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  %.sink12.i.i.i = phi i64 [ %i.aa, %bb.g ], [ %i.x, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink13.i.i.i) ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sink13.i.i.i, i64 %.sink12.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  store i64 0, ptr %i.q, align 8, !noalias !147
  store ptr null, ptr %i.a, align 8, !noalias !147
  invoke void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAmj2_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendmE6extendINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4ItermEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %.sink13.i.i.i, ptr noundef nonnull %i.ac)
          to label %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i unwind label %bb.i, !noalias !150

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.j, !noalias !150

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !150
  unreachable

_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i
  %.sroa.722.8.copyload = load i8, ptr %i.a, align 8, !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..sroa_idx, i64 23, i1 false), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  br label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %._crit_edge
  store i64 %i.h, ptr %i.b, align 8
  %i.af = load i32, ptr %2, align 8, !range !135, !alias.scope !151, !noundef !4
  %switch.i = icmp samesign ult i32 %i.af, 2
  br i1 %switch.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit: ; preds = %bb.l, %bb.k, %._crit_edge.thread
  ret void

._crit_edge.thread:                               ; preds = %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %._crit_edge
  %.sroa.0.0.lcssa42 = phi ptr [ %i.l, %._crit_edge ], [ %i.aj, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %storemerge.lcssa41 = phi i64 [ %i.h, %._crit_edge ], [ %i.t, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa42, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ah = add i64 %storemerge.lcssa41, 1
  store i64 %i.ah, ptr %i.b, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit

.body:                                            ; preds = %bb.i
  store i64 %storemerge29, ptr %i.b, align 8
  br label %bb.n

_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i, %bb.e, %bb.d
  %.sroa.6.1 = phi i32 [ %.sroa.6.027, %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i ], [ %i.v, %bb.e ], [ %.sroa.6.027, %bb.d ] ; 2 uses
  %.sroa.722.1 = phi i8 [ %.sroa.722.8.copyload, %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i ], [ %i.w, %bb.e ], [ %.sroa.722.028, %bb.d ] ; 2 uses
  %i.ai = add nuw i64 %.sroa.03.030, 1            ; 2 uses
  store i32 %i.u, ptr %.sroa.0.031, align 8
  %.sroa.6.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 4
  store i32 %.sroa.6.1, ptr %.sroa.6.0..sroa.0.0.sroa_idx, align 4
  %.sroa.722.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8
  store i8 %.sroa.722.1, ptr %.sroa.722.0..sroa.0.0.sroa_idx, align 8
  %.sroa.9.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.0..sroa.0.0.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 32 ; 2 uses
  %i.ak = add i64 %storemerge29, 1
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d

bb.m:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

.noexc15:                                         ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.c, %.body
  %.pn = phi { ptr, i32 } [ %i.ad, %.body ], [ %i.g, %bb.c ]
  %i.am = load i32, ptr %2, align 8, !range !135, !alias.scope !154, !noundef !4
  %switch.i14 = icmp samesign ult i32 %i.am, 2
  br i1 %switch.i14, label %.noexc15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.noexc15 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecbE11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !157, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !157, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.l = icmp ugt i64 %1, 1
  br i1 %i.l, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit
  %i.m = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.a, i64 %i.m, i1 false)
  %i.n = add i64 %i.g, %1
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.o
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.o, %._crit_edge.thread ], [ %i.g, %._crit_edge ]
  store i8 %i.a, ptr %.sroa.0.0.lcssa28, align 1
  %i.p = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.p, %bb.c ], [ %i.g, %._crit_edge ]
  store i64 %storemerge18, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, float noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !160, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !13, !alias.scope !160, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4
  store <4 x float> %broadcast.splat, ptr %i.q, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.021.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.020.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store float %2, ptr %.sroa.0.0.lcssa28, align 4
  %i.u = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge18, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.sroa.0.021 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.021.ph, %.lr.ph.preheader30 ] ; 2 uses
  %.sroa.03.020 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.020.ph, %.lr.ph.preheader30 ]
  %i.v = add nuw i64 %.sroa.03.020, 1             ; 2 uses
  store float %2, ptr %.sroa.0.021, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !164
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjE11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !165, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !13, !alias.scope !165, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_:bb.a
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1481
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.o, ptr %i.bh, align 8, !noalias !1481
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1481
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull @8, ptr noundef nonnull %i.m), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1481
  store i64 2, ptr %i.p, align 8, !alias.scope !1478, !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !1477
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 26, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.j unwind label %bb.i, !noalias !1482

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #17
          to label %common.resume.i unwind label %bb.k, !noalias !1482

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1482
  unreachable

common.resume.i:                                  ; preds = %bb.t, %bb.n, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bi, %bb.i ], [ %i.ch, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %bb.g
  store i64 0, ptr %i.q, align 8, !alias.scope !1485, !noalias !1384
  br label %.split44.i

bb.m:                                             ; preds = %.split42.us.i
  %i.bk = add i64 %.val2.i.i.i.i.i, %.us-phi.i
  %.not13.i.i.i.i.i.i.i = icmp ugt i64 %i.bk, %.val.i.i.i.i.i
  %i.bl = sub nuw i64 %.val.i.i.i.i.i, %.us-phi.i
  %spec.select.i.i.i.i.i.i = select i1 %.not13.i.i.i.i.i.i.i, i64 %i.bl, i64 %.val2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1477
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1486, !noalias !1489, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1486, !noalias !1489, !noundef !4
  store i64 1, ptr %0, align 8, !alias.scope !1353, !noalias !1356
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1353, !noalias !1356
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1353, !noalias !1356
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !1486, !noalias !1489
  store <2 x i64> %i.br, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1353, !noalias !1356
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %spec.select.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1353, !noalias !1356
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bo, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1353, !noalias !1356
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2a_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCB22_0EIB1c_B1r_NCNCB22_00EENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit

.split44.i:                                       ; preds = %bb.l, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  br label %.split44.us.i

.split46.us.i:                                    ; preds = %.lr.ph9, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1454
  store ptr %i.h, ptr %i.g, align 8, !noalias !1454
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1454
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.bs, align 8, !noalias !1454
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1454
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull @8, ptr noundef nonnull %i.g), !noalias !1451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1454
  store i64 2, ptr %i.j, align 8, !alias.scope !1452, !noalias !1451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1451
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 26, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.o unwind label %bb.n, !noalias !1491

bb.n:                                             ; preds = %.split46.us.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #17
          to label %common.resume.i unwind label %bb.p, !noalias !1491

bb.o:                                             ; preds = %.split46.us.i
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1491
  unreachable

.split44.us.i:                                    ; preds = %.lr.ph, %.lr.ph.preheader, %.split44.i, %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  %i.bw = load i64, ptr %i.bv, align 8, !range !69, !alias.scope !1499, !noalias !1500, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.split44.us.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.ca = load i64, ptr %i.by, align 8, !alias.scope !1515, !noalias !1520, !noundef !4 ; 7 uses
  %i.cb = load i64, ptr %i.bz, align 8, !alias.scope !1524, !noalias !1525, !noundef !4
  %i.cc = icmp ult i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.cd = add nuw i64 %i.ca, 1
  store i64 %i.cd, ptr %i.by, align 8, !alias.scope !1526, !noalias !1527
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i.i.i.i13.i = load i64, ptr %i.ce, align 8, !alias.scope !1528, !noalias !1527, !noundef !4 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val2.i.i.i.i14.i = load i64, ptr %i.cf, align 8, !alias.scope !1528, !noalias !1527, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1529
  store i64 %.val.i.i.i.i13.i, ptr %i.d, align 8, !noalias !1533
  store i64 %i.ca, ptr %i.c, align 8, !noalias !1533
  %.not.i.i.i.i.i.i15.i = icmp ult i64 %i.ca, %.val.i.i.i.i13.i
  br i1 %.not.i.i.i.i.i.i15.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1533
  store ptr %i.c, ptr %i.b, align 8, !noalias !1533
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i16.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i16.i, align 8, !noalias !1533
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.cg, align 8, !noalias !1533
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i17.i, align 8, !noalias !1533
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i18.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i18.i, ptr noundef nonnull @8, ptr noundef nonnull %i.b), !noalias !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1533
  store i64 2, ptr %i.e, align 8, !alias.scope !1530, !noalias !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1529
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.u unwind label %bb.t, !noalias !1534

bb.t:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #17
          to label %common.resume.i unwind label %bb.v, !noalias !1534

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1534
  unreachable

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i: ; preds = %bb.r
  %i.cj = add i64 %.val2.i.i.i.i14.i, %i.ca
  %.not13.i.i.i.i.i.i20.i = icmp ugt i64 %i.cj, %.val.i.i.i.i13.i
  %i.ck = sub nuw i64 %.val.i.i.i.i13.i, %i.ca
  %spec.select.i.i.i.i.i21.i = select i1 %.not13.i.i.i.i.i.i20.i, i64 %i.ck, i64 %.val2.i.i.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1529
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !1537, !noalias !1540, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !1537, !noalias !1540, !noundef !4
  %i.cq = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !1537, !noalias !1540
  br label %bb.x

bb.w:                                             ; preds = %.split44.us.i
  store i64 0, ptr %0, align 8, !alias.scope !1500, !noalias !1499
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i

bb.x:                                             ; preds = %bb.y, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i
  %storemerge.i.i20.i1.i = phi i64 [ 0, %bb.y ], [ 1, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ]
  %.sroa.11.018.i2.i = phi i64 [ undef, %bb.y ], [ %i.cn, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ]
  %.sroa.7.016.i3.i = phi i64 [ undef, %bb.y ], [ %i.cp, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ]
  %.sroa.10.010.i6.i = phi i64 [ undef, %bb.y ], [ %spec.select.i.i.i.i.i21.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ]
  %i.cr = phi <2 x i64> [ undef, %bb.y ], [ %i.cq, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ]
  store i64 %storemerge.i.i20.i1.i, ptr %0, align 8, !alias.scope !1500, !noalias !1499
  %.sroa.6.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ca, ptr %.sroa.6.0..sroa_idx.i7.i, align 8, !alias.scope !1500, !noalias !1499
  %.sroa.7.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.016.i3.i, ptr %.sroa.7.0..sroa_idx.i8.i, align 8, !alias.scope !1500, !noalias !1499
  %.sroa.8.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.cr, ptr %.sroa.8.0..sroa_idx.i9.i, align 8, !alias.scope !1500, !noalias !1499
  %.sroa.10.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.10.010.i6.i, ptr %.sroa.10.0..sroa_idx.i11.i, align 8, !alias.scope !1500, !noalias !1499
  %.sroa.11.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.018.i2.i, ptr %.sroa.11.0..sroa_idx.i12.i, align 8, !alias.scope !1500, !noalias !1499
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i

bb.y:                                             ; preds = %bb.q
  store i64 0, ptr %i.bv, align 8, !alias.scope !1499, !noalias !1500
  br label %bb.x

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.724.i)
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2a_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCB22_0EIB1c_B1r_NCNCB22_00EENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2a_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCB22_0EIB1c_B1r_NCNCB22_00EENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit: ; preds = %bb.m, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextENtB6_5Debug3fmtB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !249, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB5_5Debug3fmtBB_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 3 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !1542, !noundef !4
  %i.j = sub nuw i64 %i.g, %i.d                   ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.d ; 3 uses
  store ptr %i.k, ptr %0, align 8, !captures !247
  store i64 %i.j, ptr %i.f, align 8
  %.not = icmp ugt i64 %i.b, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.b
  %i.m = sub nuw i64 %i.j, %i.b
  store ptr %i.l, ptr %0, align 8, !captures !247
  store i64 %i.m, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.k, %bb.d ], [ null, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.b, 1
  ret { ptr, i64 } %i.o

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 3 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !1543, !noundef !4
  %i.j = sub nuw i64 %i.g, %i.d                   ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.d ; 3 uses
  store ptr %i.k, ptr %0, align 8, !captures !247
  store i64 %i.j, ptr %i.f, align 8
  %.not = icmp ugt i64 %i.b, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  %i.m = sub nuw i64 %i.j, %i.b
  store ptr %i.l, ptr %0, align 8, !captures !247
  store i64 %i.m, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.k, %bb.d ], [ null, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.b, 1
  ret { ptr, i64 } %i.o

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 3 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !1543, !noundef !4
  %i.j = sub nuw i64 %i.g, %i.d                   ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.d ; 3 uses
  store ptr %i.k, ptr %0, align 8, !captures !247
  store i64 %i.j, ptr %i.f, align 8
  %.not = icmp ugt i64 %i.b, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  %i.m = sub nuw i64 %i.j, %i.b
  store ptr %i.l, ptr %0, align 8, !captures !247
  store i64 %i.m, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.k, %bb.d ], [ null, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.b, 1
  ret { ptr, i64 } %i.o

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCsdsTQD3x2eOp_3exr5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !57, !noundef !4
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 7)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
end_hunk_1
