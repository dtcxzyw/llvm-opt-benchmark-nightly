Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_crop?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@distort_transform:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.l, -4                     ; 3 uses
  %i.x = shl i64 %n.vec24, 1
  %broadcast.splat26 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat28 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index29, 3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec30 = load <8 x float>, ptr %i.y, align 32, !tbaa !110 ; 2 uses
  %strided.vec31 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.z = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec31, %broadcast.splat26
  %i.aa = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec32, %broadcast.splat28
  %interleaved.vec33 = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec33, ptr %i.y, align 32, !tbaa !110
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next34, %n.vec24
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.l, %n.vec24
  br i1 %cmp.n35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.ph = phi i64 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i64 [ %i.af, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !110
  %i.ae = fsub reassoc nsz arcp contract afn <2 x float> %i.ad, %i.e
  store <2 x float> %i.ae, ptr %i.ac, align 8, !tbaa !110
  %i.af = add nuw i64 %.015, 2                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.i
  br i1 %i.ag, label %.lr.ph, label %.loopexit, !llvm.loop !208

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nounwind uwtable
define noundef i32 @distort_backtransform(ptr noundef %0, ptr noundef %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 4       ; 4 uses
  %5 = alloca %struct.dt_iop_roi_t, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %i.a, i64 20, i1 false), !tbaa.struct !111
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !112
  call void %i.c(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #22, !inline_history !0
  %i.d = load <2 x i32>, ptr %5, align 8, !tbaa !109 ; 2 uses
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.f = icmp slt <2 x i32> %i.d, splat (i32 1)   ; 2 uses
  %i.g = extractelement <2 x i1> %i.f, i64 0
  %i.h = extractelement <2 x i1> %i.f, i64 1
  %or.cond = select i1 %i.h, i1 %i.g, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.i = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.j = add i64 %i.i, -2                         ; 3 uses
  %i.k = lshr exact i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.j, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.j, 30
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 4 uses
  %i.n = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.e, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat18 = shufflevector <2 x float> %i.e, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.p, align 64, !tbaa !110 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec19 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec20 = load <16 x float>, ptr %i.r, align 64, !tbaa !110 ; 2 uses
  %strided.vec21 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec22 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.s = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.t = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec21, %broadcast.splat
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec19, %broadcast.splat18
  %i.v = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec22, %broadcast.splat18
  %interleaved.vec = shufflevector <8 x float> %i.s, <8 x float> %i.u, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.p, align 64, !tbaa !110
  %interleaved.vec23 = shufflevector <8 x float> %i.t, <8 x float> %i.v, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec23, ptr %i.r, align 64, !tbaa !110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.l, -4                     ; 3 uses
  %i.x = shl i64 %n.vec24, 1
  %broadcast.splat26 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat28 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index29, 3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec30 = load <8 x float>, ptr %i.y, align 32, !tbaa !110 ; 2 uses
  %strided.vec31 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.z = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec31, %broadcast.splat26
  %i.aa = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec32, %broadcast.splat28
  %interleaved.vec33 = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec33, ptr %i.y, align 32, !tbaa !110
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next34, %n.vec24
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.l, %n.vec24
  br i1 %cmp.n35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.ph = phi i64 [ 0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i64 [ %i.af, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !110
  %i.ae = fadd reassoc nsz arcp contract afn <2 x float> %i.ad, %i.e
  store <2 x float> %i.ae, ptr %i.ac, align 8, !tbaa !110
  %i.af = add nuw i64 %.015, 2                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.i
  br i1 %i.ag, label %.lr.ph, label %.loopexit, !llvm.loop !211

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5) #22
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !111
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !122 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = load <2 x i32>, ptr %i.e, align 4, !tbaa !109
  %i.j = sitofp <2 x i32> %i.i to <2 x float>     ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !110 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn <2 x float> %i.k, %i.j
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !110
  %i.n = fsub reassoc nsz arcp contract afn <2 x float> %i.m, %i.k
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.j ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.q = fptosi <2 x float> %i.l to <2 x i32>
  %i.r = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.q, <2 x i32> zeroinitializer) ; 2 uses
  %i.s = fptosi float %i.p to i32
  %i.t = fptosi <2 x float> %i.o to <2 x i32>
  %i.u = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.t, <2 x i32> splat (i32 4)) ; 4 uses
  %i.v = shufflevector <2 x i32> %i.r, <2 x i32> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.v, ptr %2, align 4, !tbaa !109
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !212  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !124
  %.not99 = icmp eq i32 %i.z, 0
  br i1 %.not99, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.x, i64 644
  %.val = load i32, ptr %i.aa, align 4, !tbaa !132
  %i.ab = and i32 %.val, 9
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !133
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = extractelement <2 x float> %i.o, i64 0
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ag) ; 6 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.p) ; 6 uses
  %i.aj = load float, ptr %i.d, align 4, !tbaa !134 ; 3 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.aj, 0.000000e+00 ; 2 uses
  %i.al = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.al)
  %i.an = select reassoc nsz arcp contract afn i1 %i.ak, float %i.am, float %i.aj ; 5 uses
  %i.ao = fpext reassoc nsz arcp contract afn float %i.an to double ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.ao, 1.000000e-05 ; 2 uses
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !213
  %i.ar = load i32, ptr %i.g, align 4, !tbaa !214
  %.not100 = icmp slt i32 %i.aq, %i.ar            ; 3 uses
  br i1 %i.ap, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.ah, %i.ai
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = fdiv reassoc nsz arcp contract afn float %i.ah, %i.an
  %i.au = fmul reassoc nsz arcp contract afn float %i.an, %i.ah
  %i.av = select reassoc nsz arcp contract afn i1 %.not100, float %i.au, float %i.at
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.av)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ax = fmul reassoc nsz arcp contract afn float %i.an, %i.ai
  %i.ay = fdiv reassoc nsz arcp contract afn float %i.ai, %i.an
  %i.az = select reassoc nsz arcp contract afn i1 %.not100, float %i.ay, float %i.ax
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.az)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.093 = phi nsz float [ %i.ah, %bb.e ], [ %i.ba, %bb.f ], [ %i.ah, %bb.c ]
  %.0 = phi nsz float [ %i.aw, %bb.e ], [ %i.ai, %bb.f ], [ %i.ai, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bb = extractelement <2 x i32> %i.u, i64 0
  %.not101 = icmp slt i32 %i.bb, %i.s             ; 2 uses
  %.in = select i1 %.not101, ptr %i.ad, ptr %i.y
  %i.bc = load i32, ptr %.in, align 4, !tbaa !109
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.in103 = select i1 %.not101, ptr %i.y, ptr %i.ad
  %i.bd = load i32, ptr %.in103, align 4, !tbaa !109
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !109
  %i.be = call fastcc i32 @_reduce_aligners(ptr noundef %i.a, ptr noundef %i.b)
  %.not104 = icmp eq i32 %i.be, 0
  br i1 %.not104, label %.thread110, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !109
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !109
  %i.bh = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bg, i64 1
  %i.bj = srem <2 x i32> %i.u, %i.bi
  br label %.thread110

.thread110:                                       ; preds = %bb.g, %bb.h
  %i.bk = phi <2 x i32> [ %i.bj, %bb.h ], [ zeroinitializer, %bb.g ] ; 4 uses
  %i.bl = lshr <2 x i32> %i.bk, splat (i32 1)
  %i.bm = add nuw nsw <2 x i32> %i.bl, %i.r
  %4 = sub nsw <2 x i32> %i.u, %i.bk
  %5 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %4, <2 x i32> splat (i32 4))
  %6 = shufflevector <2 x i32> %i.bm, <2 x i32> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %6, ptr %2, align 4, !tbaa !109
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.bo = and i32 %i.bn, 50331648
  %or.cond107.not = icmp eq i32 %i.bo, 50331648
  br i1 %or.cond107.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread110
  %i.bp = select i1 %i.ak, ptr @.str.18, ptr @.str.8
  %i.bq = select i1 %i.ap, ptr @.str.19, ptr @.str.8
  %i.br = select i1 %.not100, ptr @.str.21, ptr @.str.20
  %i.bs = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.bt = fpext reassoc nsz arcp contract afn float %i.ai to double
  %i.bu = fpext reassoc nsz arcp contract afn float %.093 to double
  %i.bv = fpext reassoc nsz arcp contract afn float %.0 to double
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !109
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !109
  %i.by = extractelement <2 x i32> %i.bk, i64 0
  %i.bz = extractelement <2 x i32> %i.bk, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.x, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.br, double noundef %i.ao, double noundef %i.bs, double noundef %i.bt, double noundef %i.bu, double noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.bx, i32 noundef %i.by, i32 noundef %i.bz) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.j
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @_reduce_aligners(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #9 {
.preheader:
  %i.a = load i32, ptr %0, align 4, !tbaa !109
  %i.b = load i32, ptr %1, align 4, !tbaa !109
  %i.c = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %i.a, i64 1 ; 2 uses
  %i.e = icmp eq <2 x i32> %i.d, zeroinitializer
  %i.f = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.d, i1 true)
  %i.g = select <2 x i1> %i.e, <2 x i32> splat (i32 1), <2 x i32> %i.f ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1
  %i.i = urem i32 %i.h, 7
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.a
  %i.k = phi <2 x i32> [ %i.o, %bb.a ], [ %i.g, %.preheader ] ; 3 uses
  %i.l = extractelement <2 x i32> %i.k, i64 0
  %i.m = urem i32 %i.l, 7
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.lr.ph
  %i.o = udiv <2 x i32> %i.k, splat (i32 7)       ; 3 uses
  %i.p = extractelement <2 x i32> %i.o, i64 1
  %i.q = urem i32 %i.p, 7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %bb.a, %.lr.ph, %.preheader
  %i.s = phi <2 x i32> [ %i.g, %.preheader ], [ %i.k, %.lr.ph ], [ %i.o, %bb.a ] ; 2 uses
  %i.t = extractelement <2 x i32> %i.s, i64 1     ; 3 uses
  %i.u = urem i32 %i.t, 6
  %i.v = icmp eq i32 %i.u, 0
  %i.w = extractelement <2 x i32> %i.s, i64 0     ; 2 uses
  br i1 %i.v, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %.critedge, %bb.b
  %.128.1 = phi i32 [ %i.af, %bb.b ], [ %i.w, %.critedge ] ; 3 uses
  %.12427.1 = phi i32 [ %i.ac, %bb.b ], [ %i.t, %.critedge ] ; 2 uses
  %i.x = urem i32 %.128.1, 6
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %.critedge.1

bb.b:                                             ; preds = %.lr.ph.1
  %i.z = insertelement <2 x i32> poison, i32 %.128.1, i64 0
  %i.aa = insertelement <2 x i32> %i.z, i32 %.12427.1, i64 1
  %i.ab = udiv <2 x i32> %i.aa, splat (i32 6)     ; 2 uses
  %i.ac = extractelement <2 x i32> %i.ab, i64 1   ; 3 uses
  %i.ad = urem i32 %i.ac, 6
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = extractelement <2 x i32> %i.ab, i64 0   ; 2 uses
  br i1 %i.ae, label %.lr.ph.1, label %.critedge.1

.critedge.1:                                      ; preds = %.lr.ph.1, %bb.b, %.critedge
  %.124.lcssa.1 = phi i32 [ %i.t, %.critedge ], [ %.12427.1, %.lr.ph.1 ], [ %i.ac, %bb.b ] ; 3 uses
  %.1.lcssa.1 = phi i32 [ %i.w, %.critedge ], [ %.128.1, %.lr.ph.1 ], [ %i.af, %bb.b ] ; 2 uses
  %i.ag = urem i32 %.124.lcssa.1, 5
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.2, label %.critedge.2

.lr.ph.2:                                         ; preds = %.critedge.1, %bb.c
  %.128.2 = phi i32 [ %i.aj, %bb.c ], [ %.1.lcssa.1, %.critedge.1 ] ; 3 uses
  %.12427.2 = phi i32 [ %i.al, %bb.c ], [ %.124.lcssa.1, %.critedge.1 ] ; 2 uses
  %i.ai = urem i32 %.128.2, 5
  %i.aj = udiv i32 %.128.2, 5                     ; 2 uses
  %i.ak = icmp eq i32 %i.ai, 0
  br i1 %i.ak, label %bb.c, label %.critedge.2

bb.c:                                             ; preds = %.lr.ph.2
  %i.al = udiv i32 %.12427.2, 5                   ; 3 uses
  %i.am = urem i32 %i.al, 5
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.2, label %.critedge.2

.critedge.2:                                      ; preds = %.lr.ph.2, %bb.c, %.critedge.1
  %.124.lcssa.2 = phi i32 [ %.124.lcssa.1, %.critedge.1 ], [ %.12427.2, %.lr.ph.2 ], [ %i.al, %bb.c ] ; 3 uses
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %.critedge.1 ], [ %.128.2, %.lr.ph.2 ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = and i32 %.124.lcssa.2, 3
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.3, label %.critedge.3

.lr.ph.3:                                         ; preds = %.critedge.2, %bb.d
  %.128.3 = phi i32 [ %i.at, %bb.d ], [ %.1.lcssa.2, %.critedge.2 ] ; 3 uses
  %.12427.3 = phi i32 [ %i.as, %bb.d ], [ %.124.lcssa.2, %.critedge.2 ] ; 3 uses
  %i.aq = and i32 %.128.3, 3
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.d, label %.critedge.3

bb.d:                                             ; preds = %.lr.ph.3
  %i.as = lshr i32 %.12427.3, 2                   ; 2 uses
  %i.at = lshr exact i32 %.128.3, 2               ; 2 uses
  %i.au = and i32 %.12427.3, 12
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.3, label %.critedge.3

.critedge.3:                                      ; preds = %.lr.ph.3, %bb.d, %.critedge.2
  %.124.lcssa.3 = phi i32 [ %.124.lcssa.2, %.critedge.2 ], [ %.12427.3, %.lr.ph.3 ], [ %i.as, %bb.d ] ; 3 uses
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %.critedge.2 ], [ %.128.3, %.lr.ph.3 ], [ %i.at, %bb.d ] ; 2 uses
  %i.aw = urem i32 %.124.lcssa.3, 3
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.4, label %.critedge.4

.lr.ph.4:                                         ; preds = %.critedge.3, %bb.e
  %.128.4 = phi i32 [ %i.az, %bb.e ], [ %.1.lcssa.3, %.critedge.3 ] ; 3 uses
  %.12427.4 = phi i32 [ %i.bb, %bb.e ], [ %.124.lcssa.3, %.critedge.3 ] ; 2 uses
  %i.ay = urem i32 %.128.4, 3
  %i.az = udiv i32 %.128.4, 3                     ; 2 uses
  %i.ba = icmp eq i32 %i.ay, 0
  br i1 %i.ba, label %bb.e, label %.critedge.4

bb.e:                                             ; preds = %.lr.ph.4
  %i.bb = udiv i32 %.12427.4, 3                   ; 3 uses
  %i.bc = urem i32 %i.bb, 3
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.4, label %.critedge.4

.critedge.4:                                      ; preds = %.lr.ph.4, %bb.e, %.critedge.3
  %.124.lcssa.4 = phi i32 [ %.124.lcssa.3, %.critedge.3 ], [ %.12427.4, %.lr.ph.4 ], [ %i.bb, %bb.e ] ; 3 uses
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %.critedge.3 ], [ %.128.4, %.lr.ph.4 ], [ %i.az, %bb.e ] ; 2 uses
  %i.be = and i32 %.124.lcssa.4, 1
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.5, label %.critedge.5

.lr.ph.5:                                         ; preds = %.critedge.4, %bb.f
  %.128.5 = phi i32 [ %i.bj, %bb.f ], [ %.1.lcssa.4, %.critedge.4 ] ; 3 uses
  %.12427.5 = phi i32 [ %i.bi, %bb.f ], [ %.124.lcssa.4, %.critedge.4 ] ; 3 uses
  %i.bg = and i32 %.128.5, 1
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.f, label %.critedge.5

bb.f:                                             ; preds = %.lr.ph.5
  %i.bi = lshr i32 %.12427.5, 1                   ; 2 uses
  %i.bj = lshr exact i32 %.128.5, 1               ; 2 uses
  %i.bk = and i32 %.12427.5, 2
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.5, label %.critedge.5

.critedge.5:                                      ; preds = %.lr.ph.5, %bb.f, %.critedge.4
  %.124.lcssa.5 = phi i32 [ %.124.lcssa.4, %.critedge.4 ], [ %.12427.5, %.lr.ph.5 ], [ %i.bi, %bb.f ] ; 3 uses
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %.critedge.4 ], [ %.128.5, %.lr.ph.5 ], [ %i.bj, %bb.f ] ; 3 uses
  store i32 %.124.lcssa.5, ptr %0, align 4, !tbaa !109
  store i32 %.1.lcssa.5, ptr %1, align 4, !tbaa !109
  %i.bm = icmp samesign ult i32 %.124.lcssa.5, 17
  %i.bn = icmp slt i32 %.1.lcssa.5, 17
  %i.bo = icmp samesign ugt i32 %.124.lcssa.5, 1
  %i.bp = icmp sgt i32 %.1.lcssa.5, 1
  %i.bq = select i1 %i.bo, i1 true, i1 %i.bp
  %i.br = and i1 %i.bn, %i.bq
  %narrow = select i1 %i.bm, i1 %i.br, i1 false
  %i.bs = zext i1 %narrow to i32
  ret i32 %i.bs
}

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !122
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !111
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load float, ptr %i.d, align 4, !tbaa !215
end_hunk_0
begin_hunk_1_@gui_focus
define void @gui_focus(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135 ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2064
  store i32 0, ptr %i.b, align 16, !tbaa !216
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load i32, ptr %i.e, align 16, !tbaa !137
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %bb.k, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.g = tail call i32 @dt_dev_modulegroups_test_activated(ptr noundef %i.a) #22
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2064
  store i32 %i.i, ptr %i.k, align 16, !tbaa !216
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !136 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = load i32, ptr %i.n, align 16, !tbaa !137
  %.not5156 = icmp eq i32 %i.o, 0
  br i1 %.not5156, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.p = phi ptr [ %i.m, %.thread ], [ %i.d, %bb.b ] ; 9 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.q = load ptr, ptr %.in, align 8, !tbaa !138  ; 3 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !139
  %i.s = and i32 %i.r, 2
  %i.t = icmp ne i32 %i.s, 0
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3400), align 8
  %i.v = icmp ne i32 %i.u, 0
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.x = and i32 %i.w, 1048576
  %.not52 = icmp eq i32 %i.x, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 680, ptr noundef nonnull @__FUNCTION__.gui_focus) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !140
  tail call void @dt_control_signal_connect(ptr noundef %i.y, i32 noundef 21, ptr noundef nonnull @_event_preview_updated_callback, ptr noundef nonnull %0) #22
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.aa = load <2 x float>, ptr %i.q, align 4, !tbaa !110 ; 4 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.aa, zeroinitializer
  %i.ac = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.aa, splat (float 9.900000e-01)
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.aa, <2 x float> splat (float 9.900000e-01)
  %i.ae = select <2 x i1> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.ad ; 2 uses
  store <2 x float> %i.ae, ptr %i.z, align 8, !tbaa !110
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !110
  %i.ai = fsub reassoc nsz arcp contract afn <2 x float> %i.ah, %i.aa ; 3 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ai, splat (float f0x3C23D70A)
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ae ; 2 uses
  %i.al = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.ai, %i.ak
  %i.am = select <2 x i1> %i.al, <2 x float> %i.ai, <2 x float> %i.ak
  %i.an = select <2 x i1> %i.aj, <2 x float> splat (float f0x3C23D70A), <2 x float> %i.am
  store <2 x float> %i.an, ptr %i.ag, align 8, !tbaa !110
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  store i32 0, ptr %i.ao, align 4, !tbaa !145
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !145
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !146
  store ptr %0, ptr %i.at, align 8, !tbaa !146
  tail call fastcc void @_commit_box(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %i.q, i32 noundef 0)
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !146
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i64 0, ptr %i.ax, align 8, !tbaa !147
  br label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 132
  store i32 1, ptr %i.ay, align 4, !tbaa !145
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j, %bb.g, %bb.i, %bb.h
  %i.az = phi ptr [ %i.p, %bb.h ], [ %i.m, %bb.j ], [ %i.p, %bb.g ], [ %i.p, %bb.i ], [ %i.d, %bb.b ]
  %i.ba = tail call i64 @g_get_monotonic_time() #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !148
  ret void
}

declare i32 @dt_dev_modulegroups_test_activated(ptr noundef) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_event_preview_updated_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !136 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i32 1, ptr %i.c, align 4, !tbaa !145
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !139
  %i.e = and i32 %i.d, 4
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.g = and i32 %i.f, 1048576
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef 664, ptr noundef nonnull @.str.24) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !140
  tail call void @dt_control_signal_disconnect(ptr noundef %i.h, ptr noundef nonnull @_event_preview_updated_callback, ptr noundef nonnull %1) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 0, ptr %i.i, align 8, !tbaa !147
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_commit_box(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 348
  %i.m = load i32, ptr %i.l, align 4, !tbaa !151
  %.not = icmp eq i32 %i.m, 2
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 0, ptr %i.n, align 8, !tbaa !152
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.w = load i32, ptr %i.v, align 16, !tbaa !137
  %.not121 = icmp eq i32 %i.w, 0
  br i1 %.not121, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !110
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 2760
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load <2 x i32>, ptr %i.z, align 4, !tbaa !109
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.af = sitofp <4 x i32> %i.ae to <4 x float>
  %i.ag = load <2 x float>, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ac, align 8, !tbaa !110
  %i.ai = fadd reassoc nsz arcp contract afn <2 x float> %i.ah, %i.ag
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ak = fmul reassoc nsz arcp contract afn <4 x float> %i.aj, %i.af
  store <4 x float> %i.ak, ptr %i.a, align 16, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.am = load i32, ptr %i.al, align 16, !tbaa !154
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.am to double
  %i.ao = call i32 @dt_dev_distort_backtransform_plus(ptr noundef nonnull %i.i, ptr noundef %i.y, double noundef %i.an, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 2) #22
  %.not122 = icmp eq i32 %i.ao, 0
  br i1 %.not122, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.aq = call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.ap, ptr noundef nonnull %i.y, ptr noundef nonnull %0) #22 ; 3 uses
  %.not123 = icmp eq ptr %i.aq, null
  br i1 %.not123, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 164 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !217 ; 3 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.av = load i32, ptr %i.au, align 4, !tbaa !218 ; 3 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33 ; 5 uses
  %.not124 = icmp eq i32 %i.ay, 0
  %i.az = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.av, i64 1 ; 3 uses
  br i1 %.not124, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !34 ; 3 uses
  %.not125 = icmp eq i32 %i.bc, 0
  br i1 %.not125, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp samesign uge i32 %i.as, %i.av      ; 4 uses
  %i.be = icmp slt i32 %i.ay, 0
  %i.bf = call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.bg = uitofp nneg i32 %i.bf to float          ; 2 uses
  %i.bh = call i32 @llvm.smax.i32(i32 %i.bc, i32 1)
  %i.bi = uitofp nneg i32 %i.bh to float          ; 2 uses
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bg
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bi
  %i.bl = select reassoc nsz arcp contract afn i1 %i.be, float %i.bj, float %i.bk ; 5 uses
  %i.bm = load <2 x float>, ptr %i.a, align 16, !tbaa !110 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.ab, align 8, !tbaa !110
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bm ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 4 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 1 ; 4 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bp, %i.bq
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.bp, %i.bl
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bp, %i.bl
  %i.bu = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bs, float %i.bt
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bq, %i.bl
  %i.bw = fdiv reassoc nsz arcp contract afn float %i.bq, %i.bl
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bv, float %i.bw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0108 = phi nsz float [ %i.bp, %bb.l ], [ %i.bx, %bb.m ] ; 3 uses
  %.0 = phi nsz float [ %i.bu, %bb.l ], [ %i.bq, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.by = icmp sgt i32 %i.ay, -1
  %i.bz = xor i1 %i.bd, %i.by                     ; 2 uses
  %. = select i1 %i.bz, ptr %i.bb, ptr %i.ax
  %i.ca = load i32, ptr %., align 4, !tbaa !109
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %.in126 = select i1 %i.bz, ptr %i.ax, ptr %i.bb
  %i.cb = load i32, ptr %.in126, align 4, !tbaa !109
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !109
  %i.cc = call fastcc i32 @_reduce_aligners(ptr noundef %i.b, ptr noundef %i.c)
  %.not127 = icmp eq i32 %i.cc, 0                 ; 2 uses
  br i1 %.not127, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = insertelement <2 x float> poison, float %.0108, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %.0, i64 1
  %i.cf = fptosi <2 x float> %i.ce to <2 x i32>
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !109
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !109
  %i.ci = insertelement <2 x i32> poison, i32 %i.cg, i64 0
  %i.cj = insertelement <2 x i32> %i.ci, i32 %i.ch, i64 1
  %i.ck = srem <2 x i32> %i.cf, %i.cj
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %i.cl = phi <2 x i32> [ %i.ck, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>   ; 2 uses
  %i.cn = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.cn, %i.bm ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %.0108, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %.0, i64 1
  %i.cr = fsub reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cm ; 2 uses
  %i.cs = fadd reassoc nsz arcp contract afn <2 x float> %i.cr, %i.co
  %4 = shufflevector <2 x float> %i.co, <2 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %i.a, align 16, !tbaa !110
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.cu = and i32 %i.ct, 33554432
  %.not128 = icmp eq i32 %i.cu, 0
  br i1 %.not128, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.cv = select i1 %i.bd, ptr @.str.9, ptr @.str.10
  %i.cw = select i1 %.not127, ptr @.str.93, ptr @.str.92
  %i.cx = fpext reassoc nsz arcp contract afn float %i.bl to double
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !109
  %i.cz = load i32, ptr %i.c, align 4, !tbaa !109
  %i.da = fpext reassoc nsz arcp contract afn float %.0108 to double
  %i.db = fpext reassoc nsz arcp contract afn float %.0 to double
  %i.dc = fpext <2 x float> %i.cr to <2 x double> ; 2 uses
  %i.dd = extractelement <2 x i32> %i.cl, i64 0
  %i.de = extractelement <2 x i32> %i.cl, i64 1
  %i.df = extractelement <2 x double> %i.dc, i64 0
  %i.dg = extractelement <2 x double> %i.dc, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.91, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, double noundef %i.cx, i32 noundef %i.bc, i32 noundef %i.ay, i32 noundef %i.cy, i32 noundef %i.cz, i32 noundef %i.dd, i32 noundef %i.de, double noundef %i.da, double noundef %i.db, double noundef %i.df, double noundef %i.dg) #22
  %i.dh = load <2 x i32>, ptr %i.ar, align 4, !tbaa !109
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %i.di = phi <2 x i32> [ %i.dh, %bb.p ], [ %i.ba, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j, %bb.i
  %i.dj = phi <2 x i32> [ %i.di, %bb.q ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ]
  %i.dk = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dl = sitofp <4 x i32> %i.dk to <4 x float>
  %i.dm = load <4 x float>, ptr %i.a, align 16, !tbaa !110
  %i.dn = fdiv reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dl ; 3 uses
  %i.do = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.dn, <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>
  %i.dp = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.dn, <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.dq = select <4 x i1> %i.dp, <4 x float> %i.dn, <4 x float> <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.dr = select <4 x i1> %i.do, <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>, <4 x float> %i.dq ; 5 uses
  store <4 x float> %i.dr, ptr %2, align 4, !tbaa !110
  %.not129 = icmp ne i32 %3, 0
  %i.ds = extractelement <4 x float> %i.dr, i64 0
  %i.dt = fsub reassoc nsz arcp contract afn float %i.ds, %i.o
  %i.du = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dt)
  %i.dv = fcmp reassoc nsz arcp contract afn uge float %i.du, f0x358637BD
  %or.cond = select i1 %.not129, i1 true, i1 %i.dv
  br i1 %or.cond, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = extractelement <4 x float> %i.dr, i64 1
  %i.dx = fsub reassoc nsz arcp contract afn float %i.dw, %i.q
  %i.dy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dx)
  %i.dz = fcmp reassoc nsz arcp contract afn uge float %i.dy, f0x358637BD
  br i1 %i.dz, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = extractelement <4 x float> %i.dr, i64 2
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %i.s
  %i.ec = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eb)
  %i.ed = fcmp reassoc nsz arcp contract afn uge float %i.ec, f0x358637BD
  br i1 %i.ed, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = extractelement <4 x float> %i.dr, i64 3
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ee, %i.u
  %i.eg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ef)
  %i.eh = fcmp reassoc nsz arcp contract afn uge float %i.eg, f0x358637BD
  br i1 %i.eh, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135
  call void @dt_dev_add_history_item(ptr noundef %i.ei, ptr noundef nonnull %0, i32 noundef 1) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.a, %.critedge
  ret void
}

declare i64 @g_get_monotonic_time() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !122
  tail call void @free(ptr noundef %i.b) #22
  store ptr null, ptr %i.a, align 16, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @reload_defaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !219 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1952
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1956
  %i.g = load float, ptr %i.f, align 4, !tbaa !110
  store float %i.g, ptr %i.d, align 4, !tbaa !66
  %i.h = load float, ptr %i.e, align 16, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.h, ptr %i.i, align 4, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1964
  %i.k = load float, ptr %i.j, align 4, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.k, ptr %i.l, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1960
  %i.n = load float, ptr %i.m, align 8, !tbaa !110
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.n, ptr %i.o, align 4, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 -1, ptr %i.p, align 4, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -1, ptr %i.q, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !136 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !157
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = load float, ptr %i.d, align 4, !tbaa !66 ; 2 uses
  %i.p = fsub reassoc nsz arcp contract afn float %i.n, %i.o
  store float %i.p, ptr %i.l, align 8, !tbaa !157
  store float %i.o, ptr %i.j, align 8, !tbaa !156
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load float, ptr %i.v, align 8, !tbaa !156
  %i.x = fsub reassoc nsz arcp contract afn float %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %i.x, ptr %i.y, align 8, !tbaa !157
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !159
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !161
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !67 ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ag, %i.ai
  store float %i.aj, ptr %i.ae, align 4, !tbaa !161
  store float %i.ai, ptr %i.ac, align 4, !tbaa !160
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !162
  %i.am = icmp eq ptr %1, %i.al
  br i1 %i.am, label %bb.h, label %bb.i
end_hunk_1
begin_hunk_2_@gui_post_expose:bb.a
  %or.cond67.i = and i1 %i.nw, %i.ny
  %spec.select.i = select i1 %or.cond67.i, i32 4, i32 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.053.i = phi i32 [ %spec.select.i, %bb.af ], [ 1, %bb.ae ] ; 3 uses
  %i.nz = fcmp reassoc nsz arcp contract afn oge float %5, %i.nb
  %i.oa = fadd reassoc nsz arcp contract afn float %.0.i, %i.nb
  %i.ob = fcmp reassoc nsz arcp contract afn olt float %5, %i.oa
  %or.cond69.i = and i1 %i.nz, %i.ob
  br i1 %or.cond69.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.oc = fsub reassoc nsz arcp contract afn float %5, %i.nb
  %i.od = fpext reassoc nsz arcp contract afn float %i.oc to double
  %i.oe = fpext reassoc nsz arcp contract afn float %i.nd to double
  %i.of = fmul reassoc nsz arcp contract afn double %i.oe, 5.000000e-01
  %i.og = fcmp reassoc nsz arcp contract afn ogt double %i.of, %i.od
  br i1 %i.og, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.oh = or disjoint i32 %.053.i, 2
  br label %_gui_get_grab.exit

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.oi = fcmp reassoc nsz arcp contract afn ole float %5, %i.ne
  %i.oj = fsub reassoc nsz arcp contract afn float %i.ne, %.0.i
  %i.ok = fcmp reassoc nsz arcp contract afn ogt float %5, %i.oj
  %or.cond71.i = and i1 %i.oi, %i.ok
  %i.ol = or disjoint i32 %.053.i, 8
  %spec.select357 = select i1 %or.cond71.i, i32 %i.ol, i32 %.053.i
  br label %_gui_get_grab.exit

_gui_get_grab.exit:                               ; preds = %bb.aj, %bb.ai, %bb.y
  %i.om = phi i32 [ %i.mu, %bb.y ], [ %spec.select357, %bb.aj ], [ %i.oh, %bb.ai ]
  switch i32 %i.om, label %_gui_get_grab.exit.thread [
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
    i32 8, label %bb.ao
    i32 12, label %bb.ap
    i32 6, label %bb.aq
    i32 9, label %bb.ar
  ]

bb.ak:                                            ; preds = %_gui_get_grab.exit
  %i.on = load float, ptr %i.bj, align 8, !tbaa !156
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, %2
  %i.op = fpext reassoc nsz arcp contract afn float %i.oo to double
  %i.oq = load float, ptr %i.jd, align 4, !tbaa !160
  %i.or = fmul reassoc nsz arcp contract afn float %i.oq, %3
  %i.os = fpext reassoc nsz arcp contract afn float %i.or to double
  %i.ot = load float, ptr %i.jm, align 4, !tbaa !161
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %3
  %i.ov = fpext reassoc nsz arcp contract afn float %i.ou to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.op, double noundef %i.os, double noundef %i.iy, double noundef %i.ov) #22
  br label %_gui_get_grab.exit.thread

bb.al:                                            ; preds = %_gui_get_grab.exit
  %i.ow = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, %2
  %i.oy = fpext reassoc nsz arcp contract afn float %i.ox to double
  %i.oz = load float, ptr %i.jd, align 4, !tbaa !160
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %3
  %i.pb = fpext reassoc nsz arcp contract afn float %i.pa to double
  %i.pc = load float, ptr %i.js, align 8, !tbaa !157
  %i.pd = fmul reassoc nsz arcp contract afn float %i.pc, %2
  %i.pe = fpext reassoc nsz arcp contract afn float %i.pd to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.oy, double noundef %i.pb, double noundef %i.pe, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.am:                                            ; preds = %_gui_get_grab.exit
  %i.pf = load float, ptr %i.bj, align 8, !tbaa !156
  %i.pg = fmul reassoc nsz arcp contract afn float %i.pf, %2
  %i.ph = fpext reassoc nsz arcp contract afn float %i.pg to double
  %i.pi = load float, ptr %i.jd, align 4, !tbaa !160
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, %3
  %i.pk = fpext reassoc nsz arcp contract afn float %i.pj to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.ph, double noundef %i.pk, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.an:                                            ; preds = %_gui_get_grab.exit
  %i.pl = load float, ptr %i.bj, align 8, !tbaa !156
  %i.pm = load float, ptr %i.js, align 8, !tbaa !157
  %i.pn = fadd reassoc nsz arcp contract afn float %i.pm, %i.pl
  %i.po = fmul reassoc nsz arcp contract afn float %i.pn, %2
  %i.pp = fpext reassoc nsz arcp contract afn float %i.po to double
  %i.pq = fsub reassoc nsz arcp contract afn double %i.pp, %i.iy
  %i.pr = load float, ptr %i.jd, align 4, !tbaa !160
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pr, %3
  %i.pt = fpext reassoc nsz arcp contract afn float %i.ps to double
  %i.pu = load float, ptr %i.jm, align 4, !tbaa !161
  %i.pv = fmul reassoc nsz arcp contract afn float %i.pu, %3
  %i.pw = fpext reassoc nsz arcp contract afn float %i.pv to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.pq, double noundef %i.pt, double noundef %i.iy, double noundef %i.pw) #22
  br label %_gui_get_grab.exit.thread

bb.ao:                                            ; preds = %_gui_get_grab.exit
  %i.px = load float, ptr %i.bj, align 8, !tbaa !156
  %i.py = fmul reassoc nsz arcp contract afn float %i.px, %2
  %i.pz = fpext reassoc nsz arcp contract afn float %i.py to double
  %i.qa = load float, ptr %i.jd, align 4, !tbaa !160
  %i.qb = load float, ptr %i.jm, align 4, !tbaa !161
  %i.qc = fadd reassoc nsz arcp contract afn float %i.qb, %i.qa
  %i.qd = fmul reassoc nsz arcp contract afn float %i.qc, %3
  %i.qe = fpext reassoc nsz arcp contract afn float %i.qd to double
  %i.qf = fsub reassoc nsz arcp contract afn double %i.qe, %i.iy
  %i.qg = load float, ptr %i.js, align 8, !tbaa !157
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qg, %2
  %i.qi = fpext reassoc nsz arcp contract afn float %i.qh to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.pz, double noundef %i.qf, double noundef %i.qi, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.ap:                                            ; preds = %_gui_get_grab.exit
  %i.qj = load <2 x float>, ptr %i.bj, align 8, !tbaa !110
  %i.qk = load <2 x float>, ptr %i.js, align 8, !tbaa !110
  %i.ql = fadd reassoc nsz arcp contract afn <2 x float> %i.qk, %i.qj
  %i.qm = insertelement <2 x float> poison, float %2, i64 0
  %i.qn = insertelement <2 x float> %i.qm, float %3, i64 1
  %i.qo = fmul reassoc nsz arcp contract afn <2 x float> %i.ql, %i.qn
  %i.qp = fpext <2 x float> %i.qo to <2 x double> ; 2 uses
  %i.qq = extractelement <2 x double> %i.qp, i64 0
  %i.qr = fsub reassoc nsz arcp contract afn double %i.qq, %i.iy
  %i.qs = extractelement <2 x double> %i.qp, i64 1
  %i.qt = fsub reassoc nsz arcp contract afn double %i.qs, %i.iy
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.qr, double noundef %i.qt, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.aq:                                            ; preds = %_gui_get_grab.exit
  %i.qu = load float, ptr %i.bj, align 8, !tbaa !156
  %i.qv = load float, ptr %i.js, align 8, !tbaa !157
  %i.qw = fadd reassoc nsz arcp contract afn float %i.qv, %i.qu
  %i.qx = fmul reassoc nsz arcp contract afn float %i.qw, %2
  %i.qy = fpext reassoc nsz arcp contract afn float %i.qx to double
  %i.qz = fsub reassoc nsz arcp contract afn double %i.qy, %i.iy
  %i.ra = load float, ptr %i.jd, align 4, !tbaa !160
  %i.rb = fmul reassoc nsz arcp contract afn float %i.ra, %3
  %i.rc = fpext reassoc nsz arcp contract afn float %i.rb to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.qz, double noundef %i.rc, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

bb.ar:                                            ; preds = %_gui_get_grab.exit
  %i.rd = load float, ptr %i.bj, align 8, !tbaa !156
  %i.re = fmul reassoc nsz arcp contract afn float %i.rd, %2
  %i.rf = fpext reassoc nsz arcp contract afn float %i.re to double
  %i.rg = load float, ptr %i.jd, align 4, !tbaa !160
  %i.rh = load float, ptr %i.jm, align 4, !tbaa !161
  %i.ri = fadd reassoc nsz arcp contract afn float %i.rh, %i.rg
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, %3
  %i.rk = fpext reassoc nsz arcp contract afn float %i.rj to double
  %i.rl = fsub reassoc nsz arcp contract afn double %i.rk, %i.iy
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.rf, double noundef %i.rl, double noundef %i.iy, double noundef %i.iy) #22
  br label %_gui_get_grab.exit.thread

_gui_get_grab.exit.thread:                        ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %_gui_get_grab.exit, %bb.ar
  call void @cairo_stroke(ptr noundef %1) #22
  br label %bb.as

bb.as:                                            ; preds = %_gui_get_grab.exit.thread, %bb.k, %bb.c, %bb.b
  ret void
}

declare i32 @dt_iop_color_picker_is_visible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_set_max_clip(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !136 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !150 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.m = load i64, ptr %i.l, align 16, !tbaa !252
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 348
  %i.p = load i32, ptr %i.o, align 4, !tbaa !151
  %.not = icmp eq i32 %i.p, 2
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 2760
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153  ; 3 uses
  %i.s = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef nonnull %i.i, ptr noundef %i.r, ptr noundef nonnull %0) #22 ; 2 uses
  %.not72 = icmp eq ptr %i.s, null
  br i1 %.not72, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %1 = load <2 x i32>, ptr %i.t, align 4, !tbaa !109
  %2 = sitofp <2 x i32> %1 to <2 x float>         ; 3 uses
  %3 = shufflevector <2 x float> zeroinitializer, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %i.a, align 16, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.v = load float, ptr %i.e, align 4, !tbaa !66
  %i.w = extractelement <2 x float> %2, i64 0     ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.w
  store float %i.x, ptr %i.u, align 16, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !67
  %i.ab = extractelement <2 x float> %2, i64 1    ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, %i.ab
  store float %i.ac, ptr %i.y, align 4, !tbaa !110
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !68
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.w
  store float %i.ag, ptr %i.ad, align 8, !tbaa !110
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !69
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ab
  store float %i.ak, ptr %i.ah, align 4, !tbaa !110
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.an = load i32, ptr %i.am, align 16, !tbaa !154
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.an to double
  %i.ap = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.al, ptr noundef %i.r, double noundef %i.ao, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #22
  %.not73 = icmp eq i32 %i.ap, 0
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 156
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.at = load <2 x i32>, ptr %i.aq, align 4, !tbaa !109
  %i.au = shufflevector <2 x i32> %i.at, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = sitofp <4 x i32> %i.au to <4 x float>   ; 2 uses
  %i.aw = load <2 x float>, ptr %i.a, align 16, !tbaa !110 ; 2 uses
  %i.ax = load <2 x float>, ptr %4, align 8, !tbaa !110
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %i.aw
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = fdiv reassoc nsz arcp contract afn <4 x float> %i.az, %i.av ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ba, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ba, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bd = shufflevector <4 x i1> %i.bb, <4 x i1> %i.bc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.be = select <4 x i1> %i.bd, <4 x float> %i.ba, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  store <4 x float> %i.be, ptr %i.ar, align 8, !tbaa !110
  %i.bf = load <2 x float>, ptr %i.u, align 16, !tbaa !110 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.ad, align 8, !tbaa !110
  %i.bh = fsub reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bf
  %i.bi = shufflevector <2 x float> %i.bf, <2 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bj = fdiv reassoc nsz arcp contract afn <4 x float> %i.bi, %i.av ; 3 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bj, %i.be
  %i.bl = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bj, %i.be
  %i.bm = shufflevector <4 x i1> %i.bk, <4 x i1> %i.bl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bn = select <4 x i1> %i.bm, <4 x float> %i.bj, <4 x float> %i.be
  store <4 x float> %i.bn, ptr %i.as, align 8, !tbaa !110
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !150
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 416
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !252
  store i64 %i.bs, ptr %i.f, align 8, !tbaa !147
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %.0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.2
}

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_fill_rule(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare i32 @dt_dev_get_processed_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_clip_extents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_draw_rounded_rectangle(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @dt_guides_draw(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !136 ; 53 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !145
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !150
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %i.l = load i32, ptr %i.k, align 16, !tbaa !177
  %.not307 = icmp eq i32 %i.l, 0
  br i1 %.not307, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.m = call i32 @dt_dev_get_preview_size(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1432
  %i.p = load double, ptr %i.o, align 8, !tbaa !183
  %i.q = fmul reassoc nsz arcp contract afn double %i.p, 3.000000e+01
  %i.r = fpext reassoc nsz arcp contract afn float %5 to double
  %i.s = fdiv reassoc nsz arcp contract afn double %i.q, %i.r
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float ; 2 uses
  %i.u = load float, ptr %i.a, align 4, !tbaa !110
  %i.v = load float, ptr %i.b, align 4, !tbaa !110
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 7 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !156 ; 6 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %1, %i.x
  br i1 %i.y, label %_gui_get_grab.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !157 ; 3 uses
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.x ; 3 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %1, %i.ab
  br i1 %i.ac, label %_gui_get_grab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !160 ; 6 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %2, %i.ae
  br i1 %i.af, label %_gui_get_grab.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !161 ; 3 uses
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ae ; 3 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %2, %i.ai
  br i1 %i.aj, label %_gui_get_grab.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.t, %i.u
  %i.al = fdiv reassoc nsz arcp contract afn float %i.t, %i.v
  %i.am = insertelement <4 x float> poison, float %i.x, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.ae, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.aa, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.ah, i64 3
  %i.aq = fcmp reassoc nsz arcp contract afn une <4 x float> %i.ap, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.ar = bitcast <4 x i1> %i.aq to i4
  %.not363 = icmp eq i4 %i.ar, 0                  ; 2 uses
  %.052.i = select nsz i1 %.not363, float 4.500000e-01, float %i.ak ; 2 uses
  %.0.i = select nsz i1 %.not363, float 4.500000e-01, float %i.al ; 2 uses
  %i.as = fcmp reassoc nsz arcp contract afn oge float %1, %i.x
  %i.at = fadd reassoc nsz arcp contract afn float %.052.i, %i.x
  %i.au = fcmp reassoc nsz arcp contract afn olt float %1, %i.at
  %or.cond65.i = and i1 %i.as, %i.au
  br i1 %or.cond65.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = fsub reassoc nsz arcp contract afn float %1, %i.x
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double
  %i.ax = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, 5.000000e-01
  %i.az = fcmp reassoc nsz arcp contract afn ogt double %i.ay, %i.aw
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = fcmp reassoc nsz arcp contract afn ole float %1, %i.ab
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ab, %.052.i
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %1, %i.bb
  %or.cond67.i = and i1 %i.ba, %i.bc
  %spec.select.i = select i1 %or.cond67.i, i32 4, i32 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.053.i = phi i32 [ %spec.select.i, %bb.i ], [ 1, %bb.h ] ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn oge float %2, %i.ae
  %i.be = fadd reassoc nsz arcp contract afn float %.0.i, %i.ae
  %i.bf = fcmp reassoc nsz arcp contract afn olt float %2, %i.be
  %or.cond69.i = and i1 %i.bd, %i.bf
  br i1 %or.cond69.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bg = fsub reassoc nsz arcp contract afn float %2, %i.ae
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bg to double
  %i.bi = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bi, 5.000000e-01
  %i.bk = fcmp reassoc nsz arcp contract afn ogt double %i.bj, %i.bh
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = or disjoint i32 %.053.i, 2
  br label %_gui_get_grab.exit

bb.m:                                             ; preds = %bb.k, %bb.j
end_hunk_2
