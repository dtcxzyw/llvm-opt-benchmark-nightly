Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_enlargecanvas?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@modify_roi_out:bb.a
  %i.i = fmul reassoc nsz arcp contract afn <4 x float> %i.g, %i.h ; 4 uses
  %i.j = extractelement <4 x float> %i.i, i64 0
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = extractelement <4 x float> %i.i, i64 1
  %i.m = fptosi float %i.l to i32                 ; 2 uses
  %i.n = extractelement <4 x float> %i.i, i64 2
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %i.p = extractelement <4 x float> %i.i, i64 3
  %i.q = fptosi float %i.p to i32                 ; 2 uses
  %i.r = icmp sgt i32 %i.k, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  %i.u = add nsw i32 %i.t, %i.k
  store i32 %i.u, ptr %i.s, align 4, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = icmp sgt i32 %i.m, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !44
  %i.y = add nsw i32 %i.x, %i.m
  store i32 %i.y, ptr %i.w, align 4, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = icmp sgt i32 %i.o, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.ac = add nsw i32 %i.ab, %i.o
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = icmp sgt i32 %i.q, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45 ; 2 uses
  br i1 %i.ad, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ag = add nsw i32 %i.af, %i.q                 ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.ah = phi i32 [ %i.ag, %bb.h ], [ %i.af, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !44
  %i.ak = load <2 x i32>, ptr %i.c, align 4, !tbaa !41
  %i.al = mul nsw <2 x i32> %i.ak, splat (i32 3)  ; 2 uses
  %i.am = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.an = insertelement <2 x i32> %i.am, i32 %i.ah, i64 1 ; 2 uses
  %i.ao = icmp sgt <2 x i32> %i.an, %i.al
  %i.ap = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.an, <2 x i32> splat (i32 5))
  %i.aq = select <2 x i1> %i.ao, <2 x i32> %i.al, <2 x i32> %i.ap
  store <2 x i32> %i.aq, ptr %i.ai, align 4, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !68
  %i.g = load <2 x i32>, ptr %i.c, align 4, !tbaa !41
  %i.h = load <2 x i32>, ptr %i.d, align 16, !tbaa !41
  %i.i = load float, ptr %i.b, align 4, !tbaa !47 ; 3 uses
  %i.j = fcmp reassoc nsz arcp contract afn ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !48
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.i
  %i.n = fdiv reassoc nsz arcp contract afn float %i.i, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.072 = phi nsz float [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !49 ; 3 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !50
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, %i.p
  %i.u = fdiv reassoc nsz arcp contract afn float %i.p, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi nsz float [ %i.u, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.v = sub nsw <2 x i32> %i.g, %i.h
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = sitofp reassoc nsz arcp contract afn <2 x i32> %i.v to <2 x float>
  %i.y = insertelement <2 x float> poison, float %i.f, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.x
  %i.ab = insertelement <2 x float> poison, float %.072, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %.0, i64 1
  %i.ad = fmul reassoc nsz arcp contract afn <2 x float> %i.aa, %i.ac
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>   ; 2 uses
  %i.af = load <2 x i32>, ptr %2, align 4, !tbaa !41
  %i.ag = sub nsw <2 x i32> %i.af, %i.ae          ; 2 uses
  %i.ah = icmp sgt <2 x i32> %i.ag, zeroinitializer
  %i.ai = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ag to <2 x float>
  %i.aj = fptosi <2 x float> %i.ai to <2 x i32>
  %i.ak = select <2 x i1> %i.ah, <2 x i32> %i.aj, <2 x i32> zeroinitializer ; 2 uses
  store <2 x i32> %i.ak, ptr %3, align 4, !tbaa !41
  %i.al = load <2 x i32>, ptr %2, align 4, !tbaa !41
  %i.am = sub nsw <2 x i32> %i.ae, %i.al
  %i.an = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.am, <2 x i32> zeroinitializer)
  %i.ao = uitofp nneg <2 x i32> %i.an to <2 x float>
  %i.ap = load <2 x i32>, ptr %i.w, align 4, !tbaa !41
  %i.aq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ap to <2 x float>
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ao
  %i.as = fptosi <2 x float> %i.ar to <2 x i32>   ; 3 uses
  store <2 x i32> %i.as, ptr %i.w, align 4, !tbaa !41
  %i.at = load <2 x i32>, ptr %i.d, align 16, !tbaa !41
  %i.au = sitofp reassoc nsz arcp contract afn <2 x i32> %i.at to <2 x float>
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.z, %i.au ; 3 uses
  %i.aw = add nsw <2 x i32> %i.ak, %i.as
  %i.ax = sitofp reassoc nsz arcp contract afn <2 x i32> %i.aw to <2 x float>
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %i.av
  %i.az = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.ay) ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.az, zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.az, <2 x float> zeroinitializer
  %i.bc = sitofp reassoc nsz arcp contract afn <2 x i32> %i.as to <2 x float>
  %i.bd = fsub reassoc nsz arcp contract afn <2 x float> %i.bc, %i.bb
  %i.be = fptosi <2 x float> %i.bd to <2 x i32>
  %i.bf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.be, <2 x i32> splat (i32 1))
  %i.bg = uitofp nneg <2 x i32> %i.bf to <2 x float> ; 2 uses
  %i.bh = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.av, %i.bg
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.av, <2 x float> %i.bg
  %i.bj = fptosi <2 x float> %i.bi to <2 x i32>
  store <2 x i32> %i.bj, ptr %i.w, align 4, !tbaa !41
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define noundef i32 @distort_transform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !41
  %i.f = load <2 x i32>, ptr %i.d, align 16, !tbaa !41
  %i.g = sub nsw <2 x i32> %i.e, %i.f
  %i.h = load float, ptr %i.b, align 4, !tbaa !52 ; 3 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !53
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, %i.h
  %i.m = fdiv reassoc nsz arcp contract afn float %i.h, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.030 = phi nsz float [ %i.m, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !54 ; 3 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !55
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.o
  %i.t = fdiv reassoc nsz arcp contract afn float %i.o, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi nsz float [ %i.t, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.u = sitofp reassoc nsz arcp contract afn <2 x i32> %i.g to <2 x float>
  %i.v = insertelement <2 x float> poison, float %.030, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.029, i64 1
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.u
  %i.y = fptosi <2 x float> %i.x to <2 x i32>     ; 2 uses
  %4 = icmp sgt <2 x i32> %i.y, zeroinitializer   ; 2 uses
  %5 = extractelement <2 x i1> %4, i64 0
  %6 = extractelement <2 x i1> %4, i64 1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.z = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.aa = sitofp reassoc nsz arcp contract afn <2 x i32> %i.y to <2 x float> ; 5 uses
  %i.ab = add i64 %i.z, -2                        ; 3 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = add nuw i64 %i.ac, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.ab, 30
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, -16                     ; 4 uses
  %i.af = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat38 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl nuw i64 %index, 1                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.ah, align 64, !tbaa !42 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec39 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec40 = load <16 x float>, ptr %i.aj, align 64, !tbaa !42 ; 2 uses
  %strided.vec41 = shufflevector <16 x float> %wide.vec40, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec42 = shufflevector <16 x float> %wide.vec40, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec41, %broadcast.splat
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec39, %broadcast.splat38
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec42, %broadcast.splat38
  %interleaved.vec = shufflevector <8 x float> %i.ak, <8 x float> %i.am, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ah, align 64, !tbaa !42
  %interleaved.vec43 = shufflevector <8 x float> %i.al, <8 x float> %i.an, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec43, ptr %i.aj, align 64, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.ad, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec44, 1
  %broadcast.splat46 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat48 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index49, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec50 = load <8 x float>, ptr %i.aq, align 32, !tbaa !42 ; 2 uses
  %strided.vec51 = shufflevector <8 x float> %wide.vec50, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec52 = shufflevector <8 x float> %wide.vec50, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ar = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec51, %broadcast.splat46
  %i.as = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec52, %broadcast.splat48
  %interleaved.vec53 = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec53, ptr %i.aq, align 32, !tbaa !42
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next54, %n.vec44
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.ad, %n.vec44
  br i1 %cmp.n55, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033.ph = phi i64 [ 0, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.033 = phi i64 [ %i.ax, %vec.epilog.scalar.ph ], [ %.033.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.033 ; 2 uses
  %i.av = load <2 x float>, ptr %i.au, align 8, !tbaa !42
  %i.aw = fadd reassoc nsz arcp contract afn <2 x float> %i.av, %i.aa
  store <2 x float> %i.aw, ptr %i.au, align 8, !tbaa !42
  %i.ax = add nuw i64 %.033, 2                    ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.z
  br i1 %i.ay, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.e
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !41
  %i.f = load <2 x i32>, ptr %i.d, align 16, !tbaa !41
  %i.g = sub nsw <2 x i32> %i.e, %i.f
  %i.h = load float, ptr %i.b, align 4, !tbaa !52 ; 3 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !53
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, %i.h
  %i.m = fdiv reassoc nsz arcp contract afn float %i.h, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.030 = phi nsz float [ %i.m, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !54 ; 3 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !55
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.o
  %i.t = fdiv reassoc nsz arcp contract afn float %i.o, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi nsz float [ %i.t, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.u = sitofp reassoc nsz arcp contract afn <2 x i32> %i.g to <2 x float>
  %i.v = insertelement <2 x float> poison, float %.030, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.029, i64 1
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.u
  %i.y = fptosi <2 x float> %i.x to <2 x i32>     ; 2 uses
  %4 = icmp sgt <2 x i32> %i.y, zeroinitializer   ; 2 uses
  %5 = extractelement <2 x i1> %4, i64 0
  %6 = extractelement <2 x i1> %4, i64 1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.z = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.aa = sitofp reassoc nsz arcp contract afn <2 x i32> %i.y to <2 x float> ; 5 uses
  %i.ab = add i64 %i.z, -2                        ; 3 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = add nuw i64 %i.ac, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.ab, 30
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, -16                     ; 4 uses
  %i.af = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat38 = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl nuw i64 %index, 1                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.ah, align 64, !tbaa !42 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec39 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec40 = load <16 x float>, ptr %i.aj, align 64, !tbaa !42 ; 2 uses
  %strided.vec41 = shufflevector <16 x float> %wide.vec40, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec42 = shufflevector <16 x float> %wide.vec40, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.al = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec41, %broadcast.splat
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec39, %broadcast.splat38
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec42, %broadcast.splat38
  %interleaved.vec = shufflevector <8 x float> %i.ak, <8 x float> %i.am, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ah, align 64, !tbaa !42
  %interleaved.vec43 = shufflevector <8 x float> %i.al, <8 x float> %i.an, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec43, ptr %i.aj, align 64, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.ad, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec44, 1
  %broadcast.splat46 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat48 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index49, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec50 = load <8 x float>, ptr %i.aq, align 32, !tbaa !42 ; 2 uses
  %strided.vec51 = shufflevector <8 x float> %wide.vec50, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec52 = shufflevector <8 x float> %wide.vec50, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ar = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec51, %broadcast.splat46
  %i.as = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec52, %broadcast.splat48
  %interleaved.vec53 = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec53, ptr %i.aq, align 32, !tbaa !42
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next54, %n.vec44
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.ad, %n.vec44
  br i1 %cmp.n55, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033.ph = phi i64 [ 0, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.033 = phi i64 [ %i.ax, %vec.epilog.scalar.ph ], [ %.033.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.033 ; 2 uses
  %i.av = load <2 x float>, ptr %i.au, align 8, !tbaa !42
  %i.aw = fsub reassoc nsz arcp contract afn <2 x float> %i.av, %i.aa
  store <2 x float> %i.aw, ptr %i.au, align 8, !tbaa !42
  %i.ax = add nuw i64 %.033, 2                    ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.z
  br i1 %i.ay, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.e
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
_compute_pos.exit:
  %6 = alloca %struct.dt_iop_border_positions_t, align 16 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !29  ; 4 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !47 ; 3 uses
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, 0.000000e+00
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !48 ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt float %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !49 ; 3 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.k, 0.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !50 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.n, 0.000000e+00
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.f
  %i.p = fadd reassoc nsz arcp contract afn float %i.h, %i.e
  %i.q = fdiv reassoc nsz arcp contract afn float %i.e, %i.p
  %.035 = select nsz i1 %or.cond.i, float %i.q, float 5.000000e-01 ; 3 uses
  %or.cond3.i = select i1 %i.l, i1 true, i1 %i.o
  %i.r = fadd reassoc nsz arcp contract afn float %i.n, %i.k
  %i.s = fdiv reassoc nsz arcp contract afn float %i.k, %i.r
  %i.t = select i1 %or.cond3.i, float %i.s, float 5.000000e-01 ; 3 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, 1.000000e+00
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.t, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.v, float 0.000000e+00, float %i.t
  %i.w = select reassoc nsz arcp contract afn i1 %i.u, float 1.000000e+00, float %spec.select.i
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %.035, 1.000000e+00
  %i.y = fcmp reassoc nsz arcp contract afn olt float %.035, 0.000000e+00
  %spec.select29.i = select reassoc nsz arcp contract afn i1 %i.y, float 0.000000e+00, float %.035
  %i.z = select reassoc nsz arcp contract afn i1 %i.x, float 1.000000e+00, float %spec.select29.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @dt_iop_setup_binfo(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %5, float noundef %i.w, float noundef %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %6) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !76 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !77 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !45 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.am = sext i32 %i.ad to i64
  %i.an = sext i32 %i.aj to i64
  call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef %i.am, i64 noundef %i.an, i64 noundef 1) #17
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_compute_pos.exit
  %i.aq = sub nsw i32 %i.aj, %i.al                ; 2 uses
  %i.ar = icmp sgt i32 %i.ah, %i.aq
  %i.as = call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  %i.at = select i1 %i.ar, i32 %i.aq, i32 %i.as
  %i.au = sub nsw i32 %i.ad, %i.af                ; 2 uses
  %i.av = icmp sgt i32 %i.ab, %i.au
  %i.aw = call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %i.ax = select i1 %i.av, i32 %i.au, i32 %i.aw
  %i.ay = sext i32 %i.ax to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.ay
  %i.az = sext i32 %i.at to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a, %_compute_pos.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.ba = add nsw i64 %indvars.iv, %i.az
  %i.bb = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.ba, %i.bc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bd
  %i.be = load i32, ptr %i.ae, align 4, !tbaa !44
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul nsw i64 %indvars.iv, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg
  %i.bi = shl nsw i64 %i.bf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gep, ptr align 4 %i.bh, i64 %i.bi, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.a, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @dt_iop_setup_binfo(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
