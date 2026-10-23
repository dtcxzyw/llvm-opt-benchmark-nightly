Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rotatepixels?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@distort_transform:bb.a
  ret i32 1

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.am, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.018 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !33
  %i.ah = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.n ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ai, %i.o
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, %i.q
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.aj
  store <2 x float> %i.al, ptr %i.af, align 4, !tbaa !33
  %i.am = add nuw i64 %.018, 2                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.a
  br i1 %i.an, label %scalar.ph, label %._crit_edge, !llvm.loop !46
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load float, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load float, ptr %i.d, align 8, !tbaa !30
  %i.f = fdiv reassoc nsz arcp contract afn float %i.c, %i.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 16, !tbaa !31 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !33 ; 3 uses
  %i.k = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.h, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !33 ; 3 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.m = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %i.n = uitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.f, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n ; 3 uses
  %i.r = add i64 %i.a, -2                         ; 2 uses
  %i.s = lshr exact i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %i.u = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <4 x float> %i.k, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat23 = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat25 = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat27 = shufflevector <4 x float> %i.k, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat29 = shufflevector <2 x float> %i.q, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat31 = shufflevector <2 x float> %i.q, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.v, align 4, !tbaa !33 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec32 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %strided.vec
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat23, %strided.vec32
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %i.x
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat27, %strided.vec32
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat25, %strided.vec
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %i.z, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %broadcast.splat29
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, %broadcast.splat31
  %interleaved.vec = shufflevector <8 x float> %i.ac, <8 x float> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.v, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret i32 1

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.am, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !33 ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %i.ag
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.j, %i.ai
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %i.ah, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.q
  store <2 x float> %i.al, ptr %i.af, align 4, !tbaa !33
  %i.am = add nuw i64 %.019, 2                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.a
  br i1 %i.an, label %scalar.ph, label %._crit_edge, !llvm.loop !48
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37
  %i.g = sext i32 %i.f to i64
  %i.h = mul i64 %i.d, %i.g
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.h, i1 false)
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef nonnull @__FUNCTION__.distort_mask, ptr noundef nonnull @.str.3) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !38
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load float, ptr %i.e, align 8, !tbaa !30
  %i.g = fdiv reassoc nsz arcp contract afn float %i.d, %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = uitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.k = fmul reassoc nsz arcp contract afn float %i.g, %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.k
  %i.p = tail call ptr @dt_interpolation_new(i32 noundef 2) #19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
  %i.s = uitofp reassoc nsz arcp contract afn i64 %i.r to float
  %i.t = fmul reassoc nsz arcp contract afn float %i.g, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = insertelement <2 x float> poison, float %i.k, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.o, i64 1 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.w
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, splat (float 2.000000e+00)
  %i.z = tail call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.y)
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fsub reassoc nsz arcp contract afn <2 x float> %i.z, %i.ab
  %i.ad = fptosi <2 x float> %i.ac to <2 x i32>
  %i.ae = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ad, <2 x i32> zeroinitializer)
  %i.af = and <2 x i32> %i.ae, splat (i32 2147483646)
  store <2 x i32> %i.af, ptr %i.u, align 4, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !38
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load float, ptr %i.c, align 8, !tbaa !30
  %i.e = fdiv reassoc nsz arcp contract afn float %i.b, %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.h, align 16, !tbaa !31 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !33
  %i.n = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %i.o = uitofp <2 x i32> %i.n to <2 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i32, ptr %i.f, align 4, !tbaa !49
  %i.s = load <2 x i32>, ptr %2, align 4, !tbaa !32 ; 2 uses
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.r to float
  %i.u = load <2 x i32>, ptr %i.g, align 4, !tbaa !32
  %i.v = add nsw <2 x i32> %i.u, %i.s             ; 2 uses
  %i.w = shufflevector <2 x i32> %i.s, <2 x i32> %i.v, <2 x i32> <i32 0, i32 3>
  %i.x = sitofp <2 x i32> %i.w to <2 x float>     ; 4 uses
  %i.y = sitofp <2 x i32> %i.v to <2 x float>     ; 3 uses
  %i.z = load <2 x float>, ptr %i.k, align 4, !tbaa !33 ; 4 uses
  %i.aa = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, %i.o ; 4 uses
  %i.ad = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.m, i64 1 ; 3 uses
  %i.af = insertelement <2 x float> %i.y, float %i.t, i64 1 ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.af ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.ah
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.x ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %4 = shufflevector <2 x float> %i.af, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %5 = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %4
  %i.an = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %5
  %i.ao = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.an ; 2 uses
  %i.ap = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ao, <2 x float> splat (float f0x7F7FFFFF))
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ao, <2 x float> splat (float f0xFF7FFFFF))
  %i.ar = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, %i.y
  %i.au = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai
  %i.av = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.au ; 2 uses
  %i.aw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ap, <2 x float> %i.av)
  %i.ax = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aq, <2 x float> %i.av)
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.al, %i.ak
  %i.az = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ay ; 2 uses
  %i.ba = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aw, <2 x float> %i.az)
  %i.bb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ax, <2 x float> %i.az)
  %i.bc = fsub reassoc nsz arcp contract afn <2 x float> %i.at, %i.as
  %i.bd = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.bc ; 2 uses
  %i.be = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ba, <2 x float> %i.bd)
  %i.bf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bb, <2 x float> %i.bd)
  %i.bg = tail call ptr @dt_interpolation_new(i32 noundef 2) #19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !44
  %i.bj = uitofp reassoc nsz arcp contract afn i64 %i.bi to float
  %i.bk = fmul reassoc nsz arcp contract afn float %i.e, %i.bj
  %i.bl = load float, ptr %i.a, align 4, !tbaa !39
  %i.bm = load <2 x i32>, ptr %i.p, align 16, !tbaa !32
  %i.bn = sitofp <2 x i32> %i.bm to <2 x float>
  %i.bo = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bn ; 3 uses
  %i.br = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = fsub reassoc nsz arcp contract afn <2 x float> %i.be, %i.bs
  %i.bu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bt, <2 x float> zeroinitializer)
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>   ; 2 uses
  %i.bw = uitofp nneg <2 x i32> %i.bv to <2 x float> ; 2 uses
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bs, %i.bf
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.by, %i.bw
  %i.ca = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bx, <2 x float> %i.bz)
  %i.cb = fptosi <2 x float> %i.ca to <2 x i32>   ; 2 uses
  %i.cc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.bq)
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>
  %i.ce = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bv, <2 x i32> %i.cd) ; 2 uses
  store <2 x i32> %i.ce, ptr %3, align 4, !tbaa !32
  %i.cf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bq)
  %i.cg = fptosi <2 x float> %i.cf to <2 x i32>
  %i.ch = sub nsw <2 x i32> %i.cg, %i.ce          ; 2 uses
  %i.ci = icmp slt <2 x i32> %i.ch, %i.cb
  %i.cj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cb, <2 x i32> splat (i32 1))
  %i.ck = select <2 x i1> %i.ci, <2 x i32> %i.ch, <2 x i32> %i.cj
  store <2 x i32> %i.ck, ptr %i.q, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load float, ptr %i.h, align 8, !tbaa !30
  %i.j = fdiv reassoc nsz arcp contract afn float %i.g, %i.i
  %i.k = tail call ptr @dt_interpolation_new(i32 noundef 2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %bb.a
  %i.o = sext i32 %i.b to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.p, align 4, !tbaa !36   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph45.split.preheader, label %._crit_edge46

.lr.ph45.split.preheader:                         ; preds = %.lr.ph45
  %i.u = insertelement <2 x float> poison, float %i.j, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph45.split

._crit_edge46:                                    ; preds = %._crit_edge, %.lr.ph45, %bb.a
  ret void

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %._crit_edge
  %i.w = phi i32 [ %i.af, %._crit_edge ], [ %i.m, %.lr.ph45.split.preheader ]
  %i.x = phi i32 [ %i.ag, %._crit_edge ], [ %i.s, %.lr.ph45.split.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph45.split.preheader ] ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph45.split
  %i.z = mul nsw i64 %indvars.iv, %i.o
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ab
  %i.ad = trunc nsw i64 %indvars.iv to i32
  %i.ae = insertelement <2 x i32> poison, i32 %i.ad, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.l, align 4, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph45.split
  %i.af = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.w, %.lr.ph45.split ] ; 2 uses
  %i.ag = phi i32 [ %i.bi, %._crit_edge.loopexit ], [ %i.x, %.lr.ph45.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = sext i32 %i.af to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph45.split, label %._crit_edge46, !llvm.loop !50

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.042 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03041 = phi ptr [ %i.bh, %.lr.ph ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %.val = load ptr, ptr %i.q, align 16, !tbaa !31 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.al = load <2 x i32>, ptr %.val, align 4, !tbaa !32
  %i.am = uitofp <2 x i32> %i.al to <2 x float>
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.am ; 2 uses
  %i.ao = load <2 x i32>, ptr %5, align 4, !tbaa !32
  %i.ap = insertelement <2 x i32> %i.ae, i32 %.042, i64 0
  %i.aq = add nsw <2 x i32> %i.ao, %i.ap
  %i.ar = sitofp <2 x i32> %i.aq to <2 x float>   ; 2 uses
  %i.as = load <2 x float>, ptr %i.aj, align 4, !tbaa !33
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.as, %i.ar
  %i.au = load <2 x i32>, ptr %4, align 4, !tbaa !32
  %i.av = sitofp <2 x i32> %i.au to <2 x float>   ; 2 uses
  %i.aw = shufflevector <2 x float> %i.an, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ax = fadd reassoc nsz arcp contract afn <2 x float> %i.at, %i.aw ; 2 uses
  %shift = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %shift
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = load <2 x float>, ptr %i.ak, align 4, !tbaa !33
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.az, %i.ar
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.bc = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bb ; 2 uses
  %shift53 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub reassoc nsz arcp contract afn <2 x float> %shift53, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.be = load i32, ptr %i.c, align 4, !tbaa !36
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !37
  tail call void @dt_interpolation_compute_pixel4c(ptr noundef %i.k, ptr noundef %2, ptr noundef %.03041, float noundef %i.ay, float noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.e) #19
  %i.bg = add nuw nsw i32 %.042, 1                ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.03041, i64 %i.o
  %i.bi = load i32, ptr %i.p, align 4, !tbaa !36  ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge.loopexit
}

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31  ; 6 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !54     ; 2 uses
  store i32 %i.c, ptr %i.b, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !57
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, f0x3C8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.i) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.j = fneg reassoc nsz arcp contract afn float %sin
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %cos, ptr %i.k, align 4, !tbaa !33
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %sin, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !33
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.j, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %cos, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !33
  %i.l = icmp eq i32 %i.c, 0
  %i.m = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.n, align 16, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
end_hunk_0
