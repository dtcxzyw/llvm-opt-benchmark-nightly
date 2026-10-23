Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_avx512?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK4ncnn18Softmax_x86_avx51221forward_inplace_bf16sERNS_3MatERKNS_6OptionE:bb.a
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !48
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hv)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bo, !inline_history !0

bb.bm:                                            ; preds = %bb.bk
  %.not.i156 = icmp eq ptr %i.hv, null
  br i1 %.not.i156, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @free(ptr noundef nonnull %i.hv) #7
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bo:                                            ; preds = %bb.bl
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bj, %.critedge97, %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  br label %bb.bp

bb.bp:                                            ; preds = %bb.ap, %bb.aq, %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit101, %_ZN4ncnn3MatD2Ev.exit102, %_ZN4ncnn3MatD2Ev.exit103
  %.7 = phi i32 [ -100, %_ZN4ncnn3MatD2Ev.exit ], [ -100, %_ZN4ncnn3MatD2Ev.exit102 ], [ -100, %_ZN4ncnn3MatD2Ev.exit101 ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ -100, %_ZN4ncnn3MatD2Ev.exit103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL7softmaxEPfii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 28 uses
  %i.b = icmp sgt i32 %i.a, 15                    ; 3 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader305

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -16                    ; 2 uses
  %i.d = lshr i32 %i.c, 4
  %i.e = add nuw nsw i32 %i.d, 1                  ; 2 uses
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i32 %i.c, 48
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.e, 536870908
  br label %.lr.ph

.preheader305.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader305.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader305.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0308.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.x, %.preheader305.loopexit.unr-lcssa ]
  %.0266306.epil.init = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader ], [ %i.w, %.preheader305.loopexit.unr-lcssa ]
  %lcmp.mod585 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0308.epil = phi ptr [ %i.i, %.lr.ph.epil ], [ %.0308.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0266306.epil = phi <16 x float> [ %i.h, %.lr.ph.epil ], [ %.0266306.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.g = load <16 x float>, ptr %.0308.epil, align 1, !tbaa !49
  %i.h = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.0266306.epil, <16 x float> nofpclass(nan inf) %i.g, i32 4) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0308.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader305.loopexit, label %.lr.ph.epil, !llvm.loop !68

.preheader305.loopexit:                           ; preds = %.lr.ph.epil, %.preheader305.loopexit.unr-lcssa
  %.lcssa582 = phi <16 x float> [ %i.w, %.preheader305.loopexit.unr-lcssa ], [ %i.h, %.lr.ph.epil ]
  %.lcssa581 = phi ptr [ %i.x, %.preheader305.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.j = and i32 %i.a, 2147483632
  br label %.preheader305

.preheader305:                                    ; preds = %.preheader305.loopexit, %bb.a
  %.0266.lcssa = phi <16 x float> [ splat (float f0xFF7FFFFF), %bb.a ], [ %.lcssa582, %.preheader305.loopexit ] ; 7 uses
  %.0106.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.preheader305.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa581, %.preheader305.loopexit ] ; 2 uses
  %i.k = or disjoint i32 %.0106.lcssa, 7
  %i.l = icmp slt i32 %i.k, %i.a
  br i1 %i.l, label %.lr.ph314, label %.preheader304

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0308 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ] ; 5 uses
  %.0266306 = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = load <16 x float>, ptr %.0308, align 1, !tbaa !49
  %i.n = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.0266306, <16 x float> nofpclass(nan inf) %i.m, i32 4)
  %i.o = getelementptr inbounds nuw i8, ptr %.0308, i64 64
  %i.p = load <16 x float>, ptr %i.o, align 1, !tbaa !49
  %i.q = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.n, <16 x float> nofpclass(nan inf) %i.p, i32 4)
  %i.r = getelementptr inbounds nuw i8, ptr %.0308, i64 128
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !49
  %i.t = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.q, <16 x float> nofpclass(nan inf) %i.s, i32 4)
  %i.u = getelementptr inbounds nuw i8, ptr %.0308, i64 192
  %i.v = load <16 x float>, ptr %i.u, align 1, !tbaa !49
  %i.w = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.t, <16 x float> nofpclass(nan inf) %i.v, i32 4) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0308, i64 256 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader305.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !69

.preheader304:                                    ; preds = %.lr.ph314, %.preheader305
  %.0270.lcssa = phi <8 x float> [ splat (float f0xFF7FFFFF), %.preheader305 ], [ %i.ab, %.lr.ph314 ] ; 5 uses
  %.1107.lcssa = phi i32 [ %.0106.lcssa, %.preheader305 ], [ %i.ad, %.lr.ph314 ] ; 3 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader305 ], [ %i.ac, %.lr.ph314 ] ; 2 uses
  %i.y = or disjoint i32 %.1107.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.a
  br i1 %i.z, label %.lr.ph321, label %.preheader303

.lr.ph314:                                        ; preds = %.preheader305, %.lr.ph314
  %.1313 = phi ptr [ %i.ac, %.lr.ph314 ], [ %.0.lcssa, %.preheader305 ] ; 2 uses
  %.1107312 = phi i32 [ %i.ad, %.lr.ph314 ], [ %.0106.lcssa, %.preheader305 ]
  %.0270311 = phi <8 x float> [ %i.ab, %.lr.ph314 ], [ splat (float f0xFF7FFFFF), %.preheader305 ]
  %i.aa = load <8 x float>, ptr %.1313, align 1, !tbaa !49
  %i.ab = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0270311, <8 x float> nofpclass(nan inf) %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1313, i64 32 ; 2 uses
  %i.ad = add nuw nsw i32 %.1107312, 8            ; 3 uses
  %i.ae = or disjoint i32 %i.ad, 7
  %i.af = icmp slt i32 %i.ae, %i.a
  br i1 %i.af, label %.lr.ph314, label %.preheader304, !llvm.loop !70

.preheader303:                                    ; preds = %.lr.ph321, %.preheader304
  %.0274.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader304 ], [ %i.bj, %.lr.ph321 ] ; 5 uses
  %.2108.lcssa = phi i32 [ %.1107.lcssa, %.preheader304 ], [ %i.bl, %.lr.ph321 ] ; 5 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader304 ], [ %i.bk, %.lr.ph321 ] ; 5 uses
  %i.ag = icmp slt i32 %.2108.lcssa, %i.a
  br i1 %i.ag, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader303
  %i.ah = xor i32 %.2108.lcssa, -1
  %i.ai = add i32 %i.a, %i.ah                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ai, 7
  br i1 %min.iters.check, label %.lr.ph328.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check447 = icmp ult i32 %i.ai, 63
  br i1 %min.iters.check447, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %i.ak, 56
  %n.vec = and i64 %i.ak, 8589934528              ; 5 uses
  %i.am = shl nuw nsw i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %.2.lcssa, i64 %i.am
  %i.ao = trunc i64 %n.vec to i32
  %i.ap = add i32 %.2108.lcssa, %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi448 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi449 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi450 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ax, %vector.body ]
  %i.aq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2.lcssa, i64 %i.aq ; 4 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 64
  %i.as = getelementptr i8, ptr %next.gep, i64 128
  %i.at = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !53
  %wide.load451 = load <16 x float>, ptr %i.ar, align 4, !tbaa !53
  %wide.load452 = load <16 x float>, ptr %i.as, align 4, !tbaa !53
  %wide.load453 = load <16 x float>, ptr %i.at, align 4, !tbaa !53
  %i.au = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %wide.load) ; 2 uses
  %i.av = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi448, <16 x float> %wide.load451) ; 2 uses
  %i.aw = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi449, <16 x float> %wide.load452) ; 2 uses
  %i.ax = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi450, <16 x float> %wide.load453) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.au, <16 x float> %i.av)
  %rdx.minmax.select455 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.aw)
  %rdx.minmax.select457 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select455, <16 x float> %i.ax)
  %i.az = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select457) ; 3 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph328.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.az, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %n.vec459 = and i64 %i.ak, 8589934584           ; 4 uses
  %i.ba = shl nuw nsw i64 %n.vec459, 2
  %i.bb = getelementptr i8, ptr %.2.lcssa, i64 %i.ba
  %i.bc = trunc i64 %n.vec459 to i32
  %i.bd = add i32 %.2108.lcssa, %i.bc
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index460 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next464, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi461 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.be = shl i64 %index460, 2
  %next.gep462 = getelementptr i8, ptr %.2.lcssa, i64 %i.be
  %wide.load463 = load <8 x float>, ptr %next.gep462, align 4, !tbaa !53
  %i.bf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi461, <8 x float> %wide.load463) ; 2 uses
  %index.next464 = add nuw i64 %index460, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next464, %n.vec459
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.bf) ; 2 uses
  %cmp.n465 = icmp eq i64 %i.ak, %n.vec459
  br i1 %cmp.n465, label %._crit_edge, label %.lr.ph328.preheader

.lr.ph328.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3327.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  %.3109326.ph = phi i32 [ %.2108.lcssa, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  %.0288325.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph328

.lr.ph321:                                        ; preds = %.preheader304, %.lr.ph321
  %.2320 = phi ptr [ %i.bk, %.lr.ph321 ], [ %.1.lcssa, %.preheader304 ] ; 2 uses
  %.2108319 = phi i32 [ %i.bl, %.lr.ph321 ], [ %.1107.lcssa, %.preheader304 ]
  %.0274318 = phi <4 x float> [ %i.bj, %.lr.ph321 ], [ splat (float f0xFF7FFFFF), %.preheader304 ]
  %i.bi = load <4 x float>, ptr %.2320, align 1, !tbaa !49
  %i.bj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0274318, <4 x float> nofpclass(nan inf) %i.bi) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2320, i64 16 ; 2 uses
  %i.bl = add nuw nsw i32 %.2108319, 4            ; 3 uses
  %i.bm = or disjoint i32 %i.bl, 3
  %i.bn = icmp slt i32 %i.bm, %i.a
  br i1 %i.bn, label %.lr.ph321, label %.preheader303, !llvm.loop !73

.lr.ph328:                                        ; preds = %.lr.ph328.preheader, %.lr.ph328
  %.3327 = phi ptr [ %i.bo, %.lr.ph328 ], [ %.3327.ph, %.lr.ph328.preheader ] ; 2 uses
  %.3109326 = phi i32 [ %i.bq, %.lr.ph328 ], [ %.3109326.ph, %.lr.ph328.preheader ]
  %.0288325 = phi float [ %.sroa.speculated184, %.lr.ph328 ], [ %.0288325.ph, %.lr.ph328.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.3327, i64 4
  %i.bp = load float, ptr %.3327, align 4, !tbaa !53
  %.sroa.speculated184 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0288325, float %i.bp) ; 2 uses
  %i.bq = add nuw nsw i32 %.3109326, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph328, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph328, %middle.block, %vec.epilog.middle.block, %.preheader303
  %.0288.lcssa = phi float [ f0xFF7FFFFF, %.preheader303 ], [ %i.bh, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %.sroa.speculated184, %.lr.ph328 ] ; 5 uses
  %i.br = icmp eq i32 %2, 8                       ; 2 uses
  br i1 %i.br, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.bs = shufflevector <16 x float> %.0266.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = shufflevector <16 x float> %.0266.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0270.lcssa, <8 x float> nofpclass(nan inf) %i.bs)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> nofpclass(nan inf) %i.bt) ; 2 uses
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.thread292

bb.b:                                             ; preds = %._crit_edge
  switch i32 %2, label %.thread292 [
    i32 4, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.bx = shufflevector <16 x float> %.0266.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = shufflevector <16 x float> %.0266.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0270.lcssa, <8 x float> nofpclass(nan inf) %i.bx)
  %i.ca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.by) ; 2 uses
  %i.cb = shufflevector <8 x float> %i.ca, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cc = shufflevector <8 x float> %i.ca, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0274.lcssa, <4 x float> nofpclass(nan inf) %i.cb)
  %i.ce = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> nofpclass(nan inf) %i.cc) ; 3 uses
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread292

bb.d:                                             ; preds = %bb.b
  %i.ch = shufflevector <16 x float> %.0266.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = shufflevector <16 x float> %.0266.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.ci) ; 2 uses
  %i.ck = shufflevector <8 x float> %i.cj, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cl = shufflevector <8 x float> %i.cj, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ck, <4 x float> nofpclass(nan inf) %i.cl) ; 2 uses
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.co = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cp)
  %i.cr = extractelement <4 x float> %i.cq, i64 0 ; 2 uses
  %i.cs = fcmp fast olt float %.0288.lcssa, %i.cr
  %.sroa.speculated176 = select i1 %i.cs, float %i.cr, float %.0288.lcssa ; 2 uses
  %i.ct = shufflevector <8 x float> %.0270.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cu = shufflevector <8 x float> %.0270.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) %i.cu) ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cy)
  %i.da = extractelement <4 x float> %i.cz, i64 0 ; 2 uses
  %i.db = fcmp fast olt float %.sroa.speculated176, %i.da
  %.sroa.speculated172 = select i1 %i.db, float %i.da, float %.sroa.speculated176 ; 2 uses
  %i.dc = shufflevector <4 x float> %.0274.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0274.lcssa, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.df = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de)
  %i.dg = extractelement <4 x float> %i.df, i64 0 ; 2 uses
  %i.dh = fcmp fast olt float %.sroa.speculated172, %i.dg
  %.sroa.speculated = select i1 %i.dh, float %i.dg, float %.sroa.speculated172 ; 2 uses
  %i.di = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 3 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> poison, <8 x i32> zeroinitializer
  %i.dl = shufflevector <4 x float> %i.di, <4 x float> poison, <16 x i32> zeroinitializer
  br label %.thread292

.thread292:                                       ; preds = %bb.b, %bb.c, %.thread, %bb.d
  %i.dm = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %.thread ], [ false, %bb.c ]
  %i.dn = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ false, %.thread ], [ true, %bb.c ]
  %.1289 = phi nsz float [ %.sroa.speculated, %bb.d ], [ %.0288.lcssa, %bb.b ], [ %.0288.lcssa, %.thread ], [ %.0288.lcssa, %bb.c ] ; 3 uses
  %.2276 = phi nsz <4 x float> [ %i.dj, %bb.d ], [ %.0274.lcssa, %bb.b ], [ %.0274.lcssa, %.thread ], [ %i.ce, %bb.c ]
  %.3273 = phi nsz <8 x float> [ %i.dk, %bb.d ], [ %.0270.lcssa, %bb.b ], [ %i.bv, %.thread ], [ %i.cf, %bb.c ]
  %.3269 = phi nsz <16 x float> [ %i.dl, %bb.d ], [ %.0266.lcssa, %bb.b ], [ %i.bw, %.thread ], [ %i.cg, %bb.c ]
  br i1 %i.b, label %.lr.ph333, label %.preheader302

.preheader302.loopexit:                           ; preds = %.lr.ph333
  %i.do = and i32 %i.a, 2147483632
  br label %.preheader302

.preheader302:                                    ; preds = %.preheader302.loopexit, %.thread292
  %.0284.lcssa = phi <16 x float> [ zeroinitializer, %.thread292 ], [ %i.eq, %.preheader302.loopexit ] ; 5 uses
  %.0124.lcssa = phi i32 [ 0, %.thread292 ], [ %i.do, %.preheader302.loopexit ] ; 3 uses
  %.0120.lcssa = phi ptr [ %0, %.thread292 ], [ %i.er, %.preheader302.loopexit ] ; 2 uses
  %i.dp = or disjoint i32 %.0124.lcssa, 7
  %i.dq = icmp slt i32 %i.dp, %i.a
  br i1 %i.dq, label %.lr.ph340, label %.preheader301

.lr.ph333:                                        ; preds = %.thread292, %.lr.ph333
  %.0120332 = phi ptr [ %i.er, %.lr.ph333 ], [ %0, %.thread292 ] ; 3 uses
  %.0124331 = phi i32 [ %i.es, %.lr.ph333 ], [ 0, %.thread292 ]
  %.0284330 = phi <16 x float> [ %i.eq, %.lr.ph333 ], [ zeroinitializer, %.thread292 ]
  %i.dr = load <16 x float>, ptr %.0120332, align 1, !tbaa !49
  %i.ds = fsub fast <16 x float> %i.dr, %.3269
  %i.dt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ds, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.du = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.dv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dw = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dv, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.dx = fcmp fast ogt <16 x float> %i.dw, %i.dv
  %i.dy = fadd fast <16 x float> %i.dw, splat (float -1.000000e+00)
  %i.dz = select fast <16 x i1> %i.dx, <16 x float> %i.dy, <16 x float> %i.dw ; 2 uses
  %i.ea = fneg fast <16 x float> %i.dz            ; 2 uses
  %i.eb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ea, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.du)
  %i.ec = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ea, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.eb) ; 8 uses
  %i.ed = fmul fast <16 x float> %i.ec, %i.ec
  %i.ee = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ef = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x3C088908))
  %i.eg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ef, <16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x3D2AA9C1))
  %i.eh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x3E2AAAAA))
  %i.ei = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eh, <16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float 5.000000e-01))
  %i.ej = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> nofpclass(nan inf) %i.ed, <16 x float> nofpclass(nan inf) %i.ec)
  %i.ek = fadd fast <16 x float> %i.ej, splat (float 1.000000e+00)
  %i.el = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.dz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.em = shl <16 x i32> %i.el, splat (i32 23)
  %i.en = add <16 x i32> %i.em, splat (i32 1065353216)
  %i.eo = bitcast <16 x i32> %i.en to <16 x float>
  %i.ep = fmul fast <16 x float> %i.ek, %i.eo     ; 2 uses
  store <16 x float> %i.ep, ptr %.0120332, align 1, !tbaa !49
  %i.eq = fadd fast <16 x float> %i.ep, %.0284330 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0120332, i64 64 ; 2 uses
  %i.es = add nuw nsw i32 %.0124331, 16           ; 2 uses
  %i.et = or disjoint i32 %i.es, 15
  %i.eu = icmp slt i32 %i.et, %i.a
  br i1 %i.eu, label %.lr.ph333, label %.preheader302.loopexit, !llvm.loop !75

.preheader301:                                    ; preds = %.lr.ph340, %.preheader302
  %.0280.lcssa = phi <8 x float> [ zeroinitializer, %.preheader302 ], [ %i.fw, %.lr.ph340 ] ; 3 uses
  %.1125.lcssa = phi i32 [ %.0124.lcssa, %.preheader302 ], [ %i.fy, %.lr.ph340 ] ; 3 uses
  %.1121.lcssa = phi ptr [ %.0120.lcssa, %.preheader302 ], [ %i.fx, %.lr.ph340 ] ; 2 uses
  %i.ev = or disjoint i32 %.1125.lcssa, 3
  %i.ew = icmp slt i32 %i.ev, %i.a
  br i1 %i.ew, label %.lr.ph347, label %.preheader300

.lr.ph340:                                        ; preds = %.preheader302, %.lr.ph340
  %.1121339 = phi ptr [ %i.fx, %.lr.ph340 ], [ %.0120.lcssa, %.preheader302 ] ; 3 uses
  %.1125338 = phi i32 [ %i.fy, %.lr.ph340 ], [ %.0124.lcssa, %.preheader302 ]
  %.0280337 = phi <8 x float> [ %i.fw, %.lr.ph340 ], [ zeroinitializer, %.preheader302 ]
  %i.ex = load <8 x float>, ptr %.1121339, align 1, !tbaa !49
  %i.ey = fsub fast <8 x float> %i.ex, %.3273
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> splat (float f0x42B0C0A5))
  %i.fa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ez, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fa, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fb, i32 1) ; 2 uses
  %i.fd = fcmp fast ogt <8 x float> %i.fc, %i.fb
  %i.fe = select <8 x i1> %i.fd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ff = fsub fast <8 x float> %i.fc, %i.fe      ; 2 uses
  %i.fg = fneg fast <8 x float> %i.ff             ; 2 uses
  %i.fh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fa)
  %i.fi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fh) ; 8 uses
  %i.fj = fmul fast <8 x float> %i.fi, %i.fi
  %i.fk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
end_hunk_0
begin_hunk_1_@_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn28softmax_bf16s_sse_avx512bf16EPtii(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1                       ; 28 uses
  %i.c = icmp sgt i32 %i.b, 15                    ; 3 uses
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader328

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = add nsw i32 %i.b, -16                    ; 2 uses
  %i.e = lshr i32 %i.d, 4                         ; 2 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.f, 536870910
  br label %.lr.ph

.preheader328.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.h = and i32 %i.d, 16
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader328.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader328.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0109331.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ar, %.preheader328.loopexit.unr-lcssa ] ; 2 uses
  %.0289329.epil.init = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader ], [ %i.aq, %.preheader328.loopexit.unr-lcssa ]
  %lcmp.mod607 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod607)
  %i.i = load <16 x i16>, ptr %.0109331.epil.init, align 1, !tbaa !49 ; 2 uses
  %i.j = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.k = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.i, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.l = shufflevector <16 x i16> %i.j, <16 x i16> %i.k, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.m = shufflevector <16 x i16> %i.j, <16 x i16> %i.k, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.n = bitcast <16 x i16> %i.l to <8 x i32>
  %i.o = bitcast <16 x i16> %i.m to <8 x i32>
  %i.p = shufflevector <8 x i32> %i.n, <8 x i32> %i.o, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.q = bitcast <16 x i32> %i.p to <16 x float>
  %i.r = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.0289329.epil.init, <16 x float> nofpclass(nan inf) %i.q, i32 4)
  %i.s = getelementptr inbounds nuw i8, ptr %.0109331.epil.init, i64 32
  br label %.preheader328.loopexit

.preheader328.loopexit:                           ; preds = %.preheader328.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa604 = phi <16 x float> [ %i.aq, %.preheader328.loopexit.unr-lcssa ], [ %i.r, %.lr.ph.epil.preheader ]
  %.lcssa603 = phi ptr [ %i.ar, %.preheader328.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ]
  %i.t = and i32 %i.b, 2147483632
  br label %.preheader328

.preheader328:                                    ; preds = %.preheader328.loopexit, %bb.c
  %.0289.lcssa = phi <16 x float> [ splat (float f0xFF7FFFFF), %bb.c ], [ %.lcssa604, %.preheader328.loopexit ] ; 7 uses
  %.0113.lcssa = phi i32 [ 0, %bb.c ], [ %i.t, %.preheader328.loopexit ] ; 3 uses
  %.0109.lcssa = phi ptr [ %0, %bb.c ], [ %.lcssa603, %.preheader328.loopexit ] ; 2 uses
  %i.u = or disjoint i32 %.0113.lcssa, 7
  %i.v = icmp slt i32 %i.u, %i.b
  br i1 %i.v, label %.lr.ph337, label %.preheader327

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0109331 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 3 uses
  %.0289329 = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.w = load <16 x i16>, ptr %.0109331, align 1, !tbaa !49 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float>
  %i.af = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.0289329, <16 x float> nofpclass(nan inf) %i.ae, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0109331, i64 32
  %i.ah = load <16 x i16>, ptr %i.ag, align 1, !tbaa !49 ; 2 uses
  %i.ai = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ah, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.aj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ah, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ak = shufflevector <16 x i16> %i.ai, <16 x i16> %i.aj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.al = shufflevector <16 x i16> %i.ai, <16 x i16> %i.aj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.am = bitcast <16 x i16> %i.ak to <8 x i32>
  %i.an = bitcast <16 x i16> %i.al to <8 x i32>
  %i.ao = shufflevector <8 x i32> %i.am, <8 x i32> %i.an, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ap = bitcast <16 x i32> %i.ao to <16 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.af, <16 x float> nofpclass(nan inf) %i.ap, i32 4) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0109331, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader328.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !232

.preheader327:                                    ; preds = %.lr.ph337, %.preheader328
  %.0293.lcssa = phi <8 x float> [ splat (float f0xFF7FFFFF), %.preheader328 ], [ %i.az, %.lr.ph337 ] ; 5 uses
  %.1114.lcssa = phi i32 [ %.0113.lcssa, %.preheader328 ], [ %i.bb, %.lr.ph337 ] ; 3 uses
  %.1110.lcssa = phi ptr [ %.0109.lcssa, %.preheader328 ], [ %i.ba, %.lr.ph337 ] ; 2 uses
  %i.as = or disjoint i32 %.1114.lcssa, 3
  %i.at = icmp slt i32 %i.as, %i.b
  br i1 %i.at, label %.lr.ph344, label %.preheader326

.lr.ph337:                                        ; preds = %.preheader328, %.lr.ph337
  %.1110336 = phi ptr [ %i.ba, %.lr.ph337 ], [ %.0109.lcssa, %.preheader328 ] ; 2 uses
  %.1114335 = phi i32 [ %i.bb, %.lr.ph337 ], [ %.0113.lcssa, %.preheader328 ]
  %.0293334 = phi <8 x float> [ %i.az, %.lr.ph337 ], [ splat (float f0xFF7FFFFF), %.preheader328 ]
  %i.au = load <8 x i16>, ptr %.1110336, align 1, !tbaa !49 ; 2 uses
  %i.av = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.au, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ax = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = bitcast <16 x i16> %i.ax to <8 x float>
  %i.az = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0293334, <8 x float> nofpclass(nan inf) %i.ay) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1110336, i64 16 ; 2 uses
  %i.bb = add nuw nsw i32 %.1114335, 8            ; 3 uses
  %i.bc = or disjoint i32 %i.bb, 7
  %i.bd = icmp slt i32 %i.bc, %i.b
  br i1 %i.bd, label %.lr.ph337, label %.preheader327, !llvm.loop !233

.preheader326:                                    ; preds = %.lr.ph344, %.preheader327
  %.0297.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader327 ], [ %i.da, %.lr.ph344 ] ; 5 uses
  %.2115.lcssa = phi i32 [ %.1114.lcssa, %.preheader327 ], [ %i.dc, %.lr.ph344 ] ; 5 uses
  %.2111.lcssa = phi ptr [ %.1110.lcssa, %.preheader327 ], [ %i.db, %.lr.ph344 ] ; 5 uses
  %i.be = icmp slt i32 %.2115.lcssa, %i.b
  br i1 %i.be, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader326
  %i.bf = xor i32 %.2115.lcssa, -1
  %i.bg = add i32 %i.b, %i.bf                     ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bg, 7
  br i1 %min.iters.check, label %.lr.ph351.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check469 = icmp ult i32 %i.bg, 63
  br i1 %min.iters.check469, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bi, 56
  %n.vec = and i64 %i.bi, 8589934528              ; 5 uses
  %i.bk = shl nuw nsw i64 %n.vec, 1
  %i.bl = getelementptr i8, ptr %.2111.lcssa, i64 %i.bk
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.2115.lcssa, %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi470 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi471 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi472 = phi <16 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ch, %vector.body ]
  %i.bo = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2111.lcssa, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 32
  %i.bq = getelementptr i8, ptr %next.gep, i64 64
  %i.br = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !62
  %wide.load473 = load <16 x i16>, ptr %i.bp, align 2, !tbaa !62
  %wide.load474 = load <16 x i16>, ptr %i.bq, align 2, !tbaa !62
  %wide.load475 = load <16 x i16>, ptr %i.br, align 2, !tbaa !62
  %i.bs = zext <16 x i16> %wide.load to <16 x i32>
  %i.bt = zext <16 x i16> %wide.load473 to <16 x i32>
  %i.bu = zext <16 x i16> %wide.load474 to <16 x i32>
  %i.bv = zext <16 x i16> %wide.load475 to <16 x i32>
  %i.bw = shl nuw <16 x i32> %i.bs, splat (i32 16)
  %i.bx = shl nuw <16 x i32> %i.bt, splat (i32 16)
  %i.by = shl nuw <16 x i32> %i.bu, splat (i32 16)
  %i.bz = shl nuw <16 x i32> %i.bv, splat (i32 16)
  %i.ca = bitcast <16 x i32> %i.bw to <16 x float>
  %i.cb = bitcast <16 x i32> %i.bx to <16 x float>
  %i.cc = bitcast <16 x i32> %i.by to <16 x float>
  %i.cd = bitcast <16 x i32> %i.bz to <16 x float>
  %i.ce = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.ca) ; 2 uses
  %i.cf = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi470, <16 x float> %i.cb) ; 2 uses
  %i.cg = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi471, <16 x float> %i.cc) ; 2 uses
  %i.ch = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi472, <16 x float> %i.cd) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ce, <16 x float> %i.cf)
  %rdx.minmax.select477 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select, <16 x float> %i.cg)
  %rdx.minmax.select479 = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %rdx.minmax.select477, <16 x float> %i.ch)
  %i.cj = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v16f32(<16 x float> %rdx.minmax.select479) ; 3 uses
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph351.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cj, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %n.vec481 = and i64 %i.bi, 8589934584           ; 4 uses
  %i.ck = shl nuw nsw i64 %n.vec481, 1
  %i.cl = getelementptr i8, ptr %.2111.lcssa, i64 %i.ck
  %i.cm = trunc i64 %n.vec481 to i32
  %i.cn = add i32 %.2115.lcssa, %i.cm
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index482 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next486, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi483 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cs, %vec.epilog.vector.body ]
  %i.co = shl i64 %index482, 1
  %next.gep484 = getelementptr i8, ptr %.2111.lcssa, i64 %i.co
  %wide.load485 = load <8 x i16>, ptr %next.gep484, align 2, !tbaa !62
  %i.cp = zext <8 x i16> %wide.load485 to <8 x i32>
  %i.cq = shl nuw <8 x i32> %i.cp, splat (i32 16)
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi483, <8 x float> %i.cr) ; 2 uses
  %index.next486 = add nuw i64 %index482, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next486, %n.vec481
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !235

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cu = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.cs) ; 2 uses
  %cmp.n487 = icmp eq i64 %i.bi, %n.vec481
  br i1 %cmp.n487, label %._crit_edge, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3112350.ph = phi ptr [ %.2111.lcssa, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  %.3116349.ph = phi i32 [ %.2115.lcssa, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.0300348.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %.lr.ph351

.lr.ph344:                                        ; preds = %.preheader327, %.lr.ph344
  %.2111343 = phi ptr [ %i.db, %.lr.ph344 ], [ %.1110.lcssa, %.preheader327 ] ; 2 uses
  %.2115342 = phi i32 [ %i.dc, %.lr.ph344 ], [ %.1114.lcssa, %.preheader327 ]
  %.0297341 = phi <4 x float> [ %i.da, %.lr.ph344 ], [ splat (float f0xFF7FFFFF), %.preheader327 ]
  %i.cv = load i64, ptr %.2111343, align 1, !tbaa !49
  %i.cw = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cx = bitcast <2 x i64> %i.cw to <8 x i16>
  %i.cy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cz = bitcast <8 x i16> %i.cy to <4 x float>
  %i.da = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0297341, <4 x float> nofpclass(nan inf) %i.cz) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2111343, i64 8 ; 2 uses
  %i.dc = add nuw nsw i32 %.2115342, 4            ; 3 uses
  %i.dd = or disjoint i32 %i.dc, 3
  %i.de = icmp slt i32 %i.dd, %i.b
  br i1 %i.de, label %.lr.ph344, label %.preheader326, !llvm.loop !236

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %.lr.ph351
  %.3112350 = phi ptr [ %i.df, %.lr.ph351 ], [ %.3112350.ph, %.lr.ph351.preheader ] ; 2 uses
  %.3116349 = phi i32 [ %i.dk, %.lr.ph351 ], [ %.3116349.ph, %.lr.ph351.preheader ]
  %.0300348 = phi float [ %.sroa.speculated197, %.lr.ph351 ], [ %.0300348.ph, %.lr.ph351.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %.3112350, i64 2
  %i.dg = load i16, ptr %.3112350, align 2, !tbaa !62
  %i.dh = zext i16 %i.dg to i32
  %i.di = shl nuw i32 %i.dh, 16
  %i.dj = bitcast i32 %i.di to float
  %.sroa.speculated197 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0300348, float %i.dj) ; 2 uses
  %i.dk = add nuw nsw i32 %.3116349, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dk, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph351, !llvm.loop !237

._crit_edge:                                      ; preds = %.lr.ph351, %middle.block, %vec.epilog.middle.block, %.preheader326
  %.0300.lcssa = phi float [ f0xFF7FFFFF, %.preheader326 ], [ %i.cu, %vec.epilog.middle.block ], [ %i.cj, %middle.block ], [ %.sroa.speculated197, %.lr.ph351 ] ; 5 uses
  %i.dl = icmp eq i32 %2, 8                       ; 2 uses
  br i1 %i.dl, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge
  %i.dm = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.do = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0293.lcssa, <8 x float> nofpclass(nan inf) %i.dm)
  %i.dp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.do, <8 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dq = shufflevector <8 x float> %i.dp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.thread315

bb.d:                                             ; preds = %._crit_edge
  switch i32 %2, label %.thread315 [
    i32 4, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.dr = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ds = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0293.lcssa, <8 x float> nofpclass(nan inf) %i.dr)
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.ds) ; 2 uses
  %i.dv = shufflevector <8 x float> %i.du, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dw = shufflevector <8 x float> %i.du, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0297.lcssa, <4 x float> nofpclass(nan inf) %i.dv)
  %i.dy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dw) ; 3 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ea = shufflevector <4 x float> %i.dy, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread315

bb.f:                                             ; preds = %bb.d
  %i.eb = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ec = shufflevector <16 x float> %.0289.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.ec) ; 2 uses
  %i.ee = shufflevector <8 x float> %i.ed, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ef = shufflevector <8 x float> %i.ed, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.ef) ; 2 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ei = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ek = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ej)
  %i.el = extractelement <4 x float> %i.ek, i64 0 ; 2 uses
  %i.em = fcmp fast olt float %.0300.lcssa, %i.el
  %.sroa.speculated193 = select i1 %i.em, float %i.el, float %.0300.lcssa ; 2 uses
  %i.en = shufflevector <8 x float> %.0293.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eo = shufflevector <8 x float> %.0293.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ep = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %i.eo) ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.er = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.eq) ; 2 uses
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.et = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.es)
  %i.eu = extractelement <4 x float> %i.et, i64 0 ; 2 uses
  %i.ev = fcmp fast olt float %.sroa.speculated193, %i.eu
  %.sroa.speculated189 = select i1 %i.ev, float %i.eu, float %.sroa.speculated193 ; 2 uses
  %i.ew = shufflevector <4 x float> %.0297.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ex = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0297.lcssa, <4 x float> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ez = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> nofpclass(nan inf) %i.ey)
  %i.fa = extractelement <4 x float> %i.ez, i64 0 ; 2 uses
  %i.fb = fcmp fast olt float %.sroa.speculated189, %i.fa
  %.sroa.speculated = select i1 %i.fb, float %i.fa, float %.sroa.speculated189 ; 2 uses
  %i.fc = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 3 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = shufflevector <4 x float> %i.fc, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ff = shufflevector <4 x float> %i.fc, <4 x float> poison, <16 x i32> zeroinitializer
  br label %.thread315

.thread315:                                       ; preds = %bb.d, %bb.e, %.thread, %bb.f
  %i.fg = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %.thread ], [ false, %bb.e ]
  %i.fh = phi i1 [ false, %bb.f ], [ false, %bb.d ], [ false, %.thread ], [ true, %bb.e ]
  %.1301 = phi nsz float [ %.sroa.speculated, %bb.f ], [ %.0300.lcssa, %bb.d ], [ %.0300.lcssa, %.thread ], [ %.0300.lcssa, %bb.e ] ; 3 uses
  %.2299 = phi nsz <4 x float> [ %i.fd, %bb.f ], [ %.0297.lcssa, %bb.d ], [ %.0297.lcssa, %.thread ], [ %i.dy, %bb.e ]
  %.3296 = phi nsz <8 x float> [ %i.fe, %bb.f ], [ %.0293.lcssa, %bb.d ], [ %i.dp, %.thread ], [ %i.dz, %bb.e ]
  %.3292 = phi nsz <16 x float> [ %i.ff, %bb.f ], [ %.0289.lcssa, %bb.d ], [ %i.dq, %.thread ], [ %i.ea, %bb.e ]
  br i1 %i.c, label %.lr.ph356, label %.preheader325

.preheader325.loopexit:                           ; preds = %.lr.ph356
  %i.fi = and i32 %i.b, 2147483632
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.loopexit, %.thread315
  %.0302.lcssa = phi <16 x float> [ zeroinitializer, %.thread315 ], [ %i.gz, %.preheader325.loopexit ] ; 5 uses
  %.0123.lcssa = phi i32 [ 0, %.thread315 ], [ %i.fi, %.preheader325.loopexit ] ; 3 uses
  %.0119.lcssa = phi ptr [ %0, %.thread315 ], [ %i.ha, %.preheader325.loopexit ] ; 2 uses
  %i.fj = or disjoint i32 %.0123.lcssa, 7
  %i.fk = icmp slt i32 %i.fj, %i.b
  br i1 %i.fk, label %.lr.ph363, label %.preheader324

.lr.ph356:                                        ; preds = %.thread315, %.lr.ph356
  %.0119355 = phi ptr [ %i.ha, %.lr.ph356 ], [ %0, %.thread315 ] ; 3 uses
  %.0123354 = phi i32 [ %i.hb, %.lr.ph356 ], [ 0, %.thread315 ]
  %.0302353 = phi <16 x float> [ %i.gz, %.lr.ph356 ], [ zeroinitializer, %.thread315 ]
  %i.fl = load <16 x i16>, ptr %.0119355, align 1, !tbaa !49 ; 2 uses
  %i.fm = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.fl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.fn = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.fl, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fo = shufflevector <16 x i16> %i.fm, <16 x i16> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fp = shufflevector <16 x i16> %i.fm, <16 x i16> %i.fn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fq = bitcast <16 x i16> %i.fo to <8 x i32>
  %i.fr = bitcast <16 x i16> %i.fp to <8 x i32>
  %i.fs = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ft = bitcast <16 x i32> %i.fs to <16 x float>
  %i.fu = fsub fast <16 x float> %i.ft, %.3292
  %i.fv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fv, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fy = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fx, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fz = fcmp fast ogt <16 x float> %i.fy, %i.fx
  %i.ga = fadd fast <16 x float> %i.fy, splat (float -1.000000e+00)
  %i.gb = select fast <16 x i1> %i.fz, <16 x float> %i.ga, <16 x float> %i.fy ; 2 uses
  %i.gc = fneg fast <16 x float> %i.gb            ; 2 uses
  %i.gd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fw)
  %i.ge = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gd) ; 8 uses
  %i.gf = fmul fast <16 x float> %i.ge, %i.ge
  %i.gg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.gh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gg, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x3C088908))
  %i.gi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gh, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x3D2AA9C1))
  %i.gj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gi, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float f0x3E2AAAAA))
  %i.gk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gj, <16 x float> nofpclass(nan inf) %i.ge, <16 x float> splat (float 5.000000e-01))
  %i.gl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gk, <16 x float> nofpclass(nan inf) %i.gf, <16 x float> nofpclass(nan inf) %i.ge)
  %i.gm = fadd fast <16 x float> %i.gl, splat (float 1.000000e+00)
  %i.gn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.go = shl <16 x i32> %i.gn, splat (i32 23)
  %i.gp = add <16 x i32> %i.go, splat (i32 1065353216)
  %i.gq = bitcast <16 x i32> %i.gp to <16 x float>
  %i.gr = fmul fast <16 x float> %i.gm, %i.gq     ; 2 uses
  %i.gs = bitcast <16 x float> %i.gr to <16 x i32>
  %i.gt = lshr <16 x i32> %i.gs, splat (i32 16)   ; 2 uses
  %i.gu = shufflevector <16 x i32> %i.gt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gv = shufflevector <16 x i32> %i.gt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.gu, <8 x i32> %i.gv)
  %i.gx = bitcast <16 x i16> %i.gw to <4 x i64>
  %i.gy = shufflevector <4 x i64> %i.gx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.gy, ptr %.0119355, align 1, !tbaa !49
  %i.gz = fadd fast <16 x float> %i.gr, %.0302353 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0119355, i64 32 ; 2 uses
  %i.hb = add nuw nsw i32 %.0123354, 16           ; 2 uses
  %i.hc = or disjoint i32 %i.hb, 15
  %i.hd = icmp slt i32 %i.hc, %i.b
  br i1 %i.hd, label %.lr.ph356, label %.preheader325.loopexit, !llvm.loop !238

.preheader324:                                    ; preds = %.lr.ph363, %.preheader325
end_hunk_1
