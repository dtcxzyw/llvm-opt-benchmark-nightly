Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/color_picker?download=true
inline.NumInlined: 71
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 19
begin_hunk_0
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.18, %union.anon.19, %union.anon.20, %union.anon.21, %union.anon.22, %union.anon.23, %union.anon.24, %union.anon.25, %union.anon.26, %union.anon.27, %union.anon.28, %union.anon.29, %union.anon.30 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { i64 }
%union.anon.27 = type { i64 }
%union.anon.28 = type { i64 }
%union.anon.29 = type { i64 }
%union.anon.30 = type { i64 }

@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str = private unnamed_addr constant [65 x i8] c"[color picker] unable to alloc working memory, denoising skipped\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"[colorpicker] unknown colorspace conversion from %s to %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/darktable/darktable/src/common/color_picker.c\00", align 1
@__FUNCTION__.dt_color_picker_helper = private unnamed_addr constant [23 x i8] c"dt_color_picker_helper\00", align 1
@.str.4 = private unnamed_addr constant [122 x i8] c"dt_color_picker_helper stats reading %u channels (filters %u) cst %d -> %d size %zu denoised %d took %.3f secs (%.3f CPU)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const._color_picker_work_1ch.low = private unnamed_addr constant [4 x float] [float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF], align 16
@__const._color_picker_work_1ch.high = private unnamed_addr constant [4 x float] [float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF], align 16
@.str.6 = private unnamed_addr constant [104 x i8] c"[dt_unreachable_codepath] {%s} %s:%d (%s) - we should not be here. please report this to the developers\00", align 1

; Function Attrs: nounwind uwtable
define void @dt_color_picker_backtransform_box(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !48  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load <2 x i32>, ptr %i.c, align 16, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !49
  %i.g = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.f, <2 x i32> splat (i32 1))
  %i.h = uitofp nneg <2 x i32> %i.g to <2 x float> ; 2 uses
  %.not78.not = icmp eq i32 %1, 2                 ; 3 uses
  %wide.trip.count = select i1 %.not78.not, i64 4, i64 1 ; 6 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 3 uses
  %i.j = extractelement <2 x float> %i.h, i64 1   ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  br i1 %.not78.not, label %.new, label %.epil.preheader

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count, 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.c

.unr-lcssa:                                       ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod80 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.m = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.n = urem i32 %i.m, 3
  %.not.epil = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not.epil, i64 0, i64 2
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !50
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.i
  %i.s = shl nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s ; 2 uses
  store float %i.r, ptr %i.t, align 4, !tbaa !50
  %i.u = and i64 %i.s, 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !50
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.aa = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.d, <2 x i32> splat (i32 1))
  %i.ab = uitofp nneg <2 x i32> %i.aa to <2 x float> ; 3 uses
  %i.ac = tail call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %wide.trip.count) #14 ; 0 uses
  br i1 %.not78.not, label %vector.ph, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b
  %i.ad = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ab
  br label %scalar.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %wide.trip.count, 4
  %broadcast.splat = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat76 = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ae = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.af = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat76
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl nuw nsw i64 %index, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ah, align 4, !tbaa !50 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec77 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ai = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, %i.ae ; 3 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ai, zeroinitializer
  %i.ak = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.ai, splat (float 1.000000e+00)
  %i.al = select reassoc nsz arcp contract afn <4 x i1> %i.ak, <4 x float> %i.ai, <4 x float> splat (float 1.000000e+00)
  %i.am = select reassoc nsz arcp contract afn <4 x i1> %i.aj, <4 x float> zeroinitializer, <4 x float> %i.al
  %i.an = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec77, %i.af ; 3 uses
  %i.ao = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.an, zeroinitializer
  %i.ap = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.an, splat (float 1.000000e+00)
  %i.aq = select reassoc nsz arcp contract afn <4 x i1> %i.ap, <4 x float> %i.an, <4 x float> splat (float 1.000000e+00)
  %i.ar = select reassoc nsz arcp contract afn <4 x i1> %i.ao, <4 x float> zeroinitializer, <4 x float> %i.aq
  %interleaved.vec = shufflevector <4 x float> %i.am, <4 x float> %i.ar, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ah, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !96

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = urem i32 %i.at, 3
  %.not = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not, i64 0, i64 2
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !50
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.i
  %.idx81 = shl nuw nsw i64 %indvars.iv, 3
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %.idx81 ; 2 uses
  store float %i.ay, ptr %i.az, align 4, !tbaa !50
  %i.ba = load float, ptr %i.k, align 4, !tbaa !50
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store float %i.bb, ptr %i.bc, align 4, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.be = urem i32 %i.bd, 3
  %.not.1 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not.1, i64 0, i64 2
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !50
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.i
  %.idx82 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx82 ; 2 uses
  store float %i.bi, ptr %i.bj, align 4, !tbaa !50
  %i.bk = load float, ptr %i.l, align 4, !tbaa !50
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store float %i.bl, ptr %i.bm, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.c

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv64, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bn, align 4, !tbaa !50
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.ad ; 3 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.bp, zeroinitializer
  %i.br = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.bp, splat (float 1.000000e+00)
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bp, <2 x float> splat (float 1.000000e+00)
  %i.bt = select <2 x i1> %i.bq, <2 x float> zeroinitializer, <2 x float> %i.bs
  store <2 x float> %i.bt, ptr %i.bn, align 4, !tbaa !50
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count
  br i1 %exitcond68.not, label %middle.block, label %scalar.ph, !llvm.loop !97
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_color_picker_transform_box(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca [8 x float], align 16             ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !48  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load <2 x i32>, ptr %i.f, align 16, !tbaa !49
  %.fr = freeze <2 x i32> %i.g                    ; 2 uses
  %i.h = shufflevector <2 x i32> %.fr, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.i = sitofp reassoc nsz arcp contract afn <8 x i32> %i.h to <8 x float>
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !49
  %i.l = sitofp reassoc nsz arcp contract afn <2 x i32> %i.k to <2 x float>
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.m = phi <2 x float> [ %i.l, %bb.b ], [ splat (float 1.000000e+00), %bb.a ] ; 4 uses
  %i.n = icmp slt <2 x i32> %.fr, splat (i32 1)
  %5 = bitcast <2 x i1> %i.n to i2
  %or.cond.not = icmp eq i2 %5, 0
  br i1 %or.cond.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.o = icmp sgt i32 %1, 0
  br i1 %i.o, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.p = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.p, -128
  %or.cond100 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond100, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i32 %1, 32
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %wide.load = load <8 x float>, ptr %i.r, align 4, !tbaa !50
  %wide.load92 = load <8 x float>, ptr %i.s, align 4, !tbaa !50
  %wide.load93 = load <8 x float>, ptr %i.t, align 4, !tbaa !50
  %wide.load94 = load <8 x float>, ptr %i.u, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store <8 x float> %wide.load, ptr %i.v, align 4, !tbaa !50
  store <8 x float> %wide.load92, ptr %i.w, align 4, !tbaa !50
  store <8 x float> %wide.load93, ptr %i.x, align 4, !tbaa !50
  store <8 x float> %wide.load94, ptr %i.y, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !102

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index96
  %wide.load97 = load <4 x float>, ptr %i.aa, align 4, !tbaa !50
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index96
  store <4 x float> %wide.load97, ptr %i.ab, align 4, !tbaa !50
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next98, %n.vec95
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %n.vec95, %wide.trip.count
  br i1 %cmp.n99, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ] ; 4 uses
  %i.ad = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.af = load float, ptr %i.ae, align 4, !tbaa !50
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.prol
  store float %i.af, ptr %i.ag, align 4, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !100

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ai = icmp ugt i64 %i.ah, -8
  br i1 %i.ai, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !50
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.ak, ptr %i.al, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.an = load float, ptr %i.am, align 4, !tbaa !50
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store float %i.an, ptr %i.ao, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  store float %i.aq, ptr %i.ar, align 4, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.at = load float, ptr %i.as, align 4, !tbaa !50
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  store float %i.at, ptr %i.au, align 4, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.3
  %i.aw = load float, ptr %i.av, align 4, !tbaa !50
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.3
  store float %i.aw, ptr %i.ax, align 4, !tbaa !50
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.4
  store float %i.az, ptr %i.ba, align 4, !tbaa !50
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.5
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !50
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.5
  store float %i.bc, ptr %i.bd, align 4, !tbaa !50
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.6
  %i.bf = load float, ptr %i.be, align 4, !tbaa !50
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.6
  store float %i.bf, ptr %i.bg, align 4, !tbaa !50
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !101

bb.c:                                             ; preds = %.thread
  %i.bh = icmp eq i32 %1, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bi = load <8 x float>, ptr %2, align 4, !tbaa !50
  %i.bj = fmul reassoc nsz arcp contract afn <8 x float> %i.bi, %i.i
  store <8 x float> %i.bj, ptr %i.c, align 16, !tbaa !50
  %i.bk = select i1 %i.bh, i64 4, i64 1
  %i.bl = call i32 @dt_dev_distort_transform(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.bk) #14 ; 0 uses
  br i1 %i.bh, label %_sort_coordinates.exit, label %bb.d

_sort_coordinates.exit:                           ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bp = load <2 x float>, ptr %i.c, align 16, !tbaa !50 ; 3 uses
  %i.bq = load <2 x float>, ptr %i.bo, align 8, !tbaa !50 ; 3 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bp, %i.bq ; 2 uses
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bp, <2 x float> %i.bq ; 3 uses
  %i.bt = select <2 x i1> %i.br, <2 x float> %i.bq, <2 x float> %i.bp ; 3 uses
  %i.bu = load <2 x float>, ptr %i.bn, align 16, !tbaa !50 ; 3 uses
  %i.bv = load <2 x float>, ptr %i.bm, align 8, !tbaa !50 ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bu, %i.bv ; 2 uses
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bu, <2 x float> %i.bv ; 3 uses
  %i.by = select <2 x i1> %i.bw, <2 x float> %i.bv, <2 x float> %i.bu ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bt, %i.by ; 2 uses
  %i.ca = select <2 x i1> %i.bz, <2 x float> %i.by, <2 x float> %i.bt
  %i.cb = select <2 x i1> %i.bz, <2 x float> %i.bt, <2 x float> %i.by ; 3 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bs, %i.bx ; 2 uses
  %i.cd = select <2 x i1> %i.cc, <2 x float> %i.bx, <2 x float> %i.bs ; 3 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cd, %i.cb ; 2 uses
  %i.cf = select <2 x i1> %i.ce, <2 x float> %i.cb, <2 x float> %i.cd
  %i.cg = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, %i.ca
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = fdiv reassoc nsz arcp contract afn <2 x float> %i.ch, %i.m
  store <2 x float> %i.ci, ptr %3, align 4, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = select <2 x i1> %i.cc, <2 x float> %i.bs, <2 x float> %i.bx
  %i.cl = select <2 x i1> %i.ce, <2 x float> %i.cd, <2 x float> %i.cb
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cl
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float 5.000000e-01) ; 2 uses
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %i.cn, %i.m
  %i.co = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.co, ptr %i.cj, align 4, !tbaa !50
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cq = load float, ptr %i.c, align 16, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cs = extractelement <2 x float> %i.m, i64 0
  %i.ct = fdiv reassoc nsz arcp contract afn float %i.cq, %i.cs
  store float %i.ct, ptr %3, align 4, !tbaa !50
  %i.cu = load float, ptr %i.cr, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_sort_coordinates.exit
  %.sink90 = phi float [ %i.cu, %bb.d ], [ %i.cp, %_sort_coordinates.exit ]
  %.sink89 = phi i64 [ 4, %bb.d ], [ 12, %_sort_coordinates.exit ]
  %i.cv = extractelement <2 x float> %i.m, i64 1
end_hunk_0
