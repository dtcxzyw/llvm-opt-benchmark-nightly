Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_fma?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK4ncnn15Softmax_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.6:bb.a
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.jy, 7
  br i1 %min.iters.check, label %.lr.ph267.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i32 %i.jy, 31
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kb = and i64 %i.ka, 24
  %n.vec = and i64 %i.ka, 8589934560              ; 5 uses
  %i.kc = trunc i64 %n.vec to i32
  %i.kd = add i32 %.176.lcssa.i, %i.kc
  %i.ke = shl nuw nsw i64 %n.vec, 2
  %i.kf = getelementptr i8, ptr %.179.lcssa.i, i64 %i.ke
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.185.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.179.lcssa.i, i64 %i.kg ; 5 uses
  %i.kh = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.ki = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !65
  %wide.load119 = load <8 x float>, ptr %i.kh, align 4, !tbaa !65
  %wide.load120 = load <8 x float>, ptr %i.ki, align 4, !tbaa !65
  %wide.load121 = load <8 x float>, ptr %i.kj, align 4, !tbaa !65
  %i.kk = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.kl = fmul fast <8 x float> %wide.load119, %broadcast.splat
  %i.km = fmul fast <8 x float> %wide.load120, %broadcast.splat
  %i.kn = fmul fast <8 x float> %wide.load121, %broadcast.splat
  store <8 x float> %i.kk, ptr %next.gep, align 4, !tbaa !65
  store <8 x float> %i.kl, ptr %i.kh, align 4, !tbaa !65
  store <8 x float> %i.km, ptr %i.ki, align 4, !tbaa !65
  store <8 x float> %i.kn, ptr %i.kj, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ka, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL7softmaxEPfii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph267.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ka, 8589934584           ; 4 uses
  %i.kp = trunc i64 %n.vec122 to i32
  %i.kq = add i32 %.176.lcssa.i, %i.kp
  %i.kr = shl nuw nsw i64 %n.vec122, 2
  %i.ks = getelementptr i8, ptr %.179.lcssa.i, i64 %i.kr
  %broadcast.splatinsert123 = insertelement <8 x float> poison, float %.185.i, i64 0
  %broadcast.splat124 = shufflevector <8 x float> %broadcast.splatinsert123, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 2 uses
  %i.kt = shl i64 %index125, 2
  %next.gep126 = getelementptr i8, ptr %.179.lcssa.i, i64 %i.kt ; 2 uses
  %wide.load127 = load <8 x float>, ptr %next.gep126, align 4, !tbaa !65
  %i.ku = fmul fast <8 x float> %wide.load127, %broadcast.splat124
  store <8 x float> %i.ku, ptr %next.gep126, align 4, !tbaa !65
  %index.next128 = add nuw i64 %index125, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.kv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !220

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %i.ka, %n.vec122
  br i1 %cmp.n129, label %_ZN4ncnnL7softmaxEPfii.exit, label %.lr.ph267.i.preheader

.lr.ph267.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.277266.i.ph = phi i32 [ %.176.lcssa.i, %iter.check ], [ %i.kd, %vec.epilog.iter.check ], [ %i.kq, %vec.epilog.middle.block ]
  %.280265.i.ph = phi ptr [ %.179.lcssa.i, %iter.check ], [ %i.kf, %vec.epilog.iter.check ], [ %i.ks, %vec.epilog.middle.block ]
  br label %.lr.ph267.i

.lr.ph262.i:                                      ; preds = %.preheader211.i, %.lr.ph262.i
  %.176261.i = phi i32 [ %i.kz, %.lr.ph262.i ], [ %.075.lcssa.i, %.preheader211.i ]
  %.179260.i = phi ptr [ %i.ky, %.lr.ph262.i ], [ %.078.lcssa.i, %.preheader211.i ] ; 3 uses
  %i.kw = load <4 x float>, ptr %.179260.i, align 1, !tbaa !61
  %i.kx = fmul fast <4 x float> %i.kw, %.2201.i
  store <4 x float> %i.kx, ptr %.179260.i, align 1, !tbaa !61
  %i.ky = getelementptr inbounds nuw i8, ptr %.179260.i, i64 16 ; 2 uses
  %i.kz = add nuw nsw i32 %.176261.i, 4           ; 3 uses
  %i.la = or disjoint i32 %i.kz, 3
  %i.lb = icmp slt i32 %i.la, %i.an
  br i1 %i.lb, label %.lr.ph262.i, label %.preheader.i, !llvm.loop !6

.lr.ph267.i:                                      ; preds = %.lr.ph267.i.preheader, %.lr.ph267.i
  %.277266.i = phi i32 [ %i.lf, %.lr.ph267.i ], [ %.277266.i.ph, %.lr.ph267.i.preheader ]
  %.280265.i = phi ptr [ %i.lc, %.lr.ph267.i ], [ %.280265.i.ph, %.lr.ph267.i.preheader ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.280265.i, i64 4
  %i.ld = load float, ptr %.280265.i, align 4, !tbaa !65
  %i.le = fmul fast float %i.ld, %.185.i
  store float %i.le, ptr %.280265.i, align 4, !tbaa !65
  %i.lf = add nuw nsw i32 %.277266.i, 1           ; 2 uses
  %exitcond286.not.i = icmp eq i32 %i.lf, %i.an
  br i1 %exitcond286.not.i, label %_ZN4ncnnL7softmaxEPfii.exit, label %.lr.ph267.i, !llvm.loop !221

_ZN4ncnnL7softmaxEPfii.exit:                      ; preds = %.lr.ph267.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.lg = load i32, ptr %6, align 4, !tbaa !33    ; 2 uses
  %i.lh = load i32, ptr %7, align 4, !tbaa !33    ; 2 uses
  %i.li = mul nsw i32 %i.lh, %i.lg
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [4 x i8], ptr %.146, i64 %i.lj ; 2 uses
  %i.ll = add nuw nsw i32 %.047, 1                ; 2 uses
  %i.lm = load i32, ptr %5, align 4, !tbaa !33    ; 2 uses
  %i.ln = icmp slt i32 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !222

._crit_edge53:                                    ; preds = %._crit_edge50, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge53, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ss(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #12

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 22 uses
  %i.b = icmp sgt i32 %i.a, 7                     ; 3 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader229

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -8                     ; 2 uses
  %i.d = lshr i32 %i.c, 3                         ; 2 uses
  %i.e = add nuw nsw i32 %i.d, 1                  ; 2 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph

.preheader229.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.g = and i32 %i.c, 8
  %lcmp.mod.not.not = icmp eq i32 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader229.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader229.loopexit.unr-lcssa, %.lr.ph.preheader
  %.076232.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.y, %.preheader229.loopexit.unr-lcssa ] ; 2 uses
  %.0207230.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader ], [ %i.x, %.preheader229.loopexit.unr-lcssa ]
  %lcmp.mod450 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod450)
  %i.h = load <8 x i16>, ptr %.076232.epil.init, align 1, !tbaa !61 ; 2 uses
  %3 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.h, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %4 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.h, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.i = shufflevector <8 x i16> %3, <8 x i16> %4, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.j = bitcast <16 x i16> %i.i to <8 x float>
  %i.k = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.epil.init, <8 x float> nofpclass(nan inf) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %.076232.epil.init, i64 16
  br label %.preheader229.loopexit

.preheader229.loopexit:                           ; preds = %.preheader229.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa447 = phi <8 x float> [ %i.x, %.preheader229.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ]
  %.lcssa446 = phi ptr [ %i.y, %.preheader229.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = and i32 %i.a, 2147483640
  br label %.preheader229

.preheader229:                                    ; preds = %.preheader229.loopexit, %bb.a
  %.0207.lcssa = phi <8 x float> [ splat (float f0xFF7FFFFF), %bb.a ], [ %.lcssa447, %.preheader229.loopexit ] ; 5 uses
  %.079.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %.preheader229.loopexit ] ; 3 uses
  %.076.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa446, %.preheader229.loopexit ] ; 2 uses
  %i.n = or disjoint i32 %.079.lcssa, 3
  %i.o = icmp slt i32 %i.n, %i.a
  br i1 %i.o, label %.lr.ph238, label %.preheader228

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.076232 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %.0207230 = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = load <8 x i16>, ptr %.076232, align 1, !tbaa !61 ; 2 uses
  %5 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.p, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %6 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.p, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.q = shufflevector <8 x i16> %5, <8 x i16> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.r = bitcast <16 x i16> %i.q to <8 x float>
  %i.s = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230, <8 x float> nofpclass(nan inf) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.076232, i64 16
  %i.u = load <8 x i16>, ptr %i.t, align 1, !tbaa !61 ; 2 uses
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.u, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %8 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.u, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.v = shufflevector <8 x i16> %7, <8 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.w = bitcast <16 x i16> %i.v to <8 x float>
  %i.x = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.s, <8 x float> nofpclass(nan inf) %i.w) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.076232, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader229.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

.preheader228:                                    ; preds = %.lr.ph238, %.preheader229
  %.0210.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader229 ], [ %i.bu, %.lr.ph238 ] ; 4 uses
  %.180.lcssa = phi i32 [ %.079.lcssa, %.preheader229 ], [ %i.bw, %.lr.ph238 ] ; 5 uses
  %.177.lcssa = phi ptr [ %.076.lcssa, %.preheader229 ], [ %i.bv, %.lr.ph238 ] ; 5 uses
  %i.z = icmp slt i32 %.180.lcssa, %i.a
  br i1 %i.z, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader228
  %i.aa = xor i32 %.180.lcssa, -1
  %i.ab = add i32 %i.a, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ab, 3
  br i1 %min.iters.check, label %.lr.ph245.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check329 = icmp ult i32 %i.ab, 31
  br i1 %min.iters.check329, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 28
  %n.vec = and i64 %i.ad, 8589934560              ; 5 uses
  %i.af = shl nuw nsw i64 %n.vec, 1
  %i.ag = getelementptr i8, ptr %.177.lcssa, i64 %i.af
  %i.ah = trunc i64 %n.vec to i32
  %i.ai = add i32 %.180.lcssa, %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi330 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi331 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi332 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bc, %vector.body ]
  %i.aj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.177.lcssa, i64 %i.aj ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !74
  %wide.load333 = load <8 x i16>, ptr %i.ak, align 2, !tbaa !74
  %wide.load334 = load <8 x i16>, ptr %i.al, align 2, !tbaa !74
  %wide.load335 = load <8 x i16>, ptr %i.am, align 2, !tbaa !74
  %i.an = zext <8 x i16> %wide.load to <8 x i32>
  %i.ao = zext <8 x i16> %wide.load333 to <8 x i32>
  %i.ap = zext <8 x i16> %wide.load334 to <8 x i32>
  %i.aq = zext <8 x i16> %wide.load335 to <8 x i32>
  %i.ar = shl nuw <8 x i32> %i.an, splat (i32 16)
  %i.as = shl nuw <8 x i32> %i.ao, splat (i32 16)
  %i.at = shl nuw <8 x i32> %i.ap, splat (i32 16)
  %i.au = shl nuw <8 x i32> %i.aq, splat (i32 16)
  %i.av = bitcast <8 x i32> %i.ar to <8 x float>
  %i.aw = bitcast <8 x i32> %i.as to <8 x float>
  %i.ax = bitcast <8 x i32> %i.at to <8 x float>
  %i.ay = bitcast <8 x i32> %i.au to <8 x float>
  %i.az = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.av) ; 2 uses
  %i.ba = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi330, <8 x float> %i.aw) ; 2 uses
  %i.bb = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi331, <8 x float> %i.ax) ; 2 uses
  %i.bc = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi332, <8 x float> %i.ay) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.az, <8 x float> %i.ba)
  %rdx.minmax.select337 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.bb)
  %rdx.minmax.select339 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select337, <8 x float> %i.bc)
  %i.be = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select339) ; 3 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph245.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.be, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %n.vec340 = and i64 %i.ad, 8589934588           ; 4 uses
  %i.bf = shl nuw nsw i64 %n.vec340, 1
  %i.bg = getelementptr i8, ptr %.177.lcssa, i64 %i.bf
  %i.bh = trunc i64 %n.vec340 to i32
  %i.bi = add i32 %.180.lcssa, %i.bh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index341 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next345, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi342 = phi <4 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %i.bj = shl i64 %index341, 1
  %next.gep343 = getelementptr i8, ptr %.177.lcssa, i64 %i.bj
  %wide.load344 = load <4 x i16>, ptr %next.gep343, align 2, !tbaa !74
  %i.bk = zext <4 x i16> %wide.load344 to <4 x i32>
  %i.bl = shl nuw <4 x i32> %i.bk, splat (i32 16)
  %i.bm = bitcast <4 x i32> %i.bl to <4 x float>
  %i.bn = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi342, <4 x float> %i.bm) ; 2 uses
  %index.next345 = add nuw i64 %index341, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bp = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.bn) ; 2 uses
  %cmp.n346 = icmp eq i64 %i.ad, %n.vec340
  br i1 %cmp.n346, label %._crit_edge, label %.lr.ph245.preheader

.lr.ph245.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.278244.ph = phi ptr [ %.177.lcssa, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.281243.ph = phi i32 [ %.180.lcssa, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0213242.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph245

.lr.ph238:                                        ; preds = %.preheader229, %.lr.ph238
  %.177237 = phi ptr [ %i.bv, %.lr.ph238 ], [ %.076.lcssa, %.preheader229 ] ; 2 uses
  %.180236 = phi i32 [ %i.bw, %.lr.ph238 ], [ %.079.lcssa, %.preheader229 ]
  %.0210235 = phi <4 x float> [ %i.bu, %.lr.ph238 ], [ splat (float f0xFF7FFFFF), %.preheader229 ]
  %i.bq = load i64, ptr %.177237, align 1, !tbaa !61
  %i.br = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bs = bitcast <2 x i64> %i.br to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bt = bitcast <8 x i16> %9 to <4 x float>
  %i.bu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235, <4 x float> nofpclass(nan inf) %i.bt) ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.177237, i64 8 ; 2 uses
  %i.bw = add nuw nsw i32 %.180236, 4             ; 3 uses
  %i.bx = or disjoint i32 %i.bw, 3
  %i.by = icmp slt i32 %i.bx, %i.a
  br i1 %i.by, label %.lr.ph238, label %.preheader228, !llvm.loop !8

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %.lr.ph245
  %.278244 = phi ptr [ %i.bz, %.lr.ph245 ], [ %.278244.ph, %.lr.ph245.preheader ] ; 2 uses
  %.281243 = phi i32 [ %i.ce, %.lr.ph245 ], [ %.281243.ph, %.lr.ph245.preheader ]
  %.0213242 = phi float [ %.sroa.speculated133, %.lr.ph245 ], [ %.0213242.ph, %.lr.ph245.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.278244, i64 2
  %i.ca = load i16, ptr %.278244, align 2, !tbaa !74
  %i.cb = zext i16 %i.ca to i32
  %i.cc = shl nuw i32 %i.cb, 16
  %i.cd = bitcast i32 %i.cc to float
  %.sroa.speculated133 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242, float %i.cd) ; 2 uses
  %i.ce = add nuw nsw i32 %.281243, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph245, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph245, %middle.block, %vec.epilog.middle.block, %.preheader228
  %.0213.lcssa = phi float [ f0xFF7FFFFF, %.preheader228 ], [ %i.bp, %vec.epilog.middle.block ], [ %i.be, %middle.block ], [ %.sroa.speculated133, %.lr.ph245 ] ; 4 uses
  %i.cf = icmp eq i32 %2, 4                       ; 2 uses
  br i1 %i.cf, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.cg = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ch = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ci = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.cg)
  %i.cj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.cl = icmp eq i32 %2, 1
  br i1 %i.cl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cm = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cn = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cp) ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cq, <4 x float> nofpclass(nan inf) %i.cr)
  %i.ct = extractelement <4 x float> %i.cs, i64 0 ; 2 uses
  %i.cu = fcmp fast olt float %.0213.lcssa, %i.ct
  %.sroa.speculated129 = select i1 %i.cu, float %i.ct, float %.0213.lcssa ; 2 uses
  %i.cv = shufflevector <4 x float> %.0210.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.cv) ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cw, <4 x float> nofpclass(nan inf) %i.cx)
  %i.cz = extractelement <4 x float> %i.cy, i64 0 ; 2 uses
  %i.da = fcmp fast olt float %.sroa.speculated129, %i.cz
  %.sroa.speculated = select i1 %i.da, float %i.cz, float %.sroa.speculated129 ; 2 uses
  %i.db = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = shufflevector <4 x float> %i.db, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.de = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.thread ]
  %.1214 = phi nsz float [ %.sroa.speculated, %bb.c ], [ %.0213.lcssa, %bb.b ], [ %.0213.lcssa, %.thread ] ; 3 uses
  %.2212 = phi nsz <4 x float> [ %i.dc, %bb.c ], [ %.0210.lcssa, %bb.b ], [ %i.cj, %.thread ]
  %.2209 = phi nsz <8 x float> [ %i.dd, %bb.c ], [ %.0207.lcssa, %bb.b ], [ %i.ck, %.thread ]
  br i1 %i.b, label %.lr.ph251, label %.preheader227

.preheader227.loopexit:                           ; preds = %.lr.ph251
  %i.df = and i32 %i.a, 2147483640
  br label %.preheader227

.preheader227:                                    ; preds = %.preheader227.loopexit, %bb.d
  %.0215.lcssa = phi <8 x float> [ zeroinitializer, %bb.d ], [ %i.ep, %.preheader227.loopexit ] ; 5 uses
  %.085.lcssa = phi ptr [ %0, %bb.d ], [ %i.eq, %.preheader227.loopexit ] ; 2 uses
  %.082.lcssa = phi i32 [ 0, %bb.d ], [ %i.df, %.preheader227.loopexit ] ; 3 uses
  %i.dg = or disjoint i32 %.082.lcssa, 3
  %i.dh = icmp slt i32 %i.dg, %i.a
  br i1 %i.dh, label %.lr.ph258, label %.preheader226

.lr.ph251:                                        ; preds = %bb.d, %.lr.ph251
  %.082249 = phi i32 [ %i.er, %.lr.ph251 ], [ 0, %bb.d ]
  %.085248 = phi ptr [ %i.eq, %.lr.ph251 ], [ %0, %bb.d ] ; 3 uses
  %.0215247 = phi <8 x float> [ %i.ep, %.lr.ph251 ], [ zeroinitializer, %bb.d ]
  %i.di = load <8 x i16>, ptr %.085248, align 1, !tbaa !61 ; 2 uses
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %11 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.di, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dj = shufflevector <8 x i16> %10, <8 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dk = bitcast <16 x i16> %i.dj to <8 x float>
  %i.dl = fsub fast <8 x float> %i.dk, %.2209
  %i.dm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> splat (float f0x42B0C0A5))
  %i.dn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.do = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dn, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.do, i32 1) ; 2 uses
  %i.dq = fcmp fast ogt <8 x float> %i.dp, %i.do
  %i.dr = select <8 x i1> %i.dq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ds = fsub fast <8 x float> %i.dp, %i.dr      ; 2 uses
  %i.dt = fneg fast <8 x float> %i.ds             ; 2 uses
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dt, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dn)
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dt, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.du) ; 8 uses
  %i.dw = fmul fast <8 x float> %i.dv, %i.dv
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dx, <8 x float> nofpclass(nan inf) %i.dv, <8 x float> splat (float f0x3C088908))
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) %i.dv, <8 x float> splat (float f0x3D2AA9C1))
  %i.ea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.dv, <8 x float> splat (float f0x3E2AAAAA))
  %i.eb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dv, <8 x float> splat (float 5.000000e-01))
  %i.ec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.dv)
  %i.ed = fadd fast <8 x float> %i.ec, splat (float 1.000000e+00)
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ds)
  %i.ef = shl <8 x i32> %i.ee, splat (i32 23)
  %i.eg = add <8 x i32> %i.ef, splat (i32 1065353216)
  %i.eh = bitcast <8 x i32> %i.eg to <8 x float>
  %i.ei = fmul fast <8 x float> %i.ed, %i.eh      ; 2 uses
  %i.ej = bitcast <8 x float> %i.ei to <8 x i32>  ; 2 uses
  %i.ek = shufflevector <8 x i32> %i.ej, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.el = shufflevector <8 x i32> %i.ej, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.em = lshr <4 x i32> %i.ek, splat (i32 16)
  %i.en = lshr <4 x i32> %i.el, splat (i32 16)
  %i.eo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.em, <4 x i32> %i.en)
  store <8 x i16> %i.eo, ptr %.085248, align 1, !tbaa !61
  %i.ep = fadd fast <8 x float> %i.ei, %.0215247  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.085248, i64 16 ; 2 uses
  %i.er = add nuw nsw i32 %.082249, 8             ; 2 uses
  %i.es = or disjoint i32 %i.er, 7
  %i.et = icmp slt i32 %i.es, %i.a
  br i1 %i.et, label %.lr.ph251, label %.preheader227.loopexit, !llvm.loop !9

.preheader226:                                    ; preds = %.lr.ph258, %.preheader227
  %.0218.lcssa = phi <4 x float> [ zeroinitializer, %.preheader227 ], [ %i.iu, %.lr.ph258 ] ; 3 uses
  %.186.lcssa = phi ptr [ %.085.lcssa, %.preheader227 ], [ %i.iv, %.lr.ph258 ] ; 5 uses
  %.183.lcssa = phi i32 [ %.082.lcssa, %.preheader227 ], [ %i.iw, %.lr.ph258 ] ; 5 uses
  %i.eu = icmp slt i32 %.183.lcssa, %i.a
  br i1 %i.eu, label %iter.check372, label %._crit_edge266

iter.check372:                                    ; preds = %.preheader226
  %i.ev = xor i32 %.183.lcssa, -1
  %i.ew = add i32 %i.a, %i.ev                     ; 3 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 5 uses
  %min.iters.check349 = icmp ult i32 %i.ew, 3
  br i1 %min.iters.check349, label %.lr.ph265.preheader, label %vector.main.loop.iter.check350

vector.main.loop.iter.check350:                   ; preds = %iter.check372
  %min.iters.check351 = icmp ult i32 %i.ew, 15
  br i1 %min.iters.check351, label %vec.epilog.ph376, label %vector.ph352

vector.ph352:                                     ; preds = %vector.main.loop.iter.check350
  %i.ez = and i64 %i.ey, 12
  %n.vec353 = and i64 %i.ey, 8589934576           ; 5 uses
  %i.fa = trunc i64 %n.vec353 to i32
  %i.fb = add i32 %.183.lcssa, %i.fa
  %i.fc = shl nuw nsw i64 %n.vec353, 1
  %i.fd = getelementptr i8, ptr %.186.lcssa, i64 %i.fc
  %broadcast.splatinsert354 = insertelement <4 x float> poison, float %.1214, i64 0
  %broadcast.splat355 = shufflevector <4 x float> %broadcast.splatinsert354, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph352, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph352 ], [ %index.next367, %vector.body356 ] ; 2 uses
  %vec.phi358 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.go, %vector.body356 ]
  %vec.phi359 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.gp, %vector.body356 ]
  %vec.phi360 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.gq, %vector.body356 ]
  %vec.phi361 = phi <4 x float> [ zeroinitializer, %vector.ph352 ], [ %i.gr, %vector.body356 ]
  %i.fe = shl i64 %index357, 1
  %next.gep362 = getelementptr i8, ptr %.186.lcssa, i64 %i.fe ; 5 uses
  %i.ff = getelementptr i8, ptr %next.gep362, i64 8 ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep362, i64 16 ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep362, i64 24 ; 2 uses
  %wide.load363 = load <4 x i16>, ptr %next.gep362, align 2, !tbaa !74
  %wide.load364 = load <4 x i16>, ptr %i.ff, align 2, !tbaa !74
  %wide.load365 = load <4 x i16>, ptr %i.fg, align 2, !tbaa !74
  %wide.load366 = load <4 x i16>, ptr %i.fh, align 2, !tbaa !74
  %i.fi = zext <4 x i16> %wide.load363 to <4 x i32>
  %i.fj = zext <4 x i16> %wide.load364 to <4 x i32>
  %i.fk = zext <4 x i16> %wide.load365 to <4 x i32>
  %i.fl = zext <4 x i16> %wide.load366 to <4 x i32>
  %i.fm = shl nuw <4 x i32> %i.fi, splat (i32 16)
  %i.fn = shl nuw <4 x i32> %i.fj, splat (i32 16)
  %i.fo = shl nuw <4 x i32> %i.fk, splat (i32 16)
  %i.fp = shl nuw <4 x i32> %i.fl, splat (i32 16)
  %i.fq = bitcast <4 x i32> %i.fm to <4 x float>
  %i.fr = bitcast <4 x i32> %i.fn to <4 x float>
  %i.fs = bitcast <4 x i32> %i.fo to <4 x float>
  %i.ft = bitcast <4 x i32> %i.fp to <4 x float>
  %i.fu = fsub fast <4 x float> %i.fq, %broadcast.splat355
  %i.fv = fsub fast <4 x float> %i.fr, %broadcast.splat355
  %i.fw = fsub fast <4 x float> %i.fs, %broadcast.splat355
  %i.fx = fsub fast <4 x float> %i.ft, %broadcast.splat355
  %i.fy = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.fu) ; 2 uses
  %i.fz = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.fv) ; 2 uses
  %i.ga = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.fw) ; 2 uses
  %i.gb = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.fx) ; 2 uses
  %i.gc = bitcast <4 x float> %i.fy to <4 x i32>
  %i.gd = bitcast <4 x float> %i.fz to <4 x i32>
  %i.ge = bitcast <4 x float> %i.ga to <4 x i32>
  %i.gf = bitcast <4 x float> %i.gb to <4 x i32>
  %i.gg = lshr <4 x i32> %i.gc, splat (i32 16)
  %i.gh = lshr <4 x i32> %i.gd, splat (i32 16)
  %i.gi = lshr <4 x i32> %i.ge, splat (i32 16)
  %i.gj = lshr <4 x i32> %i.gf, splat (i32 16)
  %i.gk = trunc nuw nsw <4 x i32> %i.gg to <4 x i16>
  %i.gl = trunc nuw nsw <4 x i32> %i.gh to <4 x i16>
  %i.gm = trunc nuw nsw <4 x i32> %i.gi to <4 x i16>
  %i.gn = trunc nuw nsw <4 x i32> %i.gj to <4 x i16>
  store <4 x i16> %i.gk, ptr %next.gep362, align 2, !tbaa !74
  store <4 x i16> %i.gl, ptr %i.ff, align 2, !tbaa !74
  store <4 x i16> %i.gm, ptr %i.fg, align 2, !tbaa !74
  store <4 x i16> %i.gn, ptr %i.fh, align 2, !tbaa !74
  %i.go = fadd fast <4 x float> %i.fy, %vec.phi358 ; 2 uses
  %i.gp = fadd fast <4 x float> %i.fz, %vec.phi359 ; 2 uses
  %i.gq = fadd fast <4 x float> %i.ga, %vec.phi360 ; 2 uses
  %i.gr = fadd fast <4 x float> %i.gb, %vec.phi361 ; 2 uses
  %index.next367 = add nuw i64 %index357, 16      ; 2 uses
  %i.gs = icmp eq i64 %index.next367, %n.vec353
  br i1 %i.gs, label %middle.block368, label %vector.body356, !llvm.loop !227

middle.block368:                                  ; preds = %vector.body356
  %bin.rdx = fadd fast <4 x float> %i.gp, %i.go
  %bin.rdx369 = fadd fast <4 x float> %i.gq, %bin.rdx
  %bin.rdx370 = fadd fast <4 x float> %i.gr, %bin.rdx369
  %i.gt = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx370) ; 3 uses
  %cmp.n371 = icmp eq i64 %i.ey, %n.vec353
  br i1 %cmp.n371, label %._crit_edge266, label %vec.epilog.iter.check373

vec.epilog.iter.check373:                         ; preds = %middle.block368
  %min.epilog.iters.check375 = icmp eq i64 %i.ez, 0
  br i1 %min.epilog.iters.check375, label %.lr.ph265.preheader, label %vec.epilog.ph376, !prof !75

vec.epilog.ph376:                                 ; preds = %vector.main.loop.iter.check350, %vec.epilog.iter.check373
  %vec.epilog.resume.val377 = phi i64 [ %n.vec353, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check350 ]
  %bc.merge.rdx378 = phi float [ %i.gt, %vec.epilog.iter.check373 ], [ 0.000000e+00, %vector.main.loop.iter.check350 ]
  %n.vec379 = and i64 %i.ey, 8589934588           ; 4 uses
  %i.gu = trunc i64 %n.vec379 to i32
  %i.gv = add i32 %.183.lcssa, %i.gu
  %i.gw = shl nuw nsw i64 %n.vec379, 1
  %i.gx = getelementptr i8, ptr %.186.lcssa, i64 %i.gw
  %i.gy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx378, i64 0
  %broadcast.splatinsert380 = insertelement <4 x float> poison, float %.1214, i64 0
  %broadcast.splat381 = shufflevector <4 x float> %broadcast.splatinsert380, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body382

vec.epilog.vector.body382:                        ; preds = %vec.epilog.vector.body382, %vec.epilog.ph376
  %index383 = phi i64 [ %vec.epilog.resume.val377, %vec.epilog.ph376 ], [ %index.next387, %vec.epilog.vector.body382 ] ; 2 uses
  %vec.phi384 = phi <4 x float> [ %i.gy, %vec.epilog.ph376 ], [ %i.hi, %vec.epilog.vector.body382 ]
  %i.gz = shl i64 %index383, 1
  %next.gep385 = getelementptr i8, ptr %.186.lcssa, i64 %i.gz ; 2 uses
  %wide.load386 = load <4 x i16>, ptr %next.gep385, align 2, !tbaa !74
  %i.ha = zext <4 x i16> %wide.load386 to <4 x i32>
  %i.hb = shl nuw <4 x i32> %i.ha, splat (i32 16)
  %i.hc = bitcast <4 x i32> %i.hb to <4 x float>
  %i.hd = fsub fast <4 x float> %i.hc, %broadcast.splat381
  %i.he = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hd) ; 2 uses
  %i.hf = bitcast <4 x float> %i.he to <4 x i32>
  %i.hg = lshr <4 x i32> %i.hf, splat (i32 16)
  %i.hh = trunc nuw nsw <4 x i32> %i.hg to <4 x i16>
  store <4 x i16> %i.hh, ptr %next.gep385, align 2, !tbaa !74
  %i.hi = fadd fast <4 x float> %i.he, %vec.phi384 ; 2 uses
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next387, %n.vec379
  br i1 %i.hj, label %vec.epilog.middle.block388, label %vec.epilog.vector.body382, !llvm.loop !228

vec.epilog.middle.block388:                       ; preds = %vec.epilog.vector.body382
  %i.hk = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hi) ; 2 uses
  %cmp.n389 = icmp eq i64 %i.ey, %n.vec379
  br i1 %cmp.n389, label %._crit_edge266, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %iter.check372, %vec.epilog.iter.check373, %vec.epilog.middle.block388
  %.284264.ph = phi i32 [ %.183.lcssa, %iter.check372 ], [ %i.fb, %vec.epilog.iter.check373 ], [ %i.gv, %vec.epilog.middle.block388 ]
  %.287263.ph = phi ptr [ %.186.lcssa, %iter.check372 ], [ %i.fd, %vec.epilog.iter.check373 ], [ %i.gx, %vec.epilog.middle.block388 ]
  %.088262.ph = phi float [ 0.000000e+00, %iter.check372 ], [ %i.gt, %vec.epilog.iter.check373 ], [ %i.hk, %vec.epilog.middle.block388 ]
  br label %.lr.ph265

.lr.ph258:                                        ; preds = %.preheader227, %.lr.ph258
  %.183257 = phi i32 [ %i.iw, %.lr.ph258 ], [ %.082.lcssa, %.preheader227 ]
  %.186256 = phi ptr [ %i.iv, %.lr.ph258 ], [ %.085.lcssa, %.preheader227 ] ; 3 uses
  %.0218255 = phi <4 x float> [ %i.iu, %.lr.ph258 ], [ zeroinitializer, %.preheader227 ]
  %i.hl = load i64, ptr %.186256, align 1, !tbaa !61
  %i.hm = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %i.hn = bitcast <2 x i64> %i.hm to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ho = bitcast <8 x i16> %12 to <4 x float>
  %i.hp = fsub fast <4 x float> %i.ho, %.2212
  %i.hq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0x42B0C0A5))
  %i.hr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hs = fmul fast <4 x float> %i.hr, splat (float f0x3FB8AA3B)
  %i.ht = fadd fast <4 x float> %i.hs, splat (float 5.000000e-01) ; 2 uses
  %i.hu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht)
  %i.hv = sitofp fast <4 x i32> %i.hu to <4 x float> ; 2 uses
  %i.hw = fcmp fast olt <4 x float> %i.ht, %i.hv
  %i.hx = select <4 x i1> %i.hw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hy = fsub fast <4 x float> %i.hv, %i.hx      ; 2 uses
  %i.hz = fneg fast <4 x float> %i.hy             ; 2 uses
  %i.ia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hz, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hr)
  %i.ib = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hz, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ia) ; 8 uses
  %i.ic = fmul fast <4 x float> %i.ib, %i.ib
  %i.id = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ib, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.id, <4 x float> nofpclass(nan inf) %i.ib, <4 x float> splat (float f0x3C088908))
  %i.if = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> nofpclass(nan inf) %i.ib, <4 x float> splat (float f0x3D2AA9C1))
  %i.ig = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.if, <4 x float> nofpclass(nan inf) %i.ib, <4 x float> splat (float f0x3E2AAAAA))
  %i.ih = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> nofpclass(nan inf) %i.ib, <4 x float> splat (float 5.000000e-01))
  %i.ii = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> nofpclass(nan inf) %i.ic, <4 x float> nofpclass(nan inf) %i.ib)
  %i.ij = fadd fast <4 x float> %i.ii, splat (float 1.000000e+00)
  %i.ik = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hy)
  %i.il = shl <4 x i32> %i.ik, splat (i32 23)
  %i.im = add <4 x i32> %i.il, splat (i32 1065353216)
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fmul fast <4 x float> %i.ij, %i.in      ; 2 uses
  %i.ip = bitcast <4 x float> %i.io to <4 x i32>
  %i.iq = lshr <4 x i32> %i.ip, splat (i32 16)
  %i.ir = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.iq, <4 x i32> poison)
  %i.is = bitcast <8 x i16> %i.ir to <2 x i64>
  %i.it = extractelement <2 x i64> %i.is, i64 0
  store i64 %i.it, ptr %.186256, align 1, !tbaa !61
  %i.iu = fadd fast <4 x float> %i.io, %.0218255  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.186256, i64 8 ; 2 uses
  %i.iw = add nuw nsw i32 %.183257, 4             ; 3 uses
  %i.ix = or disjoint i32 %i.iw, 3
  %i.iy = icmp slt i32 %i.ix, %i.a
  br i1 %i.iy, label %.lr.ph258, label %.preheader226, !llvm.loop !10

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %.lr.ph265
  %.284264 = phi i32 [ %i.jk, %.lr.ph265 ], [ %.284264.ph, %.lr.ph265.preheader ]
  %.287263 = phi ptr [ %i.jj, %.lr.ph265 ], [ %.287263.ph, %.lr.ph265.preheader ] ; 3 uses
  %.088262 = phi float [ %i.ji, %.lr.ph265 ], [ %.088262.ph, %.lr.ph265.preheader ]
  %i.iz = load i16, ptr %.287263, align 2, !tbaa !74
  %i.ja = zext i16 %i.iz to i32
  %i.jb = shl nuw i32 %i.ja, 16
  %i.jc = bitcast i32 %i.jb to float
  %i.jd = fsub fast float %i.jc, %.1214
  %i.je = tail call fast float @llvm.exp.f32(float %i.jd) ; 2 uses
  %i.jf = bitcast float %i.je to i32
  %i.jg = lshr i32 %i.jf, 16
  %i.jh = trunc nuw nsw i32 %i.jg to i16
  store i16 %i.jh, ptr %.287263, align 2, !tbaa !74
  %i.ji = fadd fast float %i.je, %.088262         ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.287263, i64 2
  %i.jk = add nuw nsw i32 %.284264, 1             ; 2 uses
  %exitcond299.not = icmp eq i32 %i.jk, %i.a
  br i1 %exitcond299.not, label %._crit_edge266, label %.lr.ph265, !llvm.loop !229

._crit_edge266:                                   ; preds = %.lr.ph265, %middle.block368, %vec.epilog.middle.block388, %.preheader226
  %.088.lcssa = phi float [ 0.000000e+00, %.preheader226 ], [ %i.hk, %vec.epilog.middle.block388 ], [ %i.gt, %middle.block368 ], [ %i.ji, %.lr.ph265 ] ; 2 uses
  %i.jl = icmp eq i32 %2, 8
  br i1 %i.jl, label %.thread223, label %bb.e

.thread223:                                       ; preds = %._crit_edge266
  %i.jm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa) ; 2 uses
  %i.jn = fneg fast <8 x float> %.0215.lcssa
  %i.jo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.jn, <8 x float> nofpclass(nan inf) %i.jm, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.jp = fmul fast <8 x float> %i.jo, %i.jm
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge266
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.jq = shufflevector <8 x float> %.0215.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jr = shufflevector <8 x float> %.0215.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.js = fadd fast <4 x float> %i.jr, %i.jq
  %i.jt = fadd fast <4 x float> %i.js, %.0218.lcssa ; 2 uses
  %i.ju = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.jt) ; 2 uses
  %i.jv = fneg fast <4 x float> %i.jt
  %i.jw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jv, <4 x float> nofpclass(nan inf) %i.ju, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.jx = fmul fast <4 x float> %i.jw, %i.ju      ; 2 uses
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.g

bb.g:                                             ; preds = %.thread223, %bb.f, %bb.e
  %.1219 = phi nsz <4 x float> [ %i.jx, %bb.f ], [ %.0218.lcssa, %bb.e ], [ %.0218.lcssa, %.thread223 ] ; 3 uses
  %.2217 = phi nsz <8 x float> [ %i.jy, %bb.f ], [ %.0215.lcssa, %bb.e ], [ %i.jp, %.thread223 ] ; 3 uses
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.jz = shufflevector <8 x float> %.2217, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ka = shufflevector <8 x float> %.2217, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kb = fadd fast <4 x float> %i.jz, %i.ka      ; 2 uses
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %.1219, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.kd = shufflevector <4 x float> %i.kb, <4 x float> %.1219, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ke = fadd fast <4 x float> %i.kc, %i.kd
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %.088.lcssa, <4 x float> %i.ke)
  %i.kf = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.kg = insertelement <4 x float> poison, float %i.kf, i64 0 ; 2 uses
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ki = shufflevector <4 x float> %i.kg, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2220 = phi nsz <4 x float> [ %i.kh, %bb.h ], [ %.1219, %bb.g ]
  %.3 = phi nsz <8 x float> [ %i.ki, %bb.h ], [ %.2217, %bb.g ]
  %.189 = phi nsz float [ %i.kf, %bb.h ], [ %.088.lcssa, %bb.g ] ; 3 uses
  br i1 %i.b, label %.lr.ph271, label %.preheader225

.preheader225.loopexit:                           ; preds = %.lr.ph271
  %i.kj = and i32 %i.a, 2147483640
  br label %.preheader225

.preheader225:                                    ; preds = %.preheader225.loopexit, %bb.i
  %.073.lcssa = phi ptr [ %0, %bb.i ], [ %i.kw, %.preheader225.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.i ], [ %i.kj, %.preheader225.loopexit ] ; 3 uses
  %i.kk = or disjoint i32 %.0.lcssa, 3
  %i.kl = icmp slt i32 %i.kk, %i.a
  br i1 %i.kl, label %.lr.ph276, label %.preheader

.lr.ph271:                                        ; preds = %bb.i, %.lr.ph271
  %.0269 = phi i32 [ %i.kx, %.lr.ph271 ], [ 0, %bb.i ]
  %.073268 = phi ptr [ %i.kw, %.lr.ph271 ], [ %0, %bb.i ] ; 3 uses
  %i.km = load <8 x i16>, ptr %.073268, align 1, !tbaa !61 ; 2 uses
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.km, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %14 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.km, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kn = shufflevector <8 x i16> %13, <8 x i16> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ko = bitcast <16 x i16> %i.kn to <8 x float>
  %i.kp = fmul fast <8 x float> %.3, %i.ko
  %i.kq = bitcast <8 x float> %i.kp to <8 x i32>  ; 2 uses
  %i.kr = shufflevector <8 x i32> %i.kq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ks = shufflevector <8 x i32> %i.kq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kt = lshr <4 x i32> %i.kr, splat (i32 16)
  %i.ku = lshr <4 x i32> %i.ks, splat (i32 16)
  %i.kv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kt, <4 x i32> %i.ku)
  store <8 x i16> %i.kv, ptr %.073268, align 1, !tbaa !61
  %i.kw = getelementptr inbounds nuw i8, ptr %.073268, i64 16 ; 2 uses
  %i.kx = add nuw nsw i32 %.0269, 8               ; 2 uses
  %i.ky = or disjoint i32 %i.kx, 7
  %i.kz = icmp slt i32 %i.ky, %i.a
  br i1 %i.kz, label %.lr.ph271, label %.preheader225.loopexit, !llvm.loop !11

.preheader:                                       ; preds = %.lr.ph276, %.preheader225
  %.174.lcssa = phi ptr [ %.073.lcssa, %.preheader225 ], [ %i.mq, %.lr.ph276 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader225 ], [ %i.mr, %.lr.ph276 ] ; 5 uses
  %i.la = icmp slt i32 %.1.lcssa, %i.a
  br i1 %i.la, label %iter.check407, label %._crit_edge282

iter.check407:                                    ; preds = %.preheader
  %i.lb = xor i32 %.1.lcssa, -1
  %i.lc = add i32 %i.a, %i.lb                     ; 3 uses
  %i.ld = zext i32 %i.lc to i64
  %i.le = add nuw nsw i64 %i.ld, 1                ; 5 uses
  %min.iters.check393 = icmp ult i32 %i.lc, 3
  br i1 %min.iters.check393, label %.lr.ph281.preheader, label %vector.main.loop.iter.check394

vector.main.loop.iter.check394:                   ; preds = %iter.check407
  %min.iters.check395 = icmp ult i32 %i.lc, 15
  br i1 %min.iters.check395, label %vec.epilog.ph411, label %vector.ph396

vector.ph396:                                     ; preds = %vector.main.loop.iter.check394
  %i.lf = and i64 %i.le, 12
  %n.vec397 = and i64 %i.le, 8589934576           ; 5 uses
  %i.lg = trunc i64 %n.vec397 to i32
  %i.lh = add i32 %.1.lcssa, %i.lg
  %i.li = shl nuw nsw i64 %n.vec397, 1
  %i.lj = getelementptr i8, ptr %.174.lcssa, i64 %i.li
  %broadcast.splatinsert398 = insertelement <16 x float> poison, float %.189, i64 0
  %broadcast.splat399 = shufflevector <16 x float> %broadcast.splatinsert398, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body400

vector.body400:                                   ; preds = %vector.ph396, %vector.body400
  %index401 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body400 ] ; 2 uses
  %i.lk = shl i64 %index401, 1
  %next.gep402 = getelementptr i8, ptr %.174.lcssa, i64 %i.lk ; 2 uses
  %wide.load403 = load <16 x i16>, ptr %next.gep402, align 2, !tbaa !74
  %i.ll = zext <16 x i16> %wide.load403 to <16 x i32>
  %i.lm = shl nuw <16 x i32> %i.ll, splat (i32 16)
  %i.ln = bitcast <16 x i32> %i.lm to <16 x float>
  %i.lo = fmul fast <16 x float> %broadcast.splat399, %i.ln
  %i.lp = bitcast <16 x float> %i.lo to <16 x i32>
  %i.lq = lshr <16 x i32> %i.lp, splat (i32 16)
  %i.lr = trunc nuw <16 x i32> %i.lq to <16 x i16>
  store <16 x i16> %i.lr, ptr %next.gep402, align 2, !tbaa !74
  %index.next404 = add nuw i64 %index401, 16      ; 2 uses
  %i.ls = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.ls, label %middle.block405, label %vector.body400, !llvm.loop !230

middle.block405:                                  ; preds = %vector.body400
  %cmp.n406 = icmp eq i64 %i.le, %n.vec397
  br i1 %cmp.n406, label %._crit_edge282, label %vec.epilog.iter.check408

vec.epilog.iter.check408:                         ; preds = %middle.block405
  %min.epilog.iters.check410 = icmp eq i64 %i.lf, 0
  br i1 %min.epilog.iters.check410, label %.lr.ph281.preheader, label %vec.epilog.ph411, !prof !75

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check394, %vec.epilog.iter.check408
  %vec.epilog.resume.val412 = phi i64 [ %n.vec397, %vec.epilog.iter.check408 ], [ 0, %vector.main.loop.iter.check394 ]
  %n.vec413 = and i64 %i.le, 8589934588           ; 4 uses
  %i.lt = trunc i64 %n.vec413 to i32
  %i.lu = add i32 %.1.lcssa, %i.lt
  %i.lv = shl nuw nsw i64 %n.vec413, 1
  %i.lw = getelementptr i8, ptr %.174.lcssa, i64 %i.lv
  %broadcast.splatinsert414 = insertelement <4 x float> poison, float %.189, i64 0
  %broadcast.splat415 = shufflevector <4 x float> %broadcast.splatinsert414, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %vec.epilog.vector.body416, %vec.epilog.ph411
  %index417 = phi i64 [ %vec.epilog.resume.val412, %vec.epilog.ph411 ], [ %index.next420, %vec.epilog.vector.body416 ] ; 2 uses
  %i.lx = shl i64 %index417, 1
  %next.gep418 = getelementptr i8, ptr %.174.lcssa, i64 %i.lx ; 2 uses
  %wide.load419 = load <4 x i16>, ptr %next.gep418, align 2, !tbaa !74
  %i.ly = zext <4 x i16> %wide.load419 to <4 x i32>
  %i.lz = shl nuw <4 x i32> %i.ly, splat (i32 16)
  %i.ma = bitcast <4 x i32> %i.lz to <4 x float>
  %i.mb = fmul fast <4 x float> %broadcast.splat415, %i.ma
  %i.mc = bitcast <4 x float> %i.mb to <4 x i32>
  %i.md = lshr <4 x i32> %i.mc, splat (i32 16)
  %i.me = trunc nuw <4 x i32> %i.md to <4 x i16>
  store <4 x i16> %i.me, ptr %next.gep418, align 2, !tbaa !74
  %index.next420 = add nuw i64 %index417, 4       ; 2 uses
  %i.mf = icmp eq i64 %index.next420, %n.vec413
  br i1 %i.mf, label %vec.epilog.middle.block421, label %vec.epilog.vector.body416, !llvm.loop !231

vec.epilog.middle.block421:                       ; preds = %vec.epilog.vector.body416
  %cmp.n422 = icmp eq i64 %i.le, %n.vec413
  br i1 %cmp.n422, label %._crit_edge282, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %iter.check407, %vec.epilog.iter.check408, %vec.epilog.middle.block421
  %.2280.ph = phi i32 [ %.1.lcssa, %iter.check407 ], [ %i.lh, %vec.epilog.iter.check408 ], [ %i.lu, %vec.epilog.middle.block421 ]
  %.275279.ph = phi ptr [ %.174.lcssa, %iter.check407 ], [ %i.lj, %vec.epilog.iter.check408 ], [ %i.lw, %vec.epilog.middle.block421 ]
  br label %.lr.ph281

.lr.ph276:                                        ; preds = %.preheader225, %.lr.ph276
  %.1275 = phi i32 [ %i.mr, %.lr.ph276 ], [ %.0.lcssa, %.preheader225 ]
  %.174274 = phi ptr [ %i.mq, %.lr.ph276 ], [ %.073.lcssa, %.preheader225 ] ; 3 uses
  %i.mg = load i64, ptr %.174274, align 1, !tbaa !61
  %i.mh = insertelement <2 x i64> poison, i64 %i.mg, i64 0
  %i.mi = bitcast <2 x i64> %i.mh to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mj = bitcast <8 x i16> %15 to <4 x float>
  %i.mk = fmul fast <4 x float> %.2220, %i.mj
  %i.ml = bitcast <4 x float> %i.mk to <4 x i32>
  %i.mm = lshr <4 x i32> %i.ml, splat (i32 16)
  %i.mn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mm, <4 x i32> poison)
  %i.mo = bitcast <8 x i16> %i.mn to <2 x i64>
  %i.mp = extractelement <2 x i64> %i.mo, i64 0
  store i64 %i.mp, ptr %.174274, align 1, !tbaa !61
  %i.mq = getelementptr inbounds nuw i8, ptr %.174274, i64 8 ; 2 uses
  %i.mr = add nuw nsw i32 %.1275, 4               ; 3 uses
  %i.ms = or disjoint i32 %i.mr, 3
  %i.mt = icmp slt i32 %i.ms, %i.a
  br i1 %i.mt, label %.lr.ph276, label %.preheader, !llvm.loop !12

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %.lr.ph281
  %.2280 = phi i32 [ %i.nd, %.lr.ph281 ], [ %.2280.ph, %.lr.ph281.preheader ]
  %.275279 = phi ptr [ %i.nc, %.lr.ph281 ], [ %.275279.ph, %.lr.ph281.preheader ] ; 3 uses
  %i.mu = load i16, ptr %.275279, align 2, !tbaa !74
  %i.mv = zext i16 %i.mu to i32
  %i.mw = shl nuw i32 %i.mv, 16
  %i.mx = bitcast i32 %i.mw to float
  %i.my = fmul fast float %.189, %i.mx
  %i.mz = bitcast float %i.my to i32
  %i.na = lshr i32 %i.mz, 16
  %i.nb = trunc nuw i32 %i.na to i16
  store i16 %i.nb, ptr %.275279, align 2, !tbaa !74
  %i.nc = getelementptr inbounds nuw i8, ptr %.275279, i64 2
  %i.nd = add nuw nsw i32 %.2280, 1               ; 2 uses
  %exitcond300.not = icmp eq i32 %i.nd, %i.a
  br i1 %exitcond300.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !232

._crit_edge282:                                   ; preds = %.lr.ph281, %middle.block405, %vec.epilog.middle.block421, %.preheader
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.noexc
  %.036 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %.noexc ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !33     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !33
  %i.p = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.q = mul nsw i32 %i.n, %.036                  ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.n)
  %i.s = load ptr, ptr %5, align 8, !tbaa !52, !noalias !235
  %i.t = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !235
  %i.u = sext i32 %i.p to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !235
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !33
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !52
  %i.ad = load i32, ptr %7, align 4, !tbaa !33    ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %8, align 4, !tbaa !33
  %i.ai = load i64, ptr %9, align 8, !tbaa !54
  call fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ad, i64 noundef %i.ai, i32 noundef %.sroa.speculated, ptr noundef %i.y, ptr noundef %i.ab)
  %i.aj = add nsw i32 %.036, 1
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !33
  %.not.not = icmp slt i32 %.036, %i.ak
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 7                       ; 8 uses
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader98

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %4, -8                       ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %xtraiter = and i32 %i.d, 7                     ; 3 uses
  %i.e = icmp ult i32 %i.b, 56
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.d, 1073741816
  br label %.lr.ph

.preheader98.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader98.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader98.loopexit.unr-lcssa, %.lr.ph.preheader
  %.060124.epil.init = phi ptr [ %5, %.lr.ph.preheader ], [ %i.q, %.preheader98.loopexit.unr-lcssa ]
  %lcmp.mod407 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod407)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.060124.epil = phi ptr [ %i.f, %.lr.ph.epil ], [ %.060124.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store <8 x float> splat (float f0xFF7FFFFF), ptr %.060124.epil, align 1, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %.060124.epil, i64 32 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader98.loopexit, label %.lr.ph.epil, !llvm.loop !236

.preheader98.loopexit:                            ; preds = %.lr.ph.epil, %.preheader98.loopexit.unr-lcssa
  %.lcssa405 = phi ptr [ %i.q, %.preheader98.loopexit.unr-lcssa ], [ %i.f, %.lr.ph.epil ]
  %i.g = and i32 %4, 2147483640
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.loopexit, %bb.a
  %.060.lcssa = phi ptr [ %5, %bb.a ], [ %.lcssa405, %.preheader98.loopexit ] ; 2 uses
  %.057.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %.preheader98.loopexit ] ; 3 uses
  %i.h = or disjoint i32 %.057.lcssa, 3
  %i.i = icmp slt i32 %i.h, %4
  br i1 %i.i, label %.lr.ph129, label %.preheader97

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.060124 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store <8 x float> splat (float f0xFF7FFFFF), ptr %.060124, align 1, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %.060124, i64 32
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.j, align 1, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %.060124, i64 64
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.k, align 1, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %.060124, i64 96
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.l, align 1, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %.060124, i64 128
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.m, align 1, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %.060124, i64 160
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.n, align 1, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %.060124, i64 192
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.o, align 1, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %.060124, i64 224
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.p, align 1, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %.060124, i64 256 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader98.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !237

.preheader97:                                     ; preds = %.lr.ph129, %.preheader98
  %.161.lcssa = phi ptr [ %.060.lcssa, %.preheader98 ], [ %i.am, %.lr.ph129 ] ; 5 uses
  %.158.lcssa = phi i32 [ %.057.lcssa, %.preheader98 ], [ %i.an, %.lr.ph129 ] ; 5 uses
  %i.r = icmp slt i32 %.158.lcssa, %4
  br i1 %i.r, label %iter.check, label %.preheader96

iter.check:                                       ; preds = %.preheader97
  %i.s = xor i32 %.158.lcssa, -1
  %i.t = add i32 %4, %i.s                         ; 3 uses
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.t, 7
  br i1 %min.iters.check, label %.lr.ph134.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check249 = icmp ult i32 %i.t, 31
  br i1 %min.iters.check249, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.v, 24
  %n.vec = and i64 %i.v, 8589934560               ; 5 uses
  %i.x = trunc i64 %n.vec to i32
  %i.y = add i32 %.158.lcssa, %i.x
  %i.z = shl nuw nsw i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %.161.lcssa, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.161.lcssa, i64 %i.ab ; 4 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 32
  %i.ad = getelementptr i8, ptr %next.gep, i64 64
  %i.ae = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> splat (float f0xFF7FFFFF), ptr %next.gep, align 4, !tbaa !65
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.ac, align 4, !tbaa !65
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.ad, align 4, !tbaa !65
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.ae, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.preheader96, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph134.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec250 = and i64 %i.v, 8589934584            ; 4 uses
  %i.ag = trunc i64 %n.vec250 to i32
  %i.ah = add i32 %.158.lcssa, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec250, 2
  %i.aj = getelementptr i8, ptr %.161.lcssa, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index251 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index251, 2
  %next.gep252 = getelementptr i8, ptr %.161.lcssa, i64 %i.ak
  store <8 x float> splat (float f0xFF7FFFFF), ptr %next.gep252, align 4, !tbaa !65
  %index.next253 = add nuw i64 %index251, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next253, %n.vec250
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !239

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n254 = icmp eq i64 %i.v, %n.vec250
  br i1 %cmp.n254, label %.preheader96, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259133.ph = phi i32 [ %.158.lcssa, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.262132.ph = phi ptr [ %.161.lcssa, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph134

.lr.ph129:                                        ; preds = %.preheader98, %.lr.ph129
  %.158128 = phi i32 [ %i.an, %.lr.ph129 ], [ %.057.lcssa, %.preheader98 ]
  %.161127 = phi ptr [ %i.am, %.lr.ph129 ], [ %.060.lcssa, %.preheader98 ] ; 2 uses
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.161127, align 1, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %.161127, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.158128, 4             ; 3 uses
  %i.ao = or disjoint i32 %i.an, 3
  %i.ap = icmp slt i32 %i.ao, %4
  br i1 %i.ap, label %.lr.ph129, label %.preheader97, !llvm.loop !240

.preheader96:                                     ; preds = %.lr.ph134, %middle.block, %vec.epilog.middle.block, %.preheader97
  br i1 %i.a, label %.lr.ph137.preheader, label %.preheader95

.lr.ph137.preheader:                              ; preds = %.preheader96
  %i.aq = add nsw i32 %4, -8                      ; 2 uses
  %i.ar = lshr i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, 32               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 0, i64 %i.au, i1 false), !tbaa !61
  %scevgep = getelementptr i8, ptr %6, i64 %i.au
  %i.av = and i32 %i.aq, -8
  %i.aw = add nuw nsw i32 %i.av, 8
  br label %.preheader95

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %.lr.ph134
  %.259133 = phi i32 [ %i.ay, %.lr.ph134 ], [ %.259133.ph, %.lr.ph134.preheader ]
  %.262132 = phi ptr [ %i.ax, %.lr.ph134 ], [ %.262132.ph, %.lr.ph134.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.262132, i64 4
  store float f0xFF7FFFFF, ptr %.262132, align 4, !tbaa !65
  %i.ay = add nuw nsw i32 %.259133, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %4
  br i1 %exitcond.not, label %.preheader96, label %.lr.ph134, !llvm.loop !241

.preheader95:                                     ; preds = %.lr.ph137.preheader, %.preheader96
  %.054.lcssa = phi ptr [ %6, %.preheader96 ], [ %scevgep, %.lr.ph137.preheader ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.preheader96 ], [ %i.aw, %.lr.ph137.preheader ] ; 4 uses
  %i.az = or disjoint i32 %.0.lcssa, 3
  %i.ba = icmp slt i32 %i.az, %4
  br i1 %i.ba, label %.lr.ph142.preheader, label %.preheader

.lr.ph142.preheader:                              ; preds = %.preheader95
  %i.bb = add nsw i32 %4, -4
  %i.bc = sub nsw i32 %i.bb, %.0.lcssa            ; 2 uses
  %i.bd = lshr i32 %i.bc, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = add nuw nsw i64 %i.bf, 16               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.054.lcssa, i8 0, i64 %i.bg, i1 false), !tbaa !61
  %scevgep183 = getelementptr i8, ptr %.054.lcssa, i64 %i.bg
  %i.bh = and i32 %i.bc, -4
  %i.bi = add i32 %.0.lcssa, %i.bh
  %i.bj = add i32 %i.bi, 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph142.preheader, %.preheader95
  %.155.lcssa = phi ptr [ %.054.lcssa, %.preheader95 ], [ %scevgep183, %.lr.ph142.preheader ]
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader95 ], [ %i.bj, %.lr.ph142.preheader ] ; 2 uses
  %i.bk = icmp slt i32 %.1.lcssa, %4
  br i1 %i.bk, label %.lr.ph147.preheader, label %._crit_edge

.lr.ph147.preheader:                              ; preds = %.preheader
  %i.bl = xor i32 %.1.lcssa, -1
  %i.bm = add i32 %4, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.155.lcssa, i8 0, i64 %i.bp, i1 false), !tbaa !65
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph147.preheader, %.preheader
  switch i32 %2, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit [
    i32 8, label %bb.b
    i32 4, label %bb.f
    i32 1, label %bb.h
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.bq = icmp sgt i32 %1, 0
  %i.br = icmp sgt i32 %4, 0
  %or.cond.i = and i1 %i.bq, %i.br                ; 2 uses
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.preheader137.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.bs = mul i64 %indvars.iv.i, %3
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.076141.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.ch, %bb.c ] ; 2 uses
  %.082140.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cj, %bb.c ]
  %.083139.i = phi ptr [ %5, %.lr.ph.i ], [ %i.ci, %bb.c ] ; 3 uses
  %i.bu = load <8 x i16>, ptr %.076141.i, align 1, !tbaa !61 ; 2 uses
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %8 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bv = shufflevector <8 x i16> %7, <8 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bw = bitcast <16 x i16> %i.bv to <8 x float> ; 2 uses
  %i.bx = shufflevector <8 x float> %i.bw, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.by = shufflevector <8 x float> %i.bw, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.by) ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cb, <4 x float> nofpclass(nan inf) %i.cc)
  %i.ce = extractelement <4 x float> %i.cd, i64 0 ; 2 uses
  %i.cf = load float, ptr %.083139.i, align 4, !tbaa !65 ; 2 uses
  %i.cg = fcmp fast olt float %i.cf, %i.ce
  %.sroa.speculated.i = select i1 %i.cg, float %i.ce, float %i.cf
  store float %.sroa.speculated.i, ptr %.083139.i, align 4, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %.076141.i, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.083139.i, i64 4
  %i.cj = add nuw nsw i32 %.082140.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cj, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !242

._crit_edge.i:                                    ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond181.not.i, label %.lr.ph150.i, label %.lr.ph.i, !llvm.loop !243

.preheader137.i:                                  ; preds = %._crit_edge151.i, %bb.b
  br i1 %i.a, label %.lr.ph156.i.preheader, label %.preheader136.i

.lr.ph156.i.preheader:                            ; preds = %.preheader137.i
  %i.ck = add nsw i32 %4, -8                      ; 2 uses
  %i.cl = lshr i32 %i.ck, 3                       ; 2 uses
  %i.cm = add nuw nsw i32 %i.cl, 1                ; 2 uses
  %i.cn = icmp eq i32 %i.cl, 0
  br i1 %i.cn, label %.lr.ph156.i.epil.preheader, label %.lr.ph156.i.preheader.new

.lr.ph156.i.preheader.new:                        ; preds = %.lr.ph156.i.preheader
  %unroll_iter450 = and i32 %i.cm, 1073741822
  br label %.lr.ph156.i

.lr.ph150.i:                                      ; preds = %._crit_edge.i, %._crit_edge151.i
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i, %._crit_edge151.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.co = mul i64 %indvars.iv183.i, %3
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.co
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph150.i
  %.077148.i = phi i32 [ 0, %.lr.ph150.i ], [ %i.en, %bb.d ]
  %.078147.i = phi ptr [ %6, %.lr.ph150.i ], [ %i.em, %bb.d ] ; 3 uses
  %.079146.i = phi ptr [ %5, %.lr.ph150.i ], [ %i.el, %bb.d ] ; 2 uses
  %.080145.i = phi ptr [ %i.cp, %.lr.ph150.i ], [ %i.ek, %bb.d ] ; 3 uses
  %i.cq = load <8 x i16>, ptr %.080145.i, align 1, !tbaa !61 ; 2 uses
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %10 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cr = shufflevector <8 x i16> %9, <8 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = bitcast <16 x i16> %i.cr to <8 x float>
  %i.ct = load float, ptr %.079146.i, align 4, !tbaa !65
  %i.cu = insertelement <8 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <8 x float> %i.cu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cw = fsub fast <8 x float> %i.cs, %i.cv
  %i.cx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cw, <8 x float> splat (float f0x42B0C0A5))
  %i.cy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cy, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.da = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cz, i32 1) ; 2 uses
  %i.db = fcmp fast ogt <8 x float> %i.da, %i.cz
  %i.dc = select <8 x i1> %i.db, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dd = fsub fast <8 x float> %i.da, %i.dc      ; 2 uses
  %i.de = fneg fast <8 x float> %i.dd             ; 2 uses
  %i.df = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.de, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cy)
  %i.dg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.de, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.df) ; 8 uses
  %i.dh = fmul fast <8 x float> %i.dg, %i.dg
  %i.di = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dg, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.dj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.di, <8 x float> nofpclass(nan inf) %i.dg, <8 x float> splat (float f0x3C088908))
  %i.dk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dj, <8 x float> nofpclass(nan inf) %i.dg, <8 x float> splat (float f0x3D2AA9C1))
  %i.dl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dk, <8 x float> nofpclass(nan inf) %i.dg, <8 x float> splat (float f0x3E2AAAAA))
  %i.dm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.dg, <8 x float> splat (float 5.000000e-01))
  %i.dn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dm, <8 x float> nofpclass(nan inf) %i.dh, <8 x float> nofpclass(nan inf) %i.dg)
  %i.do = fadd fast <8 x float> %i.dn, splat (float 1.000000e+00)
  %i.dp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dd)
  %i.dq = shl <8 x i32> %i.dp, splat (i32 23)
  %i.dr = add <8 x i32> %i.dq, splat (i32 1065353216)
  %i.ds = bitcast <8 x i32> %i.dr to <8 x float>
  %i.dt = fmul fast <8 x float> %i.do, %i.ds      ; 3 uses
  %i.du = bitcast <8 x float> %i.dt to <8 x i32>  ; 2 uses
  %i.dv = shufflevector <8 x i32> %i.du, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dw = shufflevector <8 x i32> %i.du, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dx = lshr <4 x i32> %i.dv, splat (i32 16)
  %i.dy = lshr <4 x i32> %i.dw, splat (i32 16)
  %i.dz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dx, <4 x i32> %i.dy)
  store <8 x i16> %i.dz, ptr %.080145.i, align 1, !tbaa !61
  %i.ea = shufflevector <8 x float> %i.dt, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <8 x float> %i.dt, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ec = fadd fast <4 x float> %i.ea, %i.eb      ; 2 uses
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ee = fadd fast <4 x float> %i.ed, %i.ec      ; 2 uses
  %i.ef = extractelement <4 x float> %i.ee, i64 1
  %i.eg = extractelement <4 x float> %i.ee, i64 0
  %i.eh = load float, ptr %.078147.i, align 4, !tbaa !65
  %i.ei = fadd fast float %i.ef, %i.eh
  %i.ej = fadd fast float %i.ei, %i.eg
  store float %i.ej, ptr %.078147.i, align 4, !tbaa !65
  %i.ek = getelementptr inbounds nuw i8, ptr %.080145.i, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.079146.i, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %.078147.i, i64 4
  %i.en = add nuw nsw i32 %.077148.i, 1           ; 2 uses
  %exitcond182.not.i = icmp eq i32 %i.en, %4
  br i1 %exitcond182.not.i, label %._crit_edge151.i, label %bb.d, !llvm.loop !244

._crit_edge151.i:                                 ; preds = %bb.d
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond187.not.i = icmp eq i64 %indvars.iv.next184.i, %wide.trip.count.i
  br i1 %exitcond187.not.i, label %.preheader137.i, label %.lr.ph150.i, !llvm.loop !245

.preheader136.loopexit.i.unr-lcssa:               ; preds = %.lr.ph156.i
  %i.eo = and i32 %i.ck, 8
  %lcmp.mod447.not.not = icmp eq i32 %i.eo, 0
  br i1 %lcmp.mod447.not.not, label %.lr.ph156.i.epil.preheader, label %.preheader136.loopexit.i

.lr.ph156.i.epil.preheader:                       ; preds = %.preheader136.loopexit.i.unr-lcssa, %.lr.ph156.i.preheader
  %.073154.i.epil.init = phi ptr [ %6, %.lr.ph156.i.preheader ], [ %i.fj, %.preheader136.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod449 = trunc i32 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod449)
  %i.ep = load <8 x float>, ptr %.073154.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.eq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.er = fneg fast <8 x float> %i.ep
  %i.es = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.er, <8 x float> nofpclass(nan inf) %i.eq, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.et = fmul fast <8 x float> %i.es, %i.eq
  store <8 x float> %i.et, ptr %.073154.i.epil.init, align 1, !tbaa !61
  %i.eu = getelementptr inbounds nuw i8, ptr %.073154.i.epil.init, i64 32
  br label %.preheader136.loopexit.i

.preheader136.loopexit.i:                         ; preds = %.preheader136.loopexit.i.unr-lcssa, %.lr.ph156.i.epil.preheader
  %.lcssa373 = phi ptr [ %i.fj, %.preheader136.loopexit.i.unr-lcssa ], [ %i.eu, %.lr.ph156.i.epil.preheader ]
  %i.ev = and i32 %4, 2147483640
  br label %.preheader136.i

.preheader136.i:                                  ; preds = %.preheader136.loopexit.i, %.preheader137.i
  %.073.lcssa.i = phi ptr [ %6, %.preheader137.i ], [ %.lcssa373, %.preheader136.loopexit.i ] ; 2 uses
  %.072.lcssa.i = phi i32 [ 0, %.preheader137.i ], [ %i.ev, %.preheader136.loopexit.i ] ; 3 uses
  %i.ew = or disjoint i32 %.072.lcssa.i, 3
  %i.ex = icmp slt i32 %i.ew, %4
  br i1 %i.ex, label %.lr.ph160.i, label %.preheader135.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i, %.lr.ph156.i.preheader.new
  %.073154.i = phi ptr [ %6, %.lr.ph156.i.preheader.new ], [ %i.fj, %.lr.ph156.i ] ; 4 uses
  %niter451 = phi i32 [ 0, %.lr.ph156.i.preheader.new ], [ %niter451.next.1, %.lr.ph156.i ]
  %i.ey = load <8 x float>, ptr %.073154.i, align 1, !tbaa !61 ; 2 uses
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ey) ; 2 uses
  %i.fa = fneg fast <8 x float> %i.ey
  %i.fb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fa, <8 x float> nofpclass(nan inf) %i.ez, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.fc = fmul fast <8 x float> %i.fb, %i.ez
  store <8 x float> %i.fc, ptr %.073154.i, align 1, !tbaa !61
  %i.fd = getelementptr inbounds nuw i8, ptr %.073154.i, i64 32 ; 2 uses
  %i.fe = load <8 x float>, ptr %i.fd, align 1, !tbaa !61 ; 2 uses
  %i.ff = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.fe) ; 2 uses
  %i.fg = fneg fast <8 x float> %i.fe
  %i.fh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fg, <8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.fi = fmul fast <8 x float> %i.fh, %i.ff
  store <8 x float> %i.fi, ptr %i.fd, align 1, !tbaa !61
  %i.fj = getelementptr inbounds nuw i8, ptr %.073154.i, i64 64 ; 3 uses
  %niter451.next.1 = add i32 %niter451, 2         ; 2 uses
  %niter451.ncmp.1.not = icmp eq i32 %niter451.next.1, %unroll_iter450
  br i1 %niter451.ncmp.1.not, label %.preheader136.loopexit.i.unr-lcssa, label %.lr.ph156.i, !llvm.loop !246

.preheader135.i:                                  ; preds = %.lr.ph160.i, %.preheader136.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader136.i ], [ %i.gb, %.lr.ph160.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader136.i ], [ %i.gc, %.lr.ph160.i ] ; 4 uses
  %i.fk = icmp slt i32 %.1.lcssa.i, %4
  br i1 %i.fk, label %.lr.ph165.i.preheader, label %.preheader.i

.lr.ph165.i.preheader:                            ; preds = %.preheader135.i
  %i.fl = xor i32 %.1.lcssa.i, -1
  %i.fm = add i32 %4, %i.fl                       ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check359 = icmp ult i32 %i.fm, 7
  br i1 %min.iters.check359, label %.lr.ph165.i.preheader371, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph165.i.preheader
  %n.vec361 = and i64 %i.fo, 8589934584           ; 4 uses
  %i.fp = trunc i64 %n.vec361 to i32
  %i.fq = add i32 %.1.lcssa.i, %i.fp
  %i.fr = shl nuw nsw i64 %n.vec361, 2
  %i.fs = getelementptr i8, ptr %.174.lcssa.i, i64 %i.fr
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 2 uses
  %i.ft = shl i64 %index363, 2
  %next.gep364 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.ft ; 2 uses
  %wide.load365 = load <8 x float>, ptr %next.gep364, align 4, !tbaa !65
  %i.fu = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load365
  store <8 x float> %i.fu, ptr %next.gep364, align 4, !tbaa !65
  %index.next366 = add nuw i64 %index363, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.fv, label %middle.block367, label %vector.body362, !llvm.loop !247

middle.block367:                                  ; preds = %vector.body362
  %cmp.n368 = icmp eq i64 %i.fo, %n.vec361
  br i1 %cmp.n368, label %.preheader.i, label %.lr.ph165.i.preheader371

.lr.ph165.i.preheader371:                         ; preds = %.lr.ph165.i.preheader, %middle.block367
  %.2164.i.ph = phi i32 [ %.1.lcssa.i, %.lr.ph165.i.preheader ], [ %i.fq, %middle.block367 ]
  %.275163.i.ph = phi ptr [ %.174.lcssa.i, %.lr.ph165.i.preheader ], [ %i.fs, %middle.block367 ]
  br label %.lr.ph165.i

.lr.ph160.i:                                      ; preds = %.preheader136.i, %.lr.ph160.i
  %.1159.i = phi i32 [ %i.gc, %.lr.ph160.i ], [ %.072.lcssa.i, %.preheader136.i ]
  %.174158.i = phi ptr [ %i.gb, %.lr.ph160.i ], [ %.073.lcssa.i, %.preheader136.i ] ; 3 uses
  %i.fw = load <4 x float>, ptr %.174158.i, align 1, !tbaa !61 ; 2 uses
  %i.fx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.fw) ; 2 uses
  %i.fy = fneg fast <4 x float> %i.fw
  %i.fz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fy, <4 x float> nofpclass(nan inf) %i.fx, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.ga = fmul fast <4 x float> %i.fz, %i.fx
  store <4 x float> %i.ga, ptr %.174158.i, align 1, !tbaa !61
  %i.gb = getelementptr inbounds nuw i8, ptr %.174158.i, i64 16 ; 2 uses
  %i.gc = add nuw nsw i32 %.1159.i, 4             ; 3 uses
  %i.gd = or disjoint i32 %i.gc, 3
  %i.ge = icmp slt i32 %i.gd, %4
  br i1 %i.ge, label %.lr.ph160.i, label %.preheader135.i, !llvm.loop !248

.preheader.i:                                     ; preds = %.lr.ph165.i, %middle.block367, %.preheader135.i
  br i1 %or.cond.i, label %.lr.ph170.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph170.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count193.i = zext nneg i32 %1 to i64
  br label %.lr.ph170.i

.lr.ph165.i:                                      ; preds = %.lr.ph165.i.preheader371, %.lr.ph165.i
  %.2164.i = phi i32 [ %i.gi, %.lr.ph165.i ], [ %.2164.i.ph, %.lr.ph165.i.preheader371 ]
  %.275163.i = phi ptr [ %i.gh, %.lr.ph165.i ], [ %.275163.i.ph, %.lr.ph165.i.preheader371 ] ; 3 uses
  %i.gf = load float, ptr %.275163.i, align 4, !tbaa !65
  %i.gg = fdiv fast float 1.000000e+00, %i.gf
  store float %i.gg, ptr %.275163.i, align 4, !tbaa !65
  %i.gh = getelementptr inbounds nuw i8, ptr %.275163.i, i64 4
  %i.gi = add nuw nsw i32 %.2164.i, 1             ; 2 uses
  %exitcond188.not.i = icmp eq i32 %i.gi, %4
  br i1 %exitcond188.not.i, label %.preheader.i, label %.lr.ph165.i, !llvm.loop !249

.lr.ph170.i:                                      ; preds = %._crit_edge171.i, %.lr.ph170.preheader.i
  %indvars.iv190.i = phi i64 [ 0, %.lr.ph170.preheader.i ], [ %indvars.iv.next191.i, %._crit_edge171.i ] ; 2 uses
  %i.gj = mul i64 %indvars.iv190.i, %3
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gj
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph170.i
  %.068168.i = phi i32 [ 0, %.lr.ph170.i ], [ %i.ha, %bb.e ]
  %.069167.i = phi ptr [ %6, %.lr.ph170.i ], [ %i.gz, %bb.e ] ; 2 uses
  %.070166.i = phi ptr [ %i.gk, %.lr.ph170.i ], [ %i.gy, %bb.e ] ; 3 uses
  %i.gl = load <8 x i16>, ptr %.070166.i, align 1, !tbaa !61 ; 2 uses
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %12 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gm = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gn = bitcast <16 x i16> %i.gm to <8 x float>
  %i.go = load float, ptr %.069167.i, align 4, !tbaa !65
  %i.gp = insertelement <8 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <8 x float> %i.gp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gr = fmul fast <8 x float> %i.gq, %i.gn
  %i.gs = bitcast <8 x float> %i.gr to <8 x i32>  ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.gs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gu = shufflevector <8 x i32> %i.gs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gv = lshr <4 x i32> %i.gt, splat (i32 16)
  %i.gw = lshr <4 x i32> %i.gu, splat (i32 16)
  %i.gx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gv, <4 x i32> %i.gw)
  store <8 x i16> %i.gx, ptr %.070166.i, align 1, !tbaa !61
  %i.gy = getelementptr inbounds nuw i8, ptr %.070166.i, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.069167.i, i64 4
  %i.ha = add nuw nsw i32 %.068168.i, 1           ; 2 uses
  %exitcond189.not.i = icmp eq i32 %i.ha, %4
  br i1 %exitcond189.not.i, label %._crit_edge171.i, label %bb.e, !llvm.loop !250

._crit_edge171.i:                                 ; preds = %bb.e
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %indvars.iv.next191.i, %wide.trip.count193.i
  br i1 %exitcond194.not.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, label %.lr.ph170.i, !llvm.loop !251

bb.f:                                             ; preds = %._crit_edge
  %i.hb = icmp sgt i32 %1, 0
  %i.hc = icmp sgt i32 %4, 0
  %or.cond.i64 = and i1 %i.hb, %i.hc              ; 2 uses
  br i1 %or.cond.i64, label %.lr.ph.preheader.i73, label %.preheader131.i

.lr.ph.preheader.i73:                             ; preds = %bb.f
  %wide.trip.count.i74 = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter425 = and i32 %4, 1
  %i.hd = icmp eq i32 %4, 1
  %unroll_iter429 = and i32 %4, 2147483646
  %lcmp.mod427.not = icmp eq i32 %xtraiter425, 0
  %lcmp.mod428 = trunc i32 %4 to i1
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %._crit_edge.i79, %.lr.ph.preheader.i73
  %indvars.iv.i76 = phi i64 [ 0, %.lr.ph.preheader.i73 ], [ %indvars.iv.next.i80, %._crit_edge.i79 ] ; 2 uses
  %i.he = mul i64 %indvars.iv.i76, %3
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.he ; 2 uses
  br i1 %i.hd, label %.epil.preheader, label %.lr.ph.i75.new

.lr.ph.i75.new:                                   ; preds = %.lr.ph.i75, %.lr.ph.i75.new
  %.076135.i = phi ptr [ %i.ie, %.lr.ph.i75.new ], [ %i.hf, %.lr.ph.i75 ] ; 3 uses
  %.083133.i = phi ptr [ %i.if, %.lr.ph.i75.new ], [ %5, %.lr.ph.i75 ] ; 4 uses
  %niter430 = phi i32 [ %niter430.next.1, %.lr.ph.i75.new ], [ 0, %.lr.ph.i75 ]
  %i.hg = load i64, ptr %.076135.i, align 1, !tbaa !61
  %i.hh = insertelement <2 x i64> poison, i64 %i.hg, i64 0
  %i.hi = bitcast <2 x i64> %i.hh to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hj = bitcast <8 x i16> %13 to <4 x float>    ; 2 uses
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hj, <4 x float> nofpclass(nan inf) %i.hk) ; 2 uses
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.hl, <4 x float> nofpclass(nan inf) %i.hm)
  %i.ho = extractelement <4 x float> %i.hn, i64 0 ; 2 uses
  %i.hp = load float, ptr %.083133.i, align 4, !tbaa !65 ; 2 uses
  %i.hq = fcmp fast olt float %i.hp, %i.ho
  %.sroa.speculated.i77 = select i1 %i.hq, float %i.ho, float %i.hp
  store float %.sroa.speculated.i77, ptr %.083133.i, align 4, !tbaa !65
  %i.hr = getelementptr inbounds nuw i8, ptr %.076135.i, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.083133.i, i64 4 ; 2 uses
  %i.ht = load i64, ptr %i.hr, align 1, !tbaa !61
  %i.hu = insertelement <2 x i64> poison, i64 %i.ht, i64 0
  %i.hv = bitcast <2 x i64> %i.hu to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hw = bitcast <8 x i16> %14 to <4 x float>    ; 2 uses
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> nofpclass(nan inf) %i.hx) ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> nofpclass(nan inf) %i.hz)
  %i.ib = extractelement <4 x float> %i.ia, i64 0 ; 2 uses
  %i.ic = load float, ptr %i.hs, align 4, !tbaa !65 ; 2 uses
  %i.id = fcmp fast olt float %i.ic, %i.ib
  %.sroa.speculated.i77.1 = select i1 %i.id, float %i.ib, float %i.ic
  store float %.sroa.speculated.i77.1, ptr %i.hs, align 4, !tbaa !65
  %i.ie = getelementptr inbounds nuw i8, ptr %.076135.i, i64 16 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.083133.i, i64 8 ; 2 uses
  %niter430.next.1 = add nuw nsw i32 %niter430, 2 ; 2 uses
  %niter430.ncmp.1 = icmp eq i32 %niter430.next.1, %unroll_iter429
  br i1 %niter430.ncmp.1, label %._crit_edge.i79.unr-lcssa, label %.lr.ph.i75.new, !llvm.loop !252

._crit_edge.i79.unr-lcssa:                        ; preds = %.lr.ph.i75.new
  br i1 %lcmp.mod427.not, label %._crit_edge.i79, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i79.unr-lcssa, %.lr.ph.i75
  %.076135.i.epil.init = phi ptr [ %i.hf, %.lr.ph.i75 ], [ %i.ie, %._crit_edge.i79.unr-lcssa ]
  %.083133.i.epil.init = phi ptr [ %5, %.lr.ph.i75 ], [ %i.if, %._crit_edge.i79.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod428)
  %i.ig = load i64, ptr %.076135.i.epil.init, align 1, !tbaa !61
  %i.ih = insertelement <2 x i64> poison, i64 %i.ig, i64 0
  %i.ii = bitcast <2 x i64> %i.ih to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ii, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ij = bitcast <8 x i16> %15 to <4 x float>    ; 2 uses
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.il = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ij, <4 x float> nofpclass(nan inf) %i.ik) ; 2 uses
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.in = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.il, <4 x float> nofpclass(nan inf) %i.im)
  %i.io = extractelement <4 x float> %i.in, i64 0 ; 2 uses
  %i.ip = load float, ptr %.083133.i.epil.init, align 4, !tbaa !65 ; 2 uses
  %i.iq = fcmp fast olt float %i.ip, %i.io
  %.sroa.speculated.i77.epil = select i1 %i.iq, float %i.io, float %i.ip
  store float %.sroa.speculated.i77.epil, ptr %.083133.i.epil.init, align 4, !tbaa !65
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %._crit_edge.i79.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond175.not.i = icmp eq i64 %indvars.iv.next.i80, %wide.trip.count.i74
  br i1 %exitcond175.not.i, label %.lr.ph144.i, label %.lr.ph.i75, !llvm.loop !253

.preheader131.i:                                  ; preds = %._crit_edge145.i, %bb.f
  br i1 %i.a, label %.lr.ph150.i72.preheader, label %.preheader130.i

.lr.ph150.i72.preheader:                          ; preds = %.preheader131.i
  %i.ir = add nsw i32 %4, -8                      ; 2 uses
  %i.is = lshr i32 %i.ir, 3                       ; 2 uses
  %i.it = add nuw nsw i32 %i.is, 1                ; 2 uses
  %i.iu = icmp eq i32 %i.is, 0
  br i1 %i.iu, label %.lr.ph150.i72.epil.preheader, label %.lr.ph150.i72.preheader.new

.lr.ph150.i72.preheader.new:                      ; preds = %.lr.ph150.i72.preheader
  %unroll_iter436 = and i32 %i.it, 1073741822
  br label %.lr.ph150.i72

.lr.ph144.i:                                      ; preds = %._crit_edge.i79, %._crit_edge145.i
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %._crit_edge145.i ], [ 0, %._crit_edge.i79 ] ; 2 uses
  %i.iv = mul i64 %indvars.iv177.i, %3
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iv
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph144.i
  %.077142.i = phi i32 [ 0, %.lr.ph144.i ], [ %i.kt, %bb.g ]
  %.078141.i = phi ptr [ %6, %.lr.ph144.i ], [ %i.ks, %bb.g ] ; 3 uses
  %.079140.i = phi ptr [ %5, %.lr.ph144.i ], [ %i.kr, %bb.g ] ; 2 uses
  %.080139.i = phi ptr [ %i.iw, %.lr.ph144.i ], [ %i.kq, %bb.g ] ; 3 uses
  %i.ix = load i64, ptr %.080139.i, align 1, !tbaa !61
  %i.iy = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %i.iz = bitcast <2 x i64> %i.iy to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ja = bitcast <8 x i16> %16 to <4 x float>
  %i.jb = load float, ptr %.079140.i, align 4, !tbaa !65
  %i.jc = insertelement <4 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = fsub fast <4 x float> %i.ja, %i.jd
  %i.jf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.je, <4 x float> splat (float f0x42B0C0A5))
  %i.jg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jh = fmul fast <4 x float> %i.jg, splat (float f0x3FB8AA3B)
  %i.ji = fadd fast <4 x float> %i.jh, splat (float 5.000000e-01) ; 2 uses
  %i.jj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ji)
  %i.jk = sitofp fast <4 x i32> %i.jj to <4 x float> ; 2 uses
  %i.jl = fcmp fast olt <4 x float> %i.ji, %i.jk
  %i.jm = select <4 x i1> %i.jl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jn = fsub fast <4 x float> %i.jk, %i.jm      ; 2 uses
  %i.jo = fneg fast <4 x float> %i.jn             ; 2 uses
  %i.jp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.jg)
  %i.jq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jp) ; 8 uses
  %i.jr = fmul fast <4 x float> %i.jq, %i.jq
  %i.js = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.js, <4 x float> nofpclass(nan inf) %i.jq, <4 x float> splat (float f0x3C088908))
  %i.ju = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.jq, <4 x float> splat (float f0x3D2AA9C1))
  %i.jv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ju, <4 x float> nofpclass(nan inf) %i.jq, <4 x float> splat (float f0x3E2AAAAA))
  %i.jw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> nofpclass(nan inf) %i.jq, <4 x float> splat (float 5.000000e-01))
  %i.jx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jw, <4 x float> nofpclass(nan inf) %i.jr, <4 x float> nofpclass(nan inf) %i.jq)
  %i.jy = fadd fast <4 x float> %i.jx, splat (float 1.000000e+00)
  %i.jz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jn)
  %i.ka = shl <4 x i32> %i.jz, splat (i32 23)
  %i.kb = add <4 x i32> %i.ka, splat (i32 1065353216)
  %i.kc = bitcast <4 x i32> %i.kb to <4 x float>
  %i.kd = fmul fast <4 x float> %i.jy, %i.kc      ; 3 uses
  %i.ke = bitcast <4 x float> %i.kd to <4 x i32>
  %i.kf = lshr <4 x i32> %i.ke, splat (i32 16)
  %i.kg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kf, <4 x i32> poison)
  %i.kh = bitcast <8 x i16> %i.kg to <2 x i64>
  %i.ki = extractelement <2 x i64> %i.kh, i64 0
  store i64 %i.ki, ptr %.080139.i, align 1, !tbaa !61
  %i.kj = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.kk = fadd fast <4 x float> %i.kj, %i.kd      ; 2 uses
  %i.kl = extractelement <4 x float> %i.kk, i64 1
  %i.km = extractelement <4 x float> %i.kk, i64 0
  %i.kn = load float, ptr %.078141.i, align 4, !tbaa !65
  %i.ko = fadd fast float %i.kl, %i.kn
  %i.kp = fadd fast float %i.ko, %i.km
  store float %i.kp, ptr %.078141.i, align 4, !tbaa !65
  %i.kq = getelementptr inbounds nuw i8, ptr %.080139.i, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %.079140.i, i64 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.078141.i, i64 4
  %i.kt = add nuw nsw i32 %.077142.i, 1           ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.kt, %4
  br i1 %exitcond176.not.i, label %._crit_edge145.i, label %bb.g, !llvm.loop !254

._crit_edge145.i:                                 ; preds = %bb.g
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i81 = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count.i74
  br i1 %exitcond181.not.i81, label %.preheader131.i, label %.lr.ph144.i, !llvm.loop !255

.preheader130.loopexit.i.unr-lcssa:               ; preds = %.lr.ph150.i72
  %i.ku = and i32 %i.ir, 8
  %lcmp.mod433.not.not = icmp eq i32 %i.ku, 0
  br i1 %lcmp.mod433.not.not, label %.lr.ph150.i72.epil.preheader, label %.preheader130.loopexit.i

.lr.ph150.i72.epil.preheader:                     ; preds = %.preheader130.loopexit.i.unr-lcssa, %.lr.ph150.i72.preheader
  %.073148.i.epil.init = phi ptr [ %6, %.lr.ph150.i72.preheader ], [ %i.lp, %.preheader130.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod435 = trunc i32 %i.it to i1
  tail call void @llvm.assume(i1 %lcmp.mod435)
  %i.kv = load <8 x float>, ptr %.073148.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.kw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.kv) ; 2 uses
  %i.kx = fneg fast <8 x float> %i.kv
  %i.ky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kx, <8 x float> nofpclass(nan inf) %i.kw, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.kz = fmul fast <8 x float> %i.ky, %i.kw
  store <8 x float> %i.kz, ptr %.073148.i.epil.init, align 1, !tbaa !61
  %i.la = getelementptr inbounds nuw i8, ptr %.073148.i.epil.init, i64 32
  br label %.preheader130.loopexit.i

.preheader130.loopexit.i:                         ; preds = %.preheader130.loopexit.i.unr-lcssa, %.lr.ph150.i72.epil.preheader
  %.lcssa378 = phi ptr [ %i.lp, %.preheader130.loopexit.i.unr-lcssa ], [ %i.la, %.lr.ph150.i72.epil.preheader ]
  %i.lb = and i32 %4, 2147483640
  br label %.preheader130.i

.preheader130.i:                                  ; preds = %.preheader130.loopexit.i, %.preheader131.i
  %.073.lcssa.i65 = phi ptr [ %6, %.preheader131.i ], [ %.lcssa378, %.preheader130.loopexit.i ] ; 2 uses
  %.072.lcssa.i66 = phi i32 [ 0, %.preheader131.i ], [ %i.lb, %.preheader130.loopexit.i ] ; 3 uses
  %i.lc = or disjoint i32 %.072.lcssa.i66, 3
  %i.ld = icmp slt i32 %i.lc, %4
  br i1 %i.ld, label %.lr.ph154.i, label %.preheader129.i

.lr.ph150.i72:                                    ; preds = %.lr.ph150.i72, %.lr.ph150.i72.preheader.new
  %.073148.i = phi ptr [ %6, %.lr.ph150.i72.preheader.new ], [ %i.lp, %.lr.ph150.i72 ] ; 4 uses
  %niter437 = phi i32 [ 0, %.lr.ph150.i72.preheader.new ], [ %niter437.next.1, %.lr.ph150.i72 ]
  %i.le = load <8 x float>, ptr %.073148.i, align 1, !tbaa !61 ; 2 uses
  %i.lf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.le) ; 2 uses
  %i.lg = fneg fast <8 x float> %i.le
  %i.lh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lg, <8 x float> nofpclass(nan inf) %i.lf, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.li = fmul fast <8 x float> %i.lh, %i.lf
  store <8 x float> %i.li, ptr %.073148.i, align 1, !tbaa !61
  %i.lj = getelementptr inbounds nuw i8, ptr %.073148.i, i64 32 ; 2 uses
  %i.lk = load <8 x float>, ptr %i.lj, align 1, !tbaa !61 ; 2 uses
  %i.ll = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.lk) ; 2 uses
  %i.lm = fneg fast <8 x float> %i.lk
  %i.ln = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lm, <8 x float> nofpclass(nan inf) %i.ll, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.lo = fmul fast <8 x float> %i.ln, %i.ll
  store <8 x float> %i.lo, ptr %i.lj, align 1, !tbaa !61
  %i.lp = getelementptr inbounds nuw i8, ptr %.073148.i, i64 64 ; 3 uses
  %niter437.next.1 = add i32 %niter437, 2         ; 2 uses
  %niter437.ncmp.1.not = icmp eq i32 %niter437.next.1, %unroll_iter436
  br i1 %niter437.ncmp.1.not, label %.preheader130.loopexit.i.unr-lcssa, label %.lr.ph150.i72, !llvm.loop !256

.preheader129.i:                                  ; preds = %.lr.ph154.i, %.preheader130.i
  %.174.lcssa.i67 = phi ptr [ %.073.lcssa.i65, %.preheader130.i ], [ %i.mh, %.lr.ph154.i ] ; 3 uses
  %.1.lcssa.i68 = phi i32 [ %.072.lcssa.i66, %.preheader130.i ], [ %i.mi, %.lr.ph154.i ] ; 4 uses
  %i.lq = icmp slt i32 %.1.lcssa.i68, %4
  br i1 %i.lq, label %.lr.ph159.i.preheader, label %.preheader.i69

.lr.ph159.i.preheader:                            ; preds = %.preheader129.i
  %i.lr = xor i32 %.1.lcssa.i68, -1
  %i.ls = add i32 %4, %i.lr                       ; 2 uses
  %i.lt = zext i32 %i.ls to i64
  %i.lu = add nuw nsw i64 %i.lt, 1                ; 2 uses
  %min.iters.check346 = icmp ult i32 %i.ls, 7
  br i1 %min.iters.check346, label %.lr.ph159.i.preheader375, label %vector.ph347

vector.ph347:                                     ; preds = %.lr.ph159.i.preheader
  %n.vec348 = and i64 %i.lu, 8589934584           ; 4 uses
  %i.lv = trunc i64 %n.vec348 to i32
  %i.lw = add i32 %.1.lcssa.i68, %i.lv
  %i.lx = shl nuw nsw i64 %n.vec348, 2
  %i.ly = getelementptr i8, ptr %.174.lcssa.i67, i64 %i.lx
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next353, %vector.body349 ] ; 2 uses
  %i.lz = shl i64 %index350, 2
  %next.gep351 = getelementptr i8, ptr %.174.lcssa.i67, i64 %i.lz ; 2 uses
  %wide.load352 = load <8 x float>, ptr %next.gep351, align 4, !tbaa !65
  %i.ma = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load352
  store <8 x float> %i.ma, ptr %next.gep351, align 4, !tbaa !65
  %index.next353 = add nuw i64 %index350, 8       ; 2 uses
  %i.mb = icmp eq i64 %index.next353, %n.vec348
  br i1 %i.mb, label %middle.block354, label %vector.body349, !llvm.loop !257

middle.block354:                                  ; preds = %vector.body349
  %cmp.n355 = icmp eq i64 %i.lu, %n.vec348
  br i1 %cmp.n355, label %.preheader.i69, label %.lr.ph159.i.preheader375

.lr.ph159.i.preheader375:                         ; preds = %.lr.ph159.i.preheader, %middle.block354
  %.2158.i.ph = phi i32 [ %.1.lcssa.i68, %.lr.ph159.i.preheader ], [ %i.lw, %middle.block354 ]
  %.275157.i.ph = phi ptr [ %.174.lcssa.i67, %.lr.ph159.i.preheader ], [ %i.ly, %middle.block354 ]
  br label %.lr.ph159.i

.lr.ph154.i:                                      ; preds = %.preheader130.i, %.lr.ph154.i
  %.1153.i = phi i32 [ %i.mi, %.lr.ph154.i ], [ %.072.lcssa.i66, %.preheader130.i ]
  %.174152.i = phi ptr [ %i.mh, %.lr.ph154.i ], [ %.073.lcssa.i65, %.preheader130.i ] ; 3 uses
  %i.mc = load <4 x float>, ptr %.174152.i, align 1, !tbaa !61 ; 2 uses
  %i.md = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.mc) ; 2 uses
  %i.me = fneg fast <4 x float> %i.mc
  %i.mf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.me, <4 x float> nofpclass(nan inf) %i.md, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.mg = fmul fast <4 x float> %i.mf, %i.md
  store <4 x float> %i.mg, ptr %.174152.i, align 1, !tbaa !61
  %i.mh = getelementptr inbounds nuw i8, ptr %.174152.i, i64 16 ; 2 uses
  %i.mi = add nuw nsw i32 %.1153.i, 4             ; 3 uses
  %i.mj = or disjoint i32 %i.mi, 3
  %i.mk = icmp slt i32 %i.mj, %4
  br i1 %i.mk, label %.lr.ph154.i, label %.preheader129.i, !llvm.loop !258

.preheader.i69:                                   ; preds = %.lr.ph159.i, %middle.block354, %.preheader129.i
  br i1 %or.cond.i64, label %.lr.ph164.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph164.preheader.i:                            ; preds = %.preheader.i69
  %wide.trip.count187.i = zext nneg i32 %1 to i64
  %xtraiter439 = and i32 %4, 1
  %i.ml = icmp eq i32 %4, 1
  %unroll_iter443 = and i32 %4, 2147483646
  %lcmp.mod441.not = icmp eq i32 %xtraiter439, 0
  %lcmp.mod442 = trunc i32 %4 to i1
  br label %.lr.ph164.i

.lr.ph159.i:                                      ; preds = %.lr.ph159.i.preheader375, %.lr.ph159.i
  %.2158.i = phi i32 [ %i.mp, %.lr.ph159.i ], [ %.2158.i.ph, %.lr.ph159.i.preheader375 ]
  %.275157.i = phi ptr [ %i.mo, %.lr.ph159.i ], [ %.275157.i.ph, %.lr.ph159.i.preheader375 ] ; 3 uses
  %i.mm = load float, ptr %.275157.i, align 4, !tbaa !65
  %i.mn = fdiv fast float 1.000000e+00, %i.mm
  store float %i.mn, ptr %.275157.i, align 4, !tbaa !65
  %i.mo = getelementptr inbounds nuw i8, ptr %.275157.i, i64 4
  %i.mp = add nuw nsw i32 %.2158.i, 1             ; 2 uses
  %exitcond182.not.i71 = icmp eq i32 %i.mp, %4
  br i1 %exitcond182.not.i71, label %.preheader.i69, label %.lr.ph159.i, !llvm.loop !259

.lr.ph164.i:                                      ; preds = %._crit_edge165.i, %.lr.ph164.preheader.i
  %indvars.iv184.i = phi i64 [ 0, %.lr.ph164.preheader.i ], [ %indvars.iv.next185.i, %._crit_edge165.i ] ; 2 uses
  %i.mq = mul i64 %indvars.iv184.i, %3
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.mq ; 2 uses
  br i1 %i.ml, label %.epil.preheader438, label %.lr.ph164.i.new

.lr.ph164.i.new:                                  ; preds = %.lr.ph164.i, %.lr.ph164.i.new
  %.069161.i = phi ptr [ %i.nv, %.lr.ph164.i.new ], [ %6, %.lr.ph164.i ] ; 3 uses
  %.070160.i = phi ptr [ %i.nu, %.lr.ph164.i.new ], [ %i.mr, %.lr.ph164.i ] ; 4 uses
  %niter444 = phi i32 [ %niter444.next.1, %.lr.ph164.i.new ], [ 0, %.lr.ph164.i ]
  %i.ms = load i64, ptr %.070160.i, align 1, !tbaa !61
  %i.mt = insertelement <2 x i64> poison, i64 %i.ms, i64 0
  %i.mu = bitcast <2 x i64> %i.mt to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mv = bitcast <8 x i16> %17 to <4 x float>
  %i.mw = load float, ptr %.069161.i, align 4, !tbaa !65
  %i.mx = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = fmul fast <4 x float> %i.my, %i.mv
  %i.na = bitcast <4 x float> %i.mz to <4 x i32>
  %i.nb = lshr <4 x i32> %i.na, splat (i32 16)
  %i.nc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nb, <4 x i32> poison)
  %i.nd = bitcast <8 x i16> %i.nc to <2 x i64>
  %i.ne = extractelement <2 x i64> %i.nd, i64 0
  store i64 %i.ne, ptr %.070160.i, align 1, !tbaa !61
  %i.nf = getelementptr inbounds nuw i8, ptr %.070160.i, i64 8 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.069161.i, i64 4
  %i.nh = load i64, ptr %i.nf, align 1, !tbaa !61
  %i.ni = insertelement <2 x i64> poison, i64 %i.nh, i64 0
  %i.nj = bitcast <2 x i64> %i.ni to <8 x i16>
  %18 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nk = bitcast <8 x i16> %18 to <4 x float>
  %i.nl = load float, ptr %i.ng, align 4, !tbaa !65
  %i.nm = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = fmul fast <4 x float> %i.nn, %i.nk
  %i.np = bitcast <4 x float> %i.no to <4 x i32>
  %i.nq = lshr <4 x i32> %i.np, splat (i32 16)
  %i.nr = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nq, <4 x i32> poison)
  %i.ns = bitcast <8 x i16> %i.nr to <2 x i64>
  %i.nt = extractelement <2 x i64> %i.ns, i64 0
  store i64 %i.nt, ptr %i.nf, align 1, !tbaa !61
  %i.nu = getelementptr inbounds nuw i8, ptr %.070160.i, i64 16 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.069161.i, i64 8 ; 2 uses
  %niter444.next.1 = add nuw nsw i32 %niter444, 2 ; 2 uses
  %niter444.ncmp.1 = icmp eq i32 %niter444.next.1, %unroll_iter443
  br i1 %niter444.ncmp.1, label %._crit_edge165.i.unr-lcssa, label %.lr.ph164.i.new, !llvm.loop !260

._crit_edge165.i.unr-lcssa:                       ; preds = %.lr.ph164.i.new
  br i1 %lcmp.mod441.not, label %._crit_edge165.i, label %.epil.preheader438

.epil.preheader438:                               ; preds = %._crit_edge165.i.unr-lcssa, %.lr.ph164.i
  %.069161.i.epil.init = phi ptr [ %6, %.lr.ph164.i ], [ %i.nv, %._crit_edge165.i.unr-lcssa ]
  %.070160.i.epil.init = phi ptr [ %i.mr, %.lr.ph164.i ], [ %i.nu, %._crit_edge165.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod442)
  %i.nw = load i64, ptr %.070160.i.epil.init, align 1, !tbaa !61
  %i.nx = insertelement <2 x i64> poison, i64 %i.nw, i64 0
  %i.ny = bitcast <2 x i64> %i.nx to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ny, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nz = bitcast <8 x i16> %19 to <4 x float>
  %i.oa = load float, ptr %.069161.i.epil.init, align 4, !tbaa !65
  %i.ob = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.oc = shufflevector <4 x float> %i.ob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.od = fmul fast <4 x float> %i.oc, %i.nz
  %i.oe = bitcast <4 x float> %i.od to <4 x i32>
  %i.of = lshr <4 x i32> %i.oe, splat (i32 16)
  %i.og = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.of, <4 x i32> poison)
  %i.oh = bitcast <8 x i16> %i.og to <2 x i64>
  %i.oi = extractelement <2 x i64> %i.oh, i64 0
  store i64 %i.oi, ptr %.070160.i.epil.init, align 1, !tbaa !61
  br label %._crit_edge165.i

._crit_edge165.i:                                 ; preds = %._crit_edge165.i.unr-lcssa, %.epil.preheader438
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %exitcond188.not.i70 = icmp eq i64 %indvars.iv.next185.i, %wide.trip.count187.i
  br i1 %exitcond188.not.i70, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, label %.lr.ph164.i, !llvm.loop !261

bb.h:                                             ; preds = %._crit_edge
  %i.oj = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.oj, label %.lr.ph283.i, label %.preheader259.i

.lr.ph283.i:                                      ; preds = %bb.h
  %i.ok = and i32 %4, -8                          ; 3 uses
  %wide.trip.count.i83 = zext nneg i32 %1 to i64  ; 2 uses
  %i.ol = add i32 %4, -1                          ; 2 uses
  %i.om = add i32 %4, -8                          ; 2 uses
  %i.on = lshr i32 %i.om, 3                       ; 2 uses
  %i.oo = add nuw nsw i32 %i.on, 1                ; 2 uses
  %i.op = icmp eq i32 %i.on, 0
  %unroll_iter414 = and i32 %i.oo, 1073741822
  %i.oq = and i32 %i.om, 8
  %lcmp.mod410.not.not = icmp eq i32 %i.oq, 0
  %lcmp.mod413 = trunc i32 %i.oo to i1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i86, %.lr.ph283.i
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph283.i ], [ %indvars.iv.next.i87, %._crit_edge.i86 ] ; 2 uses
  %i.or = mul i64 %indvars.iv.i84, %3
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.or ; 3 uses
  br i1 %i.a, label %.lr.ph.i92.preheader, label %.preheader264.i

.lr.ph.i92.preheader:                             ; preds = %bb.i
  br i1 %i.op, label %.lr.ph.i92.epil.preheader, label %.lr.ph.i92

.preheader264.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i92
  br i1 %lcmp.mod410.not.not, label %.lr.ph.i92.epil.preheader, label %.preheader264.i

.lr.ph.i92.epil.preheader:                        ; preds = %.preheader264.i.loopexit.unr-lcssa, %.lr.ph.i92.preheader
  %.0136267.i.epil.init = phi ptr [ %i.os, %.lr.ph.i92.preheader ], [ %i.po, %.preheader264.i.loopexit.unr-lcssa ] ; 2 uses
  %.0153266.i.epil.init = phi ptr [ %5, %.lr.ph.i92.preheader ], [ %i.pp, %.preheader264.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod413)
  %i.ot = load <8 x i16>, ptr %.0136267.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %20 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ot, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %21 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ot, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ou = shufflevector <8 x i16> %20, <8 x i16> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ov = bitcast <16 x i16> %i.ou to <8 x float>
  %i.ow = load <8 x float>, ptr %.0153266.i.epil.init, align 1, !tbaa !61
  %i.ox = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ow, <8 x float> nofpclass(nan inf) %i.ov)
  store <8 x float> %i.ox, ptr %.0153266.i.epil.init, align 1, !tbaa !61
  %i.oy = getelementptr inbounds nuw i8, ptr %.0136267.i.epil.init, i64 16
  %i.oz = getelementptr inbounds nuw i8, ptr %.0153266.i.epil.init, i64 32
  br label %.preheader264.i

.preheader264.i:                                  ; preds = %.lr.ph.i92.epil.preheader, %.preheader264.i.loopexit.unr-lcssa, %bb.i
  %.0156.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.ok, %.preheader264.i.loopexit.unr-lcssa ], [ %i.ok, %.lr.ph.i92.epil.preheader ] ; 3 uses
  %.0153.lcssa.i = phi ptr [ %5, %bb.i ], [ %i.pp, %.preheader264.i.loopexit.unr-lcssa ], [ %i.oz, %.lr.ph.i92.epil.preheader ] ; 2 uses
  %.0136.lcssa.i = phi ptr [ %i.os, %bb.i ], [ %i.po, %.preheader264.i.loopexit.unr-lcssa ], [ %i.oy, %.lr.ph.i92.epil.preheader ] ; 2 uses
  %i.pa = or disjoint i32 %.0156.lcssa.i, 3
  %i.pb = icmp slt i32 %i.pa, %4
  br i1 %i.pb, label %.lr.ph273.i, label %.preheader263.i

.lr.ph.i92:                                       ; preds = %.lr.ph.i92.preheader, %.lr.ph.i92
  %.0136267.i = phi ptr [ %i.po, %.lr.ph.i92 ], [ %i.os, %.lr.ph.i92.preheader ] ; 3 uses
  %.0153266.i = phi ptr [ %i.pp, %.lr.ph.i92 ], [ %5, %.lr.ph.i92.preheader ] ; 4 uses
  %niter415 = phi i32 [ %niter415.next.1, %.lr.ph.i92 ], [ 0, %.lr.ph.i92.preheader ]
  %i.pc = load <8 x i16>, ptr %.0136267.i, align 1, !tbaa !61 ; 2 uses
  %22 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %23 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pd = shufflevector <8 x i16> %22, <8 x i16> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pe = bitcast <16 x i16> %i.pd to <8 x float>
  %i.pf = load <8 x float>, ptr %.0153266.i, align 1, !tbaa !61
  %i.pg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pf, <8 x float> nofpclass(nan inf) %i.pe)
  store <8 x float> %i.pg, ptr %.0153266.i, align 1, !tbaa !61
  %i.ph = getelementptr inbounds nuw i8, ptr %.0136267.i, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %.0153266.i, i64 32 ; 2 uses
  %i.pj = load <8 x i16>, ptr %i.ph, align 1, !tbaa !61 ; 2 uses
  %24 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %25 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pk = shufflevector <8 x i16> %24, <8 x i16> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pl = bitcast <16 x i16> %i.pk to <8 x float>
  %i.pm = load <8 x float>, ptr %i.pi, align 1, !tbaa !61
  %i.pn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) %i.pl)
  store <8 x float> %i.pn, ptr %i.pi, align 1, !tbaa !61
  %i.po = getelementptr inbounds nuw i8, ptr %.0136267.i, i64 32 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.0153266.i, i64 64 ; 3 uses
  %niter415.next.1 = add i32 %niter415, 2         ; 2 uses
  %niter415.ncmp.1.not = icmp eq i32 %niter415.next.1, %unroll_iter414
  br i1 %niter415.ncmp.1.not, label %.preheader264.i.loopexit.unr-lcssa, label %.lr.ph.i92, !llvm.loop !262

.preheader263.i:                                  ; preds = %.lr.ph273.i, %.preheader264.i
  %.1157.lcssa.i = phi i32 [ %.0156.lcssa.i, %.preheader264.i ], [ %i.sa, %.lr.ph273.i ] ; 5 uses
  %.1154.lcssa.i = phi ptr [ %.0153.lcssa.i, %.preheader264.i ], [ %i.rz, %.lr.ph273.i ] ; 5 uses
  %.1.lcssa.i85 = phi ptr [ %.0136.lcssa.i, %.preheader264.i ], [ %i.ry, %.lr.ph273.i ] ; 5 uses
  %i.pq = icmp slt i32 %.1157.lcssa.i, %4
  br i1 %i.pq, label %iter.check275, label %._crit_edge.i86

iter.check275:                                    ; preds = %.preheader263.i
  %i.pr = sub i32 %i.ol, %.1157.lcssa.i           ; 3 uses
  %i.ps = zext i32 %i.pr to i64
  %i.pt = add nuw nsw i64 %i.ps, 1                ; 5 uses
  %min.iters.check256 = icmp ult i32 %i.pr, 3
  br i1 %min.iters.check256, label %.lr.ph280.i.preheader, label %vector.main.loop.iter.check257

vector.main.loop.iter.check257:                   ; preds = %iter.check275
  %min.iters.check258 = icmp ult i32 %i.pr, 31
  br i1 %min.iters.check258, label %vec.epilog.ph279, label %vector.ph259

vector.ph259:                                     ; preds = %vector.main.loop.iter.check257
  %i.pu = and i64 %i.pt, 28
  %n.vec260 = and i64 %i.pt, 8589934560           ; 6 uses
  %i.pv = shl nuw nsw i64 %n.vec260, 1
  %i.pw = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.pv
  %i.px = shl nuw nsw i64 %n.vec260, 2
  %i.py = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.px
  %i.pz = trunc i64 %n.vec260 to i32
  %i.qa = add i32 %.1157.lcssa.i, %i.pz
  br label %vector.body261

vector.body261:                                   ; preds = %vector.ph259, %vector.body261
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next272, %vector.body261 ] ; 3 uses
  %i.qb = shl i64 %index262, 1
  %next.gep263 = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.qb ; 4 uses
  %i.qc = shl i64 %index262, 2
  %next.gep264 = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.qc ; 5 uses
  %i.qd = getelementptr i8, ptr %next.gep263, i64 16
  %i.qe = getelementptr i8, ptr %next.gep263, i64 32
  %i.qf = getelementptr i8, ptr %next.gep263, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep263, align 2, !tbaa !74
  %wide.load265 = load <8 x i16>, ptr %i.qd, align 2, !tbaa !74
  %wide.load266 = load <8 x i16>, ptr %i.qe, align 2, !tbaa !74
  %wide.load267 = load <8 x i16>, ptr %i.qf, align 2, !tbaa !74
  %i.qg = zext <8 x i16> %wide.load to <8 x i32>
  %i.qh = zext <8 x i16> %wide.load265 to <8 x i32>
  %i.qi = zext <8 x i16> %wide.load266 to <8 x i32>
  %i.qj = zext <8 x i16> %wide.load267 to <8 x i32>
  %i.qk = shl nuw <8 x i32> %i.qg, splat (i32 16)
  %i.ql = shl nuw <8 x i32> %i.qh, splat (i32 16)
  %i.qm = shl nuw <8 x i32> %i.qi, splat (i32 16)
  %i.qn = shl nuw <8 x i32> %i.qj, splat (i32 16)
  %i.qo = bitcast <8 x i32> %i.qk to <8 x float>  ; 2 uses
  %i.qp = bitcast <8 x i32> %i.ql to <8 x float>  ; 2 uses
  %i.qq = bitcast <8 x i32> %i.qm to <8 x float>  ; 2 uses
  %i.qr = bitcast <8 x i32> %i.qn to <8 x float>  ; 2 uses
  %i.qs = getelementptr i8, ptr %next.gep264, i64 32 ; 2 uses
  %i.qt = getelementptr i8, ptr %next.gep264, i64 64 ; 2 uses
  %i.qu = getelementptr i8, ptr %next.gep264, i64 96 ; 2 uses
  %wide.load268 = load <8 x float>, ptr %next.gep264, align 4, !tbaa !65 ; 2 uses
  %wide.load269 = load <8 x float>, ptr %i.qs, align 4, !tbaa !65 ; 2 uses
  %wide.load270 = load <8 x float>, ptr %i.qt, align 4, !tbaa !65 ; 2 uses
  %wide.load271 = load <8 x float>, ptr %i.qu, align 4, !tbaa !65 ; 2 uses
  %i.qv = fcmp fast olt <8 x float> %wide.load268, %i.qo
  %i.qw = fcmp fast olt <8 x float> %wide.load269, %i.qp
  %i.qx = fcmp fast olt <8 x float> %wide.load270, %i.qq
  %i.qy = fcmp fast olt <8 x float> %wide.load271, %i.qr
  %i.qz = select <8 x i1> %i.qv, <8 x float> %i.qo, <8 x float> %wide.load268
  %i.ra = select <8 x i1> %i.qw, <8 x float> %i.qp, <8 x float> %wide.load269
  %i.rb = select <8 x i1> %i.qx, <8 x float> %i.qq, <8 x float> %wide.load270
  %i.rc = select <8 x i1> %i.qy, <8 x float> %i.qr, <8 x float> %wide.load271
  store <8 x float> %i.qz, ptr %next.gep264, align 4, !tbaa !65
  store <8 x float> %i.ra, ptr %i.qs, align 4, !tbaa !65
  store <8 x float> %i.rb, ptr %i.qt, align 4, !tbaa !65
  store <8 x float> %i.rc, ptr %i.qu, align 4, !tbaa !65
  %index.next272 = add nuw i64 %index262, 32      ; 2 uses
  %i.rd = icmp eq i64 %index.next272, %n.vec260
  br i1 %i.rd, label %middle.block273, label %vector.body261, !llvm.loop !263

middle.block273:                                  ; preds = %vector.body261
  %cmp.n274 = icmp eq i64 %i.pt, %n.vec260
  br i1 %cmp.n274, label %._crit_edge.i86, label %vec.epilog.iter.check276

vec.epilog.iter.check276:                         ; preds = %middle.block273
  %min.epilog.iters.check278 = icmp eq i64 %i.pu, 0
  br i1 %min.epilog.iters.check278, label %.lr.ph280.i.preheader, label %vec.epilog.ph279, !prof !69

vec.epilog.ph279:                                 ; preds = %vector.main.loop.iter.check257, %vec.epilog.iter.check276
  %vec.epilog.resume.val280 = phi i64 [ %n.vec260, %vec.epilog.iter.check276 ], [ 0, %vector.main.loop.iter.check257 ]
  %n.vec281 = and i64 %i.pt, 8589934588           ; 5 uses
  %i.re = shl nuw nsw i64 %n.vec281, 1
  %i.rf = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.re
  %i.rg = shl nuw nsw i64 %n.vec281, 2
  %i.rh = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.rg
  %i.ri = trunc i64 %n.vec281 to i32
  %i.rj = add i32 %.1157.lcssa.i, %i.ri
  br label %vec.epilog.vector.body282

vec.epilog.vector.body282:                        ; preds = %vec.epilog.vector.body282, %vec.epilog.ph279
  %index283 = phi i64 [ %vec.epilog.resume.val280, %vec.epilog.ph279 ], [ %index.next288, %vec.epilog.vector.body282 ] ; 3 uses
  %i.rk = shl i64 %index283, 1
  %next.gep284 = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.rk
  %i.rl = shl i64 %index283, 2
  %next.gep285 = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.rl ; 2 uses
  %wide.load286 = load <4 x i16>, ptr %next.gep284, align 2, !tbaa !74
  %i.rm = zext <4 x i16> %wide.load286 to <4 x i32>
  %i.rn = shl nuw <4 x i32> %i.rm, splat (i32 16)
  %i.ro = bitcast <4 x i32> %i.rn to <4 x float>  ; 2 uses
  %wide.load287 = load <4 x float>, ptr %next.gep285, align 4, !tbaa !65 ; 2 uses
  %i.rp = fcmp fast olt <4 x float> %wide.load287, %i.ro
  %i.rq = select <4 x i1> %i.rp, <4 x float> %i.ro, <4 x float> %wide.load287
  store <4 x float> %i.rq, ptr %next.gep285, align 4, !tbaa !65
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.rr = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.rr, label %vec.epilog.middle.block289, label %vec.epilog.vector.body282, !llvm.loop !264

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body282
  %cmp.n290 = icmp eq i64 %i.pt, %n.vec281
  br i1 %cmp.n290, label %._crit_edge.i86, label %.lr.ph280.i.preheader

.lr.ph280.i.preheader:                            ; preds = %iter.check275, %vec.epilog.iter.check276, %vec.epilog.middle.block289
  %.2279.i.ph = phi ptr [ %.1.lcssa.i85, %iter.check275 ], [ %i.pw, %vec.epilog.iter.check276 ], [ %i.rf, %vec.epilog.middle.block289 ]
  %.2155278.i.ph = phi ptr [ %.1154.lcssa.i, %iter.check275 ], [ %i.py, %vec.epilog.iter.check276 ], [ %i.rh, %vec.epilog.middle.block289 ]
  %.2158277.i.ph = phi i32 [ %.1157.lcssa.i, %iter.check275 ], [ %i.qa, %vec.epilog.iter.check276 ], [ %i.rj, %vec.epilog.middle.block289 ]
  br label %.lr.ph280.i

.lr.ph273.i:                                      ; preds = %.preheader264.i, %.lr.ph273.i
  %.1272.i = phi ptr [ %i.ry, %.lr.ph273.i ], [ %.0136.lcssa.i, %.preheader264.i ] ; 2 uses
  %.1154271.i = phi ptr [ %i.rz, %.lr.ph273.i ], [ %.0153.lcssa.i, %.preheader264.i ] ; 3 uses
  %.1157270.i = phi i32 [ %i.sa, %.lr.ph273.i ], [ %.0156.lcssa.i, %.preheader264.i ]
  %i.rs = load i64, ptr %.1272.i, align 1, !tbaa !61
  %i.rt = insertelement <2 x i64> poison, i64 %i.rs, i64 0
  %i.ru = bitcast <2 x i64> %i.rt to <8 x i16>
  %26 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ru, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rv = bitcast <8 x i16> %26 to <4 x float>
  %i.rw = load <4 x float>, ptr %.1154271.i, align 1, !tbaa !61
  %i.rx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rw, <4 x float> nofpclass(nan inf) %i.rv)
  store <4 x float> %i.rx, ptr %.1154271.i, align 1, !tbaa !61
  %i.ry = getelementptr inbounds nuw i8, ptr %.1272.i, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.1154271.i, i64 16 ; 2 uses
  %i.sa = add nuw nsw i32 %.1157270.i, 4          ; 3 uses
  %i.sb = or disjoint i32 %i.sa, 3
  %i.sc = icmp slt i32 %i.sb, %4
  br i1 %i.sc, label %.lr.ph273.i, label %.preheader263.i, !llvm.loop !265

.lr.ph280.i:                                      ; preds = %.lr.ph280.i.preheader, %.lr.ph280.i
  %.2279.i = phi ptr [ %i.sj, %.lr.ph280.i ], [ %.2279.i.ph, %.lr.ph280.i.preheader ] ; 2 uses
  %.2155278.i = phi ptr [ %i.sk, %.lr.ph280.i ], [ %.2155278.i.ph, %.lr.ph280.i.preheader ] ; 3 uses
  %.2158277.i = phi i32 [ %i.sl, %.lr.ph280.i ], [ %.2158277.i.ph, %.lr.ph280.i.preheader ]
  %i.sd = load i16, ptr %.2279.i, align 2, !tbaa !74
  %i.se = zext i16 %i.sd to i32
  %i.sf = shl nuw i32 %i.se, 16
  %i.sg = bitcast i32 %i.sf to float              ; 2 uses
  %i.sh = load float, ptr %.2155278.i, align 4, !tbaa !65 ; 2 uses
  %i.si = fcmp fast olt float %i.sh, %i.sg
  %.sroa.speculated.i90 = select i1 %i.si, float %i.sg, float %i.sh
  store float %.sroa.speculated.i90, ptr %.2155278.i, align 4, !tbaa !65
  %i.sj = getelementptr inbounds nuw i8, ptr %.2279.i, i64 2
  %i.sk = getelementptr inbounds nuw i8, ptr %.2155278.i, i64 4
  %i.sl = add nuw nsw i32 %.2158277.i, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.sl, %4
  br i1 %exitcond.not.i91, label %._crit_edge.i86, label %.lr.ph280.i, !llvm.loop !266

._crit_edge.i86:                                  ; preds = %.lr.ph280.i, %middle.block273, %vec.epilog.middle.block289, %.preheader263.i
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond371.not.i, label %.preheader262.i, label %bb.i, !llvm.loop !267

.preheader259.i:                                  ; preds = %._crit_edge308.i, %bb.h
  br i1 %i.a, label %.lr.ph313.i.preheader, label %.preheader258.i

.lr.ph313.i.preheader:                            ; preds = %.preheader259.i
  %i.sm = add nsw i32 %4, -8                      ; 2 uses
  %i.sn = lshr i32 %i.sm, 3                       ; 2 uses
  %i.so = add nuw nsw i32 %i.sn, 1                ; 2 uses
  %i.sp = icmp eq i32 %i.sn, 0
  br i1 %i.sp, label %.lr.ph313.i.epil.preheader, label %.lr.ph313.i.preheader.new

.lr.ph313.i.preheader.new:                        ; preds = %.lr.ph313.i.preheader
  %unroll_iter423 = and i32 %i.so, 1073741822
  br label %.lr.ph313.i

.preheader262.i:                                  ; preds = %._crit_edge.i86, %._crit_edge308.i
  %indvars.iv373.i = phi i64 [ %indvars.iv.next374.i, %._crit_edge308.i ], [ 0, %._crit_edge.i86 ] ; 2 uses
  %i.sq = mul i64 %indvars.iv373.i, %3
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.sq ; 2 uses
  br i1 %i.a, label %.lr.ph289.i, label %.preheader261.i

.preheader261.i:                                  ; preds = %.lr.ph289.i, %.preheader262.i
  %.0169.lcssa.i = phi ptr [ %6, %.preheader262.i ], [ %i.ug, %.lr.ph289.i ] ; 2 uses
  %.0166.lcssa.i = phi i32 [ 0, %.preheader262.i ], [ %i.ok, %.lr.ph289.i ] ; 3 uses
  %.0163.lcssa.i = phi ptr [ %5, %.preheader262.i ], [ %i.uf, %.lr.ph289.i ] ; 2 uses
  %.0160.lcssa.i = phi ptr [ %i.sr, %.preheader262.i ], [ %i.ue, %.lr.ph289.i ] ; 2 uses
  %i.ss = or disjoint i32 %.0166.lcssa.i, 3
  %i.st = icmp slt i32 %i.ss, %4
  br i1 %i.st, label %.lr.ph298.i, label %.preheader260.i

.lr.ph289.i:                                      ; preds = %.preheader262.i, %.lr.ph289.i
  %.0160287.i = phi ptr [ %i.ue, %.lr.ph289.i ], [ %i.sr, %.preheader262.i ] ; 3 uses
  %.0163286.i = phi ptr [ %i.uf, %.lr.ph289.i ], [ %5, %.preheader262.i ] ; 2 uses
  %.0166285.i = phi i32 [ %i.uh, %.lr.ph289.i ], [ 0, %.preheader262.i ]
  %.0169284.i = phi ptr [ %i.ug, %.lr.ph289.i ], [ %6, %.preheader262.i ] ; 3 uses
  %i.su = load <8 x i16>, ptr %.0160287.i, align 1, !tbaa !61 ; 2 uses
  %27 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.su, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %28 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.su, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sv = shufflevector <8 x i16> %27, <8 x i16> %28, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sw = bitcast <16 x i16> %i.sv to <8 x float>
  %i.sx = load <8 x float>, ptr %.0163286.i, align 1, !tbaa !61
  %i.sy = load <8 x float>, ptr %.0169284.i, align 1, !tbaa !61
  %i.sz = fsub fast <8 x float> %i.sw, %i.sx
  %i.ta = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.sz, <8 x float> splat (float f0x42B0C0A5))
  %i.tb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ta, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.tc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tb, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.td = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.tc, i32 1) ; 2 uses
  %i.te = fcmp fast ogt <8 x float> %i.td, %i.tc
  %i.tf = select <8 x i1> %i.te, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.tg = fsub fast <8 x float> %i.td, %i.tf      ; 2 uses
  %i.th = fneg fast <8 x float> %i.tg             ; 2 uses
  %i.ti = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.th, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.tb)
  %i.tj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.th, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ti) ; 8 uses
  %i.tk = fmul fast <8 x float> %i.tj, %i.tj
  %i.tl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tj, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.tm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tl, <8 x float> nofpclass(nan inf) %i.tj, <8 x float> splat (float f0x3C088908))
  %i.tn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tm, <8 x float> nofpclass(nan inf) %i.tj, <8 x float> splat (float f0x3D2AA9C1))
  %i.to = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tn, <8 x float> nofpclass(nan inf) %i.tj, <8 x float> splat (float f0x3E2AAAAA))
  %i.tp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.to, <8 x float> nofpclass(nan inf) %i.tj, <8 x float> splat (float 5.000000e-01))
  %i.tq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tp, <8 x float> nofpclass(nan inf) %i.tk, <8 x float> nofpclass(nan inf) %i.tj)
  %i.tr = fadd fast <8 x float> %i.tq, splat (float 1.000000e+00)
  %i.ts = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tg)
  %i.tt = shl <8 x i32> %i.ts, splat (i32 23)
  %i.tu = add <8 x i32> %i.tt, splat (i32 1065353216)
  %i.tv = bitcast <8 x i32> %i.tu to <8 x float>
  %i.tw = fmul fast <8 x float> %i.tr, %i.tv      ; 2 uses
  %i.tx = bitcast <8 x float> %i.tw to <8 x i32>  ; 2 uses
  %i.ty = shufflevector <8 x i32> %i.tx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tz = shufflevector <8 x i32> %i.tx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ua = lshr <4 x i32> %i.ty, splat (i32 16)
  %i.ub = lshr <4 x i32> %i.tz, splat (i32 16)
  %i.uc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ua, <4 x i32> %i.ub)
  store <8 x i16> %i.uc, ptr %.0160287.i, align 1, !tbaa !61
  %i.ud = fadd fast <8 x float> %i.tw, %i.sy
  store <8 x float> %i.ud, ptr %.0169284.i, align 1, !tbaa !61
  %i.ue = getelementptr inbounds nuw i8, ptr %.0160287.i, i64 16 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0163286.i, i64 32 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0169284.i, i64 32 ; 2 uses
  %i.uh = add nuw nsw i32 %.0166285.i, 8          ; 2 uses
  %i.ui = or disjoint i32 %i.uh, 7
  %i.uj = icmp slt i32 %i.ui, %4
  br i1 %i.uj, label %.lr.ph289.i, label %.preheader261.i, !llvm.loop !268

.preheader260.i:                                  ; preds = %.lr.ph298.i, %.preheader261.i
  %.1170.lcssa.i = phi ptr [ %.0169.lcssa.i, %.preheader261.i ], [ %i.xu, %.lr.ph298.i ] ; 6 uses
  %.1167.lcssa.i = phi i32 [ %.0166.lcssa.i, %.preheader261.i ], [ %i.xv, %.lr.ph298.i ] ; 6 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader261.i ], [ %i.xt, %.lr.ph298.i ] ; 6 uses
  %.1161.lcssa.i = phi ptr [ %.0160.lcssa.i, %.preheader261.i ], [ %i.xs, %.lr.ph298.i ] ; 4 uses
  %i.uk = icmp slt i32 %.1167.lcssa.i, %4
  br i1 %i.uk, label %.lr.ph307.i.preheader, label %._crit_edge308.i

.lr.ph307.i.preheader:                            ; preds = %.preheader260.i
  %i.ul = xor i32 %.1167.lcssa.i, -1
  %i.um = add i32 %4, %i.ul                       ; 2 uses
  %i.un = zext i32 %i.um to i64
  %i.uo = add nuw nsw i64 %i.un, 1                ; 2 uses
  %min.iters.check298 = icmp ult i32 %i.um, 7
  br i1 %min.iters.check298, label %.lr.ph307.i.preheader390, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph307.i.preheader
  %i.up = sub i32 %i.ol, %.1167.lcssa.i
  %i.uq = zext i32 %i.up to i64
  %i.ur = shl nuw nsw i64 %i.uq, 2
  %i.us = add nuw nsw i64 %i.ur, 4                ; 2 uses
  %i.ut = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.us
  %i.uu = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.us
  %bound0 = icmp ult ptr %.1170.lcssa.i, %i.uu
  %bound1 = icmp ult ptr %.1164.lcssa.i, %i.ut
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph307.i.preheader390, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck
  %n.vec300 = and i64 %i.uo, 8589934584           ; 5 uses
  %i.uv = shl nuw nsw i64 %n.vec300, 1
  %i.uw = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.uv
  %i.ux = shl nuw nsw i64 %n.vec300, 2            ; 2 uses
  %i.uy = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.ux
  %i.uz = trunc i64 %n.vec300 to i32
  %i.va = add i32 %.1167.lcssa.i, %i.uz
  %i.vb = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.ux
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next309, %vector.body301 ] ; 3 uses
  %i.vc = shl i64 %index302, 1
  %next.gep303 = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.vc ; 2 uses
  %i.vd = shl i64 %index302, 2                    ; 2 uses
  %next.gep304 = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.vd
  %next.gep305 = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.vd ; 2 uses
  %wide.load306 = load <8 x i16>, ptr %next.gep303, align 2, !tbaa !74
  %i.ve = zext <8 x i16> %wide.load306 to <8 x i32>
  %i.vf = shl nuw <8 x i32> %i.ve, splat (i32 16)
  %i.vg = bitcast <8 x i32> %i.vf to <8 x float>
  %wide.load307 = load <8 x float>, ptr %next.gep304, align 4, !tbaa !65, !alias.scope !285
  %i.vh = fsub fast <8 x float> %i.vg, %wide.load307
  %i.vi = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.vh) ; 2 uses
  %i.vj = bitcast <8 x float> %i.vi to <8 x i32>
  %i.vk = lshr <8 x i32> %i.vj, splat (i32 16)
  %i.vl = trunc nuw nsw <8 x i32> %i.vk to <8 x i16>
  store <8 x i16> %i.vl, ptr %next.gep303, align 2, !tbaa !74
  %wide.load308 = load <8 x float>, ptr %next.gep305, align 4, !tbaa !65, !alias.scope !286, !noalias !285
  %i.vm = fadd fast <8 x float> %i.vi, %wide.load308
  store <8 x float> %i.vm, ptr %next.gep305, align 4, !tbaa !65, !alias.scope !286, !noalias !285
  %index.next309 = add nuw i64 %index302, 8       ; 2 uses
  %i.vn = icmp eq i64 %index.next309, %n.vec300
  br i1 %i.vn, label %middle.block310, label %vector.body301, !llvm.loop !272

middle.block310:                                  ; preds = %vector.body301
  %cmp.n311 = icmp eq i64 %i.uo, %n.vec300
  br i1 %cmp.n311, label %._crit_edge308.i, label %.lr.ph307.i.preheader390

.lr.ph307.i.preheader390:                         ; preds = %vector.memcheck, %.lr.ph307.i.preheader, %middle.block310
  %.2162306.i.ph = phi ptr [ %.1161.lcssa.i, %vector.memcheck ], [ %.1161.lcssa.i, %.lr.ph307.i.preheader ], [ %i.uw, %middle.block310 ] ; 4 uses
  %.2165305.i.ph = phi ptr [ %.1164.lcssa.i, %vector.memcheck ], [ %.1164.lcssa.i, %.lr.ph307.i.preheader ], [ %i.uy, %middle.block310 ] ; 3 uses
  %.2168304.i.ph = phi i32 [ %.1167.lcssa.i, %vector.memcheck ], [ %.1167.lcssa.i, %.lr.ph307.i.preheader ], [ %i.va, %middle.block310 ] ; 4 uses
  %.2171303.i.ph = phi ptr [ %.1170.lcssa.i, %vector.memcheck ], [ %.1170.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vb, %middle.block310 ] ; 4 uses
  %i.vo = sub i32 %4, %.2168304.i.ph
  %.neg = add i32 %.2168304.i.ph, 1
  %xtraiter416 = and i32 %i.vo, 1
  %lcmp.mod417.not = icmp eq i32 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph307.i.prol.loopexit, label %.lr.ph307.i.prol

.lr.ph307.i.prol:                                 ; preds = %.lr.ph307.i.preheader390
  %i.vp = load i16, ptr %.2162306.i.ph, align 2, !tbaa !74
  %i.vq = zext i16 %i.vp to i32
  %i.vr = shl nuw i32 %i.vq, 16
  %i.vs = bitcast i32 %i.vr to float
  %i.vt = load float, ptr %.2165305.i.ph, align 4, !tbaa !65
  %i.vu = fsub fast float %i.vs, %i.vt
  %i.vv = tail call fast float @llvm.exp.f32(float %i.vu) ; 2 uses
  %i.vw = bitcast float %i.vv to i32
  %i.vx = lshr i32 %i.vw, 16
  %i.vy = trunc nuw nsw i32 %i.vx to i16
  store i16 %i.vy, ptr %.2162306.i.ph, align 2, !tbaa !74
  %i.vz = load float, ptr %.2171303.i.ph, align 4, !tbaa !65
  %i.wa = fadd fast float %i.vv, %i.vz
  store float %i.wa, ptr %.2171303.i.ph, align 4, !tbaa !65
  %i.wb = getelementptr inbounds nuw i8, ptr %.2162306.i.ph, i64 2
  %i.wc = getelementptr inbounds nuw i8, ptr %.2165305.i.ph, i64 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.2171303.i.ph, i64 4
  %i.we = add nuw nsw i32 %.2168304.i.ph, 1
  br label %.lr.ph307.i.prol.loopexit

.lr.ph307.i.prol.loopexit:                        ; preds = %.lr.ph307.i.prol, %.lr.ph307.i.preheader390
  %.2162306.i.unr = phi ptr [ %.2162306.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wb, %.lr.ph307.i.prol ]
  %.2165305.i.unr = phi ptr [ %.2165305.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wc, %.lr.ph307.i.prol ]
  %.2168304.i.unr = phi i32 [ %.2168304.i.ph, %.lr.ph307.i.preheader390 ], [ %i.we, %.lr.ph307.i.prol ]
  %.2171303.i.unr = phi ptr [ %.2171303.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wd, %.lr.ph307.i.prol ]
  %i.wf = icmp eq i32 %4, %.neg
  br i1 %i.wf, label %._crit_edge308.i, label %.lr.ph307.i

.lr.ph298.i:                                      ; preds = %.preheader261.i, %.lr.ph298.i
  %.1161297.i = phi ptr [ %i.xs, %.lr.ph298.i ], [ %.0160.lcssa.i, %.preheader261.i ] ; 3 uses
  %.1164296.i = phi ptr [ %i.xt, %.lr.ph298.i ], [ %.0163.lcssa.i, %.preheader261.i ] ; 2 uses
  %.1167295.i = phi i32 [ %i.xv, %.lr.ph298.i ], [ %.0166.lcssa.i, %.preheader261.i ]
  %.1170294.i = phi ptr [ %i.xu, %.lr.ph298.i ], [ %.0169.lcssa.i, %.preheader261.i ] ; 3 uses
  %i.wg = load i64, ptr %.1161297.i, align 1, !tbaa !61
  %i.wh = insertelement <2 x i64> poison, i64 %i.wg, i64 0
  %i.wi = bitcast <2 x i64> %i.wh to <8 x i16>
  %29 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wj = bitcast <8 x i16> %29 to <4 x float>
  %i.wk = load <4 x float>, ptr %.1164296.i, align 1, !tbaa !61
  %i.wl = load <4 x float>, ptr %.1170294.i, align 1, !tbaa !61
  %i.wm = fsub fast <4 x float> %i.wj, %i.wk
  %i.wn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wm, <4 x float> splat (float f0x42B0C0A5))
  %i.wo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wp = fmul fast <4 x float> %i.wo, splat (float f0x3FB8AA3B)
  %i.wq = fadd fast <4 x float> %i.wp, splat (float 5.000000e-01) ; 2 uses
  %i.wr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wq)
  %i.ws = sitofp fast <4 x i32> %i.wr to <4 x float> ; 2 uses
  %i.wt = fcmp fast olt <4 x float> %i.wq, %i.ws
  %i.wu = select <4 x i1> %i.wt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.wv = fsub fast <4 x float> %i.ws, %i.wu      ; 2 uses
  %i.ww = fneg fast <4 x float> %i.wv             ; 2 uses
  %i.wx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ww, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.wo)
  %i.wy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ww, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.wx) ; 8 uses
  %i.wz = fmul fast <4 x float> %i.wy, %i.wy
  %i.xa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.xb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xa, <4 x float> nofpclass(nan inf) %i.wy, <4 x float> splat (float f0x3C088908))
  %i.xc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xb, <4 x float> nofpclass(nan inf) %i.wy, <4 x float> splat (float f0x3D2AA9C1))
  %i.xd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xc, <4 x float> nofpclass(nan inf) %i.wy, <4 x float> splat (float f0x3E2AAAAA))
  %i.xe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xd, <4 x float> nofpclass(nan inf) %i.wy, <4 x float> splat (float 5.000000e-01))
  %i.xf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xe, <4 x float> nofpclass(nan inf) %i.wz, <4 x float> nofpclass(nan inf) %i.wy)
  %i.xg = fadd fast <4 x float> %i.xf, splat (float 1.000000e+00)
  %i.xh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wv)
  %i.xi = shl <4 x i32> %i.xh, splat (i32 23)
  %i.xj = add <4 x i32> %i.xi, splat (i32 1065353216)
  %i.xk = bitcast <4 x i32> %i.xj to <4 x float>
  %i.xl = fmul fast <4 x float> %i.xg, %i.xk      ; 2 uses
  %i.xm = bitcast <4 x float> %i.xl to <4 x i32>
  %i.xn = lshr <4 x i32> %i.xm, splat (i32 16)
  %i.xo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.xn, <4 x i32> poison)
  %i.xp = bitcast <8 x i16> %i.xo to <2 x i64>
  %i.xq = extractelement <2 x i64> %i.xp, i64 0
  store i64 %i.xq, ptr %.1161297.i, align 1, !tbaa !61
  %i.xr = fadd fast <4 x float> %i.xl, %i.wl
  store <4 x float> %i.xr, ptr %.1170294.i, align 1, !tbaa !61
  %i.xs = getelementptr inbounds nuw i8, ptr %.1161297.i, i64 8 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.1164296.i, i64 16 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.1170294.i, i64 16 ; 2 uses
  %i.xv = add nuw nsw i32 %.1167295.i, 4          ; 3 uses
  %i.xw = or disjoint i32 %i.xv, 3
  %i.xx = icmp slt i32 %i.xw, %4
  br i1 %i.xx, label %.lr.ph298.i, label %.preheader260.i, !llvm.loop !273

.lr.ph307.i:                                      ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i
  %.2162306.i = phi ptr [ %i.yz, %.lr.ph307.i ], [ %.2162306.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %.2165305.i = phi ptr [ %i.za, %.lr.ph307.i ], [ %.2165305.i.unr, %.lr.ph307.i.prol.loopexit ] ; 3 uses
  %.2168304.i = phi i32 [ %i.zc, %.lr.ph307.i ], [ %.2168304.i.unr, %.lr.ph307.i.prol.loopexit ]
  %.2171303.i = phi ptr [ %i.zb, %.lr.ph307.i ], [ %.2171303.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %i.xy = load i16, ptr %.2162306.i, align 2, !tbaa !74
  %i.xz = zext i16 %i.xy to i32
  %i.ya = shl nuw i32 %i.xz, 16
  %i.yb = bitcast i32 %i.ya to float
  %i.yc = load float, ptr %.2165305.i, align 4, !tbaa !65
  %i.yd = fsub fast float %i.yb, %i.yc
  %i.ye = tail call fast float @llvm.exp.f32(float %i.yd) ; 2 uses
  %i.yf = bitcast float %i.ye to i32
  %i.yg = lshr i32 %i.yf, 16
  %i.yh = trunc nuw nsw i32 %i.yg to i16
  store i16 %i.yh, ptr %.2162306.i, align 2, !tbaa !74
  %i.yi = load float, ptr %.2171303.i, align 4, !tbaa !65
  %i.yj = fadd fast float %i.ye, %i.yi
  store float %i.yj, ptr %.2171303.i, align 4, !tbaa !65
  %i.yk = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 2 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 4
  %i.ym = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 4 ; 2 uses
  %i.yn = load i16, ptr %i.yk, align 2, !tbaa !74
  %i.yo = zext i16 %i.yn to i32
  %i.yp = shl nuw i32 %i.yo, 16
  %i.yq = bitcast i32 %i.yp to float
  %i.yr = load float, ptr %i.yl, align 4, !tbaa !65
  %i.ys = fsub fast float %i.yq, %i.yr
  %i.yt = tail call fast float @llvm.exp.f32(float %i.ys) ; 2 uses
  %i.yu = bitcast float %i.yt to i32
  %i.yv = lshr i32 %i.yu, 16
  %i.yw = trunc nuw nsw i32 %i.yv to i16
  store i16 %i.yw, ptr %i.yk, align 2, !tbaa !74
  %i.yx = load float, ptr %i.ym, align 4, !tbaa !65
  %i.yy = fadd fast float %i.yt, %i.yx
  store float %i.yy, ptr %i.ym, align 4, !tbaa !65
  %i.yz = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 4
  %i.za = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 8
  %i.zc = add nuw nsw i32 %.2168304.i, 2          ; 2 uses
  %exitcond372.not.i.1 = icmp eq i32 %i.zc, %4
  br i1 %exitcond372.not.i.1, label %._crit_edge308.i, label %.lr.ph307.i, !llvm.loop !274

._crit_edge308.i:                                 ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i, %middle.block310, %.preheader260.i
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %exitcond377.not.i = icmp eq i64 %indvars.iv.next374.i, %wide.trip.count.i83
  br i1 %exitcond377.not.i, label %.preheader259.i, label %.preheader262.i, !llvm.loop !275

.preheader258.loopexit.i.unr-lcssa:               ; preds = %.lr.ph313.i
  %i.zd = and i32 %i.sm, 8
  %lcmp.mod420.not.not = icmp eq i32 %i.zd, 0
  br i1 %lcmp.mod420.not.not, label %.lr.ph313.i.epil.preheader, label %.preheader258.loopexit.i

.lr.ph313.i.epil.preheader:                       ; preds = %.preheader258.loopexit.i.unr-lcssa, %.lr.ph313.i.preheader
  %.0150311.i.epil.init = phi ptr [ %6, %.lr.ph313.i.preheader ], [ %i.zy, %.preheader258.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod422 = trunc i32 %i.so to i1
  tail call void @llvm.assume(i1 %lcmp.mod422)
  %i.ze = load <8 x float>, ptr %.0150311.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.zf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ze) ; 2 uses
  %i.zg = fneg fast <8 x float> %i.ze
  %i.zh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zg, <8 x float> nofpclass(nan inf) %i.zf, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.zi = fmul fast <8 x float> %i.zh, %i.zf
  store <8 x float> %i.zi, ptr %.0150311.i.epil.init, align 1, !tbaa !61
  %i.zj = getelementptr inbounds nuw i8, ptr %.0150311.i.epil.init, i64 32
  br label %.preheader258.loopexit.i

.preheader258.loopexit.i:                         ; preds = %.preheader258.loopexit.i.unr-lcssa, %.lr.ph313.i.epil.preheader
  %.lcssa389 = phi ptr [ %i.zy, %.preheader258.loopexit.i.unr-lcssa ], [ %i.zj, %.lr.ph313.i.epil.preheader ]
  %i.zk = and i32 %4, 2147483640
  br label %.preheader258.i

.preheader258.i:                                  ; preds = %.preheader258.loopexit.i, %.preheader259.i
  %.0150.lcssa.i = phi ptr [ %6, %.preheader259.i ], [ %.lcssa389, %.preheader258.loopexit.i ] ; 2 uses
  %.0147.lcssa.i = phi i32 [ 0, %.preheader259.i ], [ %i.zk, %.preheader258.loopexit.i ] ; 3 uses
  %i.zl = or disjoint i32 %.0147.lcssa.i, 3
  %i.zm = icmp slt i32 %i.zl, %4
  br i1 %i.zm, label %.lr.ph318.i, label %.preheader257.i

.lr.ph313.i:                                      ; preds = %.lr.ph313.i, %.lr.ph313.i.preheader.new
  %.0150311.i = phi ptr [ %6, %.lr.ph313.i.preheader.new ], [ %i.zy, %.lr.ph313.i ] ; 4 uses
  %niter424 = phi i32 [ 0, %.lr.ph313.i.preheader.new ], [ %niter424.next.1, %.lr.ph313.i ]
  %i.zn = load <8 x float>, ptr %.0150311.i, align 1, !tbaa !61 ; 2 uses
  %i.zo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.zn) ; 2 uses
  %i.zp = fneg fast <8 x float> %i.zn
  %i.zq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zp, <8 x float> nofpclass(nan inf) %i.zo, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.zr = fmul fast <8 x float> %i.zq, %i.zo
  store <8 x float> %i.zr, ptr %.0150311.i, align 1, !tbaa !61
  %i.zs = getelementptr inbounds nuw i8, ptr %.0150311.i, i64 32 ; 2 uses
  %i.zt = load <8 x float>, ptr %i.zs, align 1, !tbaa !61 ; 2 uses
  %i.zu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.zt) ; 2 uses
  %i.zv = fneg fast <8 x float> %i.zt
  %i.zw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zv, <8 x float> nofpclass(nan inf) %i.zu, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.zx = fmul fast <8 x float> %i.zw, %i.zu
  store <8 x float> %i.zx, ptr %i.zs, align 1, !tbaa !61
  %i.zy = getelementptr inbounds nuw i8, ptr %.0150311.i, i64 64 ; 3 uses
  %niter424.next.1 = add i32 %niter424, 2         ; 2 uses
  %niter424.ncmp.1.not = icmp eq i32 %niter424.next.1, %unroll_iter423
  br i1 %niter424.ncmp.1.not, label %.preheader258.loopexit.i.unr-lcssa, label %.lr.ph313.i, !llvm.loop !276

.preheader257.i:                                  ; preds = %.lr.ph318.i, %.preheader258.i
  %.1151.lcssa.i = phi ptr [ %.0150.lcssa.i, %.preheader258.i ], [ %i.aaq, %.lr.ph318.i ] ; 3 uses
  %.1148.lcssa.i = phi i32 [ %.0147.lcssa.i, %.preheader258.i ], [ %i.aar, %.lr.ph318.i ] ; 4 uses
  %i.zz = icmp slt i32 %.1148.lcssa.i, %4
  br i1 %i.zz, label %.lr.ph323.i.preheader, label %.preheader256.i

.lr.ph323.i.preheader:                            ; preds = %.preheader257.i
  %i.aaa = xor i32 %.1148.lcssa.i, -1
  %i.aab = add i32 %4, %i.aaa                     ; 2 uses
  %i.aac = zext i32 %i.aab to i64
  %i.aad = add nuw nsw i64 %i.aac, 1              ; 2 uses
  %min.iters.check317 = icmp ult i32 %i.aab, 7
  br i1 %min.iters.check317, label %.lr.ph323.i.preheader386, label %vector.ph318

vector.ph318:                                     ; preds = %.lr.ph323.i.preheader
  %n.vec319 = and i64 %i.aad, 8589934584          ; 4 uses
  %i.aae = trunc i64 %n.vec319 to i32
  %i.aaf = add i32 %.1148.lcssa.i, %i.aae
  %i.aag = shl nuw nsw i64 %n.vec319, 2
  %i.aah = getelementptr i8, ptr %.1151.lcssa.i, i64 %i.aag
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next324, %vector.body320 ] ; 2 uses
  %i.aai = shl i64 %index321, 2
  %next.gep322 = getelementptr i8, ptr %.1151.lcssa.i, i64 %i.aai ; 2 uses
  %wide.load323 = load <8 x float>, ptr %next.gep322, align 4, !tbaa !65
  %i.aaj = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load323
  store <8 x float> %i.aaj, ptr %next.gep322, align 4, !tbaa !65
  %index.next324 = add nuw i64 %index321, 8       ; 2 uses
  %i.aak = icmp eq i64 %index.next324, %n.vec319
  br i1 %i.aak, label %middle.block325, label %vector.body320, !llvm.loop !277

middle.block325:                                  ; preds = %vector.body320
  %cmp.n326 = icmp eq i64 %i.aad, %n.vec319
  br i1 %cmp.n326, label %.preheader256.i, label %.lr.ph323.i.preheader386

.lr.ph323.i.preheader386:                         ; preds = %.lr.ph323.i.preheader, %middle.block325
  %.2149322.i.ph = phi i32 [ %.1148.lcssa.i, %.lr.ph323.i.preheader ], [ %i.aaf, %middle.block325 ]
  %.2152321.i.ph = phi ptr [ %.1151.lcssa.i, %.lr.ph323.i.preheader ], [ %i.aah, %middle.block325 ]
  br label %.lr.ph323.i

.lr.ph318.i:                                      ; preds = %.preheader258.i, %.lr.ph318.i
  %.1148317.i = phi i32 [ %i.aar, %.lr.ph318.i ], [ %.0147.lcssa.i, %.preheader258.i ]
  %.1151316.i = phi ptr [ %i.aaq, %.lr.ph318.i ], [ %.0150.lcssa.i, %.preheader258.i ] ; 3 uses
  %i.aal = load <4 x float>, ptr %.1151316.i, align 1, !tbaa !61 ; 2 uses
  %i.aam = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.aal) ; 2 uses
  %i.aan = fneg fast <4 x float> %i.aal
  %i.aao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aan, <4 x float> nofpclass(nan inf) %i.aam, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.aap = fmul fast <4 x float> %i.aao, %i.aam
  store <4 x float> %i.aap, ptr %.1151316.i, align 1, !tbaa !61
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1151316.i, i64 16 ; 2 uses
  %i.aar = add nuw nsw i32 %.1148317.i, 4         ; 3 uses
  %i.aas = or disjoint i32 %i.aar, 3
  %i.aat = icmp slt i32 %i.aas, %4
  br i1 %i.aat, label %.lr.ph318.i, label %.preheader257.i, !llvm.loop !278

.preheader256.i:                                  ; preds = %.lr.ph323.i, %middle.block325, %.preheader257.i
  br i1 %i.oj, label %.lr.ph345.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph345.i:                                      ; preds = %.preheader256.i
  %i.aau = and i32 %4, -8
  %wide.trip.count383.i = zext nneg i32 %1 to i64
  br label %bb.j

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader386, %.lr.ph323.i
  %.2149322.i = phi i32 [ %i.aay, %.lr.ph323.i ], [ %.2149322.i.ph, %.lr.ph323.i.preheader386 ]
  %.2152321.i = phi ptr [ %i.aax, %.lr.ph323.i ], [ %.2152321.i.ph, %.lr.ph323.i.preheader386 ] ; 3 uses
  %i.aav = load float, ptr %.2152321.i, align 4, !tbaa !65
  %i.aaw = fdiv fast float 1.000000e+00, %i.aav
  store float %i.aaw, ptr %.2152321.i, align 4, !tbaa !65
  %i.aax = getelementptr inbounds nuw i8, ptr %.2152321.i, i64 4
  %i.aay = add nuw nsw i32 %.2149322.i, 1         ; 2 uses
  %exitcond378.not.i = icmp eq i32 %i.aay, %4
  br i1 %exitcond378.not.i, label %.preheader256.i, label %.lr.ph323.i, !llvm.loop !279

bb.j:                                             ; preds = %._crit_edge343.i, %.lr.ph345.i
  %indvars.iv380.i = phi i64 [ 0, %.lr.ph345.i ], [ %indvars.iv.next381.i, %._crit_edge343.i ] ; 2 uses
  %i.aaz = mul i64 %indvars.iv380.i, %3
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aaz ; 2 uses
  br i1 %i.a, label %.lr.ph328.i, label %.preheader255.i

.preheader255.i:                                  ; preds = %.lr.ph328.i, %bb.j
  %.0143.lcssa.i = phi ptr [ %i.aba, %bb.j ], [ %i.abo, %.lr.ph328.i ] ; 2 uses
  %.0140.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.abp, %.lr.ph328.i ] ; 2 uses
  %.0137.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.aau, %.lr.ph328.i ] ; 3 uses
  %i.abb = or disjoint i32 %.0137.lcssa.i, 3
  %i.abc = icmp slt i32 %i.abb, %4
  br i1 %i.abc, label %.lr.ph335.i, label %.preheader.i82

.lr.ph328.i:                                      ; preds = %bb.j, %.lr.ph328.i
  %.0137326.i = phi i32 [ %i.abq, %.lr.ph328.i ], [ 0, %bb.j ]
  %.0140325.i = phi ptr [ %i.abp, %.lr.ph328.i ], [ %6, %bb.j ] ; 2 uses
  %.0143324.i = phi ptr [ %i.abo, %.lr.ph328.i ], [ %i.aba, %bb.j ] ; 3 uses
  %i.abd = load <8 x i16>, ptr %.0143324.i, align 1, !tbaa !61 ; 2 uses
  %30 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %31 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.abd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abe = shufflevector <8 x i16> %30, <8 x i16> %31, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abf = bitcast <16 x i16> %i.abe to <8 x float>
  %i.abg = load <8 x float>, ptr %.0140325.i, align 1, !tbaa !61
  %i.abh = fmul fast <8 x float> %i.abg, %i.abf
  %i.abi = bitcast <8 x float> %i.abh to <8 x i32> ; 2 uses
  %i.abj = shufflevector <8 x i32> %i.abi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abk = shufflevector <8 x i32> %i.abi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.abl = lshr <4 x i32> %i.abj, splat (i32 16)
  %i.abm = lshr <4 x i32> %i.abk, splat (i32 16)
  %i.abn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.abl, <4 x i32> %i.abm)
  store <8 x i16> %i.abn, ptr %.0143324.i, align 1, !tbaa !61
  %i.abo = getelementptr inbounds nuw i8, ptr %.0143324.i, i64 16 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.0140325.i, i64 32 ; 2 uses
  %i.abq = add nuw nsw i32 %.0137326.i, 8         ; 2 uses
  %i.abr = or disjoint i32 %i.abq, 7
  %i.abs = icmp slt i32 %i.abr, %4
  br i1 %i.abs, label %.lr.ph328.i, label %.preheader255.i, !llvm.loop !280

.preheader.i82:                                   ; preds = %.lr.ph335.i, %.preheader255.i
  %.1144.lcssa.i = phi ptr [ %.0143.lcssa.i, %.preheader255.i ], [ %i.acz, %.lr.ph335.i ] ; 3 uses
  %.1141.lcssa.i = phi ptr [ %.0140.lcssa.i, %.preheader255.i ], [ %i.ada, %.lr.ph335.i ] ; 3 uses
  %.1138.lcssa.i = phi i32 [ %.0137.lcssa.i, %.preheader255.i ], [ %i.adb, %.lr.ph335.i ] ; 4 uses
  %i.abt = icmp slt i32 %.1138.lcssa.i, %4
  br i1 %i.abt, label %.lr.ph342.i.preheader, label %._crit_edge343.i

.lr.ph342.i.preheader:                            ; preds = %.preheader.i82
  %i.abu = xor i32 %.1138.lcssa.i, -1
  %i.abv = add i32 %4, %i.abu                     ; 2 uses
  %i.abw = zext i32 %i.abv to i64
  %i.abx = add nuw nsw i64 %i.abw, 1              ; 2 uses
  %min.iters.check330 = icmp ult i32 %i.abv, 7
  br i1 %min.iters.check330, label %.lr.ph342.i.preheader379, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph342.i.preheader
  %n.vec332 = and i64 %i.abx, 8589934584          ; 5 uses
  %i.aby = trunc i64 %n.vec332 to i32
  %i.abz = add i32 %.1138.lcssa.i, %i.aby
  %i.aca = shl nuw nsw i64 %n.vec332, 2
  %i.acb = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.aca
  %i.acc = shl nuw nsw i64 %n.vec332, 1
  %i.acd = getelementptr i8, ptr %.1144.lcssa.i, i64 %i.acc
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 3 uses
  %i.ace = shl i64 %index334, 2
  %next.gep335 = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.ace
  %i.acf = shl i64 %index334, 1
  %next.gep336 = getelementptr i8, ptr %.1144.lcssa.i, i64 %i.acf ; 2 uses
  %wide.load337 = load <8 x i16>, ptr %next.gep336, align 2, !tbaa !74
  %i.acg = zext <8 x i16> %wide.load337 to <8 x i32>
  %i.ach = shl nuw <8 x i32> %i.acg, splat (i32 16)
  %i.aci = bitcast <8 x i32> %i.ach to <8 x float>
  %wide.load338 = load <8 x float>, ptr %next.gep335, align 4, !tbaa !65
  %i.acj = fmul fast <8 x float> %wide.load338, %i.aci
  %i.ack = bitcast <8 x float> %i.acj to <8 x i32>
  %i.acl = lshr <8 x i32> %i.ack, splat (i32 16)
  %i.acm = trunc nuw <8 x i32> %i.acl to <8 x i16>
  store <8 x i16> %i.acm, ptr %next.gep336, align 2, !tbaa !74
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.acn = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.acn, label %middle.block340, label %vector.body333, !llvm.loop !281

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.abx, %n.vec332
  br i1 %cmp.n341, label %._crit_edge343.i, label %.lr.ph342.i.preheader379

.lr.ph342.i.preheader379:                         ; preds = %.lr.ph342.i.preheader, %middle.block340
  %.2139341.i.ph = phi i32 [ %.1138.lcssa.i, %.lr.ph342.i.preheader ], [ %i.abz, %middle.block340 ]
  %.2142340.i.ph = phi ptr [ %.1141.lcssa.i, %.lr.ph342.i.preheader ], [ %i.acb, %middle.block340 ]
  %.2145339.i.ph = phi ptr [ %.1144.lcssa.i, %.lr.ph342.i.preheader ], [ %i.acd, %middle.block340 ]
  br label %.lr.ph342.i

.lr.ph335.i:                                      ; preds = %.preheader255.i, %.lr.ph335.i
  %.1138334.i = phi i32 [ %i.adb, %.lr.ph335.i ], [ %.0137.lcssa.i, %.preheader255.i ]
  %.1141333.i = phi ptr [ %i.ada, %.lr.ph335.i ], [ %.0140.lcssa.i, %.preheader255.i ] ; 2 uses
  %.1144332.i = phi ptr [ %i.acz, %.lr.ph335.i ], [ %.0143.lcssa.i, %.preheader255.i ] ; 3 uses
  %i.aco = load i64, ptr %.1144332.i, align 1, !tbaa !61
  %i.acp = insertelement <2 x i64> poison, i64 %i.aco, i64 0
  %i.acq = bitcast <2 x i64> %i.acp to <8 x i16>
  %32 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.acr = bitcast <8 x i16> %32 to <4 x float>
  %i.acs = load <4 x float>, ptr %.1141333.i, align 1, !tbaa !61
  %i.act = fmul fast <4 x float> %i.acs, %i.acr
  %i.acu = bitcast <4 x float> %i.act to <4 x i32>
  %i.acv = lshr <4 x i32> %i.acu, splat (i32 16)
  %i.acw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.acv, <4 x i32> poison)
  %i.acx = bitcast <8 x i16> %i.acw to <2 x i64>
  %i.acy = extractelement <2 x i64> %i.acx, i64 0
  store i64 %i.acy, ptr %.1144332.i, align 1, !tbaa !61
  %i.acz = getelementptr inbounds nuw i8, ptr %.1144332.i, i64 8 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.1141333.i, i64 16 ; 2 uses
  %i.adb = add nuw nsw i32 %.1138334.i, 4         ; 3 uses
  %i.adc = or disjoint i32 %i.adb, 3
  %i.add = icmp slt i32 %i.adc, %4
  br i1 %i.add, label %.lr.ph335.i, label %.preheader.i82, !llvm.loop !282

.lr.ph342.i:                                      ; preds = %.lr.ph342.i.preheader379, %.lr.ph342.i
  %.2139341.i = phi i32 [ %i.adp, %.lr.ph342.i ], [ %.2139341.i.ph, %.lr.ph342.i.preheader379 ]
  %.2142340.i = phi ptr [ %i.ado, %.lr.ph342.i ], [ %.2142340.i.ph, %.lr.ph342.i.preheader379 ] ; 2 uses
  %.2145339.i = phi ptr [ %i.adn, %.lr.ph342.i ], [ %.2145339.i.ph, %.lr.ph342.i.preheader379 ] ; 3 uses
  %i.ade = load i16, ptr %.2145339.i, align 2, !tbaa !74
  %i.adf = zext i16 %i.ade to i32
  %i.adg = shl nuw i32 %i.adf, 16
  %i.adh = bitcast i32 %i.adg to float
  %i.adi = load float, ptr %.2142340.i, align 4, !tbaa !65
  %i.adj = fmul fast float %i.adi, %i.adh
  %i.adk = bitcast float %i.adj to i32
  %i.adl = lshr i32 %i.adk, 16
  %i.adm = trunc nuw i32 %i.adl to i16
  store i16 %i.adm, ptr %.2145339.i, align 2, !tbaa !74
  %i.adn = getelementptr inbounds nuw i8, ptr %.2145339.i, i64 2
  %i.ado = getelementptr inbounds nuw i8, ptr %.2142340.i, i64 4
  %i.adp = add nuw nsw i32 %.2139341.i, 1         ; 2 uses
  %exitcond379.not.i = icmp eq i32 %i.adp, %4
  br i1 %exitcond379.not.i, label %._crit_edge343.i, label %.lr.ph342.i, !llvm.loop !283

._crit_edge343.i:                                 ; preds = %.lr.ph342.i, %middle.block340, %.preheader.i82
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond384.not.i = icmp eq i64 %indvars.iv.next381.i, %wide.trip.count383.i
  br i1 %exitcond384.not.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, label %bb.j, !llvm.loop !284

_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit: ; preds = %._crit_edge343.i, %._crit_edge165.i, %._crit_edge171.i, %.preheader256.i, %.preheader.i69, %.preheader.i, %._crit_edge
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not16 = icmp sgt i32 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !52
  %i.p = load i32, ptr %i.l, align 4, !tbaa !32
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %indvars.iv, %i.q
  %i.s = load i64, ptr %i.m, align 8, !tbaa !30
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %i.v = load i32, ptr %4, align 4, !tbaa !33
  %i.w = load i32, ptr %5, align 4, !tbaa !33
  call fastcc void @_ZN4ncnnL17softmax_bf16s_sseEPtii(ptr noundef %i.u, i32 noundef %i.v, i32 noundef %i.w)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.x = load i32, ptr %i.b, align 4, !tbaa !33
  %i.y = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.noexc
  %.036 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %.noexc ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !33     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !33
  %i.p = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.q = mul nsw i32 %i.n, %.036                  ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.n)
  %i.s = load ptr, ptr %5, align 8, !tbaa !52, !noalias !289
  %i.t = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !289
  %i.u = sext i32 %i.p to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !289
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !33
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !52
  %i.ad = load i32, ptr %7, align 4, !tbaa !33    ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %8, align 4, !tbaa !33
  %i.ai = load i64, ptr %9, align 8, !tbaa !54
  call fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ad, i64 noundef %i.ai, i32 noundef %.sroa.speculated, ptr noundef %i.y, ptr noundef %i.ab)
  %i.aj = add nsw i32 %.036, 1
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !33
  %.not.not = icmp slt i32 %.036, %i.ak
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #18
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.9:bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not79 = icmp sgt i32 %i.k, %i.j
  br i1 %.not79, label %._crit_edge81, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i32, ptr %3, align 4, !tbaa !33     ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader.preheader, label %._crit_edge81

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.u = phi i32 [ %i.j, %.preheader.preheader ], [ %i.x, %._crit_edge ]
  %i.v = phi i32 [ %i.r, %.preheader.preheader ], [ %i.y, %._crit_edge ] ; 2 uses
  %indvars.iv84 = phi i64 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next85, %._crit_edge ] ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc26, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.noexc
  %.pre = load i32, ptr %i.b, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.x = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.u, %.preheader ] ; 2 uses
  %i.y = phi i32 [ %i.ba, %._crit_edge.loopexit ], [ %i.v, %.preheader ]
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %i.z = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv84, %i.z
  br i1 %.not.not, label %.preheader, label %._crit_edge81, !llvm.loop !290

.noexc26:                                         ; preds = %.preheader, %.noexc
  %indvars.iv = phi i64 [ %indvars.iv.next, %.noexc ], [ 0, %.preheader ] ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !32, !noalias !296
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !34, !noalias !296
  %i.ac = load ptr, ptr %4, align 8, !tbaa !52, !noalias !296
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !296
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !30, !noalias !296 ; 2 uses
  %i.af = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc26
  %i.ag = mul i64 %i.ad, %indvars.iv84
  %i.ah = mul i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = sext i32 %i.aa to i64
  %i.ak = sext i32 %i.ab to i64
  %i.al = mul nsw i64 %indvars.iv, %i.aj
  %i.am = mul i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an
  %i.ap = load ptr, ptr %5, align 8, !tbaa !52, !noalias !297
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !56, !noalias !297
  %i.ar = sext i32 %i.af to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.q, align 8, !tbaa !30, !noalias !297
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %6, align 4, !tbaa !33    ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %7, align 4, !tbaa !33
  call fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.ao, i32 noundef %i.az, i32 noundef 1, i64 noundef %i.ax, i32 noundef %i.aw, ptr noundef %i.av, ptr noundef %i.ay)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %3, align 4, !tbaa !33    ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %.noexc26, label %._crit_edge.loopexit, !llvm.loop !295

._crit_edge81:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge81, %bb.a
  ret void

bb.d:                                             ; preds = %.noexc26
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #18
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not44 = icmp sgt i32 %i.k, %i.j
  br i1 %.not44, label %._crit_edge46, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %4, align 4, !tbaa !33     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge46

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.z, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.t = load ptr, ptr %3, align 8, !tbaa !52, !noalias !311
  %i.u = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !311
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !311
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %.pre = load i32, ptr %5, align 4, !tbaa !33
  %.pre62 = load i32, ptr %6, align 4, !tbaa !33
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, %.noexc
  %i.z = phi i32 [ %i.r, %.noexc ], [ %i.om, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge46, label %.noexc, !llvm.loop !300

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit
  %i.aa = phi i32 [ %i.oh, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre62, %.lr.ph.preheader ] ; 4 uses
  %i.ab = phi i32 [ %i.og, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre, %.lr.ph.preheader ]
  %.043 = phi i32 [ %i.ol, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ 0, %.lr.ph.preheader ]
  %.02042 = phi ptr [ %i.ok, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %i.y, %.lr.ph.preheader ] ; 8 uses
  %i.ac = mul nsw i32 %i.aa, %i.ab                ; 22 uses
  %i.ad = icmp sgt i32 %i.ac, 7                   ; 3 uses
  br i1 %i.ad, label %.lr.ph.i.preheader, label %.preheader229.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.ae = add nsw i32 %i.ac, -8                   ; 2 uses
  %i.af = lshr i32 %i.ae, 3                       ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ag, 1073741822
  br label %.lr.ph.i

.preheader229.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %i.ai = and i32 %i.ae, 8
  %lcmp.mod.not.not = icmp eq i32 %i.ai, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader229.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.076232.i.epil.init = phi ptr [ %.02042, %.lr.ph.i.preheader ], [ %i.ba, %.preheader229.loopexit.i.unr-lcssa ] ; 2 uses
  %.0207230.i.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.az, %.preheader229.loopexit.i.unr-lcssa ]
  %lcmp.mod221 = trunc i32 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod221)
  %i.aj = load <8 x i16>, ptr %.076232.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %8 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ak = shufflevector <8 x i16> %7, <8 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = bitcast <16 x i16> %i.ak to <8 x float>
  %i.am = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i.epil.init, <8 x float> nofpclass(nan inf) %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %.076232.i.epil.init, i64 16
  br label %.preheader229.loopexit.i

.preheader229.loopexit.i:                         ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa195 = phi <8 x float> [ %i.az, %.preheader229.loopexit.i.unr-lcssa ], [ %i.am, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.ba, %.preheader229.loopexit.i.unr-lcssa ], [ %i.an, %.lr.ph.i.epil.preheader ]
  %i.ao = and i32 %i.ac, 2147483640
  br label %.preheader229.i

.preheader229.i:                                  ; preds = %.preheader229.loopexit.i, %.lr.ph
  %.0207.lcssa.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa195, %.preheader229.loopexit.i ] ; 5 uses
  %.079.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.ao, %.preheader229.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi ptr [ %.02042, %.lr.ph ], [ %.lcssa, %.preheader229.loopexit.i ] ; 2 uses
  %i.ap = or disjoint i32 %.079.lcssa.i, 3
  %i.aq = icmp slt i32 %i.ap, %i.ac
  br i1 %i.aq, label %.lr.ph238.i, label %.preheader228.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.076232.i = phi ptr [ %.02042, %.lr.ph.i.preheader.new ], [ %i.ba, %.lr.ph.i ] ; 3 uses
  %.0207230.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ar = load <8 x i16>, ptr %.076232.i, align 1, !tbaa !61 ; 2 uses
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %10 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ar, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.as = shufflevector <8 x i16> %9, <8 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.at = bitcast <16 x i16> %i.as to <8 x float>
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i, <8 x float> nofpclass(nan inf) %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %.076232.i, i64 16
  %i.aw = load <8 x i16>, ptr %i.av, align 1, !tbaa !61 ; 2 uses
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %12 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ax = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = bitcast <16 x i16> %i.ax to <8 x float>
  %i.az = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ay) ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.076232.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader229.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

.preheader228.i:                                  ; preds = %.lr.ph238.i, %.preheader229.i
  %.0210.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader229.i ], [ %i.cw, %.lr.ph238.i ] ; 4 uses
  %.180.lcssa.i = phi i32 [ %.079.lcssa.i, %.preheader229.i ], [ %i.cy, %.lr.ph238.i ] ; 5 uses
  %.177.lcssa.i = phi ptr [ %.076.lcssa.i, %.preheader229.i ], [ %i.cx, %.lr.ph238.i ] ; 5 uses
  %i.bb = icmp slt i32 %.180.lcssa.i, %i.ac
  br i1 %i.bb, label %iter.check174, label %._crit_edge.i

iter.check174:                                    ; preds = %.preheader228.i
  %i.bc = xor i32 %.180.lcssa.i, -1
  %i.bd = add i32 %i.ac, %i.bc                    ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 5 uses
  %min.iters.check151 = icmp ult i32 %i.bd, 3
  br i1 %min.iters.check151, label %.lr.ph245.i.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %iter.check174
  %min.iters.check153 = icmp ult i32 %i.bd, 31
  br i1 %min.iters.check153, label %vec.epilog.ph178, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check152
  %i.bg = and i64 %i.bf, 28
  %n.vec155 = and i64 %i.bf, 8589934560           ; 5 uses
  %i.bh = shl nuw nsw i64 %n.vec155, 1
  %i.bi = getelementptr i8, ptr %.177.lcssa.i, i64 %i.bh
  %i.bj = trunc i64 %n.vec155 to i32
  %i.bk = add i32 %.180.lcssa.i, %i.bj
  br label %vector.body156

vector.body156:                                   ; preds = %vector.ph154, %vector.body156
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next167, %vector.body156 ] ; 2 uses
  %vec.phi158 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph154 ], [ %i.cb, %vector.body156 ]
  %vec.phi159 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph154 ], [ %i.cc, %vector.body156 ]
  %vec.phi160 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph154 ], [ %i.cd, %vector.body156 ]
  %vec.phi161 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph154 ], [ %i.ce, %vector.body156 ]
  %i.bl = shl i64 %index157, 1
  %next.gep162 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.bl ; 4 uses
  %i.bm = getelementptr i8, ptr %next.gep162, i64 16
  %i.bn = getelementptr i8, ptr %next.gep162, i64 32
  %i.bo = getelementptr i8, ptr %next.gep162, i64 48
  %wide.load163 = load <8 x i16>, ptr %next.gep162, align 2, !tbaa !74
  %wide.load164 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !74
  %wide.load165 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !74
  %wide.load166 = load <8 x i16>, ptr %i.bo, align 2, !tbaa !74
  %i.bp = zext <8 x i16> %wide.load163 to <8 x i32>
  %i.bq = zext <8 x i16> %wide.load164 to <8 x i32>
  %i.br = zext <8 x i16> %wide.load165 to <8 x i32>
  %i.bs = zext <8 x i16> %wide.load166 to <8 x i32>
  %i.bt = shl nuw <8 x i32> %i.bp, splat (i32 16)
  %i.bu = shl nuw <8 x i32> %i.bq, splat (i32 16)
  %i.bv = shl nuw <8 x i32> %i.br, splat (i32 16)
  %i.bw = shl nuw <8 x i32> %i.bs, splat (i32 16)
  %i.bx = bitcast <8 x i32> %i.bt to <8 x float>
  %i.by = bitcast <8 x i32> %i.bu to <8 x float>
  %i.bz = bitcast <8 x i32> %i.bv to <8 x float>
  %i.ca = bitcast <8 x i32> %i.bw to <8 x float>
  %i.cb = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi158, <8 x float> %i.bx) ; 2 uses
  %i.cc = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi159, <8 x float> %i.by) ; 2 uses
  %i.cd = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi160, <8 x float> %i.bz) ; 2 uses
  %i.ce = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi161, <8 x float> %i.ca) ; 2 uses
  %index.next167 = add nuw i64 %index157, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next167, %n.vec155
  br i1 %i.cf, label %middle.block168, label %vector.body156, !llvm.loop !301

middle.block168:                                  ; preds = %vector.body156
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cb, <8 x float> %i.cc)
  %rdx.minmax.select170 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cd)
  %rdx.minmax.select172 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select170, <8 x float> %i.ce)
  %i.cg = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select172) ; 3 uses
  %cmp.n173 = icmp eq i64 %i.bf, %n.vec155
  br i1 %cmp.n173, label %._crit_edge.i, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %middle.block168
  %min.epilog.iters.check177 = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check177, label %.lr.ph245.i.preheader, label %vec.epilog.ph178, !prof !69

vec.epilog.ph178:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check175
  %vec.epilog.resume.val179 = phi i64 [ %n.vec155, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check152 ]
  %bc.merge.rdx180 = phi float [ %i.cg, %vec.epilog.iter.check175 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check152 ]
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %bc.merge.rdx180, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer
  %n.vec181 = and i64 %i.bf, 8589934588           ; 4 uses
  %i.ch = shl nuw nsw i64 %n.vec181, 1
  %i.ci = getelementptr i8, ptr %.177.lcssa.i, i64 %i.ch
  %i.cj = trunc i64 %n.vec181 to i32
  %i.ck = add i32 %.180.lcssa.i, %i.cj
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph178
  %index183 = phi i64 [ %vec.epilog.resume.val179, %vec.epilog.ph178 ], [ %index.next189, %vec.epilog.vector.body182 ] ; 2 uses
  %vec.phi186 = phi <4 x float> [ %broadcast.splat185, %vec.epilog.ph178 ], [ %i.cp, %vec.epilog.vector.body182 ]
  %i.cl = shl i64 %index183, 1
  %next.gep187 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cl
  %wide.load188 = load <4 x i16>, ptr %next.gep187, align 2, !tbaa !74
  %i.cm = zext <4 x i16> %wide.load188 to <4 x i32>
  %i.cn = shl nuw <4 x i32> %i.cm, splat (i32 16)
  %i.co = bitcast <4 x i32> %i.cn to <4 x float>
  %i.cp = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi186, <4 x float> %i.co) ; 2 uses
  %index.next189 = add nuw i64 %index183, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next189, %n.vec181
  br i1 %i.cq, label %vec.epilog.middle.block190, label %vec.epilog.vector.body182, !llvm.loop !302

vec.epilog.middle.block190:                       ; preds = %vec.epilog.vector.body182
  %i.cr = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.cp) ; 2 uses
  %cmp.n191 = icmp eq i64 %i.bf, %n.vec181
  br i1 %cmp.n191, label %._crit_edge.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check174, %vec.epilog.iter.check175, %vec.epilog.middle.block190
  %.278244.i.ph = phi ptr [ %.177.lcssa.i, %iter.check174 ], [ %i.bi, %vec.epilog.iter.check175 ], [ %i.ci, %vec.epilog.middle.block190 ]
  %.281243.i.ph = phi i32 [ %.180.lcssa.i, %iter.check174 ], [ %i.bk, %vec.epilog.iter.check175 ], [ %i.ck, %vec.epilog.middle.block190 ]
  %.0213242.i.ph = phi float [ f0xFF7FFFFF, %iter.check174 ], [ %i.cg, %vec.epilog.iter.check175 ], [ %i.cr, %vec.epilog.middle.block190 ]
  br label %.lr.ph245.i

.lr.ph238.i:                                      ; preds = %.preheader229.i, %.lr.ph238.i
  %.177237.i = phi ptr [ %i.cx, %.lr.ph238.i ], [ %.076.lcssa.i, %.preheader229.i ] ; 2 uses
  %.180236.i = phi i32 [ %i.cy, %.lr.ph238.i ], [ %.079.lcssa.i, %.preheader229.i ]
  %.0210235.i = phi <4 x float> [ %i.cw, %.lr.ph238.i ], [ splat (float f0xFF7FFFFF), %.preheader229.i ]
  %i.cs = load i64, ptr %.177237.i, align 1, !tbaa !61
  %i.ct = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cu = bitcast <2 x i64> %i.ct to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cv = bitcast <8 x i16> %13 to <4 x float>
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.cv) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.cy = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.cz = or disjoint i32 %i.cy, 3
  %i.da = icmp slt i32 %i.cz, %i.ac
  br i1 %i.da, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !8

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.db, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dg, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.dc = load i16, ptr %.278244.i, align 2, !tbaa !74
  %i.dd = zext i16 %i.dc to i32
  %i.de = shl nuw i32 %i.dd, 16
  %i.df = bitcast i32 %i.de to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.df) ; 2 uses
  %i.dg = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dg, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !303

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block168, %vec.epilog.middle.block190, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.cr, %vec.epilog.middle.block190 ], [ %i.cg, %middle.block168 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.dh = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.dh, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.di = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dj = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.di)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.dj) ; 2 uses
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.dn = icmp eq i32 %i.aa, 1
  br i1 %i.dn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.do = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dp = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.do, <4 x float> nofpclass(nan inf) %i.dp) ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dr) ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.du = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) %i.dt)
  %i.dv = extractelement <4 x float> %i.du, i64 0 ; 2 uses
  %i.dw = fcmp fast olt float %.0213.lcssa.i, %i.dv
  %.sroa.speculated129.i = select i1 %i.dw, float %i.dv, float %.0213.lcssa.i ; 2 uses
  %i.dx = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.dx) ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.dz)
  %i.eb = extractelement <4 x float> %i.ea, i64 0 ; 2 uses
  %i.ec = fcmp fast olt float %.sroa.speculated129.i, %i.eb
  %.sroa.speculated.i = select i1 %i.ec, float %i.eb, float %.sroa.speculated129.i ; 2 uses
  %i.ed = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = shufflevector <4 x float> %i.ed, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.eg = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.ee, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.dl, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.ef, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.dm, %.thread.i ]
  br i1 %i.ad, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.eh = and i32 %i.ac, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.fr, %.preheader227.loopexit.i ] ; 5 uses
  %.085.lcssa.i = phi ptr [ %.02042, %bb.e ], [ %i.fs, %.preheader227.loopexit.i ] ; 2 uses
  %.082.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.eh, %.preheader227.loopexit.i ] ; 3 uses
  %i.ei = or disjoint i32 %.082.lcssa.i, 3
  %i.ej = icmp slt i32 %i.ei, %i.ac
  br i1 %i.ej, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.082249.i = phi i32 [ %i.ft, %.lr.ph251.i ], [ 0, %bb.e ]
  %.085248.i = phi ptr [ %i.fs, %.lr.ph251.i ], [ %.02042, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.fr, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.ek = load <8 x i16>, ptr %.085248.i, align 1, !tbaa !61 ; 2 uses
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ek, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %15 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ek, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.el = shufflevector <8 x i16> %14, <8 x i16> %15, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = bitcast <16 x i16> %i.el to <8 x float>
  %i.en = fsub fast <8 x float> %i.em, %.2209.i
  %i.eo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.en, <8 x float> splat (float f0x42B0C0A5))
  %i.ep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eo, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.er = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eq, i32 1) ; 2 uses
  %i.es = fcmp fast ogt <8 x float> %i.er, %i.eq
  %i.et = select <8 x i1> %i.es, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eu = fsub fast <8 x float> %i.er, %i.et      ; 2 uses
  %i.ev = fneg fast <8 x float> %i.eu             ; 2 uses
  %i.ew = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ev, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ep)
  %i.ex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ev, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ew) ; 8 uses
  %i.ey = fmul fast <8 x float> %i.ex, %i.ex
  %i.ez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ez, <8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float f0x3C088908))
  %i.fb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fa, <8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float f0x3D2AA9C1))
  %i.fc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float f0x3E2AAAAA))
  %i.fd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fc, <8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float 5.000000e-01))
  %i.fe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fd, <8 x float> nofpclass(nan inf) %i.ey, <8 x float> nofpclass(nan inf) %i.ex)
  %i.ff = fadd fast <8 x float> %i.fe, splat (float 1.000000e+00)
  %i.fg = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eu)
  %i.fh = shl <8 x i32> %i.fg, splat (i32 23)
  %i.fi = add <8 x i32> %i.fh, splat (i32 1065353216)
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = fmul fast <8 x float> %i.ff, %i.fj      ; 2 uses
  %i.fl = bitcast <8 x float> %i.fk to <8 x i32>  ; 2 uses
  %i.fm = shufflevector <8 x i32> %i.fl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fn = shufflevector <8 x i32> %i.fl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fo = lshr <4 x i32> %i.fm, splat (i32 16)
  %i.fp = lshr <4 x i32> %i.fn, splat (i32 16)
  %i.fq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fo, <4 x i32> %i.fp)
  store <8 x i16> %i.fq, ptr %.085248.i, align 1, !tbaa !61
  %i.fr = fadd fast <8 x float> %i.fk, %.0215247.i ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.085248.i, i64 16 ; 2 uses
  %i.ft = add nuw nsw i32 %.082249.i, 8           ; 2 uses
  %i.fu = or disjoint i32 %i.ft, 7
  %i.fv = icmp slt i32 %i.fu, %i.ac
  br i1 %i.fv, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !9

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.jw, %.lr.ph258.i ] ; 3 uses
  %.186.lcssa.i = phi ptr [ %.085.lcssa.i, %.preheader227.i ], [ %i.jx, %.lr.ph258.i ] ; 5 uses
  %.183.lcssa.i = phi i32 [ %.082.lcssa.i, %.preheader227.i ], [ %i.jy, %.lr.ph258.i ] ; 5 uses
  %i.fw = icmp slt i32 %.183.lcssa.i, %i.ac
  br i1 %i.fw, label %iter.check131, label %._crit_edge266.i

iter.check131:                                    ; preds = %.preheader226.i
  %i.fx = xor i32 %.183.lcssa.i, -1
  %i.fy = add i32 %i.ac, %i.fx                    ; 3 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 5 uses
  %min.iters.check109 = icmp ult i32 %i.fy, 3
  br i1 %min.iters.check109, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check110

vector.main.loop.iter.check110:                   ; preds = %iter.check131
  %min.iters.check111 = icmp ult i32 %i.fy, 15
  br i1 %min.iters.check111, label %vec.epilog.ph135, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check110
  %i.gb = and i64 %i.ga, 12
  %n.vec113 = and i64 %i.ga, 8589934576           ; 5 uses
  %i.gc = trunc i64 %n.vec113 to i32
  %i.gd = add i32 %.183.lcssa.i, %i.gc
  %i.ge = shl nuw nsw i64 %n.vec113, 1
  %i.gf = getelementptr i8, ptr %.186.lcssa.i, i64 %i.ge
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.ph112, %vector.body116
  %index117 = phi i64 [ 0, %vector.ph112 ], [ %index.next126, %vector.body116 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.hq, %vector.body116 ]
  %vec.phi118 = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.hr, %vector.body116 ]
  %vec.phi119 = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.hs, %vector.body116 ]
  %vec.phi120 = phi <4 x float> [ zeroinitializer, %vector.ph112 ], [ %i.ht, %vector.body116 ]
  %i.gg = shl i64 %index117, 1
  %next.gep121 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gg ; 5 uses
  %i.gh = getelementptr i8, ptr %next.gep121, i64 8 ; 2 uses
  %i.gi = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %i.gj = getelementptr i8, ptr %next.gep121, i64 24 ; 2 uses
  %wide.load122 = load <4 x i16>, ptr %next.gep121, align 2, !tbaa !74
  %wide.load123 = load <4 x i16>, ptr %i.gh, align 2, !tbaa !74
  %wide.load124 = load <4 x i16>, ptr %i.gi, align 2, !tbaa !74
  %wide.load125 = load <4 x i16>, ptr %i.gj, align 2, !tbaa !74
  %i.gk = zext <4 x i16> %wide.load122 to <4 x i32>
  %i.gl = zext <4 x i16> %wide.load123 to <4 x i32>
  %i.gm = zext <4 x i16> %wide.load124 to <4 x i32>
  %i.gn = zext <4 x i16> %wide.load125 to <4 x i32>
  %i.go = shl nuw <4 x i32> %i.gk, splat (i32 16)
  %i.gp = shl nuw <4 x i32> %i.gl, splat (i32 16)
  %i.gq = shl nuw <4 x i32> %i.gm, splat (i32 16)
  %i.gr = shl nuw <4 x i32> %i.gn, splat (i32 16)
  %i.gs = bitcast <4 x i32> %i.go to <4 x float>
  %i.gt = bitcast <4 x i32> %i.gp to <4 x float>
  %i.gu = bitcast <4 x i32> %i.gq to <4 x float>
  %i.gv = bitcast <4 x i32> %i.gr to <4 x float>
  %i.gw = fsub fast <4 x float> %i.gs, %broadcast.splat115
  %i.gx = fsub fast <4 x float> %i.gt, %broadcast.splat115
  %i.gy = fsub fast <4 x float> %i.gu, %broadcast.splat115
  %i.gz = fsub fast <4 x float> %i.gv, %broadcast.splat115
  %i.ha = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gw) ; 2 uses
  %i.hb = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gx) ; 2 uses
  %i.hc = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gy) ; 2 uses
  %i.hd = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gz) ; 2 uses
  %i.he = bitcast <4 x float> %i.ha to <4 x i32>
  %i.hf = bitcast <4 x float> %i.hb to <4 x i32>
  %i.hg = bitcast <4 x float> %i.hc to <4 x i32>
  %i.hh = bitcast <4 x float> %i.hd to <4 x i32>
  %i.hi = lshr <4 x i32> %i.he, splat (i32 16)
  %i.hj = lshr <4 x i32> %i.hf, splat (i32 16)
  %i.hk = lshr <4 x i32> %i.hg, splat (i32 16)
  %i.hl = lshr <4 x i32> %i.hh, splat (i32 16)
  %i.hm = trunc nuw nsw <4 x i32> %i.hi to <4 x i16>
  %i.hn = trunc nuw nsw <4 x i32> %i.hj to <4 x i16>
  %i.ho = trunc nuw nsw <4 x i32> %i.hk to <4 x i16>
  %i.hp = trunc nuw nsw <4 x i32> %i.hl to <4 x i16>
  store <4 x i16> %i.hm, ptr %next.gep121, align 2, !tbaa !74
  store <4 x i16> %i.hn, ptr %i.gh, align 2, !tbaa !74
  store <4 x i16> %i.ho, ptr %i.gi, align 2, !tbaa !74
  store <4 x i16> %i.hp, ptr %i.gj, align 2, !tbaa !74
  %i.hq = fadd fast <4 x float> %i.ha, %vec.phi   ; 2 uses
  %i.hr = fadd fast <4 x float> %i.hb, %vec.phi118 ; 2 uses
  %i.hs = fadd fast <4 x float> %i.hc, %vec.phi119 ; 2 uses
  %i.ht = fadd fast <4 x float> %i.hd, %vec.phi120 ; 2 uses
  %index.next126 = add nuw i64 %index117, 16      ; 2 uses
  %i.hu = icmp eq i64 %index.next126, %n.vec113
  br i1 %i.hu, label %middle.block127, label %vector.body116, !llvm.loop !304

middle.block127:                                  ; preds = %vector.body116
  %bin.rdx = fadd fast <4 x float> %i.hr, %i.hq
  %bin.rdx128 = fadd fast <4 x float> %i.hs, %bin.rdx
  %bin.rdx129 = fadd fast <4 x float> %i.ht, %bin.rdx128
  %i.hv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx129) ; 3 uses
  %cmp.n130 = icmp eq i64 %i.ga, %n.vec113
  br i1 %cmp.n130, label %._crit_edge266.i, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block127
  %min.epilog.iters.check134 = icmp eq i64 %i.gb, 0
  br i1 %min.epilog.iters.check134, label %.lr.ph265.i.preheader, label %vec.epilog.ph135, !prof !75

vec.epilog.ph135:                                 ; preds = %vector.main.loop.iter.check110, %vec.epilog.iter.check132
  %vec.epilog.resume.val136 = phi i64 [ %n.vec113, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check110 ]
  %bc.merge.rdx = phi float [ %i.hv, %vec.epilog.iter.check132 ], [ 0.000000e+00, %vector.main.loop.iter.check110 ]
  %n.vec137 = and i64 %i.ga, 8589934588           ; 4 uses
  %i.hw = trunc i64 %n.vec137 to i32
  %i.hx = add i32 %.183.lcssa.i, %i.hw
  %i.hy = shl nuw nsw i64 %n.vec137, 1
  %i.hz = getelementptr i8, ptr %.186.lcssa.i, i64 %i.hy
  %i.ia = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert138 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat139 = shufflevector <4 x float> %broadcast.splatinsert138, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body140

vec.epilog.vector.body140:                        ; preds = %vec.epilog.vector.body140, %vec.epilog.ph135
  %index141 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph135 ], [ %index.next145, %vec.epilog.vector.body140 ] ; 2 uses
  %vec.phi142 = phi <4 x float> [ %i.ia, %vec.epilog.ph135 ], [ %i.ik, %vec.epilog.vector.body140 ]
  %i.ib = shl i64 %index141, 1
  %next.gep143 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.ib ; 2 uses
  %wide.load144 = load <4 x i16>, ptr %next.gep143, align 2, !tbaa !74
  %i.ic = zext <4 x i16> %wide.load144 to <4 x i32>
  %i.id = shl nuw <4 x i32> %i.ic, splat (i32 16)
  %i.ie = bitcast <4 x i32> %i.id to <4 x float>
  %i.if = fsub fast <4 x float> %i.ie, %broadcast.splat139
  %i.ig = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.if) ; 2 uses
  %i.ih = bitcast <4 x float> %i.ig to <4 x i32>
  %i.ii = lshr <4 x i32> %i.ih, splat (i32 16)
  %i.ij = trunc nuw nsw <4 x i32> %i.ii to <4 x i16>
  store <4 x i16> %i.ij, ptr %next.gep143, align 2, !tbaa !74
  %i.ik = fadd fast <4 x float> %i.ig, %vec.phi142 ; 2 uses
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next145, %n.vec137
  br i1 %i.il, label %vec.epilog.middle.block146, label %vec.epilog.vector.body140, !llvm.loop !305

vec.epilog.middle.block146:                       ; preds = %vec.epilog.vector.body140
  %i.im = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ik) ; 2 uses
  %cmp.n147 = icmp eq i64 %i.ga, %n.vec137
  br i1 %cmp.n147, label %._crit_edge266.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check131, %vec.epilog.iter.check132, %vec.epilog.middle.block146
  %.284264.i.ph = phi i32 [ %.183.lcssa.i, %iter.check131 ], [ %i.gd, %vec.epilog.iter.check132 ], [ %i.hx, %vec.epilog.middle.block146 ]
  %.287263.i.ph = phi ptr [ %.186.lcssa.i, %iter.check131 ], [ %i.gf, %vec.epilog.iter.check132 ], [ %i.hz, %vec.epilog.middle.block146 ]
  %.088262.i.ph = phi float [ 0.000000e+00, %iter.check131 ], [ %i.hv, %vec.epilog.iter.check132 ], [ %i.im, %vec.epilog.middle.block146 ]
  br label %.lr.ph265.i

.lr.ph258.i:                                      ; preds = %.preheader227.i, %.lr.ph258.i
  %.183257.i = phi i32 [ %i.jy, %.lr.ph258.i ], [ %.082.lcssa.i, %.preheader227.i ]
  %.186256.i = phi ptr [ %i.jx, %.lr.ph258.i ], [ %.085.lcssa.i, %.preheader227.i ] ; 3 uses
  %.0218255.i = phi <4 x float> [ %i.jw, %.lr.ph258.i ], [ zeroinitializer, %.preheader227.i ]
  %i.in = load i64, ptr %.186256.i, align 1, !tbaa !61
  %i.io = insertelement <2 x i64> poison, i64 %i.in, i64 0
  %i.ip = bitcast <2 x i64> %i.io to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iq = bitcast <8 x i16> %16 to <4 x float>
  %i.ir = fsub fast <4 x float> %i.iq, %.2212.i
  %i.is = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ir, <4 x float> splat (float f0x42B0C0A5))
  %i.it = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.is, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.iu = fmul fast <4 x float> %i.it, splat (float f0x3FB8AA3B)
  %i.iv = fadd fast <4 x float> %i.iu, splat (float 5.000000e-01) ; 2 uses
  %i.iw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iv)
  %i.ix = sitofp fast <4 x i32> %i.iw to <4 x float> ; 2 uses
  %i.iy = fcmp fast olt <4 x float> %i.iv, %i.ix
  %i.iz = select <4 x i1> %i.iy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ja = fsub fast <4 x float> %i.ix, %i.iz      ; 2 uses
  %i.jb = fneg fast <4 x float> %i.ja             ; 2 uses
  %i.jc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jb, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.it)
  %i.jd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jb, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jc) ; 8 uses
  %i.je = fmul fast <4 x float> %i.jd, %i.jd
  %i.jf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jd, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jf, <4 x float> nofpclass(nan inf) %i.jd, <4 x float> splat (float f0x3C088908))
  %i.jh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jg, <4 x float> nofpclass(nan inf) %i.jd, <4 x float> splat (float f0x3D2AA9C1))
  %i.ji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> nofpclass(nan inf) %i.jd, <4 x float> splat (float f0x3E2AAAAA))
  %i.jj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ji, <4 x float> nofpclass(nan inf) %i.jd, <4 x float> splat (float 5.000000e-01))
  %i.jk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jj, <4 x float> nofpclass(nan inf) %i.je, <4 x float> nofpclass(nan inf) %i.jd)
  %i.jl = fadd fast <4 x float> %i.jk, splat (float 1.000000e+00)
  %i.jm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ja)
  %i.jn = shl <4 x i32> %i.jm, splat (i32 23)
  %i.jo = add <4 x i32> %i.jn, splat (i32 1065353216)
  %i.jp = bitcast <4 x i32> %i.jo to <4 x float>
  %i.jq = fmul fast <4 x float> %i.jl, %i.jp      ; 2 uses
  %i.jr = bitcast <4 x float> %i.jq to <4 x i32>
  %i.js = lshr <4 x i32> %i.jr, splat (i32 16)
  %i.jt = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.js, <4 x i32> poison)
  %i.ju = bitcast <8 x i16> %i.jt to <2 x i64>
  %i.jv = extractelement <2 x i64> %i.ju, i64 0
  store i64 %i.jv, ptr %.186256.i, align 1, !tbaa !61
  %i.jw = fadd fast <4 x float> %i.jq, %.0218255.i ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.186256.i, i64 8 ; 2 uses
  %i.jy = add nuw nsw i32 %.183257.i, 4           ; 3 uses
  %i.jz = or disjoint i32 %i.jy, 3
  %i.ka = icmp slt i32 %i.jz, %i.ac
  br i1 %i.ka, label %.lr.ph258.i, label %.preheader226.i, !llvm.loop !10

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i
  %.284264.i = phi i32 [ %i.km, %.lr.ph265.i ], [ %.284264.i.ph, %.lr.ph265.i.preheader ]
  %.287263.i = phi ptr [ %i.kl, %.lr.ph265.i ], [ %.287263.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %.088262.i = phi float [ %i.kk, %.lr.ph265.i ], [ %.088262.i.ph, %.lr.ph265.i.preheader ]
  %i.kb = load i16, ptr %.287263.i, align 2, !tbaa !74
  %i.kc = zext i16 %i.kb to i32
  %i.kd = shl nuw i32 %i.kc, 16
  %i.ke = bitcast i32 %i.kd to float
  %i.kf = fsub fast float %i.ke, %.1214.i
  %i.kg = call fast float @llvm.exp.f32(float %i.kf) ; 2 uses
  %i.kh = bitcast float %i.kg to i32
  %i.ki = lshr i32 %i.kh, 16
  %i.kj = trunc nuw nsw i32 %i.ki to i16
  store i16 %i.kj, ptr %.287263.i, align 2, !tbaa !74
  %i.kk = fadd fast float %i.kg, %.088262.i       ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.287263.i, i64 2
  %i.km = add nuw nsw i32 %.284264.i, 1           ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.km, %i.ac
  br i1 %exitcond299.not.i, label %._crit_edge266.i, label %.lr.ph265.i, !llvm.loop !306

._crit_edge266.i:                                 ; preds = %.lr.ph265.i, %middle.block127, %vec.epilog.middle.block146, %.preheader226.i
  %.088.lcssa.i = phi float [ 0.000000e+00, %.preheader226.i ], [ %i.im, %vec.epilog.middle.block146 ], [ %i.hv, %middle.block127 ], [ %i.kk, %.lr.ph265.i ] ; 2 uses
  %i.kn = icmp eq i32 %i.aa, 8
  br i1 %i.kn, label %.thread223.i, label %bb.f

.thread223.i:                                     ; preds = %._crit_edge266.i
  %i.ko = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa.i) ; 2 uses
  %i.kp = fneg fast <8 x float> %.0215.lcssa.i
  %i.kq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kp, <8 x float> nofpclass(nan inf) %i.ko, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.kr = fmul fast <8 x float> %i.kq, %i.ko
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge266.i
  br i1 %i.dh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ks = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kt = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ku = fadd fast <4 x float> %i.kt, %i.ks
  %i.kv = fadd fast <4 x float> %i.ku, %.0218.lcssa.i ; 2 uses
  %i.kw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.kv) ; 2 uses
  %i.kx = fneg fast <4 x float> %i.kv
  %i.ky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.kx, <4 x float> nofpclass(nan inf) %i.kw, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.kz = fmul fast <4 x float> %i.ky, %i.kw      ; 2 uses
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread223.i
  %.1219.i = phi nsz <4 x float> [ %i.kz, %bb.g ], [ %.0218.lcssa.i, %bb.f ], [ %.0218.lcssa.i, %.thread223.i ] ; 3 uses
  %.2217.i = phi nsz <8 x float> [ %i.la, %bb.g ], [ %.0215.lcssa.i, %bb.f ], [ %i.kr, %.thread223.i ] ; 3 uses
  br i1 %i.eg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.lb = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lc = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ld = fadd fast <4 x float> %i.lb, %i.lc      ; 2 uses
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> %.1219.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.lf = shufflevector <4 x float> %i.ld, <4 x float> %.1219.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.lg = fadd fast <4 x float> %i.le, %i.lf
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.088.lcssa.i, <4 x float> %i.lg)
  %i.lh = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.li = insertelement <4 x float> poison, float %i.lh, i64 0 ; 2 uses
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lk = shufflevector <4 x float> %i.li, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2220.i = phi nsz <4 x float> [ %i.lj, %bb.i ], [ %.1219.i, %bb.h ]
  %.3.i = phi nsz <8 x float> [ %i.lk, %bb.i ], [ %.2217.i, %bb.h ]
  %.189.i = phi nsz float [ %i.lh, %bb.i ], [ %.088.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ad, label %.lr.ph271.i, label %.preheader225.i

.preheader225.loopexit.i:                         ; preds = %.lr.ph271.i
  %i.ll = and i32 %i.ac, 2147483640
  br label %.preheader225.i

.preheader225.i:                                  ; preds = %.preheader225.loopexit.i, %bb.j
  %.073.lcssa.i = phi ptr [ %.02042, %bb.j ], [ %i.ly, %.preheader225.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.ll, %.preheader225.loopexit.i ] ; 3 uses
  %i.lm = or disjoint i32 %.0.lcssa.i, 3
  %i.ln = icmp slt i32 %i.lm, %i.ac
  br i1 %i.ln, label %.lr.ph276.i, label %.preheader.i

.lr.ph271.i:                                      ; preds = %bb.j, %.lr.ph271.i
  %.0269.i = phi i32 [ %i.lz, %.lr.ph271.i ], [ 0, %bb.j ]
  %.073268.i = phi ptr [ %i.ly, %.lr.ph271.i ], [ %.02042, %bb.j ] ; 3 uses
  %i.lo = load <8 x i16>, ptr %.073268.i, align 1, !tbaa !61 ; 2 uses
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %18 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lp = shufflevector <8 x i16> %17, <8 x i16> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lq = bitcast <16 x i16> %i.lp to <8 x float>
  %i.lr = fmul fast <8 x float> %.3.i, %i.lq
  %i.ls = bitcast <8 x float> %i.lr to <8 x i32>  ; 2 uses
  %i.lt = shufflevector <8 x i32> %i.ls, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lu = shufflevector <8 x i32> %i.ls, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lv = lshr <4 x i32> %i.lt, splat (i32 16)
  %i.lw = lshr <4 x i32> %i.lu, splat (i32 16)
  %i.lx = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lv, <4 x i32> %i.lw)
  store <8 x i16> %i.lx, ptr %.073268.i, align 1, !tbaa !61
  %i.ly = getelementptr inbounds nuw i8, ptr %.073268.i, i64 16 ; 2 uses
  %i.lz = add nuw nsw i32 %.0269.i, 8             ; 2 uses
  %i.ma = or disjoint i32 %i.lz, 7
  %i.mb = icmp slt i32 %i.ma, %i.ac
  br i1 %i.mb, label %.lr.ph271.i, label %.preheader225.loopexit.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph276.i, %.preheader225.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader225.i ], [ %i.ns, %.lr.ph276.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader225.i ], [ %i.nt, %.lr.ph276.i ] ; 5 uses
  %i.mc = icmp slt i32 %.1.lcssa.i, %i.ac
  br i1 %i.mc, label %iter.check, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.md = xor i32 %.1.lcssa.i, -1
  %i.me = add i32 %i.ac, %i.md                    ; 3 uses
  %i.mf = zext i32 %i.me to i64
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.me, 3
  br i1 %min.iters.check, label %.lr.ph281.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp ult i32 %i.me, 15
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mh = and i64 %i.mg, 12
  %n.vec = and i64 %i.mg, 8589934576              ; 5 uses
  %i.mi = trunc i64 %n.vec to i32
  %i.mj = add i32 %.1.lcssa.i, %i.mi
  %i.mk = shl nuw nsw i64 %n.vec, 1
  %i.ml = getelementptr i8, ptr %.174.lcssa.i, i64 %i.mk
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.189.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mm = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.174.lcssa.i, i64 %i.mm ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !74
  %i.mn = zext <16 x i16> %wide.load to <16 x i32>
  %i.mo = shl nuw <16 x i32> %i.mn, splat (i32 16)
  %i.mp = bitcast <16 x i32> %i.mo to <16 x float>
  %i.mq = fmul fast <16 x float> %broadcast.splat, %i.mp
  %i.mr = bitcast <16 x float> %i.mq to <16 x i32>
  %i.ms = lshr <16 x i32> %i.mr, splat (i32 16)
  %i.mt = trunc nuw <16 x i32> %i.ms to <16 x i16>
  store <16 x i16> %i.mt, ptr %next.gep, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mg, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph281.i.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.mg, 8589934588           ; 4 uses
  %i.mv = trunc i64 %n.vec100 to i32
  %i.mw = add i32 %.1.lcssa.i, %i.mv
  %i.mx = shl nuw nsw i64 %n.vec100, 1
  %i.my = getelementptr i8, ptr %.174.lcssa.i, i64 %i.mx
  %broadcast.splatinsert101 = insertelement <4 x float> poison, float %.189.i, i64 0
  %broadcast.splat102 = shufflevector <4 x float> %broadcast.splatinsert101, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 2 uses
  %i.mz = shl i64 %index103, 1
  %next.gep104 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.mz ; 2 uses
  %wide.load105 = load <4 x i16>, ptr %next.gep104, align 2, !tbaa !74
  %i.na = zext <4 x i16> %wide.load105 to <4 x i32>
  %i.nb = shl nuw <4 x i32> %i.na, splat (i32 16)
  %i.nc = bitcast <4 x i32> %i.nb to <4 x float>
  %i.nd = fmul fast <4 x float> %broadcast.splat102, %i.nc
  %i.ne = bitcast <4 x float> %i.nd to <4 x i32>
  %i.nf = lshr <4 x i32> %i.ne, splat (i32 16)
  %i.ng = trunc nuw <4 x i32> %i.nf to <4 x i16>
  store <4 x i16> %i.ng, ptr %next.gep104, align 2, !tbaa !74
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next106, %n.vec100
  br i1 %i.nh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !308

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.mg, %n.vec100
  br i1 %cmp.n107, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph281.i.preheader

.lr.ph281.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2280.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.mj, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ]
  %.275279.i.ph = phi ptr [ %.174.lcssa.i, %iter.check ], [ %i.ml, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %.lr.ph281.i

.lr.ph276.i:                                      ; preds = %.preheader225.i, %.lr.ph276.i
  %.1275.i = phi i32 [ %i.nt, %.lr.ph276.i ], [ %.0.lcssa.i, %.preheader225.i ]
  %.174274.i = phi ptr [ %i.ns, %.lr.ph276.i ], [ %.073.lcssa.i, %.preheader225.i ] ; 3 uses
  %i.ni = load i64, ptr %.174274.i, align 1, !tbaa !61
  %i.nj = insertelement <2 x i64> poison, i64 %i.ni, i64 0
  %i.nk = bitcast <2 x i64> %i.nj to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nl = bitcast <8 x i16> %19 to <4 x float>
  %i.nm = fmul fast <4 x float> %.2220.i, %i.nl
  %i.nn = bitcast <4 x float> %i.nm to <4 x i32>
  %i.no = lshr <4 x i32> %i.nn, splat (i32 16)
  %i.np = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.no, <4 x i32> poison)
  %i.nq = bitcast <8 x i16> %i.np to <2 x i64>
  %i.nr = extractelement <2 x i64> %i.nq, i64 0
  store i64 %i.nr, ptr %.174274.i, align 1, !tbaa !61
  %i.ns = getelementptr inbounds nuw i8, ptr %.174274.i, i64 8 ; 2 uses
  %i.nt = add nuw nsw i32 %.1275.i, 4             ; 3 uses
  %i.nu = or disjoint i32 %i.nt, 3
  %i.nv = icmp slt i32 %i.nu, %i.ac
  br i1 %i.nv, label %.lr.ph276.i, label %.preheader.i, !llvm.loop !12

.lr.ph281.i:                                      ; preds = %.lr.ph281.i.preheader, %.lr.ph281.i
  %.2280.i = phi i32 [ %i.of, %.lr.ph281.i ], [ %.2280.i.ph, %.lr.ph281.i.preheader ]
  %.275279.i = phi ptr [ %i.oe, %.lr.ph281.i ], [ %.275279.i.ph, %.lr.ph281.i.preheader ] ; 3 uses
  %i.nw = load i16, ptr %.275279.i, align 2, !tbaa !74
  %i.nx = zext i16 %i.nw to i32
  %i.ny = shl nuw i32 %i.nx, 16
  %i.nz = bitcast i32 %i.ny to float
  %i.oa = fmul fast float %.189.i, %i.nz
  %i.ob = bitcast float %i.oa to i32
  %i.oc = lshr i32 %i.ob, 16
  %i.od = trunc nuw i32 %i.oc to i16
  store i16 %i.od, ptr %.275279.i, align 2, !tbaa !74
  %i.oe = getelementptr inbounds nuw i8, ptr %.275279.i, i64 2
  %i.of = add nuw nsw i32 %.2280.i, 1             ; 2 uses
  %exitcond300.not.i = icmp eq i32 %i.of, %i.ac
  br i1 %exitcond300.not.i, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph281.i, !llvm.loop !309

_ZN4ncnnL17softmax_bf16s_sseEPtii.exit:           ; preds = %.lr.ph281.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.og = load i32, ptr %5, align 4, !tbaa !33    ; 2 uses
  %i.oh = load i32, ptr %6, align 4, !tbaa !33    ; 2 uses
  %i.oi = mul nsw i32 %i.oh, %i.og
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [2 x i8], ptr %.02042, i64 %i.oj
  %i.ol = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.om = load i32, ptr %4, align 4, !tbaa !33    ; 2 uses
  %i.on = icmp slt i32 %i.ol, %i.om
  br i1 %i.on, label %.lr.ph, label %._crit_edge, !llvm.loop !310

._crit_edge46:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge46, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not53 = icmp sgt i32 %i.k, %i.j
  br i1 %.not53, label %._crit_edge, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = sext i32 %i.k to i64
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.noexc
  %indvars.iv = phi i64 [ %i.p, %.noexc21.lr.ph ], [ %indvars.iv.next, %.noexc ] ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !52, !noalias !316
  %i.r = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !316
  %i.s = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !316
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc21
  %i.u = mul i64 %i.r, %indvars.iv
  %i.v = mul i64 %i.u, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = load ptr, ptr %4, align 8, !tbaa !52, !noalias !317
  %i.y = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !317
  %i.z = sext i32 %i.t to i64
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !30, !noalias !317
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %5, align 4, !tbaa !33    ; 2 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %6, align 4, !tbaa !33
  call fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.w, i32 noundef %i.ah, i32 noundef 1, i64 noundef %i.af, i32 noundef %i.ae, ptr noundef %i.ad, ptr noundef %i.ag)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !33
  %i.aj = sext i32 %i.ai to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aj
  br i1 %.not.not, label %.noexc21, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.d:                                             ; preds = %.noexc21
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #18
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Softmax_x86_fma21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not51 = icmp sgt i32 %i.k, %i.j
  br i1 %.not51, label %._crit_edge53, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %4, align 4, !tbaa !33     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge53

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge50
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.af, %._crit_edge50 ] ; 3 uses
  %i.s = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ag, %._crit_edge50 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge50 ] ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge50

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.u = load i32, ptr %5, align 4, !tbaa !33     ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader.preheader, label %._crit_edge50

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.w = load ptr, ptr %3, align 8, !tbaa !52, !noalias !332
  %i.x = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !332
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !332
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ac = phi i32 [ %i.ah, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %i.ad = phi i32 [ %i.ai, %._crit_edge ], [ %i.u, %.preheader.preheader ] ; 2 uses
  %.02349 = phi i32 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.02448 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load i32, ptr %6, align 4, !tbaa !33
  %.pre71 = load i32, ptr %7, align 4, !tbaa !33
  br label %.lr.ph

._crit_edge50:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %.noexc
  %i.af = phi i32 [ %i.r, %.noexc ], [ %i.r, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ]
  %i.ag = phi i32 [ %i.s, %.noexc ], [ %i.s, %.preheader.lr.ph ], [ %i.ah, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge53, label %.noexc, !llvm.loop !320

._crit_edge.loopexit:                             ; preds = %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit
  %.pre72 = load i32, ptr %4, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ah = phi i32 [ %i.ac, %.preheader ], [ %.pre72, %._crit_edge.loopexit ] ; 4 uses
  %i.ai = phi i32 [ %i.ad, %.preheader ], [ %i.ox, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.02448, %.preheader ], [ %i.ov, %._crit_edge.loopexit ]
  %i.aj = add nuw nsw i32 %.02349, 1              ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.ah
  br i1 %i.ak, label %.preheader, label %._crit_edge50, !llvm.loop !321

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit
  %i.al = phi i32 [ %i.os, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre71, %.lr.ph.preheader ] ; 4 uses
  %i.am = phi i32 [ %i.or, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.pre, %.lr.ph.preheader ]
  %.047 = phi i32 [ %i.ow, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ 0, %.lr.ph.preheader ]
  %.146 = phi ptr [ %i.ov, %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit ], [ %.02448, %.lr.ph.preheader ] ; 8 uses
  %i.an = mul nsw i32 %i.al, %i.am                ; 22 uses
  %i.ao = icmp sgt i32 %i.an, 7                   ; 3 uses
  br i1 %i.ao, label %.lr.ph.i.preheader, label %.preheader229.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.ap = add nsw i32 %i.an, -8                   ; 2 uses
  %i.aq = lshr i32 %i.ap, 3                       ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ar, 1073741822
  br label %.lr.ph.i

.preheader229.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %i.at = and i32 %i.ap, 8
  %lcmp.mod.not.not = icmp eq i32 %i.at, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader229.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.076232.i.epil.init = phi ptr [ %.146, %.lr.ph.i.preheader ], [ %i.bl, %.preheader229.loopexit.i.unr-lcssa ] ; 2 uses
  %.0207230.i.epil.init = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.bk, %.preheader229.loopexit.i.unr-lcssa ]
  %lcmp.mod242 = trunc i32 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod242)
  %i.au = load <8 x i16>, ptr %.076232.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %9 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.au, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.av = shufflevector <8 x i16> %8, <8 x i16> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aw = bitcast <16 x i16> %i.av to <8 x float>
  %i.ax = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i.epil.init, <8 x float> nofpclass(nan inf) %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %.076232.i.epil.init, i64 16
  br label %.preheader229.loopexit.i

.preheader229.loopexit.i:                         ; preds = %.preheader229.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa214 = phi <8 x float> [ %i.bk, %.preheader229.loopexit.i.unr-lcssa ], [ %i.ax, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.bl, %.preheader229.loopexit.i.unr-lcssa ], [ %i.ay, %.lr.ph.i.epil.preheader ]
  %i.az = and i32 %i.an, 2147483640
  br label %.preheader229.i

.preheader229.i:                                  ; preds = %.preheader229.loopexit.i, %.lr.ph
  %.0207.lcssa.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa214, %.preheader229.loopexit.i ] ; 5 uses
  %.079.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.az, %.preheader229.loopexit.i ] ; 3 uses
  %.076.lcssa.i = phi ptr [ %.146, %.lr.ph ], [ %.lcssa, %.preheader229.loopexit.i ] ; 2 uses
  %i.ba = or disjoint i32 %.079.lcssa.i, 3
  %i.bb = icmp slt i32 %i.ba, %i.an
  br i1 %i.bb, label %.lr.ph238.i, label %.preheader228.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.076232.i = phi ptr [ %.146, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ] ; 3 uses
  %.0207230.i = phi <8 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.bk, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bc = load <8 x i16>, ptr %.076232.i, align 1, !tbaa !61 ; 2 uses
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %11 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bd = shufflevector <8 x i16> %10, <8 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.be = bitcast <16 x i16> %i.bd to <8 x float>
  %i.bf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.0207230.i, <8 x float> nofpclass(nan inf) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %.076232.i, i64 16
  %i.bh = load <8 x i16>, ptr %i.bg, align 1, !tbaa !61 ; 2 uses
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %13 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bi = shufflevector <8 x i16> %12, <8 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bj = bitcast <16 x i16> %i.bi to <8 x float>
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.bj) ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.076232.i, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader229.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !7

.preheader228.i:                                  ; preds = %.lr.ph238.i, %.preheader229.i
  %.0210.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.preheader229.i ], [ %i.dh, %.lr.ph238.i ] ; 4 uses
  %.180.lcssa.i = phi i32 [ %.079.lcssa.i, %.preheader229.i ], [ %i.dj, %.lr.ph238.i ] ; 5 uses
  %.177.lcssa.i = phi ptr [ %.076.lcssa.i, %.preheader229.i ], [ %i.di, %.lr.ph238.i ] ; 5 uses
  %i.bm = icmp slt i32 %.180.lcssa.i, %i.an
  br i1 %i.bm, label %iter.check193, label %._crit_edge.i

iter.check193:                                    ; preds = %.preheader228.i
  %i.bn = xor i32 %.180.lcssa.i, -1
  %i.bo = add i32 %i.an, %i.bn                    ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check170 = icmp ult i32 %i.bo, 3
  br i1 %min.iters.check170, label %.lr.ph245.i.preheader, label %vector.main.loop.iter.check171

vector.main.loop.iter.check171:                   ; preds = %iter.check193
  %min.iters.check172 = icmp ult i32 %i.bo, 31
  br i1 %min.iters.check172, label %vec.epilog.ph197, label %vector.ph173

vector.ph173:                                     ; preds = %vector.main.loop.iter.check171
  %i.br = and i64 %i.bq, 28
  %n.vec174 = and i64 %i.bq, 8589934560           ; 5 uses
  %i.bs = shl nuw nsw i64 %n.vec174, 1
  %i.bt = getelementptr i8, ptr %.177.lcssa.i, i64 %i.bs
  %i.bu = trunc i64 %n.vec174 to i32
  %i.bv = add i32 %.180.lcssa.i, %i.bu
  br label %vector.body175

vector.body175:                                   ; preds = %vector.ph173, %vector.body175
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next186, %vector.body175 ] ; 2 uses
  %vec.phi177 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph173 ], [ %i.cm, %vector.body175 ]
  %vec.phi178 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph173 ], [ %i.cn, %vector.body175 ]
  %vec.phi179 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph173 ], [ %i.co, %vector.body175 ]
  %vec.phi180 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph173 ], [ %i.cp, %vector.body175 ]
  %i.bw = shl i64 %index176, 1
  %next.gep181 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.bw ; 4 uses
  %i.bx = getelementptr i8, ptr %next.gep181, i64 16
  %i.by = getelementptr i8, ptr %next.gep181, i64 32
  %i.bz = getelementptr i8, ptr %next.gep181, i64 48
  %wide.load182 = load <8 x i16>, ptr %next.gep181, align 2, !tbaa !74
  %wide.load183 = load <8 x i16>, ptr %i.bx, align 2, !tbaa !74
  %wide.load184 = load <8 x i16>, ptr %i.by, align 2, !tbaa !74
  %wide.load185 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !74
  %i.ca = zext <8 x i16> %wide.load182 to <8 x i32>
  %i.cb = zext <8 x i16> %wide.load183 to <8 x i32>
  %i.cc = zext <8 x i16> %wide.load184 to <8 x i32>
  %i.cd = zext <8 x i16> %wide.load185 to <8 x i32>
  %i.ce = shl nuw <8 x i32> %i.ca, splat (i32 16)
  %i.cf = shl nuw <8 x i32> %i.cb, splat (i32 16)
  %i.cg = shl nuw <8 x i32> %i.cc, splat (i32 16)
  %i.ch = shl nuw <8 x i32> %i.cd, splat (i32 16)
  %i.ci = bitcast <8 x i32> %i.ce to <8 x float>
  %i.cj = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ck = bitcast <8 x i32> %i.cg to <8 x float>
  %i.cl = bitcast <8 x i32> %i.ch to <8 x float>
  %i.cm = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi177, <8 x float> %i.ci) ; 2 uses
  %i.cn = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi178, <8 x float> %i.cj) ; 2 uses
  %i.co = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi179, <8 x float> %i.ck) ; 2 uses
  %i.cp = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi180, <8 x float> %i.cl) ; 2 uses
  %index.next186 = add nuw i64 %index176, 32      ; 2 uses
  %i.cq = icmp eq i64 %index.next186, %n.vec174
  br i1 %i.cq, label %middle.block187, label %vector.body175, !llvm.loop !322

middle.block187:                                  ; preds = %vector.body175
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cm, <8 x float> %i.cn)
  %rdx.minmax.select189 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.co)
  %rdx.minmax.select191 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select189, <8 x float> %i.cp)
  %i.cr = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select191) ; 3 uses
  %cmp.n192 = icmp eq i64 %i.bq, %n.vec174
  br i1 %cmp.n192, label %._crit_edge.i, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block187
  %min.epilog.iters.check196 = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check196, label %.lr.ph245.i.preheader, label %vec.epilog.ph197, !prof !69

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check171, %vec.epilog.iter.check194
  %vec.epilog.resume.val198 = phi i64 [ %n.vec174, %vec.epilog.iter.check194 ], [ 0, %vector.main.loop.iter.check171 ]
  %bc.merge.rdx199 = phi float [ %i.cr, %vec.epilog.iter.check194 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check171 ]
  %broadcast.splatinsert203 = insertelement <4 x float> poison, float %bc.merge.rdx199, i64 0
  %broadcast.splat204 = shufflevector <4 x float> %broadcast.splatinsert203, <4 x float> poison, <4 x i32> zeroinitializer
  %n.vec200 = and i64 %i.bq, 8589934588           ; 4 uses
  %i.cs = shl nuw nsw i64 %n.vec200, 1
  %i.ct = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cs
  %i.cu = trunc i64 %n.vec200 to i32
  %i.cv = add i32 %.180.lcssa.i, %i.cu
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph197
  %index202 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph197 ], [ %index.next208, %vec.epilog.vector.body201 ] ; 2 uses
  %vec.phi205 = phi <4 x float> [ %broadcast.splat204, %vec.epilog.ph197 ], [ %i.da, %vec.epilog.vector.body201 ]
  %i.cw = shl i64 %index202, 1
  %next.gep206 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cw
  %wide.load207 = load <4 x i16>, ptr %next.gep206, align 2, !tbaa !74
  %i.cx = zext <4 x i16> %wide.load207 to <4 x i32>
  %i.cy = shl nuw <4 x i32> %i.cx, splat (i32 16)
  %i.cz = bitcast <4 x i32> %i.cy to <4 x float>
  %i.da = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi205, <4 x float> %i.cz) ; 2 uses
  %index.next208 = add nuw i64 %index202, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next208, %n.vec200
  br i1 %i.db, label %vec.epilog.middle.block209, label %vec.epilog.vector.body201, !llvm.loop !323

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body201
  %i.dc = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.da) ; 2 uses
  %cmp.n210 = icmp eq i64 %i.bq, %n.vec200
  br i1 %cmp.n210, label %._crit_edge.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check193, %vec.epilog.iter.check194, %vec.epilog.middle.block209
  %.278244.i.ph = phi ptr [ %.177.lcssa.i, %iter.check193 ], [ %i.bt, %vec.epilog.iter.check194 ], [ %i.ct, %vec.epilog.middle.block209 ]
  %.281243.i.ph = phi i32 [ %.180.lcssa.i, %iter.check193 ], [ %i.bv, %vec.epilog.iter.check194 ], [ %i.cv, %vec.epilog.middle.block209 ]
  %.0213242.i.ph = phi float [ f0xFF7FFFFF, %iter.check193 ], [ %i.cr, %vec.epilog.iter.check194 ], [ %i.dc, %vec.epilog.middle.block209 ]
  br label %.lr.ph245.i

.lr.ph238.i:                                      ; preds = %.preheader229.i, %.lr.ph238.i
  %.177237.i = phi ptr [ %i.di, %.lr.ph238.i ], [ %.076.lcssa.i, %.preheader229.i ] ; 2 uses
  %.180236.i = phi i32 [ %i.dj, %.lr.ph238.i ], [ %.079.lcssa.i, %.preheader229.i ]
  %.0210235.i = phi <4 x float> [ %i.dh, %.lr.ph238.i ], [ splat (float f0xFF7FFFFF), %.preheader229.i ]
  %i.dd = load i64, ptr %.177237.i, align 1, !tbaa !61
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = bitcast <2 x i64> %i.de to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.df, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dg = bitcast <8 x i16> %14 to <4 x float>
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.dg) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.dj = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.dk = or disjoint i32 %i.dj, 3
  %i.dl = icmp slt i32 %i.dk, %i.an
  br i1 %i.dl, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !8

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.dm, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dr, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.dn = load i16, ptr %.278244.i, align 2, !tbaa !74
  %i.do = zext i16 %i.dn to i32
  %i.dp = shl nuw i32 %i.do, 16
  %i.dq = bitcast i32 %i.dp to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.dq) ; 2 uses
  %i.dr = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dr, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !324

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block187, %vec.epilog.middle.block209, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.dc, %vec.epilog.middle.block209 ], [ %i.cr, %middle.block187 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.ds = icmp eq i32 %i.al, 4                    ; 2 uses
  br i1 %i.ds, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.dt = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.du = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.dt)
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.du) ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.dy = icmp eq i32 %i.al, 1
  br i1 %i.dy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dz = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ea = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ea) ; 2 uses
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> nofpclass(nan inf) %i.ec) ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> nofpclass(nan inf) %i.ee)
  %i.eg = extractelement <4 x float> %i.ef, i64 0 ; 2 uses
  %i.eh = fcmp fast olt float %.0213.lcssa.i, %i.eg
  %.sroa.speculated129.i = select i1 %i.eh, float %i.eg, float %.0213.lcssa.i ; 2 uses
  %i.ei = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ei) ; 2 uses
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.el = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.ek)
  %i.em = extractelement <4 x float> %i.el, i64 0 ; 2 uses
  %i.en = fcmp fast olt float %.sroa.speculated129.i, %i.em
  %.sroa.speculated.i = select i1 %i.en, float %i.em, float %.sroa.speculated129.i ; 2 uses
  %i.eo = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = shufflevector <4 x float> %i.eo, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.er = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.ep, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.dw, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.eq, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.dx, %.thread.i ]
  br i1 %i.ao, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.es = and i32 %i.an, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.gc, %.preheader227.loopexit.i ] ; 5 uses
  %.085.lcssa.i = phi ptr [ %.146, %bb.e ], [ %i.gd, %.preheader227.loopexit.i ] ; 2 uses
  %.082.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.es, %.preheader227.loopexit.i ] ; 3 uses
  %i.et = or disjoint i32 %.082.lcssa.i, 3
  %i.eu = icmp slt i32 %i.et, %i.an
  br i1 %i.eu, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.082249.i = phi i32 [ %i.ge, %.lr.ph251.i ], [ 0, %bb.e ]
  %.085248.i = phi ptr [ %i.gd, %.lr.ph251.i ], [ %.146, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.gc, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.ev = load <8 x i16>, ptr %.085248.i, align 1, !tbaa !61 ; 2 uses
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %16 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ev, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ew = shufflevector <8 x i16> %15, <8 x i16> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ex = bitcast <16 x i16> %i.ew to <8 x float>
  %i.ey = fsub fast <8 x float> %i.ex, %.2209.i
  %i.ez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> splat (float f0x42B0C0A5))
  %i.fa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ez, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fa, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fc = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fb, i32 1) ; 2 uses
  %i.fd = fcmp fast ogt <8 x float> %i.fc, %i.fb
  %i.fe = select <8 x i1> %i.fd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ff = fsub fast <8 x float> %i.fc, %i.fe      ; 2 uses
  %i.fg = fneg fast <8 x float> %i.ff             ; 2 uses
  %i.fh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fa)
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fh) ; 8 uses
  %i.fj = fmul fast <8 x float> %i.fi, %i.fi
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float f0x3C088908))
  %i.fm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float f0x3D2AA9C1))
  %i.fn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fm, <8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float f0x3E2AAAAA))
  %i.fo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float 5.000000e-01))
  %i.fp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fo, <8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.fi)
  %i.fq = fadd fast <8 x float> %i.fp, splat (float 1.000000e+00)
  %i.fr = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ff)
  %i.fs = shl <8 x i32> %i.fr, splat (i32 23)
  %i.ft = add <8 x i32> %i.fs, splat (i32 1065353216)
  %i.fu = bitcast <8 x i32> %i.ft to <8 x float>
  %i.fv = fmul fast <8 x float> %i.fq, %i.fu      ; 2 uses
  %i.fw = bitcast <8 x float> %i.fv to <8 x i32>  ; 2 uses
  %i.fx = shufflevector <8 x i32> %i.fw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fy = shufflevector <8 x i32> %i.fw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fz = lshr <4 x i32> %i.fx, splat (i32 16)
  %i.ga = lshr <4 x i32> %i.fy, splat (i32 16)
  %i.gb = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fz, <4 x i32> %i.ga)
  store <8 x i16> %i.gb, ptr %.085248.i, align 1, !tbaa !61
  %i.gc = fadd fast <8 x float> %i.fv, %.0215247.i ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.085248.i, i64 16 ; 2 uses
  %i.ge = add nuw nsw i32 %.082249.i, 8           ; 2 uses
  %i.gf = or disjoint i32 %i.ge, 7
  %i.gg = icmp slt i32 %i.gf, %i.an
  br i1 %i.gg, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !9

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.kh, %.lr.ph258.i ] ; 3 uses
  %.186.lcssa.i = phi ptr [ %.085.lcssa.i, %.preheader227.i ], [ %i.ki, %.lr.ph258.i ] ; 5 uses
  %.183.lcssa.i = phi i32 [ %.082.lcssa.i, %.preheader227.i ], [ %i.kj, %.lr.ph258.i ] ; 5 uses
  %i.gh = icmp slt i32 %.183.lcssa.i, %i.an
  br i1 %i.gh, label %iter.check150, label %._crit_edge266.i

iter.check150:                                    ; preds = %.preheader226.i
  %i.gi = xor i32 %.183.lcssa.i, -1
  %i.gj = add i32 %i.an, %i.gi                    ; 3 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 5 uses
  %min.iters.check128 = icmp ult i32 %i.gj, 3
  br i1 %min.iters.check128, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %iter.check150
  %min.iters.check130 = icmp ult i32 %i.gj, 15
  br i1 %min.iters.check130, label %vec.epilog.ph154, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.gm = and i64 %i.gl, 12
  %n.vec132 = and i64 %i.gl, 8589934576           ; 5 uses
  %i.gn = trunc i64 %n.vec132 to i32
  %i.go = add i32 %.183.lcssa.i, %i.gn
  %i.gp = shl nuw nsw i64 %n.vec132, 1
  %i.gq = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gp
  %broadcast.splatinsert133 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat134 = shufflevector <4 x float> %broadcast.splatinsert133, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.ph131, %vector.body135
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next145, %vector.body135 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.ib, %vector.body135 ]
  %vec.phi137 = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.ic, %vector.body135 ]
  %vec.phi138 = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.id, %vector.body135 ]
  %vec.phi139 = phi <4 x float> [ zeroinitializer, %vector.ph131 ], [ %i.ie, %vector.body135 ]
  %i.gr = shl i64 %index136, 1
  %next.gep140 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.gr ; 5 uses
  %i.gs = getelementptr i8, ptr %next.gep140, i64 8 ; 2 uses
  %i.gt = getelementptr i8, ptr %next.gep140, i64 16 ; 2 uses
  %i.gu = getelementptr i8, ptr %next.gep140, i64 24 ; 2 uses
  %wide.load141 = load <4 x i16>, ptr %next.gep140, align 2, !tbaa !74
  %wide.load142 = load <4 x i16>, ptr %i.gs, align 2, !tbaa !74
  %wide.load143 = load <4 x i16>, ptr %i.gt, align 2, !tbaa !74
  %wide.load144 = load <4 x i16>, ptr %i.gu, align 2, !tbaa !74
  %i.gv = zext <4 x i16> %wide.load141 to <4 x i32>
  %i.gw = zext <4 x i16> %wide.load142 to <4 x i32>
  %i.gx = zext <4 x i16> %wide.load143 to <4 x i32>
  %i.gy = zext <4 x i16> %wide.load144 to <4 x i32>
  %i.gz = shl nuw <4 x i32> %i.gv, splat (i32 16)
  %i.ha = shl nuw <4 x i32> %i.gw, splat (i32 16)
  %i.hb = shl nuw <4 x i32> %i.gx, splat (i32 16)
  %i.hc = shl nuw <4 x i32> %i.gy, splat (i32 16)
  %i.hd = bitcast <4 x i32> %i.gz to <4 x float>
  %i.he = bitcast <4 x i32> %i.ha to <4 x float>
  %i.hf = bitcast <4 x i32> %i.hb to <4 x float>
  %i.hg = bitcast <4 x i32> %i.hc to <4 x float>
  %i.hh = fsub fast <4 x float> %i.hd, %broadcast.splat134
  %i.hi = fsub fast <4 x float> %i.he, %broadcast.splat134
  %i.hj = fsub fast <4 x float> %i.hf, %broadcast.splat134
  %i.hk = fsub fast <4 x float> %i.hg, %broadcast.splat134
  %i.hl = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hh) ; 2 uses
  %i.hm = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hi) ; 2 uses
  %i.hn = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hj) ; 2 uses
  %i.ho = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hk) ; 2 uses
  %i.hp = bitcast <4 x float> %i.hl to <4 x i32>
  %i.hq = bitcast <4 x float> %i.hm to <4 x i32>
  %i.hr = bitcast <4 x float> %i.hn to <4 x i32>
  %i.hs = bitcast <4 x float> %i.ho to <4 x i32>
  %i.ht = lshr <4 x i32> %i.hp, splat (i32 16)
  %i.hu = lshr <4 x i32> %i.hq, splat (i32 16)
  %i.hv = lshr <4 x i32> %i.hr, splat (i32 16)
  %i.hw = lshr <4 x i32> %i.hs, splat (i32 16)
  %i.hx = trunc nuw nsw <4 x i32> %i.ht to <4 x i16>
  %i.hy = trunc nuw nsw <4 x i32> %i.hu to <4 x i16>
  %i.hz = trunc nuw nsw <4 x i32> %i.hv to <4 x i16>
  %i.ia = trunc nuw nsw <4 x i32> %i.hw to <4 x i16>
  store <4 x i16> %i.hx, ptr %next.gep140, align 2, !tbaa !74
  store <4 x i16> %i.hy, ptr %i.gs, align 2, !tbaa !74
  store <4 x i16> %i.hz, ptr %i.gt, align 2, !tbaa !74
  store <4 x i16> %i.ia, ptr %i.gu, align 2, !tbaa !74
  %i.ib = fadd fast <4 x float> %i.hl, %vec.phi   ; 2 uses
  %i.ic = fadd fast <4 x float> %i.hm, %vec.phi137 ; 2 uses
  %i.id = fadd fast <4 x float> %i.hn, %vec.phi138 ; 2 uses
  %i.ie = fadd fast <4 x float> %i.ho, %vec.phi139 ; 2 uses
  %index.next145 = add nuw i64 %index136, 16      ; 2 uses
  %i.if = icmp eq i64 %index.next145, %n.vec132
  br i1 %i.if, label %middle.block146, label %vector.body135, !llvm.loop !325

middle.block146:                                  ; preds = %vector.body135
  %bin.rdx = fadd fast <4 x float> %i.ic, %i.ib
  %bin.rdx147 = fadd fast <4 x float> %i.id, %bin.rdx
  %bin.rdx148 = fadd fast <4 x float> %i.ie, %bin.rdx147
  %i.ig = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx148) ; 3 uses
  %cmp.n149 = icmp eq i64 %i.gl, %n.vec132
  br i1 %cmp.n149, label %._crit_edge266.i, label %vec.epilog.iter.check151

vec.epilog.iter.check151:                         ; preds = %middle.block146
  %min.epilog.iters.check153 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check153, label %.lr.ph265.i.preheader, label %vec.epilog.ph154, !prof !75

vec.epilog.ph154:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check151
  %vec.epilog.resume.val155 = phi i64 [ %n.vec132, %vec.epilog.iter.check151 ], [ 0, %vector.main.loop.iter.check129 ]
  %bc.merge.rdx = phi float [ %i.ig, %vec.epilog.iter.check151 ], [ 0.000000e+00, %vector.main.loop.iter.check129 ]
  %n.vec156 = and i64 %i.gl, 8589934588           ; 4 uses
  %i.ih = trunc i64 %n.vec156 to i32
  %i.ii = add i32 %.183.lcssa.i, %i.ih
  %i.ij = shl nuw nsw i64 %n.vec156, 1
  %i.ik = getelementptr i8, ptr %.186.lcssa.i, i64 %i.ij
  %i.il = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert157 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat158 = shufflevector <4 x float> %broadcast.splatinsert157, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph154
  %index160 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph154 ], [ %index.next164, %vec.epilog.vector.body159 ] ; 2 uses
  %vec.phi161 = phi <4 x float> [ %i.il, %vec.epilog.ph154 ], [ %i.iv, %vec.epilog.vector.body159 ]
  %i.im = shl i64 %index160, 1
  %next.gep162 = getelementptr i8, ptr %.186.lcssa.i, i64 %i.im ; 2 uses
  %wide.load163 = load <4 x i16>, ptr %next.gep162, align 2, !tbaa !74
  %i.in = zext <4 x i16> %wide.load163 to <4 x i32>
  %i.io = shl nuw <4 x i32> %i.in, splat (i32 16)
  %i.ip = bitcast <4 x i32> %i.io to <4 x float>
  %i.iq = fsub fast <4 x float> %i.ip, %broadcast.splat158
  %i.ir = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.iq) ; 2 uses
  %i.is = bitcast <4 x float> %i.ir to <4 x i32>
  %i.it = lshr <4 x i32> %i.is, splat (i32 16)
  %i.iu = trunc nuw nsw <4 x i32> %i.it to <4 x i16>
  store <4 x i16> %i.iu, ptr %next.gep162, align 2, !tbaa !74
  %i.iv = fadd fast <4 x float> %i.ir, %vec.phi161 ; 2 uses
  %index.next164 = add nuw i64 %index160, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next164, %n.vec156
  br i1 %i.iw, label %vec.epilog.middle.block165, label %vec.epilog.vector.body159, !llvm.loop !326

vec.epilog.middle.block165:                       ; preds = %vec.epilog.vector.body159
  %i.ix = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.iv) ; 2 uses
  %cmp.n166 = icmp eq i64 %i.gl, %n.vec156
  br i1 %cmp.n166, label %._crit_edge266.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check150, %vec.epilog.iter.check151, %vec.epilog.middle.block165
  %.284264.i.ph = phi i32 [ %.183.lcssa.i, %iter.check150 ], [ %i.go, %vec.epilog.iter.check151 ], [ %i.ii, %vec.epilog.middle.block165 ]
  %.287263.i.ph = phi ptr [ %.186.lcssa.i, %iter.check150 ], [ %i.gq, %vec.epilog.iter.check151 ], [ %i.ik, %vec.epilog.middle.block165 ]
  %.088262.i.ph = phi float [ 0.000000e+00, %iter.check150 ], [ %i.ig, %vec.epilog.iter.check151 ], [ %i.ix, %vec.epilog.middle.block165 ]
  br label %.lr.ph265.i

.lr.ph258.i:                                      ; preds = %.preheader227.i, %.lr.ph258.i
  %.183257.i = phi i32 [ %i.kj, %.lr.ph258.i ], [ %.082.lcssa.i, %.preheader227.i ]
  %.186256.i = phi ptr [ %i.ki, %.lr.ph258.i ], [ %.085.lcssa.i, %.preheader227.i ] ; 3 uses
  %.0218255.i = phi <4 x float> [ %i.kh, %.lr.ph258.i ], [ zeroinitializer, %.preheader227.i ]
  %i.iy = load i64, ptr %.186256.i, align 1, !tbaa !61
  %i.iz = insertelement <2 x i64> poison, i64 %i.iy, i64 0
  %i.ja = bitcast <2 x i64> %i.iz to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ja, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jb = bitcast <8 x i16> %17 to <4 x float>
  %i.jc = fsub fast <4 x float> %i.jb, %.2212.i
  %i.jd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jc, <4 x float> splat (float f0x42B0C0A5))
  %i.je = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jf = fmul fast <4 x float> %i.je, splat (float f0x3FB8AA3B)
  %i.jg = fadd fast <4 x float> %i.jf, splat (float 5.000000e-01) ; 2 uses
  %i.jh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jg)
  %i.ji = sitofp fast <4 x i32> %i.jh to <4 x float> ; 2 uses
  %i.jj = fcmp fast olt <4 x float> %i.jg, %i.ji
  %i.jk = select <4 x i1> %i.jj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jl = fsub fast <4 x float> %i.ji, %i.jk      ; 2 uses
  %i.jm = fneg fast <4 x float> %i.jl             ; 2 uses
  %i.jn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.je)
  %i.jo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.jm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.jn) ; 8 uses
  %i.jp = fmul fast <4 x float> %i.jo, %i.jo
  %i.jq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jo, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jq, <4 x float> nofpclass(nan inf) %i.jo, <4 x float> splat (float f0x3C088908))
  %i.js = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jr, <4 x float> nofpclass(nan inf) %i.jo, <4 x float> splat (float f0x3D2AA9C1))
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.js, <4 x float> nofpclass(nan inf) %i.jo, <4 x float> splat (float f0x3E2AAAAA))
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> nofpclass(nan inf) %i.jo, <4 x float> splat (float 5.000000e-01))
  %i.jv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ju, <4 x float> nofpclass(nan inf) %i.jp, <4 x float> nofpclass(nan inf) %i.jo)
  %i.jw = fadd fast <4 x float> %i.jv, splat (float 1.000000e+00)
  %i.jx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jl)
  %i.jy = shl <4 x i32> %i.jx, splat (i32 23)
  %i.jz = add <4 x i32> %i.jy, splat (i32 1065353216)
  %i.ka = bitcast <4 x i32> %i.jz to <4 x float>
  %i.kb = fmul fast <4 x float> %i.jw, %i.ka      ; 2 uses
  %i.kc = bitcast <4 x float> %i.kb to <4 x i32>
  %i.kd = lshr <4 x i32> %i.kc, splat (i32 16)
  %i.ke = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kd, <4 x i32> poison)
  %i.kf = bitcast <8 x i16> %i.ke to <2 x i64>
  %i.kg = extractelement <2 x i64> %i.kf, i64 0
  store i64 %i.kg, ptr %.186256.i, align 1, !tbaa !61
  %i.kh = fadd fast <4 x float> %i.kb, %.0218255.i ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.186256.i, i64 8 ; 2 uses
  %i.kj = add nuw nsw i32 %.183257.i, 4           ; 3 uses
  %i.kk = or disjoint i32 %i.kj, 3
  %i.kl = icmp slt i32 %i.kk, %i.an
  br i1 %i.kl, label %.lr.ph258.i, label %.preheader226.i, !llvm.loop !10

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i
  %.284264.i = phi i32 [ %i.kx, %.lr.ph265.i ], [ %.284264.i.ph, %.lr.ph265.i.preheader ]
  %.287263.i = phi ptr [ %i.kw, %.lr.ph265.i ], [ %.287263.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %.088262.i = phi float [ %i.kv, %.lr.ph265.i ], [ %.088262.i.ph, %.lr.ph265.i.preheader ]
  %i.km = load i16, ptr %.287263.i, align 2, !tbaa !74
  %i.kn = zext i16 %i.km to i32
  %i.ko = shl nuw i32 %i.kn, 16
  %i.kp = bitcast i32 %i.ko to float
  %i.kq = fsub fast float %i.kp, %.1214.i
  %i.kr = call fast float @llvm.exp.f32(float %i.kq) ; 2 uses
  %i.ks = bitcast float %i.kr to i32
  %i.kt = lshr i32 %i.ks, 16
  %i.ku = trunc nuw nsw i32 %i.kt to i16
  store i16 %i.ku, ptr %.287263.i, align 2, !tbaa !74
  %i.kv = fadd fast float %i.kr, %.088262.i       ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.287263.i, i64 2
  %i.kx = add nuw nsw i32 %.284264.i, 1           ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.kx, %i.an
  br i1 %exitcond299.not.i, label %._crit_edge266.i, label %.lr.ph265.i, !llvm.loop !327

._crit_edge266.i:                                 ; preds = %.lr.ph265.i, %middle.block146, %vec.epilog.middle.block165, %.preheader226.i
  %.088.lcssa.i = phi float [ 0.000000e+00, %.preheader226.i ], [ %i.ix, %vec.epilog.middle.block165 ], [ %i.ig, %middle.block146 ], [ %i.kv, %.lr.ph265.i ] ; 2 uses
  %i.ky = icmp eq i32 %i.al, 8
  br i1 %i.ky, label %.thread223.i, label %bb.f

.thread223.i:                                     ; preds = %._crit_edge266.i
  %i.kz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa.i) ; 2 uses
  %i.la = fneg fast <8 x float> %.0215.lcssa.i
  %i.lb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.la, <8 x float> nofpclass(nan inf) %i.kz, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.lc = fmul fast <8 x float> %i.lb, %i.kz
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge266.i
  br i1 %i.ds, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ld = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.le = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lf = fadd fast <4 x float> %i.le, %i.ld
  %i.lg = fadd fast <4 x float> %i.lf, %.0218.lcssa.i ; 2 uses
  %i.lh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lg) ; 2 uses
  %i.li = fneg fast <4 x float> %i.lg
  %i.lj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.li, <4 x float> nofpclass(nan inf) %i.lh, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.lk = fmul fast <4 x float> %i.lj, %i.lh      ; 2 uses
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread223.i
  %.1219.i = phi nsz <4 x float> [ %i.lk, %bb.g ], [ %.0218.lcssa.i, %bb.f ], [ %.0218.lcssa.i, %.thread223.i ] ; 3 uses
  %.2217.i = phi nsz <8 x float> [ %i.ll, %bb.g ], [ %.0215.lcssa.i, %bb.f ], [ %i.lc, %.thread223.i ] ; 3 uses
  br i1 %i.er, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.lm = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ln = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lo = fadd fast <4 x float> %i.lm, %i.ln      ; 2 uses
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> %.1219.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.lq = shufflevector <4 x float> %i.lo, <4 x float> %.1219.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.lr = fadd fast <4 x float> %i.lp, %i.lq
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.088.lcssa.i, <4 x float> %i.lr)
  %i.ls = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.lt = insertelement <4 x float> poison, float %i.ls, i64 0 ; 2 uses
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lv = shufflevector <4 x float> %i.lt, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2220.i = phi nsz <4 x float> [ %i.lu, %bb.i ], [ %.1219.i, %bb.h ]
  %.3.i = phi nsz <8 x float> [ %i.lv, %bb.i ], [ %.2217.i, %bb.h ]
  %.189.i = phi nsz float [ %i.ls, %bb.i ], [ %.088.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ao, label %.lr.ph271.i, label %.preheader225.i

.preheader225.loopexit.i:                         ; preds = %.lr.ph271.i
  %i.lw = and i32 %i.an, 2147483640
  br label %.preheader225.i

.preheader225.i:                                  ; preds = %.preheader225.loopexit.i, %bb.j
  %.073.lcssa.i = phi ptr [ %.146, %bb.j ], [ %i.mj, %.preheader225.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.lw, %.preheader225.loopexit.i ] ; 3 uses
  %i.lx = or disjoint i32 %.0.lcssa.i, 3
  %i.ly = icmp slt i32 %i.lx, %i.an
  br i1 %i.ly, label %.lr.ph276.i, label %.preheader.i

.lr.ph271.i:                                      ; preds = %bb.j, %.lr.ph271.i
  %.0269.i = phi i32 [ %i.mk, %.lr.ph271.i ], [ 0, %bb.j ]
  %.073268.i = phi ptr [ %i.mj, %.lr.ph271.i ], [ %.146, %bb.j ] ; 3 uses
  %i.lz = load <8 x i16>, ptr %.073268.i, align 1, !tbaa !61 ; 2 uses
  %18 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %19 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ma = shufflevector <8 x i16> %18, <8 x i16> %19, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mb = bitcast <16 x i16> %i.ma to <8 x float>
  %i.mc = fmul fast <8 x float> %.3.i, %i.mb
  %i.md = bitcast <8 x float> %i.mc to <8 x i32>  ; 2 uses
  %i.me = shufflevector <8 x i32> %i.md, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mf = shufflevector <8 x i32> %i.md, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mg = lshr <4 x i32> %i.me, splat (i32 16)
  %i.mh = lshr <4 x i32> %i.mf, splat (i32 16)
  %i.mi = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.mg, <4 x i32> %i.mh)
  store <8 x i16> %i.mi, ptr %.073268.i, align 1, !tbaa !61
  %i.mj = getelementptr inbounds nuw i8, ptr %.073268.i, i64 16 ; 2 uses
  %i.mk = add nuw nsw i32 %.0269.i, 8             ; 2 uses
  %i.ml = or disjoint i32 %i.mk, 7
  %i.mm = icmp slt i32 %i.ml, %i.an
  br i1 %i.mm, label %.lr.ph271.i, label %.preheader225.loopexit.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph276.i, %.preheader225.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader225.i ], [ %i.od, %.lr.ph276.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader225.i ], [ %i.oe, %.lr.ph276.i ] ; 5 uses
  %i.mn = icmp slt i32 %.1.lcssa.i, %i.an
  br i1 %i.mn, label %iter.check, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.mo = xor i32 %.1.lcssa.i, -1
  %i.mp = add i32 %i.an, %i.mo                    ; 3 uses
  %i.mq = zext i32 %i.mp to i64
  %i.mr = add nuw nsw i64 %i.mq, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.mp, 3
  br i1 %min.iters.check, label %.lr.ph281.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i32 %i.mp, 15
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ms = and i64 %i.mr, 12
  %n.vec = and i64 %i.mr, 8589934576              ; 5 uses
  %i.mt = trunc i64 %n.vec to i32
  %i.mu = add i32 %.1.lcssa.i, %i.mt
  %i.mv = shl nuw nsw i64 %n.vec, 1
  %i.mw = getelementptr i8, ptr %.174.lcssa.i, i64 %i.mv
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.189.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.174.lcssa.i, i64 %i.mx ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !74
  %i.my = zext <16 x i16> %wide.load to <16 x i32>
  %i.mz = shl nuw <16 x i32> %i.my, splat (i32 16)
  %i.na = bitcast <16 x i32> %i.mz to <16 x float>
  %i.nb = fmul fast <16 x float> %broadcast.splat, %i.na
  %i.nc = bitcast <16 x float> %i.nb to <16 x i32>
  %i.nd = lshr <16 x i32> %i.nc, splat (i32 16)
  %i.ne = trunc nuw <16 x i32> %i.nd to <16 x i16>
  store <16 x i16> %i.ne, ptr %next.gep, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nf = icmp eq i64 %index.next, %n.vec
  br i1 %i.nf, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mr, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ms, 0
  br i1 %min.epilog.iters.check, label %.lr.ph281.i.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %i.mr, 8589934588           ; 4 uses
  %i.ng = trunc i64 %n.vec119 to i32
  %i.nh = add i32 %.1.lcssa.i, %i.ng
  %i.ni = shl nuw nsw i64 %n.vec119, 1
  %i.nj = getelementptr i8, ptr %.174.lcssa.i, i64 %i.ni
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %.189.i, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.nk = shl i64 %index122, 1
  %next.gep123 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nk ; 2 uses
  %wide.load124 = load <4 x i16>, ptr %next.gep123, align 2, !tbaa !74
  %i.nl = zext <4 x i16> %wide.load124 to <4 x i32>
  %i.nm = shl nuw <4 x i32> %i.nl, splat (i32 16)
  %i.nn = bitcast <4 x i32> %i.nm to <4 x float>
  %i.no = fmul fast <4 x float> %broadcast.splat121, %i.nn
  %i.np = bitcast <4 x float> %i.no to <4 x i32>
  %i.nq = lshr <4 x i32> %i.np, splat (i32 16)
  %i.nr = trunc nuw <4 x i32> %i.nq to <4 x i16>
  store <4 x i16> %i.nr, ptr %next.gep123, align 2, !tbaa !74
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.ns, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !329

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %i.mr, %n.vec119
  br i1 %cmp.n126, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph281.i.preheader

.lr.ph281.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2280.i.ph = phi i32 [ %.1.lcssa.i, %iter.check ], [ %i.mu, %vec.epilog.iter.check ], [ %i.nh, %vec.epilog.middle.block ]
  %.275279.i.ph = phi ptr [ %.174.lcssa.i, %iter.check ], [ %i.mw, %vec.epilog.iter.check ], [ %i.nj, %vec.epilog.middle.block ]
  br label %.lr.ph281.i

.lr.ph276.i:                                      ; preds = %.preheader225.i, %.lr.ph276.i
  %.1275.i = phi i32 [ %i.oe, %.lr.ph276.i ], [ %.0.lcssa.i, %.preheader225.i ]
  %.174274.i = phi ptr [ %i.od, %.lr.ph276.i ], [ %.073.lcssa.i, %.preheader225.i ] ; 3 uses
  %i.nt = load i64, ptr %.174274.i, align 1, !tbaa !61
  %i.nu = insertelement <2 x i64> poison, i64 %i.nt, i64 0
  %i.nv = bitcast <2 x i64> %i.nu to <8 x i16>
  %20 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nw = bitcast <8 x i16> %20 to <4 x float>
  %i.nx = fmul fast <4 x float> %.2220.i, %i.nw
  %i.ny = bitcast <4 x float> %i.nx to <4 x i32>
  %i.nz = lshr <4 x i32> %i.ny, splat (i32 16)
  %i.oa = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nz, <4 x i32> poison)
  %i.ob = bitcast <8 x i16> %i.oa to <2 x i64>
  %i.oc = extractelement <2 x i64> %i.ob, i64 0
  store i64 %i.oc, ptr %.174274.i, align 1, !tbaa !61
  %i.od = getelementptr inbounds nuw i8, ptr %.174274.i, i64 8 ; 2 uses
  %i.oe = add nuw nsw i32 %.1275.i, 4             ; 3 uses
  %i.of = or disjoint i32 %i.oe, 3
  %i.og = icmp slt i32 %i.of, %i.an
  br i1 %i.og, label %.lr.ph276.i, label %.preheader.i, !llvm.loop !12

.lr.ph281.i:                                      ; preds = %.lr.ph281.i.preheader, %.lr.ph281.i
  %.2280.i = phi i32 [ %i.oq, %.lr.ph281.i ], [ %.2280.i.ph, %.lr.ph281.i.preheader ]
  %.275279.i = phi ptr [ %i.op, %.lr.ph281.i ], [ %.275279.i.ph, %.lr.ph281.i.preheader ] ; 3 uses
  %i.oh = load i16, ptr %.275279.i, align 2, !tbaa !74
  %i.oi = zext i16 %i.oh to i32
  %i.oj = shl nuw i32 %i.oi, 16
  %i.ok = bitcast i32 %i.oj to float
  %i.ol = fmul fast float %.189.i, %i.ok
  %i.om = bitcast float %i.ol to i32
  %i.on = lshr i32 %i.om, 16
  %i.oo = trunc nuw i32 %i.on to i16
  store i16 %i.oo, ptr %.275279.i, align 2, !tbaa !74
  %i.op = getelementptr inbounds nuw i8, ptr %.275279.i, i64 2
  %i.oq = add nuw nsw i32 %.2280.i, 1             ; 2 uses
  %exitcond300.not.i = icmp eq i32 %i.oq, %i.an
  br i1 %exitcond300.not.i, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph281.i, !llvm.loop !330

_ZN4ncnnL17softmax_bf16s_sseEPtii.exit:           ; preds = %.lr.ph281.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.or = load i32, ptr %6, align 4, !tbaa !33    ; 2 uses
  %i.os = load i32, ptr %7, align 4, !tbaa !33    ; 2 uses
  %i.ot = mul nsw i32 %i.os, %i.or
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [2 x i8], ptr %.146, i64 %i.ou ; 2 uses
  %i.ow = add nuw nsw i32 %.047, 1                ; 2 uses
  %i.ox = load i32, ptr %5, align 4, !tbaa !33    ; 2 uses
  %i.oy = icmp slt i32 %i.ow, %i.ox
  br i1 %i.oy, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !331

._crit_edge53:                                    ; preds = %._crit_edge50, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge53, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #11

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{null}
!1 = distinct !{!1, !63}
!2 = distinct !{!2, !63}
!3 = distinct !{!3, !63}
!4 = distinct !{!4, !63}
!5 = distinct !{!5, !63}
!6 = distinct !{!6, !63}
!7 = distinct !{!7, !63}
!8 = distinct !{!8, !63}
!9 = distinct !{!9, !63}
!10 = distinct !{!10, !63}
!11 = distinct !{!11, !63}
!12 = distinct !{!12, !63}
!13 = !{i32 7, !"openmp", i32 51}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"bool", !18, i64 0}
!23 = !{!"any pointer", !18, i64 0}
!24 = !{!"p1 _ZTSN4ncnn9AllocatorE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn6OptionE", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !19, i64 4, !24, i64 8, !24, i64 16, !19, i64 24, !22, i64 28, !22, i64 29, !22, i64 30, !22, i64 31, !22, i64 32, !22, i64 33, !22, i64 34, !22, i64 35, !22, i64 36, !22, i64 37, !22, i64 38, !22, i64 39, !19, i64 40, !22, i64 44, !22, i64 45, !22, i64 46, !22, i64 47, !18, i64 48, !22, i64 49, !22, i64 50, !22, i64 51, !22, i64 52, !22, i64 53, !22, i64 54, !22, i64 55, !22, i64 56, !22, i64 57, !22, i64 58, !22, i64 59, !22, i64 60, !22, i64 61, !22, i64 62, !22, i64 63}
!26 = !{!"p1 int", !23, i64 0}
!27 = !{!"long", !18, i64 0}
!28 = !{!"_ZTSN4ncnn3MatE", !23, i64 0, !26, i64 8, !27, i64 16, !19, i64 24, !24, i64 32, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !27, i64 64}
!29 = !{!28, !19, i64 24}
!30 = !{!28, !27, i64 16}
!31 = !{!28, !19, i64 40}
!32 = !{!28, !19, i64 44}
!33 = !{!19, !19, i64 0}
!34 = !{!28, !19, i64 48}
!35 = !{!28, !19, i64 52}
!36 = !{!28, !19, i64 56}
!37 = !{!"p1 omnipotent char", !23, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !27, i64 8, !18, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIiSaIiEE", !42, i64 0}
!44 = !{!"p1 _ZTSN4ncnn3MatE", !23, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSN4ncnn5LayerE", !22, i64 8, !22, i64 9, !22, i64 10, !22, i64 11, !22, i64 12, !22, i64 13, !22, i64 14, !22, i64 15, !22, i64 16, !22, i64 17, !22, i64 18, !22, i64 19, !22, i64 20, !22, i64 21, !22, i64 22, !22, i64 23, !22, i64 24, !22, i64 25, !22, i64 26, !22, i64 27, !19, i64 28, !23, i64 32, !19, i64 40, !39, i64 48, !39, i64 80, !43, i64 112, !43, i64 136, !48, i64 160, !48, i64 184}
!50 = !{!"_ZTSN4ncnn7SoftmaxE", !49, i64 0, !19, i64 208}
!51 = !{!50, !19, i64 208}
!52 = !{!28, !23, i64 0}
!53 = !{!25, !19, i64 4}
!54 = !{!27, !27, i64 0}
!55 = !{!25, !24, i64 16}
!56 = !{!28, !27, i64 64}
!57 = !{!28, !26, i64 8}
!58 = !{!28, !24, i64 32}
!59 = !{!"vtable pointer", !17, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!18, !18, i64 0}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"float", !18, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!"branch_weights", i32 8, i32 24}
!69 = !{!"branch_weights", i32 4, i32 28}
!70 = !{i64 2, i64 -1, i64 -1, i1 true}
!71 = !{!70}
!72 = !{!"llvm.loop.unswitch.partial.disable"}
!73 = !{!"short", !18, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = !{!25, !22, i64 32}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!49, !22, i64 11}
end_hunk_1
