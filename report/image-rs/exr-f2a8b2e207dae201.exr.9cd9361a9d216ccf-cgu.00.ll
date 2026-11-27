Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.00?download=true
inline.NumInlined: 482
inline.NumDeleted: 291
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecAbj3_E11extend_withCsdsTQD3x2eOp_3exr:bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.01.028 = phi ptr [ %i.j, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store i24 %2, ptr %.sroa.01.028, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 3
  store i24 %2, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 6
  store i24 %2, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 9
  store i24 %2, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 12
  store i24 %2, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 15
  store i24 %2, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 18
  store i24 %2, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 21
  store i24 %2, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 24 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !138, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !138, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs51eXCul1Ifq_4half8binary163f16E7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

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

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2
  store <8 x i16> %broadcast.splat, ptr %i.r, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.l, -4                     ; 4 uses
  %i.t = shl i64 %n.vec31, 1
  %i.u = getelementptr i8, ptr %i.j, i64 %i.t     ; 2 uses
  %i.v = or disjoint i64 %n.vec31, 1
  %broadcast.splatinsert32 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat33 = shufflevector <4 x i16> %broadcast.splatinsert32, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 2 uses
  %i.w = shl i64 %index34, 1
  %next.gep35 = getelementptr i8, ptr %i.j, i64 %i.w
  store <4 x i16> %broadcast.splat33, ptr %next.gep35, align 2
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !136

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.l, %n.vec31
  br i1 %cmp.n37, label %._crit_edge.thread, label %.lr.ph.preheader

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
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !137
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE11extend_withBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.9 = alloca [23 x i8], align 1            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !155, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !155, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeE7reserveBM_.exit, !prof !6

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
  %.sroa.0.029 = phi ptr [ %i.l, %.lr.ph ], [ %i.aj, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 5 uses
  %.sroa.03.028 = phi i64 [ 1, %.lr.ph ], [ %i.ai, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %storemerge27 = phi i64 [ %i.h, %.lr.ph ], [ %i.ak, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.u = load i32, ptr %2, align 8, !range !16, !alias.scope !156, !noundef !4 ; 2 uses
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.r, align 4, !alias.scope !156, !noundef !4
  %i.w = load i8, ptr %i.n, align 8, !alias.scope !156, !noundef !4
  br label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.x = load i64, ptr %i.o, align 8, !alias.scope !158, !noundef !4 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 2
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !158, !noundef !4 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.p, align 8, !alias.scope !158, !noundef !4
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  store i64 0, ptr %i.q, align 8, !noalias !159
  store ptr null, ptr %i.a, align 8, !noalias !159
  invoke void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAmj2_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendmE6extendINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4ItermEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %.sink13.i.i.i, ptr noundef nonnull %i.ac)
          to label %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i unwind label %bb.i, !noalias !160

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.j, !noalias !160

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !160
  unreachable

_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.i.i
  %.sroa.722.8.copyload = load i8, ptr %i.a, align 8, !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..sroa_idx, i64 23, i1 false), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  br label %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %._crit_edge
  store i64 %i.h, ptr %i.b, align 8
  %i.af = load i32, ptr %2, align 8, !range !16, !alias.scope !161, !noundef !4
  %switch.i = icmp samesign ult i32 %i.af, 2
  br i1 %switch.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit: ; preds = %bb.l, %bb.k, %._crit_edge.thread
  ret void

._crit_edge.thread:                               ; preds = %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %._crit_edge
  %.sroa.0.0.lcssa40 = phi ptr [ %i.l, %._crit_edge ], [ %i.aj, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  %storemerge.lcssa39 = phi i64 [ %i.h, %._crit_edge ], [ %i.t, %_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa40, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ah = add i64 %storemerge.lcssa39, 1
  store i64 %i.ah, ptr %i.b, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffman4CodeEBJ_.exit

.body:                                            ; preds = %bb.i
  store i64 %storemerge27, ptr %i.b, align 8
  br label %bb.n

_RNvXs_NtNtNtCsdsTQD3x2eOp_3exr11compression3piz7huffmanNtB4_4CodeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i, %bb.e, %bb.d
  %.sroa.722.0 = phi i8 [ %.sroa.722.8.copyload, %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i ], [ %i.w, %bb.e ], [ undef, %bb.d ]
  %.sroa.6.0 = phi i32 [ undef, %_RNvXsw_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_ENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsdsTQD3x2eOp_3exr.exit.i ], [ %i.v, %bb.e ], [ undef, %bb.d ]
  %i.ai = add nuw i64 %.sroa.03.028, 1            ; 2 uses
  store i32 %i.u, ptr %.sroa.0.029, align 8
  %.sroa.6.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa.0.0.sroa_idx, align 4
  %.sroa.722.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 8
  store i8 %.sroa.722.0, ptr %.sroa.722.0..sroa.0.0.sroa_idx, align 8
  %.sroa.9.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.0..sroa.0.0.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 32 ; 2 uses
  %i.ak = add i64 %storemerge27, 1
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
  %i.am = load i32, ptr %2, align 8, !range !16, !alias.scope !162, !noundef !4
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
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !165, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !165, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

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
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !170, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !170, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecfE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

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
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !168

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
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !169
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjE11extend_withCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !175, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !175, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecjE7reserveCsdsTQD3x2eOp_3exr.exit, !prof !6

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
