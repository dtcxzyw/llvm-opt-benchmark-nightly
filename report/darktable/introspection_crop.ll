Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_crop?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@legacy_params:bb.a
  br i1 %.not, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 5 uses
  %.not111 = icmp eq ptr %i.e, null
  br i1 %.not111, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33   ; 2 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1508
  %i.n = load i32, ptr %i.m, align 4, !tbaa !64   ; 2 uses
  %spec.select118 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 1)
  %spec.select = uitofp nneg i32 %spec.select118 to float ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1512
  %i.p = load i32, ptr %i.o, align 8, !tbaa !65   ; 2 uses
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.r = uitofp nneg i32 %i.q to float            ; 6 uses
  %i.s = icmp sgt i32 %i.n, 4
  %i.t = icmp sgt i32 %i.p, 4
  %i.u = and i1 %i.s, %i.t                        ; 2 uses
  %i.v = fdiv reassoc nsz arcp contract afn float %spec.select, %i.r
  %i.w = select reassoc nsz arcp contract afn i1 %i.u, float %i.v, float 1.000000e+00 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !204
  %i.z = and i32 %i.y, 4
  %.not113.not = icmp eq i32 %i.z, 0              ; 3 uses
  %i.aa = select reassoc nsz arcp contract afn i1 %.not113.not, float %spec.select, float %i.r ; 3 uses
  %i.ab = select reassoc nsz arcp contract afn i1 %.not113.not, float %i.r, float %spec.select ; 3 uses
  %i.ac = load float, ptr %i.c, align 4, !tbaa !66 ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.aa, %i.ac ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !67 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ab, %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.ac
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.aa ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !69
  %i.an = fsub reassoc nsz arcp contract afn float %i.am, %i.af
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.ab ; 10 uses
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.ak, %i.ao
  %i.aq = fsub reassoc nsz arcp contract afn float %i.w, %i.ap
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aq)
  %i.as = fcmp reassoc nsz arcp contract afn uge float %i.ar, f0x3C23D70A
  br i1 %i.as, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.at = fdiv reassoc nsz arcp contract afn float %i.ao, %i.ak
  %i.au = fsub reassoc nsz arcp contract afn float %i.w, %i.at
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp reassoc nsz arcp contract afn uge float %i.av, f0x3C23D70A
  %i.ax = and i1 %i.u, %i.aw
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ak, %i.ao
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp reassoc nsz arcp contract afn uge float %i.az, 1.000000e+00
  %i.bb = icmp slt i32 %i.g, 0                    ; 3 uses
  br i1 %i.ax, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  br i1 %.not113.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.ao, %i.w ; 2 uses
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ad
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bd, %spec.select
  store float %i.be, ptr %i.ah, align 4, !tbaa !68
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bf = fdiv reassoc nsz arcp contract afn float %i.ak, %i.w ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.ag
  %i.bh = fdiv reassoc nsz arcp contract afn float %i.bg, %i.r
  store float %i.bh, ptr %i.al, align 4, !tbaa !69
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = fmul reassoc nsz arcp contract afn float %i.ao, %i.w ; 2 uses
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.ad
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bj, %i.r
  store float %i.bk, ptr %i.ah, align 4, !tbaa !68
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bl = fdiv reassoc nsz arcp contract afn float %i.ao, %i.w ; 2 uses
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.ad
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.bm, %i.r
  store float %i.bn, ptr %i.ah, align 4, !tbaa !68
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k, %bb.l
  %i.bo = phi ptr [ @.str.9, %bb.k ], [ @.str.9, %bb.l ], [ @.str.10, %bb.n ], [ @.str.10, %bb.o ]
  %.0104 = phi nsz float [ %i.bc, %bb.k ], [ %i.ak, %bb.l ], [ %i.bi, %bb.n ], [ %i.bl, %bb.o ]
  %.0 = phi nsz float [ %i.ao, %bb.k ], [ %i.bf, %bb.l ], [ %i.ao, %bb.n ], [ %i.ao, %bb.o ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1552
  %i.bq = load i32, ptr %i.bp, align 16, !tbaa !205
  %i.br = select i1 %i.ba, ptr @.str.8, ptr @.str.7
  %i.bs = select i1 %i.bb, ptr @.str.11, ptr @.str.12
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !203
  %.not117 = icmp eq i32 %i.bu, 0
  %i.bv = select i1 %.not117, ptr @.str.8, ptr @.str.13
  %i.bw = fptosi float %i.ad to i32
  %i.bx = fptosi float %i.ag to i32
  %i.by = fptosi float %i.ak to i32
  %i.bz = fptosi float %i.ao to i32
  %i.ca = fptosi float %.0104 to i32
  %i.cb = fptosi float %.0 to i32
  %i.cc = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.cd = fptosi float %i.aa to i32
  %i.ce = fptosi float %i.ab to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, i32 noundef %i.bq, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bv, i32 noundef %i.bw, i32 noundef %i.bx, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %i.cb, double noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.ce) #22
  br label %.sink.split

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.cg = and i32 %i.cf, 2097152
  %.not115 = icmp eq i32 %i.cg, 0
  br i1 %.not115, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %.critedge
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14) #22
  br label %.sink.split

bb.r:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.ci = and i32 %i.ch, 2097152
  %.not112 = icmp eq i32 %i.ci, 0
  br i1 %.not112, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !34
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, i32 noundef %i.ck, i32 noundef %i.cm) #22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.r, %.critedge, %bb.q, %bb.p, %bb.b
  %.sink122 = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.p ], [ %i.c, %bb.q ], [ %i.c, %.critedge ], [ %i.c, %bb.r ], [ %i.c, %bb.s ]
  %.sink121 = phi i32 [ 28, %bb.b ], [ 24, %bb.p ], [ 24, %bb.q ], [ 24, %.critedge ], [ 24, %bb.r ], [ 24, %bb.s ]
  %.sink = phi i32 [ 2, %bb.b ], [ 3, %bb.p ], [ 3, %bb.q ], [ 3, %.critedge ], [ 3, %bb.r ], [ 3, %bb.s ]
  store ptr %.sink122, ptr %3, align 8, !tbaa !108
  store i32 %.sink121, ptr %4, align 4, !tbaa !109
  store i32 %.sink, ptr %5, align 4, !tbaa !109
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.a
  %.0105 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @distort_transform(ptr noundef %0, ptr noundef %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
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
  %6 = sitofp reassoc nsz arcp contract afn <2 x i32> %i.d to <2 x float> ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %7 = icmp slt <2 x i32> %i.d, splat (i32 1)     ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %or.cond = select i1 %9, i1 %8, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.e = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.f = add i64 %i.e, -2                         ; 3 uses
  %i.g = lshr exact i64 %i.f, 1
  %i.h = add nuw i64 %i.g, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.f, 30
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 4 uses
  %i.j = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %6, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat18 = shufflevector <2 x float> %6, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl nuw i64 %index, 1                    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.l, align 64, !tbaa !110 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec19 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec20 = load <16 x float>, ptr %i.n, align 64, !tbaa !110 ; 2 uses
  %strided.vec21 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec22 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.o = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.p = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec21, %broadcast.splat
  %i.q = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec19, %broadcast.splat18
  %i.r = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec22, %broadcast.splat18
  %interleaved.vec = shufflevector <8 x float> %i.o, <8 x float> %i.q, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.l, align 64, !tbaa !110
  %interleaved.vec23 = shufflevector <8 x float> %i.p, <8 x float> %i.r, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec23, ptr %i.n, align 64, !tbaa !110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.h, -4                     ; 3 uses
  %i.t = shl i64 %n.vec24, 1
  %broadcast.splat26 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat28 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index29, 3
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec30 = load <8 x float>, ptr %i.u, align 32, !tbaa !110 ; 2 uses
  %strided.vec31 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.v = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec31, %broadcast.splat26
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec32, %broadcast.splat28
  %interleaved.vec33 = shufflevector <4 x float> %i.v, <4 x float> %i.w, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec33, ptr %i.u, align 32, !tbaa !110
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next34, %n.vec24
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.h, %n.vec24
  br i1 %cmp.n35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.ph = phi i64 [ 0, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i64 [ %i.ab, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015 ; 2 uses
  %i.z = load <2 x float>, ptr %i.y, align 8, !tbaa !110
  %i.aa = fsub reassoc nsz arcp contract afn <2 x float> %i.z, %6
  store <2 x float> %i.aa, ptr %i.y, align 8, !tbaa !110
  %i.ab = add nuw i64 %.015, 2                    ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.e
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !208

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
  %6 = sitofp reassoc nsz arcp contract afn <2 x i32> %i.d to <2 x float> ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %7 = icmp slt <2 x i32> %i.d, splat (i32 1)     ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %or.cond = select i1 %9, i1 %8, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.e = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.f = add i64 %i.e, -2                         ; 3 uses
  %i.g = lshr exact i64 %i.f, 1
  %i.h = add nuw i64 %i.g, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.f, 30
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 4 uses
  %i.j = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <2 x float> %6, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat18 = shufflevector <2 x float> %6, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl nuw i64 %index, 1                    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.l, align 64, !tbaa !110 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec19 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec20 = load <16 x float>, ptr %i.n, align 64, !tbaa !110 ; 2 uses
  %strided.vec21 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec22 = shufflevector <16 x float> %wide.vec20, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.o = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.p = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec21, %broadcast.splat
  %i.q = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec19, %broadcast.splat18
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec22, %broadcast.splat18
  %interleaved.vec = shufflevector <8 x float> %i.o, <8 x float> %i.q, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.l, align 64, !tbaa !110
  %interleaved.vec23 = shufflevector <8 x float> %i.p, <8 x float> %i.r, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec23, ptr %i.n, align 64, !tbaa !110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.h, -4                     ; 3 uses
  %i.t = shl i64 %n.vec24, 1
  %broadcast.splat26 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat28 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index29, 3
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec30 = load <8 x float>, ptr %i.u, align 32, !tbaa !110 ; 2 uses
  %strided.vec31 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x float> %wide.vec30, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.v = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec31, %broadcast.splat26
  %i.w = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec32, %broadcast.splat28
  %interleaved.vec33 = shufflevector <4 x float> %i.v, <4 x float> %i.w, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec33, ptr %i.u, align 32, !tbaa !110
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next34, %n.vec24
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %i.h, %n.vec24
  br i1 %cmp.n35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.ph = phi i64 [ 0, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.015 = phi i64 [ %i.ab, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015 ; 2 uses
  %i.z = load <2 x float>, ptr %i.y, align 8, !tbaa !110
  %i.aa = fadd reassoc nsz arcp contract afn <2 x float> %i.z, %6
  store <2 x float> %i.aa, ptr %i.y, align 8, !tbaa !110
  %i.ab = add nuw i64 %.015, 2                    ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.e
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !211

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
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x i32>, ptr %i.e, align 4, !tbaa !109
  %i.k = sitofp reassoc nsz arcp contract afn <2 x i32> %i.j to <2 x float> ; 2 uses
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !110 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %i.k
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !110
  %i.o = fsub reassoc nsz arcp contract afn <2 x float> %i.n, %i.l
  %i.p = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.k ; 3 uses
  %i.q = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.r = fptosi <2 x float> %i.m to <2 x i32>
  %i.s = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.r, <2 x i32> zeroinitializer) ; 2 uses
  %i.t = fptosi float %i.q to i32
  %i.u = fptosi <2 x float> %i.p to <2 x i32>
  %i.v = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.u, <2 x i32> splat (i32 4)) ; 4 uses
  %i.w = shufflevector <2 x i32> %i.s, <2 x i32> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.w, ptr %2, align 4, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !124
  %.not99 = icmp eq i32 %i.aa, 0
  br i1 %.not99, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %i.y, i64 644
  %.val = load i32, ptr %i.ab, align 4, !tbaa !132
  %i.ac = and i32 %.val, 9
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !133
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ah = extractelement <2 x float> %i.p, i64 0
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ah) ; 6 uses
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.q) ; 6 uses
  %i.ak = load float, ptr %i.d, align 4, !tbaa !134 ; 3 uses
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ak, 0.000000e+00 ; 2 uses
  %i.am = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ak
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.am)
  %i.ao = select reassoc nsz arcp contract afn i1 %i.al, float %i.an, float %i.ak ; 5 uses
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double ; 2 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt double %i.ap, 1.000000e-05 ; 2 uses
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !213
  %i.as = load i32, ptr %i.g, align 4, !tbaa !214
  %.not100 = icmp slt i32 %i.ar, %i.as            ; 3 uses
  br i1 %i.aq, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.ai, %i.aj
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ao
  %i.av = fmul reassoc nsz arcp contract afn float %i.ao, %i.ai
  %i.aw = select reassoc nsz arcp contract afn i1 %.not100, float %i.av, float %i.au
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.aw)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ao, %i.aj
  %i.az = fdiv reassoc nsz arcp contract afn float %i.aj, %i.ao
  %i.ba = select reassoc nsz arcp contract afn i1 %.not100, float %i.az, float %i.ay
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ba)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.093 = phi nsz float [ %i.ai, %bb.e ], [ %i.bb, %bb.f ], [ %i.ai, %bb.c ]
  %.0 = phi nsz float [ %i.ax, %bb.e ], [ %i.aj, %bb.f ], [ %i.aj, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bc = extractelement <2 x i32> %i.v, i64 0
  %.not101 = icmp slt i32 %i.bc, %i.t             ; 2 uses
  %.in = select i1 %.not101, ptr %i.ae, ptr %i.z
end_hunk_0
