Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.6?download=true
inline.NumInlined: 73
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree:bb.a
vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %1, 2305843009213693948        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi347 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.load = load <2 x i32>, ptr %i.w, align 4, !alias.scope !29
  %wide.load348 = load <2 x i32>, ptr %i.x, align 4, !alias.scope !29
  %i.y = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.z = icmp ne <2 x i32> %wide.load348, zeroinitializer
  %i.aa = zext <2 x i1> %i.y to <2 x i64>
  %i.ab = zext <2 x i1> %i.z to <2 x i64>
  %i.ac = add <2 x i64> %vec.phi, %i.aa           ; 2 uses
  %i.ad = add <2 x i64> %vec.phi347, %i.ab        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ad, %i.ac
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit, label %.preheader.i.preheader400

.preheader.i.preheader400:                        ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.af, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader400, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.ak, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader400 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.aj, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader400 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.ag, align 4, !alias.scope !29, !noundef !5
  %i.ah = icmp ne i32 %.val.i.i, 0
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add i64 %.sroa.02.0.i.i, %i.ai          ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.al = icmp eq i64 %i.ak, %1
  br i1 %i.al, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit, label %.preheader.i, !llvm.loop !10

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit: ; preds = %.preheader.i, %middle.block
  %.lcssa346 = phi i64 [ %i.af, %middle.block ], [ %i.aj, %.preheader.i ] ; 2 uses
  %i.am = icmp ule i64 %.lcssa346, %1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ugt i64 %.lcssa346, 1
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
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %.body97 ], [ %i.ar, %bb.g ], [ %i.jx, %bb.am ]
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
          to label %bb.j unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap7PeekMutNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1G_.exit111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemE3popB1h_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.be unwind label %.loopexit133

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.x
  %.pn84 = phi { ptr, i32 } [ %i.il, %bb.x ], [ %i.iw, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #16
          to label %.body97 unwind label %bb.aw

.loopexit:                                        ; preds = %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %._crit_edge, %bb.m, %._crit_edge184, %bb.ah, %bb.l, %bb.aa
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
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit.thread unwind label %.loopexit.split-lp

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
  %.pre254 = load i64, ptr %i.i, align 8, !range !35
  br label %.lr.ph160

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.ah, %bb.m
  unreachable

iter.check:                                       ; preds = %bb.bd, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEE8push_mutCsksn9slvsHfS_10image_webp.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 3 uses
  %min.iters.check350 = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check350, label %.lr.ph165.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check351 = icmp samesign ult i64 %1, 32
  br i1 %min.iters.check351, label %vec.epilog.ph, label %vector.ph352

vector.ph352:                                     ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %1, 24
  %n.vec353 = and i64 %1, 2305843009213693920     ; 4 uses
  %i.bx = getelementptr i8, ptr %2, i64 %n.vec353
  br label %vector.body354

vector.body354:                                   ; preds = %vector.ph352, %vector.body354
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next360, %vector.body354 ] ; 2 uses
  %vec.phi356 = phi <16 x i8> [ zeroinitializer, %vector.ph352 ], [ %i.bz, %vector.body354 ]
  %vec.phi357 = phi <16 x i8> [ zeroinitializer, %vector.ph352 ], [ %i.ca, %vector.body354 ]
  %next.gep = getelementptr i8, ptr %2, i64 %index355 ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  %wide.load358 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load359 = load <16 x i8>, ptr %i.by, align 1
  %i.bz = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load358, <16 x i8> %vec.phi356) ; 2 uses
  %i.ca = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load359, <16 x i8> %vec.phi357) ; 2 uses
  %index.next360 = add nuw i64 %index355, 32      ; 2 uses
  %i.cb = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.cb, label %middle.block361, label %vector.body354, !llvm.loop !15

middle.block361:                                  ; preds = %vector.body354
  %rdx.minmax = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.bz, <16 x i8> %i.ca)
  %i.cc = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n362 = icmp eq i64 %1, %n.vec353
  br i1 %cmp.n362, label %._crit_edge166, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block361
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph165.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec353, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx364 = phi i8 [ %i.cc, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec365 = and i64 %1, 2305843009213693944     ; 3 uses
  %i.cd = getelementptr i8, ptr %2, i64 %n.vec365
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.merge.rdx364, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index366 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next370, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi367 = phi <8 x i8> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ce, %vec.epilog.vector.body ]
  %next.gep368 = getelementptr i8, ptr %2, i64 %index366
  %wide.load369 = load <8 x i8>, ptr %next.gep368, align 1
  %i.ce = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load369, <8 x i8> %vec.phi367) ; 2 uses
  %index.next370 = add nuw i64 %index366, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next370, %n.vec365
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cg = call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.ce) ; 2 uses
  %cmp.n371 = icmp eq i64 %1, %n.vec365
  br i1 %cmp.n371, label %._crit_edge166, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.010.0163.ph = phi ptr [ %2, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.sroa.012.0162.ph = phi i8 [ 0, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph165

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %bb.bd
  %i.ch = phi i64 [ %i.lq, %bb.bd ], [ %.pre254, %.lr.ph160.preheader ] ; 2 uses
  %i.ci = phi i64 [ %.pr, %bb.bd ], [ %i.bu, %.lr.ph160.preheader ] ; 6 uses
  %i.cj = add nsw i64 %i.ci, -1                   ; 4 uses
  store i64 %i.cj, ptr %i.bd, align 8
  %i.ck = icmp samesign ult i64 %i.cj, %i.ch
  call void @llvm.assume(i1 %i.ck)
  %i.cl = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.cm = icmp samesign ult i64 %i.ci, 1152921504606846977
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 3 uses
  %i.co = load i16, ptr %i.cn, align 4, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !noundef !5 ; 2 uses
  %i.cr = zext i16 %i.co to i64                   ; 3 uses
  %i.cs = icmp samesign ugt i64 %1, %i.cr
  br i1 %i.cs, label %bb.ba, label %bb.az

._crit_edge166:                                   ; preds = %.lr.ph165, %vec.epilog.middle.block, %middle.block361
  %..i.lcssa = phi i8 [ %i.cg, %vec.epilog.middle.block ], [ %i.cc, %middle.block361 ], [ %..i, %.lr.ph165 ]
  %i.ct = icmp ugt i8 %..i.lcssa, %6
  br i1 %i.ct, label %.lr.ph169.preheader, label %bb.ag

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %.sroa.010.0163 = phi ptr [ %i.cv, %.lr.ph165 ], [ %.sroa.010.0163.ph, %.lr.ph165.preheader ] ; 2 uses
  %.sroa.012.0162 = phi i8 [ %..i, %.lr.ph165 ], [ %.sroa.012.0162.ph, %.lr.ph165.preheader ]
  %i.cu = load i8, ptr %.sroa.010.0163, align 1, !noundef !5
  %..i = call noundef i8 @llvm.umax.i8(i8 %i.cu, i8 %.sroa.012.0162) ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.0163, i64 1 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bv
  br i1 %i.cw, label %._crit_edge166, label %.lr.ph165, !llvm.loop !17

.lr.ph169.preheader:                              ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  br label %.lr.ph169

._crit_edge170:                                   ; preds = %bb.p
  %i.cx = zext i8 %6 to i64                       ; 4 uses
  %i.cy = icmp eq i8 %6, 0
  br i1 %i.cy, label %._crit_edge184, label %bb.o

bb.o:                                             ; preds = %._crit_edge170
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !noundef !5
  %i.db = add i8 %6, 31
  %i.dc = and i8 %i.db, 31
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = shl i32 %i.da, %i.dd                    ; 2 uses
  %i.df = icmp eq i8 %6, 1
  br i1 %i.df, label %._crit_edge179, label %.peel.next

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %bb.p
  %.sroa.014.0167 = phi ptr [ %i.dj, %bb.p ], [ %2, %.lr.ph169.preheader ] ; 2 uses
  %i.dg = load i8, ptr %.sroa.014.0167, align 1, !noundef !5
  %..i89 = call noundef i8 @llvm.umin.i8(i8 %6, i8 %i.dg) ; 2 uses
  %i.dh = zext i8 %..i89 to i64                   ; 2 uses
  %i.di = icmp ult i8 %..i89, 16
  br i1 %i.di, label %bb.p, label %.invoke

bb.p:                                             ; preds = %.lr.ph169
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.014.0167, i64 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !5
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4
  %i.dn = icmp eq ptr %i.dj, %i.bv
  br i1 %i.dn, label %._crit_edge170, label %.lr.ph169

.invoke:                                          ; preds = %bb.az, %.lr.ph169, %.preheader132, %bb.q, %bb.ay, %bb.av
  %i.do = phi i64 [ %.sroa.029.0.us, %bb.q ], [ %.sroa.7118.0200, %bb.av ], [ %.sroa.029.0, %.preheader132 ], [ %i.cx, %bb.ay ], [ %i.dh, %.lr.ph169 ], [ %i.kz, %bb.az ]
  %i.dp = phi i64 [ 16, %bb.q ], [ %1, %bb.av ], [ 16, %.preheader132 ], [ 16, %bb.ay ], [ 16, %.lr.ph169 ], [ %i.la, %bb.az ]
  %i.dq = phi ptr [ @41, %bb.q ], [ @40, %bb.av ], [ @41, %.preheader132 ], [ @42, %bb.ay ], [ @36, %.lr.ph169 ], [ @43, %bb.az ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.do, i64 noundef %i.dp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq) #14
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

._crit_edge179:                                   ; preds = %.peel.next.13, %.peel.next, %.peel.next.1, %.peel.next.2, %.peel.next.3, %.peel.next.4, %.peel.next.5, %.peel.next.6, %.peel.next.7, %.peel.next.8, %.peel.next.9, %.peel.next.10, %.peel.next.11, %.peel.next.12, %bb.o
  %.sroa.017.0.lcssa = phi i32 [ %i.de, %bb.o ], [ %i.gm, %.peel.next.7 ], [ %i.ep, %.peel.next ], [ %i.ha, %.peel.next.9 ], [ %i.ew, %.peel.next.1 ], [ %i.ic, %.peel.next.13 ], [ %i.fd, %.peel.next.2 ], [ %i.hh, %.peel.next.10 ], [ %i.fk, %.peel.next.3 ], [ %i.hv, %.peel.next.12 ], [ %i.fr, %.peel.next.4 ], [ %i.gt, %.peel.next.8 ], [ %i.fy, %.peel.next.5 ], [ %i.ho, %.peel.next.11 ], [ %i.gf, %.peel.next.6 ] ; 2 uses
  %i.dr = and i8 %6, 31
  %i.ds = zext nneg i8 %i.dr to i32
  %i.dt = shl nuw i32 1, %i.ds                    ; 2 uses
  %i.du = icmp ugt i32 %.sroa.017.0.lcssa, %i.dt
  br i1 %i.du, label %.preheader132.lr.ph, label %._crit_edge184

.preheader132.lr.ph:                              ; preds = %._crit_edge179
  %i.dv = icmp ult i8 %6, 16
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cx ; 2 uses
  br i1 %i.dv, label %.preheader132.us, label %.preheader132

.preheader132.us:                                 ; preds = %.preheader132.lr.ph, %bb.s
  %.sroa.017.1183.us = phi i32 [ %i.ei, %bb.s ], [ %.sroa.017.0.lcssa, %.preheader132.lr.ph ]
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.preheader132.us
  %.sroa.029.0.in.us = phi i64 [ %.sroa.029.0.us, %bb.r ], [ %i.cx, %.preheader132.us ]
  %.sroa.029.0.us = add nsw i64 %.sroa.029.0.in.us, -1 ; 5 uses
  %i.dx = icmp ult i64 %.sroa.029.0.us, 16
  br i1 %i.dx, label %bb.r, label %.invoke

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.029.0.us
  %i.dz = load i32, ptr %i.dy, align 4, !noundef !5 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.029.0.us ; 2 uses
  %i.ec = add i32 %i.dz, -1
  store i32 %i.ec, ptr %i.eb, align 4
  %i.ed = load i32, ptr %i.dw, align 4, !noundef !5
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr %i.dw, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !noundef !5
  %i.eh = add i32 %i.eg, 2
  store i32 %i.eh, ptr %i.ef, align 4
  %i.ei = add i32 %.sroa.017.1183.us, -1          ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, %i.dt
  br i1 %i.ej, label %.preheader132.us, label %._crit_edge184

.peel.next:                                       ; preds = %bb.o
  %.sroa.0.0175.ptr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ek = load i32, ptr %.sroa.0.0175.ptr, align 4, !noundef !5
  %i.el = add i8 %6, 30
  %i.em = and i8 %i.el, 31
  %i.en = zext nneg i8 %i.em to i32
  %i.eo = shl i32 %i.ek, %i.en
  %i.ep = add i32 %i.eo, %i.de                    ; 2 uses
  %i.eq = icmp eq i8 %6, 2
  br i1 %i.eq, label %._crit_edge179, label %.peel.next.1

.peel.next.1:                                     ; preds = %.peel.next
  %.sroa.0.0175.ptr.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.er = load i32, ptr %.sroa.0.0175.ptr.1, align 4, !noundef !5
  %i.es = add i8 %6, 29
  %i.et = and i8 %i.es, 31
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = shl i32 %i.er, %i.eu
  %i.ew = add i32 %i.ev, %i.ep                    ; 2 uses
  %i.ex = icmp eq i8 %6, 3
  br i1 %i.ex, label %._crit_edge179, label %.peel.next.2

.peel.next.2:                                     ; preds = %.peel.next.1
  %.sroa.0.0175.ptr.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ey = load i32, ptr %.sroa.0.0175.ptr.2, align 4, !noundef !5
end_hunk_0
