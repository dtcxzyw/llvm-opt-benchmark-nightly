Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.6?download=true
inline.NumInlined: 73
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree:bb.a
middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ad, %i.ac
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit, label %.preheader.i.preheader410

.preheader.i.preheader410:                        ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.af, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader410, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.ak, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader410 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.aj, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader410 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.ag, align 4, !alias.scope !29, !noundef !5
  %i.ah = icmp ne i32 %.val.i.i, 0
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add i64 %.sroa.02.0.i.i, %i.ai          ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.al = icmp eq i64 %i.ak, %1
  br i1 %i.al, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit, label %.preheader.i, !llvm.loop !10

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit: ; preds = %.preheader.i, %middle.block
  %.lcssa353 = phi i64 [ %i.af, %middle.block ], [ %i.aj, %.preheader.i ] ; 2 uses
  %i.am = icmp ule i64 %.lcssa353, %1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ugt i64 %.lcssa353, 1
  br i1 %i.an, label %bb.f, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.thread

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %0, ptr %i.l, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.u, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  invoke void @_RINvXsO_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB6_10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB1c_E9from_iterINtNtNtB2n_8adapters3map3MapINtNtB3A_6filter6FilterINtNtB3A_9enumerate9EnumerateINtNtNtB2p_5slice4iter4ItermEENCB1e_s_0ENCB1e_s0_0EEB1i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.thread: ; preds = %bb.e, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %2, i8 0, i64 %1, i1 false)
  %i.aq = shl nuw nsw i64 %1, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %4, i8 0, i64 %i.aq, i1 false), !alias.scope !32
  br label %bb.aq

.body99:                                          ; preds = %bb.am, %bb.g, %.body97
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %.body97 ], [ %i.ar, %bb.g ], [ %i.jt, %bb.am ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTttEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #16
          to label %common.resume unwind label %bb.aw

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1e_.exit.i, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.au = icmp ult i64 %i.at, 1152921504606846976
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp samesign ugt i64 %i.at, 1
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ba = trunc i64 %1 to i16
  %i.bb = add i16 %i.ba, -1
  br label %bb.i

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap7PeekMutNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1G_.exit111, %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %2, i8 0, i64 %1, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 6 uses
  store i64 0, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemE3popB1h_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap7PeekMutNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1G_.exit111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemE3popB1h_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.be unwind label %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.x
  %.pn84 = phi { ptr, i32 } [ %i.ih, %bb.x ], [ %i.is, %bb.z ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #16
          to label %.body97 unwind label %bb.aw

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %.invoke, %bb.aa, %bb.l, %bb.ah, %._crit_edge184, %bb.m, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %._crit_edge
  %i.be = load i32, ptr %i.h, align 4, !range !33, !noundef !5
  %i.bf = trunc nuw i32 %i.be to i1
  br i1 %i.bf, label %bb.k, label %bb.m, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bh = load i16, ptr %i.bg, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bi = load i64, ptr %i.bd, align 8, !alias.scope !34, !noundef !5 ; 5 uses
  %i.bj = load i64, ptr %i.i, align 8, !range !35, !alias.scope !34, !noundef !5
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTtlEE8grow_oneCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #17
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit.thread: ; preds = %bb.l
  %i.bl = load ptr, ptr %i.bc, align 8, !alias.scope !34, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bi ; 2 uses
  store i16 %i.bh, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 0, ptr %i.bn, align 4
  %i.bo = add nuw i64 %i.bi, 1
  br label %.lr.ph160.preheader

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.k
  %i.bp = load ptr, ptr %i.bc, align 8, !alias.scope !34, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bi ; 2 uses
  store i16 %i.bh, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 0, ptr %i.br, align 4
  %i.bs = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bs, ptr %i.bd, align 8, !alias.scope !34
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %iter.check, label %.lr.ph160.preheader

.lr.ph160.preheader:                              ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit.thread, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit
  %i.bu = phi i64 [ %i.bo, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit.thread ], [ %i.bs, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit ]
  %.pre257 = load i64, ptr %i.i, align 8, !range !35
  br label %.lr.ph160

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.ah, %bb.m
  unreachable

iter.check:                                       ; preds = %bb.bd, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 3 uses
  %min.iters.check357 = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check357, label %.lr.ph165.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check358 = icmp samesign ult i64 %1, 32
  br i1 %min.iters.check358, label %vec.epilog.ph, label %vector.ph359

vector.ph359:                                     ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %1, 24
  %n.vec360 = and i64 %1, 2305843009213693920     ; 4 uses
  %i.bx = getelementptr i8, ptr %2, i64 %n.vec360
  br label %vector.body361

vector.body361:                                   ; preds = %vector.ph359, %vector.body361
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body361 ] ; 2 uses
  %vec.phi363 = phi <16 x i8> [ zeroinitializer, %vector.ph359 ], [ %i.bz, %vector.body361 ]
  %vec.phi364 = phi <16 x i8> [ zeroinitializer, %vector.ph359 ], [ %i.ca, %vector.body361 ]
  %next.gep = getelementptr i8, ptr %2, i64 %index362 ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  %wide.load365 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load366 = load <16 x i8>, ptr %i.by, align 1
  %i.bz = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load365, <16 x i8> %vec.phi363) ; 2 uses
  %i.ca = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load366, <16 x i8> %vec.phi364) ; 2 uses
  %index.next367 = add nuw i64 %index362, 32      ; 2 uses
  %i.cb = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.cb, label %middle.block368, label %vector.body361, !llvm.loop !15

middle.block368:                                  ; preds = %vector.body361
  %rdx.minmax = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.bz, <16 x i8> %i.ca)
  %i.cc = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n369 = icmp eq i64 %1, %n.vec360
  br i1 %cmp.n369, label %._crit_edge166, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block368
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph165.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec360, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx371 = phi i8 [ %i.cc, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.merge.rdx371, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %n.vec371 = and i64 %1, 2305843009213693944     ; 3 uses
  %7 = getelementptr i8, ptr %2, i64 %n.vec371
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index373 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next377, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi374 = phi <8 x i8> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cd, %vec.epilog.vector.body ]
  %next.gep375 = getelementptr i8, ptr %2, i64 %index373
  %wide.load376 = load <8 x i8>, ptr %next.gep375, align 1
  %i.cd = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load376, <8 x i8> %vec.phi374) ; 2 uses
  %index.next377 = add nuw i64 %index373, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next377, %n.vec371
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cf = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.cd) ; 2 uses
  %cmp.n378 = icmp eq i64 %1, %n.vec371
  br i1 %cmp.n378, label %._crit_edge166, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.010.0163.ph = phi ptr [ %2, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %7, %vec.epilog.middle.block ]
  %.sroa.012.0162.ph = phi i8 [ 0, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  br label %.lr.ph165

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %bb.bd
  %i.cg = phi i64 [ %i.lp, %bb.bd ], [ %.pre257, %.lr.ph160.preheader ] ; 2 uses
  %i.ch = phi i64 [ %.pr, %bb.bd ], [ %i.bu, %.lr.ph160.preheader ] ; 6 uses
  %i.ci = add nsw i64 %i.ch, -1                   ; 4 uses
  store i64 %i.ci, ptr %i.bd, align 8
  %i.cj = icmp samesign ult i64 %i.ci, %i.cg
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.cl = icmp samesign ult i64 %i.ch, 1152921504606846977
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 4, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !noundef !5 ; 2 uses
  %i.cq = zext i16 %i.cn to i64                   ; 3 uses
  %i.cr = icmp samesign ugt i64 %1, %i.cq
  br i1 %i.cr, label %bb.ba, label %bb.az

._crit_edge166:                                   ; preds = %.lr.ph165, %vec.epilog.middle.block, %middle.block368
  %..i.lcssa = phi i8 [ %i.cf, %vec.epilog.middle.block ], [ %i.cc, %middle.block368 ], [ %..i, %.lr.ph165 ]
  %i.cs = icmp ugt i8 %..i.lcssa, %6
  br i1 %i.cs, label %.lr.ph169.preheader, label %bb.ag

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %.sroa.010.0163 = phi ptr [ %i.cu, %.lr.ph165 ], [ %.sroa.010.0163.ph, %.lr.ph165.preheader ] ; 2 uses
  %.sroa.012.0162 = phi i8 [ %..i, %.lr.ph165 ], [ %.sroa.012.0162.ph, %.lr.ph165.preheader ]
  %i.ct = load i8, ptr %.sroa.010.0163, align 1, !noundef !5
  %..i = call noundef i8 @llvm.umax.i8(i8 %i.ct, i8 %.sroa.012.0162) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.010.0163, i64 1 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bv
  br i1 %i.cv, label %._crit_edge166, label %.lr.ph165, !llvm.loop !17

.lr.ph169.preheader:                              ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  br label %.lr.ph169

._crit_edge170:                                   ; preds = %bb.p
  %i.cw = zext i8 %6 to i64                       ; 4 uses
  %i.cx = icmp eq i8 %6, 0
  br i1 %i.cx, label %._crit_edge184, label %bb.o

bb.o:                                             ; preds = %._crit_edge170
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !noundef !5
  %i.da = add i8 %6, 31
  %i.db = and i8 %i.da, 31
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = shl i32 %i.cz, %i.dc                    ; 2 uses
  %i.de = icmp eq i8 %6, 1
  br i1 %i.de, label %._crit_edge179, label %.peel.next

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %bb.p
  %.sroa.014.0167 = phi ptr [ %i.di, %bb.p ], [ %2, %.lr.ph169.preheader ] ; 2 uses
  %i.df = load i8, ptr %.sroa.014.0167, align 1, !noundef !5
  %..i89 = call noundef i8 @llvm.umin.i8(i8 %6, i8 %i.df) ; 2 uses
  %i.dg = zext i8 %..i89 to i64                   ; 2 uses
  %i.dh = icmp ult i8 %..i89, 16
  br i1 %i.dh, label %bb.p, label %.invoke

bb.p:                                             ; preds = %.lr.ph169
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.014.0167, i64 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dg ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !5
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4
  %i.dm = icmp eq ptr %i.di, %i.bv
  br i1 %i.dm, label %._crit_edge170, label %.lr.ph169

._crit_edge179:                                   ; preds = %.peel.next.13, %.peel.next, %.peel.next.1, %.peel.next.2, %.peel.next.3, %.peel.next.4, %.peel.next.5, %.peel.next.6, %.peel.next.7, %.peel.next.8, %.peel.next.9, %.peel.next.10, %.peel.next.11, %.peel.next.12, %bb.o
  %.sroa.017.0.lcssa = phi i32 [ %i.dd, %bb.o ], [ %i.gi, %.peel.next.7 ], [ %i.el, %.peel.next ], [ %i.gw, %.peel.next.9 ], [ %i.es, %.peel.next.1 ], [ %i.hy, %.peel.next.13 ], [ %i.ez, %.peel.next.2 ], [ %i.hd, %.peel.next.10 ], [ %i.fg, %.peel.next.3 ], [ %i.hr, %.peel.next.12 ], [ %i.fn, %.peel.next.4 ], [ %i.gp, %.peel.next.8 ], [ %i.fu, %.peel.next.5 ], [ %i.hk, %.peel.next.11 ], [ %i.gb, %.peel.next.6 ] ; 2 uses
  %i.dn = and i8 %6, 31
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = shl nuw i32 1, %i.do                    ; 2 uses
  %i.dq = icmp ugt i32 %.sroa.017.0.lcssa, %i.dp
  br i1 %i.dq, label %.preheader132.lr.ph, label %._crit_edge184

.preheader132.lr.ph:                              ; preds = %._crit_edge179
  %i.dr = icmp ult i8 %6, 16
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cw ; 2 uses
  br i1 %i.dr, label %.preheader132.us, label %.preheader132

.preheader132.us:                                 ; preds = %.preheader132.lr.ph, %bb.s
  %.sroa.017.1183.us = phi i32 [ %i.ee, %bb.s ], [ %.sroa.017.0.lcssa, %.preheader132.lr.ph ]
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.preheader132.us
  %.sroa.029.0.in.us = phi i64 [ %.sroa.029.0.us, %bb.r ], [ %i.cw, %.preheader132.us ]
  %.sroa.029.0.us = add nsw i64 %.sroa.029.0.in.us, -1 ; 5 uses
  %i.dt = icmp ult i64 %.sroa.029.0.us, 16
  br i1 %i.dt, label %bb.r, label %.invoke

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.029.0.us
  %i.dv = load i32, ptr %i.du, align 4, !noundef !5 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.029.0.us ; 2 uses
  %i.dy = add i32 %i.dv, -1
  store i32 %i.dy, ptr %i.dx, align 4
  %i.dz = load i32, ptr %i.ds, align 4, !noundef !5
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr %i.ds, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !noundef !5
  %i.ed = add i32 %i.ec, 2
  store i32 %i.ed, ptr %i.eb, align 4
  %i.ee = add i32 %.sroa.017.1183.us, -1          ; 2 uses
  %i.ef = icmp ugt i32 %i.ee, %i.dp
  br i1 %i.ef, label %.preheader132.us, label %._crit_edge184

.peel.next:                                       ; preds = %bb.o
  %.sroa.0.0175.ptr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = load i32, ptr %.sroa.0.0175.ptr, align 4, !noundef !5
  %i.eh = add i8 %6, 30
  %i.ei = and i8 %i.eh, 31
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl i32 %i.eg, %i.ej
  %i.el = add i32 %i.ek, %i.dd                    ; 2 uses
  %i.em = icmp eq i8 %6, 2
  br i1 %i.em, label %._crit_edge179, label %.peel.next.1

.peel.next.1:                                     ; preds = %.peel.next
  %.sroa.0.0175.ptr.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.en = load i32, ptr %.sroa.0.0175.ptr.1, align 4, !noundef !5
  %i.eo = add i8 %6, 29
  %i.ep = and i8 %i.eo, 31
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = shl i32 %i.en, %i.eq
  %i.es = add i32 %i.er, %i.el                    ; 2 uses
  %i.et = icmp eq i8 %6, 3
  br i1 %i.et, label %._crit_edge179, label %.peel.next.2

.peel.next.2:                                     ; preds = %.peel.next.1
  %.sroa.0.0175.ptr.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.eu = load i32, ptr %.sroa.0.0175.ptr.2, align 4, !noundef !5
  %i.ev = add i8 %6, 28
  %i.ew = and i8 %i.ev, 31
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = shl i32 %i.eu, %i.ex
  %i.ez = add i32 %i.ey, %i.es                    ; 2 uses
  %i.fa = icmp eq i8 %6, 4
  br i1 %i.fa, label %._crit_edge179, label %.peel.next.3

.peel.next.3:                                     ; preds = %.peel.next.2
  %.sroa.0.0175.ptr.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.fb = load i32, ptr %.sroa.0.0175.ptr.3, align 4, !noundef !5
  %i.fc = add i8 %6, 27
  %i.fd = and i8 %i.fc, 31
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = shl i32 %i.fb, %i.fe
  %i.fg = add i32 %i.ff, %i.ez                    ; 2 uses
  %i.fh = icmp eq i8 %6, 5
  br i1 %i.fh, label %._crit_edge179, label %.peel.next.4

.peel.next.4:                                     ; preds = %.peel.next.3
  %.sroa.0.0175.ptr.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.fi = load i32, ptr %.sroa.0.0175.ptr.4, align 4, !noundef !5
  %i.fj = add i8 %6, 26
  %i.fk = and i8 %i.fj, 31
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = shl i32 %i.fi, %i.fl
  %i.fn = add i32 %i.fm, %i.fg                    ; 2 uses
  %i.fo = icmp eq i8 %6, 6
  br i1 %i.fo, label %._crit_edge179, label %.peel.next.5

.peel.next.5:                                     ; preds = %.peel.next.4
  %.sroa.0.0175.ptr.5 = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.fp = load i32, ptr %.sroa.0.0175.ptr.5, align 4, !noundef !5
  %i.fq = add i8 %6, 25
  %i.fr = and i8 %i.fq, 31
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = shl i32 %i.fp, %i.fs
  %i.fu = add i32 %i.ft, %i.fn                    ; 2 uses
  %i.fv = icmp eq i8 %6, 7
  br i1 %i.fv, label %._crit_edge179, label %.peel.next.6

.peel.next.6:                                     ; preds = %.peel.next.5
  %.sroa.0.0175.ptr.6 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.fw = load i32, ptr %.sroa.0.0175.ptr.6, align 4, !noundef !5
  %i.fx = add i8 %6, 24
  %i.fy = and i8 %i.fx, 31
  %i.fz = zext nneg i8 %i.fy to i32
  %i.ga = shl i32 %i.fw, %i.fz
  %i.gb = add i32 %i.ga, %i.fu                    ; 2 uses
  %i.gc = icmp eq i8 %6, 8
  br i1 %i.gc, label %._crit_edge179, label %.peel.next.7

.peel.next.7:                                     ; preds = %.peel.next.6
  %.sroa.0.0175.ptr.7 = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.gd = load i32, ptr %.sroa.0.0175.ptr.7, align 4, !noundef !5
end_hunk_0
