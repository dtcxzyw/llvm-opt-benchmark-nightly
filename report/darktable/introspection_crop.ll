Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_crop?download=true
inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@legacy_params:bb.a

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
  %i.e = sitofp reassoc nsz arcp contract afn <2 x i32> %i.d to <2 x float> ; 5 uses
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
  %i.s = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.t = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec21, %broadcast.splat
  %i.u = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec19, %broadcast.splat18
  %i.v = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec22, %broadcast.splat18
  %interleaved.vec = shufflevector <8 x float> %i.s, <8 x float> %i.u, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.p, align 64, !tbaa !110
  %interleaved.vec23 = shufflevector <8 x float> %i.t, <8 x float> %i.v, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec23, ptr %i.r, align 64, !tbaa !110
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !206

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
  %i.e = sitofp reassoc nsz arcp contract afn <2 x i32> %i.d to <2 x float> ; 5 uses
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
  %i.bd = load i32, ptr %.in, align 4, !tbaa !109
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.in103 = select i1 %.not101, ptr %i.z, ptr %i.ae
  %i.be = load i32, ptr %.in103, align 4, !tbaa !109
  store i32 %i.be, ptr %i.b, align 4, !tbaa !109
  %i.bf = call fastcc i32 @_reduce_aligners(ptr noundef %i.a, ptr noundef %i.b)
  %.not104 = icmp eq i32 %i.bf, 0
  br i1 %.not104, label %.thread110, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !109
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !109
  %i.bi = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.bj = insertelement <2 x i32> %i.bi, i32 %i.bh, i64 1
  %i.bk = srem <2 x i32> %i.v, %i.bj
  br label %.thread110

.thread110:                                       ; preds = %bb.g, %bb.h
  %i.bl = phi <2 x i32> [ %i.bk, %bb.h ], [ zeroinitializer, %bb.g ] ; 4 uses
  %i.bm = lshr <2 x i32> %i.bl, splat (i32 1)
  %i.bn = add nuw nsw <2 x i32> %i.bm, %i.s
  store <2 x i32> %i.bn, ptr %2, align 4, !tbaa !109
  %i.bo = sub nsw <2 x i32> %i.v, %i.bl
  %i.bp = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bo, <2 x i32> splat (i32 4))
  store <2 x i32> %i.bp, ptr %i.i, align 4, !tbaa !109
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.br = and i32 %i.bq, 50331648
  %or.cond107.not = icmp eq i32 %i.br, 50331648
  br i1 %or.cond107.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread110
  %i.bs = select i1 %i.al, ptr @.str.18, ptr @.str.8
  %i.bt = select i1 %i.aq, ptr @.str.19, ptr @.str.8
  %i.bu = select i1 %.not100, ptr @.str.21, ptr @.str.20
  %i.bv = fpext reassoc nsz arcp contract afn float %i.ai to double
  %i.bw = fpext reassoc nsz arcp contract afn float %i.aj to double
  %i.bx = fpext reassoc nsz arcp contract afn float %.093 to double
  %i.by = fpext reassoc nsz arcp contract afn float %.0 to double
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !109
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !109
  %i.cb = extractelement <2 x i32> %i.bl, i64 0
  %i.cc = extractelement <2 x i32> %i.bl, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.y, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu, double noundef %i.ap, double noundef %i.bv, double noundef %i.bw, double noundef %i.bx, double noundef %i.by, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %i.cb, i32 noundef %i.cc) #22
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
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load <2 x i32>, ptr %i.c, align 16, !tbaa !109
  %i.h = sitofp reassoc nsz arcp contract afn <2 x i32> %i.g to <2 x float>
  %i.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <2 x float> %i.j, %i.h ; 2 uses
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !110
  %i.m = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %i.k
  %i.n = load <2 x i32>, ptr %3, align 4, !tbaa !109
  %i.o = sitofp reassoc nsz arcp contract afn <2 x i32> %i.n to <2 x float>
  %i.p = fadd reassoc nsz arcp contract afn <2 x float> %i.m, %i.o
  %i.q = fptosi <2 x float> %i.p to <2 x i32>     ; 2 uses
  %i.r = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.k)
  %i.s = fptosi <2 x float> %i.r to <2 x i32>     ; 2 uses
  %i.t = icmp sgt <2 x i32> %i.q, %i.s
  %i.u = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.q, <2 x i32> zeroinitializer)
  %i.v = select <2 x i1> %i.t, <2 x i32> %i.s, <2 x i32> %i.u
  store <2 x i32> %i.v, ptr %3, align 4, !tbaa !109
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 4, ptr noundef %4, ptr noundef %5) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !122 ; 6 uses
  %i.c = tail call i32 @dt_iop_has_focus(ptr noundef %0) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 644
  %.val = load i32, ptr %i.d, align 4, !tbaa !132
  %i.e = and i32 %.val, 6
  %.not48 = icmp eq i32 %i.e, 0
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !110
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load <4 x float>, ptr %1, align 4, !tbaa !110 ; 3 uses
  %i.i = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.h, <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>
  %i.j = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.h, <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.k = select <4 x i1> %i.j, <4 x float> %i.h, <4 x float> <float 9.900000e-01, float 9.900000e-01, float 1.000000e+00, float 1.000000e+00>
  %i.l = select <4 x i1> %i.i, <4 x float> <float 0.000000e+00, float 0.000000e+00, float f0x3C23D70A, float f0x3C23D70A>, <4 x float> %i.k
  store <4 x float> %i.l, ptr %i.g, align 4, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 2 uses
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !134
  %i.q = icmp eq i32 %i.p, 0                      ; 2 uses
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.n, i1 true)
  %i.s = icmp eq i32 %i.r, 1
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = tail call reassoc nsz arcp contract afn float @dt_image_get_sensor_ratio(ptr noundef nonnull %i.v) #22 ; 2 uses
  %i.x = icmp sgt i32 %i.n, 0
  %i.y = fneg reassoc nsz arcp contract afn float %i.w
  %i.z = select reassoc nsz arcp contract afn i1 %i.x, float %i.w, float %i.y
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.n to float
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.aa, %i.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.g, %bb.e
  %.sink = phi float [ %i.z, %bb.e ], [ %i.ac, %bb.g ], [ 0.000000e+00, %bb.c ]
  store float %.sink, ptr %i.b, align 4, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !124
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.ak = and i32 %i.aj, 2097152
  %.not49 = icmp eq i32 %i.ak, 0
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, i32 noundef %i.ah, i32 noundef %i.ae) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

declare i32 @dt_iop_has_focus(ptr noundef) local_unnamed_addr #3

declare float @dt_image_get_sensor_ratio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load <2 x i32>, ptr %i.z, align 4, !tbaa !109
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.af = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ae to <4 x float>
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
  %i.cm = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cl to <2 x float> ; 2 uses
  %i.cn = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.cn, %i.bm ; 2 uses
  store <2 x float> %i.co, ptr %i.a, align 16, !tbaa !110
  %i.cp = insertelement <2 x float> poison, float %.0108, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %.0, i64 1
  %i.cr = fsub reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cm ; 2 uses
  %i.cs = fadd reassoc nsz arcp contract afn <2 x float> %i.cr, %i.co
  store <2 x float> %i.cs, ptr %i.ab, align 8, !tbaa !110
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
  %i.dc = fpext reassoc nsz arcp contract afn <2 x float> %i.cr to <2 x double> ; 2 uses
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
  %i.dl = sitofp reassoc nsz arcp contract afn <4 x i32> %i.dk to <4 x float>
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

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !160
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store float %i.ar, ptr %i.as, align 4, !tbaa !161
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f, %bb.h, %bb.d
  %.sink = phi i32 [ 4, %bb.d ], [ 8, %bb.h ], [ 2, %bb.f ], [ 1, %bb.b ]
  tail call fastcc void @_aspect_apply(ptr noundef nonnull %0, i32 noundef %.sink)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  tail call fastcc void @_update_sliders_and_limit(ptr noundef nonnull %i.b)
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.av = atomicrmw add ptr %i.au, i32 -1 seq_cst, align 4 ; 0 uses
  tail call fastcc void @_commit_box(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.d, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_aspect_apply(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !136 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2680
  %i.g = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !109
  %i.i = load i32, ptr %i.b, align 4, !tbaa !109
  %i.j = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.k = insertelement <2 x i32> %i.j, i32 %i.i, i64 1
  %i.l = sitofp reassoc nsz arcp contract afn <2 x i32> %i.k to <2 x double> ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !163
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138  ; 3 uses
  %i.q = call ptr @dt_bauhaus_combobox_get_text(ptr noundef %i.n) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #22
  %i.s = call i32 @g_strcmp0(ptr noundef nonnull %i.q, ptr noundef %i.r) #22
  %.not62.i = icmp eq i32 %i.s, 0
  br i1 %.not62.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1508
  %i.w = load i32, ptr %i.v, align 4, !tbaa !64   ; 2 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1512
  %i.z = load i32, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float ; 4 uses
  %i.ab = icmp sgt i32 %i.w, 0
  %i.ac = icmp sgt i32 %i.z, 0
  %or.cond.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.d, label %_aspect_ratio_get.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  %i.ag = fcmp reassoc nsz arcp contract afn ult float %i.x, %i.aa
  %or.cond64.i = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond64.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp slt i32 %i.ae, 0
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.x, %i.aa
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.critedge.i, label %bb.f

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.x, %i.aa
  br label %_aspect_ratio_get.exit

bb.f:                                             ; preds = %bb.e
  %i.al = fdiv reassoc nsz arcp contract afn float %i.aa, %i.x
  br label %_aspect_ratio_get.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !150
  %i.aq = call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef nonnull %0) #22 ; 3 uses
  %.not63.i = icmp eq ptr %i.aq, null
  br i1 %.not63.i, label %_aspect_ratio_get.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !220
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 148
  %i.au = load i32, ptr %i.at, align 4, !tbaa !221
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !34 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0                    ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.ba, label %_aspect_ratio_get.exit, label %.thread.i

bb.j:                                             ; preds = %bb.h
  br i1 %i.ba, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.as to float
  %i.bc = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.bd = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %i.bb, float %i.bc)
  br label %bb.l

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.be = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.k
  %.049.i = phi nsz float [ %i.bd, %bb.k ], [ %i.be, %.thread.i ] ; 2 uses
  %.0.in.i = phi i32 [ %i.au, %bb.k ], [ %i.az, %.thread.i ]
  %.0.i = sitofp i32 %.0.in.i to float            ; 2 uses
  %i.bf = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.049.i) ; 4 uses
  %i.bg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0.i) ; 4 uses
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.bf, %i.bg
  %..i = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bf, float %i.bg
  %i.bi = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %..i, float %.049.i) ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bf, %i.bg
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bf, float %i.bg
  %i.bl = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %i.bk, float %.0.i) ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bi, 0.000000e+00
  %i.bn = fneg reassoc nsz arcp contract afn float %i.bl
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bi
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bl
  %.1.i = select nsz i1 %i.bm, float %i.bo, float %i.bp
  br label %_aspect_ratio_get.exit

_aspect_ratio_get.exit:                           ; preds = %bb.c, %.critedge.i, %bb.f, %bb.g, %bb.i, %bb.l
  %.4.i = phi nsz float [ %i.al, %bb.f ], [ 0.000000e+00, %bb.c ], [ %i.ak, %.critedge.i ], [ 0.000000e+00, %bb.g ], [ %.1.i, %bb.l ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.bq = fpext reassoc nsz arcp contract afn float %.4.i to double ; 2 uses
  %i.br = extractelement <2 x double> %i.l, i64 0
  %i.bs = extractelement <2 x double> %i.l, i64 1 ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt double %i.br, %i.bs
  %i.bu = fcmp reassoc nsz arcp contract afn une float %.4.i, 0.000000e+00
  %or.cond = and i1 %i.bt, %i.bu
  %i.bv = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bq
  %spec.select = select nsz i1 %or.cond, double %i.bv, double %i.bq ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt double %spec.select, 0.000000e+00
  br i1 %i.bw, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %_aspect_ratio_get.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !110
  %i.bz = fpext reassoc nsz arcp contract afn <2 x float> %i.by to <2 x double>
  %i.ca = fmul reassoc nsz arcp contract afn <2 x double> %i.bz, %i.l
  %i.cb = fdiv reassoc nsz arcp contract afn <2 x double> %i.ca, %i.l ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.cb, zeroinitializer
  %i.cd = select <2 x i1> %i.cc, <2 x double> %i.cb, <2 x double> zeroinitializer ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cf = fmul reassoc nsz arcp contract afn double %spec.select, %i.bs
  %i.cg = load <2 x float>, ptr %i.ce, align 8, !tbaa !110
  %i.ch = fpext reassoc nsz arcp contract afn <2 x float> %i.cg to <2 x double>
  %i.ci = fmul reassoc nsz arcp contract afn <2 x double> %i.ch, %i.l ; 3 uses
  %i.cj = fdiv reassoc nsz arcp contract afn <2 x double> %i.ci, %i.l ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.cj, splat (double 1.000000e+00)
  %i.cl = select <2 x i1> %i.ck, <2 x double> %i.cj, <2 x double> splat (double 1.000000e+00) ; 12 uses
  %i.cm = extractelement <2 x double> %i.ci, i64 1
  %i.cn = fmul reassoc nsz arcp contract afn double %i.cm, %spec.select
  %i.co = insertelement <2 x double> %i.l, double %i.cf, i64 1
  %i.cp = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x double> %i.cp, double %i.cn, i64 0
  %i.cr = fdiv reassoc nsz arcp contract afn <2 x double> %i.cq, %i.co ; 8 uses
  switch i32 %1, label %bb.r [
    i32 3, label %bb.n
    i32 6, label %bb.o
    i32 12, label %bb.p
    i32 9, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.cs = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cl
  %i.ct = fadd reassoc nsz arcp contract afn <2 x double> %i.cl, %i.cd
  %i.cu = fmul reassoc nsz arcp contract afn <2 x double> %i.cs, splat (double 5.000000e-01) ; 2 uses
  %i.cv = fsub reassoc nsz arcp contract afn <2 x double> %i.ct, %i.cu
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x double> %i.cl, %i.cd
  %i.cw = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cl
  %i.cx = fmul reassoc nsz arcp contract afn <2 x double> %i.cw, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop228 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop, %i.cx
  %i.cy = shufflevector <2 x double> %i.cd, <2 x double> %foldExtExtBinop228, <2 x i32> <i32 0, i32 3>
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.cz = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cl
  %i.da = fmul reassoc nsz arcp contract afn <2 x double> %i.cz, splat (double 5.000000e-01)
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.db = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cl
  %foldExtExtBinop230 = fadd reassoc nsz arcp contract afn <2 x double> %i.cl, %i.cd
  %i.dc = fmul reassoc nsz arcp contract afn <2 x double> %i.db, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop232 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop230, %i.dc
  %i.dd = shufflevector <2 x double> %foldExtExtBinop232, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.de = and i32 %1, 5
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop234 = fsub reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cl
  %i.df = extractelement <2 x double> %foldExtExtBinop234, i64 1
  %i.dg = fmul reassoc nsz arcp contract afn double %i.df, 5.000000e-01
  %i.dh = extractelement <2 x double> %i.cd, i64 1
  %i.di = fsub reassoc nsz arcp contract afn double %i.dh, %i.dg
  %i.dj = shufflevector <2 x double> %i.cl, <2 x double> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.dk = insertelement <2 x double> %i.cd, double %i.di, i64 1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dl = and i32 %1, 10
  %.not205 = icmp eq i32 %i.dl, 0
  br i1 %.not205, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %foldExtExtBinop236 = fsub reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cl
  %i.dm = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.dn = fmul reassoc nsz arcp contract afn double %i.dm, 5.000000e-01
  %i.do = extractelement <2 x double> %i.cd, i64 0
  %i.dp = fsub reassoc nsz arcp contract afn double %i.do, %i.dn
  %i.dq = shufflevector <2 x double> %i.cr, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.dr = insertelement <2 x double> %i.cd, double %i.dp, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.q, %bb.t, %bb.u, %bb.s, %bb.p, %bb.n
  %i.ds = phi <2 x double> [ %i.cu, %bb.n ], [ %i.cx, %bb.o ], [ %i.da, %bb.p ], [ %i.dc, %bb.q ], [ %i.dj, %bb.s ], [ %i.dq, %bb.u ], [ %i.cl, %bb.t ] ; 4 uses
  %i.dt = phi <2 x double> [ %i.cv, %bb.n ], [ %i.cy, %bb.o ], [ %i.cd, %bb.p ], [ %i.dd, %bb.q ], [ %i.dk, %bb.s ], [ %i.dr, %bb.u ], [ %i.cd, %bb.t ] ; 4 uses
  %i.du = extractelement <2 x double> %i.dt, i64 1 ; 3 uses
  %i.dv = extractelement <2 x double> %i.dt, i64 0 ; 2 uses
  %i.dw = extractelement <2 x double> %i.ds, i64 1 ; 3 uses
  %i.dx = extractelement <2 x double> %i.ds, i64 0 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !164 ; 2 uses
  %i.ea = fpext reassoc nsz arcp contract afn float %i.dz to double ; 4 uses
  %i.eb = fcmp reassoc nsz arcp contract afn olt double %i.dv, %i.ea
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %foldExtExtBinop238 = fadd reassoc nsz arcp contract afn <2 x double> %i.ds, %i.dt
  %i.ec = extractelement <2 x double> %foldExtExtBinop238, i64 0
  %i.ed = fsub reassoc nsz arcp contract afn double %i.ec, %i.ea ; 3 uses
  %i.ee = fmul reassoc nsz arcp contract afn double %i.ed, %i.dw
  %i.ef = fdiv reassoc nsz arcp contract afn double %i.ee, %i.dx ; 3 uses
  %i.eg = and i32 %1, 2
  %.not206 = icmp eq i32 %i.eg, 0
  %i.eh = fadd reassoc nsz arcp contract afn double %i.dw, %i.du
  %i.ei = fsub reassoc nsz arcp contract afn double %i.eh, %i.ef
  %.1182 = select nsz i1 %.not206, double %i.du, double %i.ei ; 2 uses
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ef, i64 1
  %i.el = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.em = insertelement <2 x double> %i.el, double %.1182, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1187 = phi nsz double [ %i.ea, %bb.w ], [ %i.dv, %bb.v ] ; 2 uses
  %.2183 = phi nsz double [ %.1182, %bb.w ], [ %i.du, %bb.v ] ; 2 uses
  %.1177 = phi nsz double [ %i.ed, %bb.w ], [ %i.dx, %bb.v ] ; 3 uses
  %.1 = phi nsz double [ %i.ef, %bb.w ], [ %i.dw, %bb.v ] ; 3 uses
  %i.en = phi <2 x double> [ %i.ek, %bb.w ], [ %i.ds, %bb.v ]
  %i.eo = phi <2 x double> [ %i.em, %bb.w ], [ %i.dt, %bb.v ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !165 ; 2 uses
  %i.er = fpext reassoc nsz arcp contract afn float %i.eq to double ; 3 uses
  %i.es = fcmp reassoc nsz arcp contract afn olt double %.2183, %i.er
  br i1 %i.es, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.et = fadd reassoc nsz arcp contract afn double %.1, %.2183
  %i.eu = fsub reassoc nsz arcp contract afn double %i.et, %i.er ; 3 uses
  %i.ev = fmul reassoc nsz arcp contract afn double %i.eu, %.1177
  %i.ew = fdiv reassoc nsz arcp contract afn double %i.ev, %.1 ; 3 uses
  %i.ex = and i32 %1, 1
  %.not207 = icmp eq i32 %i.ex, 0
  %i.ey = fadd reassoc nsz arcp contract afn double %.1177, %.1187
  %i.ez = fsub reassoc nsz arcp contract afn double %i.ey, %i.ew
  %.2188 = select nsz i1 %.not207, double %.1187, double %i.ez
  %i.fa = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.eu, i64 1
  %i.fc = insertelement <2 x double> poison, double %.2188, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.er, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2178 = phi nsz double [ %i.ew, %bb.y ], [ %.1177, %bb.x ] ; 3 uses
  %.2 = phi nsz double [ %i.eu, %bb.y ], [ %.1, %bb.x ] ; 3 uses
  %i.fe = phi <2 x double> [ %i.fb, %bb.y ], [ %i.en, %bb.x ]
  %i.ff = phi <2 x double> [ %i.fd, %bb.y ], [ %i.eo, %bb.x ] ; 2 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0 ; 5 uses
  %i.fh = fadd reassoc nsz arcp contract afn double %.2178, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !166
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.dz
  %i.fl = fpext reassoc nsz arcp contract afn float %i.fk to double ; 2 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ogt double %i.fh, %i.fl
  %i.fn = extractelement <2 x double> %i.ff, i64 1 ; 3 uses
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fo = fsub reassoc nsz arcp contract afn double %i.fl, %i.fg ; 3 uses
  %i.fp = fmul reassoc nsz arcp contract afn double %i.fo, %.2
  %i.fq = fdiv reassoc nsz arcp contract afn double %i.fp, %.2178 ; 3 uses
  %i.fr = and i32 %1, 2
  %.not208 = icmp eq i32 %i.fr, 0
  %i.fs = fadd reassoc nsz arcp contract afn double %.2, %i.fn
  %i.ft = fsub reassoc nsz arcp contract afn double %i.fs, %i.fq
  %.4185 = select nsz i1 %.not208, double %i.fn, double %i.ft
  %i.fu = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fq, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.5 = phi nsz double [ %.4185, %bb.aa ], [ %i.fn, %bb.z ] ; 5 uses
  %.3179 = phi nsz double [ %i.fo, %bb.aa ], [ %.2178, %bb.z ] ; 3 uses
  %.3 = phi nsz double [ %i.fq, %bb.aa ], [ %.2, %bb.z ] ; 3 uses
  %i.fw = phi <2 x double> [ %i.fv, %bb.aa ], [ %i.fe, %bb.z ]
  %i.fx = fadd reassoc nsz arcp contract afn double %.3, %.5
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !167
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.eq
  %i.gb = fpext reassoc nsz arcp contract afn float %i.ga to double ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ogt double %i.fx, %i.gb
  br i1 %i.gc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gd = fsub reassoc nsz arcp contract afn double %i.gb, %.5 ; 3 uses
  %i.ge = fmul reassoc nsz arcp contract afn double %i.gd, %.3179
  %i.gf = fdiv reassoc nsz arcp contract afn double %i.ge, %.3 ; 3 uses
  %i.gg = and i32 %1, 1
  %.not209 = icmp eq i32 %i.gg, 0
  %i.gh = fadd reassoc nsz arcp contract afn double %.3179, %i.fg
  %i.gi = fsub reassoc nsz arcp contract afn double %i.gh, %i.gf
  %.4190 = select nsz i1 %.not209, double %i.fg, double %i.gi
  %i.gj = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.gd, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.5191 = phi nsz double [ %.4190, %bb.ac ], [ %i.fg, %bb.ab ] ; 3 uses
  %.4180 = phi nsz double [ %i.gf, %bb.ac ], [ %.3179, %bb.ab ]
  %.4 = phi nsz double [ %i.gd, %bb.ac ], [ %.3, %bb.ab ]
  %i.gl = phi <2 x double> [ %i.gk, %bb.ac ], [ %i.fw, %bb.ab ] ; 2 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ole double %.5191, 1.000000e+00
  %i.gn = select reassoc nsz arcp contract afn i1 %i.gm, double %.5191, double 1.000000e+00
  %i.go = fcmp reassoc nsz arcp contract afn ole double %.5, 1.000000e+00
  %i.gp = select reassoc nsz arcp contract afn i1 %i.go, double %.5, double 1.000000e+00
  %i.gq = insertelement <2 x double> poison, double %.5191, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %.5, i64 1 ; 2 uses
  %i.gs = fsub reassoc nsz arcp contract afn <2 x double> splat (double 1.000000e+00), %i.gr ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.gl, zeroinitializer
  %i.gu = fcmp reassoc nsz arcp contract afn oge <2 x double> %i.gr, zeroinitializer
  %i.gv = insertelement <2 x double> poison, double %.4180, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %.4, i64 1
  %i.gx = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.gw, %i.gs
  %i.gy = select <2 x i1> %i.gt, <2 x double> zeroinitializer, <2 x double> %i.gl
  %i.gz = shufflevector <2 x i1> %i.gu, <2 x i1> %i.gx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ha = insertelement <4 x double> poison, double %i.gn, i64 0
  %i.hb = insertelement <4 x double> %i.ha, double %i.gp, i64 1
  %i.hc = shufflevector <2 x double> %i.gs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hd = shufflevector <4 x double> %i.hb, <4 x double> %i.hc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.he = shufflevector <2 x double> %i.gy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hf = shufflevector <4 x double> <double 0.000000e+00, double 0.000000e+00, double poison, double poison>, <4 x double> %i.he, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hg = select <4 x i1> %i.gz, <4 x double> %i.hd, <4 x double> %i.hf
  %i.hh = fptrunc reassoc nsz arcp contract afn <4 x double> %i.hg to <4 x float>
  store <4 x float> %i.hh, ptr %i.bx, align 8, !tbaa !110
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_aspect_ratio_get.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_update_sliders_and_limit(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !156
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.a, float noundef %i.c) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !160
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.e, float noundef %i.g) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !158
  %i.j = load float, ptr %i.b, align 8, !tbaa !156
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !157
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.j
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.p = load float, ptr %i.f, align 4, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !161
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.p
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %i.s) #22
  %i.t = load ptr, ptr %0, align 8, !tbaa !155
  %i.u = load float, ptr %i.b, align 8, !tbaa !156
  %i.v = load float, ptr %i.k, align 8, !tbaa !157
  %i.w = fadd reassoc nsz arcp contract afn float %i.u, f0xBC23D70A
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.v
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.t, float noundef %i.x) #22
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.z = load float, ptr %i.f, align 4, !tbaa !160
  %i.aa = load float, ptr %i.q, align 4, !tbaa !161
  %i.ab = fadd reassoc nsz arcp contract afn float %i.z, f0xBC23D70A
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, %i.aa
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.y, float noundef %i.ac) #22
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.ae = load float, ptr %i.f, align 4, !tbaa !160
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0x3C23D70A
  tail call void @dt_bauhaus_slider_set_soft_min(ptr noundef %i.ad, float noundef %i.af) #22
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !158
  %i.ah = load float, ptr %i.b, align 8, !tbaa !156
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, f0x3C23D70A
  tail call void @dt_bauhaus_slider_set_soft_min(ptr noundef %i.ag, float noundef %i.ai) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.27, i32 noundef 0) #22
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.28, i32 noundef 0) #22
  ret void
}

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !136 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34   ; 3 uses
  br i1 %i.h, label %bb.b, label %._crit_edge62

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %._crit_edge62

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.27) #22
  store i32 %i.l, ptr %i.f, align 4, !tbaa !33
  %i.m = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.28) #22 ; 2 uses
  store i32 %i.m, ptr %i.i, align 4, !tbaa !34
  %.pre = load i32, ptr %i.f, align 4, !tbaa !33
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.a, %bb.c, %bb.b
  %i.n = phi i32 [ %i.m, %bb.c ], [ %i.j, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.o = phi i32 [ %.pre, %bb.c ], [ -1, %bb.b ], [ %i.g, %bb.a ]
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.04357 = load ptr, ptr %i.q, align 8, !tbaa !168 ; 2 uses
  %.not58 = icmp eq ptr %.04357, null
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge62, %bb.e
  %.04360 = phi ptr [ %.043, %bb.e ], [ %.04357, %._crit_edge62 ] ; 2 uses
  %.04459 = phi i32 [ %i.y, %bb.e ], [ 0, %._crit_edge62 ] ; 2 uses
  %i.r = load ptr, ptr %.04360, align 8, !tbaa !170 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !172
  %i.u = icmp eq i32 %i.t, %i.p
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !173
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.y = add nuw nsw i32 %.04459, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.04360, i64 8
  %.043 = load ptr, ptr %i.z, align 8, !tbaa !168 ; 2 uses
  %.not = icmp eq ptr %.043, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %._crit_edge62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.n, i1 true) ; 2 uses
  %i.ab = uitofp nneg i32 %i.p to float
  %i.ac = uitofp nneg i32 %i.aa to float
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ab, %i.ac
  %i.ae = fpext reassoc nsz arcp contract afn float %i.ad to double
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.29, i32 noundef %i.p, i32 noundef %i.aa, double noundef %i.ae) #22 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !163
  call void @dt_bauhaus_combobox_set_text(ptr noundef %i.ah, ptr noundef nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge
  %.254 = phi i32 [ -1, %._crit_edge ], [ %.04459, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !163
  %i.ak = call i32 @dt_bauhaus_combobox_get(ptr noundef %i.aj) #22
  %i.al = icmp eq i32 %i.ak, %.254
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !163 ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  call void @_event_aspect_presets_changed(ptr noundef %i.am, ptr noundef %0)
  br label %bb.h

bb.g:                                             ; preds = %.loopexit
  call void @dt_bauhaus_combobox_set(ptr noundef %i.am, i32 noundef %.254) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.aq = load <2 x float>, ptr %i.e, align 4, !tbaa !110 ; 2 uses
  store <2 x float> %i.aq, ptr %i.an, align 8, !tbaa !110
  %i.ar = load <2 x float>, ptr %i.ao, align 4, !tbaa !110
  %i.as = fsub reassoc nsz arcp contract afn <2 x float> %i.ar, %i.aq
  store <2 x float> %i.as, ptr %i.ap, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @dt_gui_update_collapsible_section(ptr noundef nonnull %i.at) #22
  call void @gui_changed(ptr noundef %0, ptr noundef null, ptr poison)
  ret void
}

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare void @dt_bauhaus_combobox_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_event_aspect_presets_changed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !136 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138  ; 3 uses
  %i.g = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #22
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %i.l = tail call ptr @dt_bauhaus_combobox_get_text(ptr noundef %0) #22 ; 8 uses
  %i.m = icmp slt i32 %i.g, 0
  br i1 %i.m, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@dt_bauhaus_slider_set_format
declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_offset(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_crop_handle_flip(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 15 uses
  %.not41 = icmp eq ptr %i.b, null
  br i1 %.not41, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load float, ptr %i.b, align 4, !tbaa !66 ; 4 uses
  %i.d = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !67 ; 4 uses
  %i.g = fcmp reassoc nsz arcp contract afn oeq float %i.f, 0.000000e+00
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !68
  %i.j = fcmp reassoc nsz arcp contract afn oeq float %i.i, 1.000000e+00
  br i1 %i.j, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !69
  %i.m = fcmp reassoc nsz arcp contract afn oeq float %i.l, 1.000000e+00
  br i1 %i.m, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  switch i32 %1, label %bb.j [
    i32 2, label %bb.f
    i32 1, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !68
  %i.q = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.p
  store float %i.q, ptr %i.b, align 4, !tbaa !66
  %i.r = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.c
  store float %i.r, ptr %i.o, align 4, !tbaa !68
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !69
  %i.u = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  store float %i.u, ptr %i.n, align 4, !tbaa !67
  %i.v = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.f
  store float %i.v, ptr %i.s, align 4, !tbaa !69
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !69
  %i.y = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.x
  store float %i.y, ptr %i.b, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !68
  store float %i.aa, ptr %i.w, align 4, !tbaa !69
  %i.ab = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.f
  store float %i.ab, ptr %i.z, align 4, !tbaa !68
  store float %i.c, ptr %i.n, align 4, !tbaa !67
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  store float %i.f, ptr %i.b, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !68
  %i.ae = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ad
  store float %i.ae, ptr %i.n, align 4, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !69
  store float %i.ag, ptr %i.ac, align 4, !tbaa !68
  %i.ah = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.c
  store float %i.ah, ptr %i.af, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.g, %bb.i, %bb.h, %bb.f
  tail call void @dt_iop_gui_update(ptr noundef nonnull %0) #22
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !135
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !137
  tail call void @dt_dev_add_history_item(ptr noundef %i.ai, ptr noundef nonnull %0, i32 noundef %i.ak) #22
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.e, %bb.j
  ret void
}

declare void @dt_shortcut_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176
  tail call void @g_list_free_full(ptr noundef %i.d, ptr noundef nonnull @_aspect_free) #22
  store ptr null, ptr %i.c, align 8, !tbaa !176
  ret void
}

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_aspect_free(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !175
  tail call void @g_free(ptr noundef %i.a) #22
  store ptr null, ptr %0, align 8, !tbaa !175
  tail call void @g_free(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct._PangoRectangle, align 4    ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [15 x i8], align 8                ; 7 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !136 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !146
  %i.q = icmp ne ptr %i.p, %0                     ; 3 uses
  %i.r = tail call i32 @dt_iop_color_picker_is_visible(ptr noundef %i.l) #22
  %i.s = icmp ne i32 %i.r, 0
  %i.t = select i1 %i.s, i1 true, i1 %i.q         ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2680
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 2760
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  %i.y = load i32, ptr %i.x, align 8, !tbaa !235
  %i.z = and i32 %i.y, 2
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 352
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !177
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond = select i1 %i.af, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.d, label %bb.as

bb.c:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.d, label %bb.as

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_aspect_apply(ptr noundef nonnull %0, i32 noundef 15)
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1432
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !183
  %i.aj = select i1 %i.t, double 1.500000e+00, double 2.500000e+00
  %i.ak = fmul reassoc nsz arcp contract afn double %i.aj, %i.ai
  %i.al = fpext reassoc nsz arcp contract afn float %6 to double ; 5 uses
  %i.am = fdiv reassoc nsz arcp contract afn double %i.ak, %i.al
  %i.an = select reassoc nsz arcp contract afn i1 %i.t, double 6.000000e-01, double 1.000000e+00
  %i.ao = tail call fastcc i32 @_set_max_clip(ptr noundef nonnull %0)
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond4 = select i1 %i.ap, i1 true, i1 %i.t
  br i1 %or.cond4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 8.000000e-01) #22
  tail call void @cairo_set_fill_rule(ptr noundef %1, i32 noundef 1) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.ar = load <4 x float>, ptr %i.aq, align 8, !tbaa !110
  %i.as = insertelement <4 x float> poison, float %2, i64 0
  %i.at = insertelement <4 x float> %i.as, float %3, i64 1
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn <4 x float> %i.ar, %i.au
  %i.aw = fpext reassoc nsz arcp contract afn <4 x float> %i.av to <4 x double> ; 4 uses
  %i.ax = extractelement <4 x double> %i.aw, i64 0
  %i.ay = extractelement <4 x double> %i.aw, i64 1
  %i.az = extractelement <4 x double> %i.aw, i64 2
  %i.ba = extractelement <4 x double> %i.aw, i64 3
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.ax, double noundef %i.ay, double noundef %i.az, double noundef %i.ba) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bc = load <4 x float>, ptr %i.bb, align 8, !tbaa !110
  %i.bd = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.au
  %i.be = fpext reassoc nsz arcp contract afn <4 x float> %i.bd to <4 x double> ; 4 uses
  %i.bf = extractelement <4 x double> %i.be, i64 0
  %i.bg = extractelement <4 x double> %i.be, i64 1
  %i.bh = extractelement <4 x double> %i.be, i64 2
  %i.bi = extractelement <4 x double> %i.be, i64 3
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.bf, double noundef %i.bg, double noundef %i.bh, double noundef %i.bi) #22
  tail call void @cairo_fill(ptr noundef %1) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 21 uses
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !156
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !160
  %i.bo = fcmp reassoc nsz arcp contract afn ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !157
  %i.br = fcmp reassoc nsz arcp contract afn olt float %i.bq, 1.000000e+00
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !161
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, 1.000000e+00
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.am) #22
  %i.bv = load <4 x float>, ptr %i.bj, align 8, !tbaa !110
  %i.bw = insertelement <4 x float> poison, float %2, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %3, i64 1
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.bv, %i.by
  %i.ca = fpext reassoc nsz arcp contract afn <4 x float> %i.bz to <4 x double> ; 4 uses
  %i.cb = extractelement <4 x double> %i.ca, i64 0
  %i.cc = extractelement <4 x double> %i.ca, i64 1
  %i.cd = extractelement <4 x double> %i.ca, i64 2
  %i.ce = extractelement <4 x double> %i.ca, i64 3
  tail call void @cairo_rectangle(ptr noundef %1, double noundef %i.cb, double noundef %i.cc, double noundef %i.cd, double noundef %i.ce) #22
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1408
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !236
  %i.ci = fmul reassoc nsz arcp contract afn double %i.ch, 5.000000e-01
  %i.cj = fadd reassoc nsz arcp contract afn double %i.ci, 5.000000e-01 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 1384
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !237
  %i.cm = fmul reassoc nsz arcp contract afn double %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 1400
  %i.co = load double, ptr %i.cn, align 8, !tbaa !238
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, %i.cj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 1392
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !239
  %i.cs = fmul reassoc nsz arcp contract afn double %i.cr, %i.cj
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.cm, double noundef %i.cp, double noundef %i.cs, double noundef %i.an) #22
  tail call void @cairo_stroke(ptr noundef %1) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.t, label %bb.as, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !184 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 624
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !194
  %.not337 = icmp eq i32 %i.cv, 0
  br i1 %.not337, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 628
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !195
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.db = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !109 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.de = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %i.df = insertelement <2 x i32> poison, i32 %i.dc, i64 0
  %i.dg = insertelement <2 x i32> %i.df, i32 %i.de, i64 1
  %i.dh = sitofp reassoc nsz arcp contract afn <2 x i32> %i.dg to <2 x float>
  %i.di = load <2 x float>, ptr %i.dd, align 8, !tbaa !110
  %i.dj = fmul reassoc nsz arcp contract afn <2 x float> %i.di, %i.dh
  %i.dk = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.dj)
  %i.dl = fptosi <2 x float> %i.dk to <2 x i32>   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.dm = extractelement <2 x i32> %i.dl, i64 0   ; 2 uses
  %i.dn = extractelement <2 x i32> %i.dl, i64 1   ; 2 uses
  %.not338 = icmp slt i32 %i.dm, %i.dn            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 20 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %.in = select i1 %.not338, ptr %i.dp, ptr %i.do
  %i.dq = load i32, ptr %.in, align 4, !tbaa !109
  store i32 %i.dq, ptr %i.c, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %.in339 = select i1 %.not338, ptr %i.do, ptr %i.dp
  %i.dr = load i32, ptr %.in339, align 4, !tbaa !109
  store i32 %i.dr, ptr %i.d, align 4, !tbaa !109
  %i.ds = call fastcc i32 @_reduce_aligners(ptr noundef %i.c, ptr noundef %i.d)
  %.not340 = icmp eq i32 %i.ds, 0
  br i1 %.not340, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !109
  %i.du = load i32, ptr %i.d, align 4, !tbaa !109
  %i.dv = insertelement <2 x i32> poison, i32 %i.dt, i64 0
  %i.dw = insertelement <2 x i32> %i.dv, i32 %i.du, i64 1
  %i.dx = srem <2 x i32> %i.dl, %i.dw
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %i.dy = phi <2 x i32> [ %i.dx, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !107
  %i.ea = and i32 %i.dz, 83886080
  %or.cond344.not = icmp eq i32 %i.ea, 83886080
  %i.eb = sub nsw <2 x i32> %i.dl, %i.dy          ; 5 uses
  br i1 %or.cond344.not, label %bb.p, label %.thread._crit_edge

bb.p:                                             ; preds = %.thread
  %i.ec = extractelement <2 x i32> %i.eb, i64 0
  %i.ed = extractelement <2 x i32> %i.eb, i64 1
  %i.ee = extractelement <2 x i32> %i.dy, i64 0
  %i.ef = extractelement <2 x i32> %i.dy, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.69, i32 noundef %i.dc, i32 noundef %i.de, i32 noundef %i.dm, i32 noundef %i.dn, i32 noundef %i.ec, i32 noundef %i.ed, i32 noundef %i.ee, i32 noundef %i.ef) #22
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !240
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 336
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !248
  %i.ej = call ptr @pango_font_description_copy_static(ptr noundef %i.ei) #22 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.ej, i32 noundef 700) #22
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1432
  %i.em = load double, ptr %i.el, align 8, !tbaa !183
  %i.en = fmul reassoc nsz arcp contract afn double %i.em, 1.638400e+04
  %i.eo = fdiv reassoc nsz arcp contract afn double %i.en, %i.al
  call void @pango_font_description_set_absolute_size(ptr noundef %i.ej, double noundef %i.eo) #22
  %i.ep = call ptr @pango_cairo_create_layout(ptr noundef %1) #22 ; 5 uses
  call void @pango_layout_set_font_description(ptr noundef %i.ep, ptr noundef %i.ej) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.eq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.eb to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x double> %i.eq, %shift
  %i.er = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false)
  %i.es = fcmp reassoc nsz arcp contract afn olt double %i.er, 1.000000e+00
  br i1 %i.es, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread._crit_edge
  %i.et = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.er
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 15, ptr noundef nonnull @.str.70, double noundef %i.et) #22 ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %.thread._crit_edge
  %i.ev = fcmp reassoc nsz arcp contract afn ogt double %i.er, 1.000000e+00
  br i1 %i.ev, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ew = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 15, ptr noundef nonnull @.str.71, double noundef %i.er) #22 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i64 11594488529039656, ptr %i.f, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %i.ex = extractelement <2 x i32> %i.eb, i64 0
  %i.ey = extractelement <2 x i32> %i.eb, i64 1
  %i.ez = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.73, i32 noundef %i.ex, i32 noundef %i.ey, ptr noundef nonnull %i.f) #22 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.ep, ptr noundef nonnull %i.e, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ep, ptr noundef null, ptr noundef nonnull %7) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !250
  %i.fc = sitofp reassoc nsz arcp contract afn i32 %i.fb to double
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1432
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.fg = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fmul reassoc nsz arcp contract afn <2 x double> %i.fh, <double 6.000000e+00, double 1.800000e+01>
  %i.fj = insertelement <2 x double> poison, double %i.al, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fdiv reassoc nsz arcp contract afn <2 x double> %i.fi, %i.fk ; 3 uses
  %i.fm = fmul reassoc nsz arcp contract afn <2 x double> %i.fl, <double 2.000000e+00, double poison>
  %i.fn = load <2 x float>, ptr %i.bj, align 8, !tbaa !110
  %i.fo = load <2 x float>, ptr %i.dd, align 8, !tbaa !110
  %i.fp = fmul reassoc nsz arcp contract afn <2 x float> %i.fo, splat (float 5.000000e-01)
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.fp, %i.fn
  %i.fr = insertelement <2 x float> poison, float %2, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %3, i64 1
  %i.ft = fmul reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fs
  %i.fu = fpext reassoc nsz arcp contract afn <2 x float> %i.ft to <2 x double>
  call void @cairo_clip_extents(ptr noundef %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #22
  %i.fv = load double, ptr %i.i, align 8, !tbaa !251
  %i.fw = insertelement <2 x double> %i.fl, double %i.fc, i64 0 ; 2 uses
  %i.fx = fmul reassoc nsz arcp contract afn <2 x double> %i.fw, splat (double 5.000000e-01)
  %i.fy = fsub reassoc nsz arcp contract afn <2 x double> %i.fu, %i.fx ; 3 uses
  %i.fz = load double, ptr %i.g, align 8
  %i.ga = load double, ptr %i.j, align 8, !tbaa !251
  %i.gb = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = fadd reassoc nsz arcp contract afn <2 x double> %i.gb, %i.fw ; 3 uses
  %i.gd = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.ga, i64 1
  %i.gf = fsub reassoc nsz arcp contract afn <2 x double> %i.ge, %i.gc ; 2 uses
  %i.gg = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.fy, %i.gf
  %i.gh = load double, ptr %i.h, align 8
  %i.gi = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gh, i64 1
  %i.gk = fadd reassoc nsz arcp contract afn <2 x double> %i.gj, %i.gb ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.fy, %i.gk
  %i.gm = select <2 x i1> %i.gl, <2 x double> %i.gk, <2 x double> %i.fy
  %i.gn = select <2 x i1> %i.gg, <2 x double> %i.gf, <2 x double> %i.gm ; 3 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #22
  %i.go = extractelement <2 x double> %i.gc, i64 0
  %i.gp = fptrunc reassoc nsz arcp contract afn double %i.go to float
  %i.gq = extractelement <2 x double> %i.gc, i64 1
  %i.gr = fptrunc reassoc nsz arcp contract afn double %i.gq to float
  %i.gs = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = fsub reassoc nsz arcp contract afn <2 x double> %i.gn, %i.gs
  %i.gu = fptrunc reassoc nsz arcp contract afn <2 x double> %i.gt to <2 x float> ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0
  %i.gw = extractelement <2 x float> %i.gu, i64 1
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.gp, float noundef %i.gr, float noundef %i.gv, float noundef %i.gw) #22
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666) #22
  %i.gx = extractelement <2 x double> %i.gn, i64 0
  %i.gy = extractelement <2 x double> %i.gn, i64 1
  call void @cairo_move_to(ptr noundef %1, double noundef %i.gx, double noundef %i.gy) #22
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.ep) #22
  call void @pango_font_description_free(ptr noundef %i.ej) #22
  call void @g_object_unref(ptr noundef %i.ep) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m, %bb.l
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1432
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !183
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, 2.000000e+00
  %i.hd = fdiv reassoc nsz arcp contract afn double %i.hc, %i.al
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.hd) #22
  %i.he = call i64 @g_get_monotonic_time() #22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 3 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !148
  %i.hh = sub nsw i64 %i.he, %i.hg
  %i.hi = sitofp reassoc nsz arcp contract afn i64 %i.hh to float
  %i.hj = fmul reassoc nnan nsz arcp contract afn float %i.hi, 5.000000e-07
  %i.hk = fcmp reassoc nsz arcp contract afn ugt float %i.hj, 1.000000e+00
  br i1 %i.hk, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hl = call i64 @g_get_monotonic_time() #22
  %i.hm = load i64, ptr %i.hf, align 8, !tbaa !148
  %i.hn = sub nsw i64 %i.hl, %i.hm
  %i.ho = sitofp reassoc nsz arcp contract afn i64 %i.hn to float
  %i.hp = fmul reassoc nnan nsz arcp contract afn float %i.ho, 5.000000e-07
  %i.hq = fpext reassoc nsz arcp contract afn float %i.hp to double
  %i.hr = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hq
  %i.hs = fcmp reassoc nsz arcp contract afn ugt double %i.hr, 1.000000e+00
  br i1 %i.hs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ht = call i64 @g_get_monotonic_time() #22
  %i.hu = load i64, ptr %i.hf, align 8, !tbaa !148
  %i.hv = sub nsw i64 %i.ht, %i.hu
  %i.hw = sitofp reassoc nsz arcp contract afn i64 %i.hv to float
  %i.hx = fmul reassoc nnan nsz arcp contract afn float %i.hw, 5.000000e-07
  %i.hy = fpext reassoc nsz arcp contract afn float %i.hx to double
  %i.hz = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hy
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w
  %i.ia = phi reassoc nsz arcp contract afn double [ 1.000000e+00, %bb.w ], [ %i.hz, %bb.x ], [ 0.000000e+00, %bb.v ]
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1408
  %i.id = load double, ptr %i.ic, align 8, !tbaa !236
  %i.ie = fmul reassoc nsz arcp contract afn double %i.id, 5.000000e-01
  %i.if = fadd reassoc nsz arcp contract afn double %i.ie, 5.000000e-01 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 1384
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !237
  %i.ii = fmul reassoc nsz arcp contract afn double %i.if, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 1400
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !238
  %i.il = fmul reassoc nsz arcp contract afn double %i.ik, %i.if
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 1392
  %i.in = load double, ptr %i.im, align 8, !tbaa !239
  %i.io = fmul reassoc nsz arcp contract afn double %i.in, %i.if
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ii, double noundef %i.il, double noundef %i.io, double noundef %i.ia) #22
  %i.ip = fcmp reassoc nsz arcp contract afn olt float %2, %3
  %i.iq = select reassoc nsz arcp contract afn i1 %i.ip, float %2, float %3
  %i.ir = fpext reassoc nsz arcp contract afn float %i.iq to double
  %i.is = fmul reassoc nsz arcp contract afn double %i.ir, f0x3FD5555555555555 ; 2 uses
  %i.it = fcmp reassoc nsz arcp contract afn ogt double %i.is, 3.000000e+01
  %spec.select = select reassoc nsz arcp contract afn i1 %i.it, double 3.000000e+01, double %i.is
  %i.iu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1432
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !183
  %i.ix = fmul reassoc nsz arcp contract afn double %i.iw, %spec.select
  %i.iy = fdiv reassoc nsz arcp contract afn double %i.ix, %i.al ; 27 uses
  %i.iz = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %2
  %i.jb = fpext reassoc nsz arcp contract afn float %i.ja to double
  %i.jc = fadd reassoc nsz arcp contract afn double %i.iy, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.n, i64 60 ; 16 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !160
  %i.jf = fmul reassoc nsz arcp contract afn float %i.je, %3
  %i.jg = fpext reassoc nsz arcp contract afn float %i.jf to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.jc, double noundef %i.jg) #22
  %i.jh = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, %2
  %i.jj = fpext reassoc nsz arcp contract afn float %i.ji to double
  %i.jk = fadd reassoc nsz arcp contract afn double %i.iy, %i.jj
  %i.jl = load float, ptr %i.jd, align 4, !tbaa !160
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 68 ; 9 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !161
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, %i.jl
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, %3
  %i.jq = fpext reassoc nsz arcp contract afn float %i.jp to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.jk, double noundef %i.jq) #22
  %i.jr = load float, ptr %i.bj, align 8, !tbaa !156
  %i.js = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 10 uses
  %i.jt = load float, ptr %i.js, align 8, !tbaa !157
  %i.ju = fadd reassoc nsz arcp contract afn float %i.jt, %i.jr
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, %2
  %i.jw = fpext reassoc nsz arcp contract afn float %i.jv to double
  %i.jx = fsub reassoc nsz arcp contract afn double %i.jw, %i.iy
  %i.jy = load float, ptr %i.jd, align 4, !tbaa !160
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jy, %3
  %i.ka = fpext reassoc nsz arcp contract afn float %i.jz to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.jx, double noundef %i.ka) #22
  %i.kb = load float, ptr %i.bj, align 8, !tbaa !156
  %i.kc = load float, ptr %i.js, align 8, !tbaa !157
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.kb
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %2
  %i.kf = fpext reassoc nsz arcp contract afn float %i.ke to double
  %i.kg = fsub reassoc nsz arcp contract afn double %i.kf, %i.iy
  %i.kh = load float, ptr %i.jd, align 4, !tbaa !160
  %i.ki = load float, ptr %i.jm, align 4, !tbaa !161
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, %i.kh
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, %3
  %i.kl = fpext reassoc nsz arcp contract afn float %i.kk to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.kg, double noundef %i.kl) #22
  %i.km = load float, ptr %i.bj, align 8, !tbaa !156
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, %2
  %i.ko = fpext reassoc nsz arcp contract afn float %i.kn to double
  %i.kp = load float, ptr %i.jd, align 4, !tbaa !160
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, %3
  %i.kr = fpext reassoc nsz arcp contract afn float %i.kq to double
  %i.ks = fadd reassoc nsz arcp contract afn double %i.iy, %i.kr
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ko, double noundef %i.ks) #22
  %i.kt = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ku = load float, ptr %i.js, align 8, !tbaa !157
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, %i.kt
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, %2
  %i.kx = fpext reassoc nsz arcp contract afn float %i.kw to double
  %i.ky = load float, ptr %i.jd, align 4, !tbaa !160
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, %3
  %i.la = fpext reassoc nsz arcp contract afn float %i.kz to double
  %i.lb = fadd reassoc nsz arcp contract afn double %i.iy, %i.la
  call void @cairo_line_to(ptr noundef %1, double noundef %i.kx, double noundef %i.lb) #22
  %i.lc = load float, ptr %i.bj, align 8, !tbaa !156
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %2
  %i.le = fpext reassoc nsz arcp contract afn float %i.ld to double
  %i.lf = load float, ptr %i.jd, align 4, !tbaa !160
  %i.lg = load float, ptr %i.jm, align 4, !tbaa !161
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, %i.lf
  %i.li = fmul reassoc nsz arcp contract afn float %i.lh, %3
  %i.lj = fpext reassoc nsz arcp contract afn float %i.li to double
  %i.lk = fsub reassoc nsz arcp contract afn double %i.lj, %i.iy
  call void @cairo_move_to(ptr noundef %1, double noundef %i.le, double noundef %i.lk) #22
  %i.ll = load float, ptr %i.bj, align 8, !tbaa !156
  %i.lm = load float, ptr %i.js, align 8, !tbaa !157
  %i.ln = fadd reassoc nsz arcp contract afn float %i.lm, %i.ll
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, %2
  %i.lp = fpext reassoc nsz arcp contract afn float %i.lo to double
  %i.lq = load float, ptr %i.jd, align 4, !tbaa !160
  %i.lr = load float, ptr %i.jm, align 4, !tbaa !161
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, %i.lq
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %3
  %i.lu = fpext reassoc nsz arcp contract afn float %i.lt to double
  %i.lv = fsub reassoc nsz arcp contract afn double %i.lu, %i.iy
  call void @cairo_line_to(ptr noundef %1, double noundef %i.lp, double noundef %i.lv) #22
  call void @cairo_stroke(ptr noundef %1) #22
  %i.lw = load <4 x float>, ptr %i.bj, align 8, !tbaa !110
  %i.lx = insertelement <4 x float> poison, float %2, i64 0
  %i.ly = insertelement <4 x float> %i.lx, float %3, i64 1
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ma = fmul reassoc nsz arcp contract afn <4 x float> %i.lw, %i.lz ; 4 uses
  %i.mb = extractelement <4 x float> %i.ma, i64 0
  %i.mc = extractelement <4 x float> %i.ma, i64 1
  %i.md = extractelement <4 x float> %i.ma, i64 2
  %i.me = extractelement <4 x float> %i.ma, i64 3
  call void @dt_guides_draw(ptr noundef %1, float noundef %i.mb, float noundef %i.mc, float noundef %i.md, float noundef %i.me, float noundef %6) #22
  %i.mf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1408
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !236
  %i.mi = fmul reassoc nsz arcp contract afn double %i.mh, 5.000000e-01
  %i.mj = fadd reassoc nsz arcp contract afn double %i.mi, 5.000000e-01 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 1384
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !237
  %i.mm = fmul reassoc nsz arcp contract afn double %i.mj, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 1400
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !238
  %i.mp = fmul reassoc nsz arcp contract afn double %i.mo, %i.mj
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mf, i64 1392
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !239
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, %i.mj
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.mm, double noundef %i.mp, double noundef %i.ms, double noundef 1.000000e+00) #22
  %i.mt = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !152 ; 2 uses
  %.not343 = icmp eq i32 %i.mu, 0
  br i1 %.not343, label %bb.z, label %_gui_get_grab.exit

bb.z:                                             ; preds = %bb.y
  %i.mv = fptrunc reassoc nsz arcp contract afn double %i.iy to float ; 2 uses
  %i.mw = load float, ptr %i.bj, align 8, !tbaa !156 ; 6 uses
  %i.mx = fcmp reassoc nsz arcp contract afn olt float %4, %i.mw
  br i1 %i.mx, label %_gui_get_grab.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.my = load float, ptr %i.js, align 8, !tbaa !157 ; 3 uses
  %i.mz = fadd reassoc nsz arcp contract afn float %i.my, %i.mw ; 3 uses
  %i.na = fcmp reassoc nsz arcp contract afn ogt float %4, %i.mz
  br i1 %i.na, label %_gui_get_grab.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nb = load float, ptr %i.jd, align 4, !tbaa !160 ; 6 uses
  %i.nc = fcmp reassoc nsz arcp contract afn olt float %5, %i.nb
  br i1 %i.nc, label %_gui_get_grab.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nd = load float, ptr %i.jm, align 4, !tbaa !161 ; 3 uses
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nd, %i.nb ; 3 uses
  %i.nf = fcmp reassoc nsz arcp contract afn ogt float %5, %i.ne
  br i1 %i.nf, label %_gui_get_grab.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ng = fdiv reassoc nsz arcp contract afn float %i.mv, %2
  %i.nh = fdiv reassoc nsz arcp contract afn float %i.mv, %3
  %i.ni = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.nj = insertelement <4 x float> %i.ni, float %i.nb, i64 1
  %i.nk = insertelement <4 x float> %i.nj, float %i.my, i64 2
  %i.nl = insertelement <4 x float> %i.nk, float %i.nd, i64 3
  %i.nm = fcmp reassoc nsz arcp contract afn une <4 x float> %i.nl, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.nn = bitcast <4 x i1> %i.nm to i4
  %.not359 = icmp eq i4 %i.nn, 0                  ; 2 uses
  %.052.i = select nsz i1 %.not359, float 4.500000e-01, float %i.ng ; 2 uses
  %.0.i = select nsz i1 %.not359, float 4.500000e-01, float %i.nh ; 2 uses
  %i.no = fcmp reassoc nsz arcp contract afn oge float %4, %i.mw
  %i.np = fadd reassoc nsz arcp contract afn float %.052.i, %i.mw
  %i.nq = fcmp reassoc nsz arcp contract afn olt float %4, %i.np
  %or.cond65.i = and i1 %i.no, %i.nq
  br i1 %or.cond65.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.nr = fsub reassoc nsz arcp contract afn float %4, %i.mw
  %i.ns = fpext reassoc nsz arcp contract afn float %i.nr to double
  %i.nt = fpext reassoc nsz arcp contract afn float %i.my to double
  %i.nu = fmul reassoc nsz arcp contract afn double %i.nt, 5.000000e-01
  %i.nv = fcmp reassoc nsz arcp contract afn ogt double %i.nu, %i.ns
  br i1 %i.nv, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.nw = fcmp reassoc nsz arcp contract afn ole float %4, %i.mz
  %i.nx = fsub reassoc nsz arcp contract afn float %i.mz, %.052.i
  %i.ny = fcmp reassoc nsz arcp contract afn ogt float %4, %i.nx
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
  %i.qp = fpext reassoc nsz arcp contract afn <2 x float> %i.qo to <2 x double> ; 2 uses
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
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !109
  %i.w = sitofp reassoc nsz arcp contract afn <2 x i32> %i.v to <2 x float> ; 3 uses
  store <2 x float> %i.w, ptr %i.u, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = load float, ptr %i.e, align 4, !tbaa !66
  %i.z = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, %i.z
  store float %i.aa, ptr %i.x, align 16, !tbaa !110
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !67
  %i.ae = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.ae
  store float %i.af, ptr %i.ab, align 4, !tbaa !110
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.z
  store float %i.aj, ptr %i.ag, align 8, !tbaa !110
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !69
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ae
  store float %i.an, ptr %i.ak, align 4, !tbaa !110
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !154
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.aq to double
  %i.as = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ao, ptr noundef %i.r, double noundef %i.ar, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #22
  %.not73 = icmp eq i32 %i.as, 0
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 156
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aw = load <2 x i32>, ptr %i.at, align 4, !tbaa !109
  %i.ax = shufflevector <2 x i32> %i.aw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ax to <4 x float> ; 2 uses
  %i.az = load <2 x float>, ptr %i.a, align 16, !tbaa !110 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.u, align 8, !tbaa !110
  %i.bb = fsub reassoc nsz arcp contract afn <2 x float> %i.ba, %i.az
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = fdiv reassoc nsz arcp contract afn <4 x float> %i.bc, %i.ay ; 3 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bd, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bg = shufflevector <4 x i1> %i.be, <4 x i1> %i.bf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bh = select <4 x i1> %i.bg, <4 x float> %i.bd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  store <4 x float> %i.bh, ptr %i.au, align 8, !tbaa !110
  %i.bi = load <2 x float>, ptr %i.x, align 16, !tbaa !110 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.ag, align 8, !tbaa !110
  %i.bk = fsub reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bi
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bm = fdiv reassoc nsz arcp contract afn <4 x float> %i.bl, %i.ay ; 3 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bm, %i.bh
  %i.bo = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bm, %i.bh
  %i.bp = shufflevector <4 x i1> %i.bn, <4 x i1> %i.bo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = select <4 x i1> %i.bp, <4 x float> %i.bm, <4 x float> %i.bh
  store <4 x float> %i.bq, ptr %i.av, align 8, !tbaa !110
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !150
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 416
  %i.bv = load i64, ptr %i.bu, align 16, !tbaa !252
  store i64 %i.bv, ptr %i.f, align 8, !tbaa !147
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
end_hunk_1
