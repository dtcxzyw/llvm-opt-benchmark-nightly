Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/color_picker?download=true
inline.NumInlined: 71
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 19
begin_hunk_0
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
  %i.c = alloca [8 x float], align 16             ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !48  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load <2 x i32>, ptr %i.f, align 16, !tbaa !49 ; 2 uses
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
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
  %i.n = icmp slt <2 x i32> %i.g, splat (i32 1)   ; 2 uses
  %i.o = extractelement <2 x i1> %i.n, i64 0
  %i.p = extractelement <2 x i1> %i.n, i64 1
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond, label %.preheader, label %bb.c

.preheader:                                       ; preds = %.thread
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.r = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.r, -128
  %or.cond100 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond100, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i32 %1, 32
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %wide.load = load <8 x float>, ptr %i.t, align 4, !tbaa !50
  %wide.load92 = load <8 x float>, ptr %i.u, align 4, !tbaa !50
  %wide.load93 = load <8 x float>, ptr %i.v, align 4, !tbaa !50
  %wide.load94 = load <8 x float>, ptr %i.w, align 4, !tbaa !50
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <8 x float> %wide.load, ptr %i.x, align 4, !tbaa !50
  store <8 x float> %wide.load92, ptr %i.y, align 4, !tbaa !50
  store <8 x float> %wide.load93, ptr %i.z, align 4, !tbaa !50
  store <8 x float> %wide.load94, ptr %i.aa, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !102

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index96
  %wide.load97 = load <4 x float>, ptr %i.ac, align 4, !tbaa !50
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index96
  store <4 x float> %wide.load97, ptr %i.ad, align 4, !tbaa !50
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next98, %n.vec95
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %n.vec95, %wide.trip.count
  br i1 %cmp.n99, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !50
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.prol
  store float %i.ah, ptr %i.ai, align 4, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !100

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ak = icmp ugt i64 %i.aj, -8
  br i1 %i.ak, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.am = load float, ptr %i.al, align 4, !tbaa !50
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.am, ptr %i.an, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !50
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store float %i.ap, ptr %i.aq, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.as = load float, ptr %i.ar, align 4, !tbaa !50
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  store float %i.as, ptr %i.at, align 4, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.av = load float, ptr %i.au, align 4, !tbaa !50
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  store float %i.av, ptr %i.aw, align 4, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.3
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !50
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.3
  store float %i.ay, ptr %i.az, align 4, !tbaa !50
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !50
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.4
  store float %i.bb, ptr %i.bc, align 4, !tbaa !50
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.5
  %i.be = load float, ptr %i.bd, align 4, !tbaa !50
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.5
  store float %i.be, ptr %i.bf, align 4, !tbaa !50
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.6
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !50
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.6
  store float %i.bh, ptr %i.bi, align 4, !tbaa !50
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !101

bb.c:                                             ; preds = %.thread
  %i.bj = icmp eq i32 %1, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bl = load <8 x float>, ptr %2, align 4, !tbaa !50
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, %i.i
  store <8 x float> %i.bm, ptr %i.c, align 16, !tbaa !50
  %i.bn = select i1 %i.bj, i64 4, i64 1
  %i.bo = call i32 @dt_dev_distort_transform(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.bn) #14 ; 0 uses
  %i.bp = load float, ptr %i.c, align 16, !tbaa !50 ; 2 uses
  br i1 %i.bj, label %_sort_coordinates.exit, label %bb.d

_sort_coordinates.exit:                           ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bt = load float, ptr %i.bk, align 4, !tbaa !50
  %i.bu = load <2 x float>, ptr %i.bs, align 8, !tbaa !50 ; 3 uses
  %i.bv = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bt, i64 1 ; 3 uses
  %i.bx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bw, %i.bu ; 2 uses
  %i.by = select <2 x i1> %i.bx, <2 x float> %i.bw, <2 x float> %i.bu ; 3 uses
  %i.bz = select <2 x i1> %i.bx, <2 x float> %i.bu, <2 x float> %i.bw ; 3 uses
  %i.ca = load <2 x float>, ptr %i.br, align 16, !tbaa !50 ; 3 uses
  %i.cb = load <2 x float>, ptr %i.bq, align 8, !tbaa !50 ; 3 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ca, %i.cb ; 2 uses
  %i.cd = select <2 x i1> %i.cc, <2 x float> %i.ca, <2 x float> %i.cb ; 3 uses
  %i.ce = select <2 x i1> %i.cc, <2 x float> %i.cb, <2 x float> %i.ca ; 3 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bz, %i.ce ; 2 uses
  %i.cg = select <2 x i1> %i.cf, <2 x float> %i.ce, <2 x float> %i.bz
  %i.ch = select <2 x i1> %i.cf, <2 x float> %i.bz, <2 x float> %i.ce ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.by, %i.cd ; 2 uses
  %i.cj = select <2 x i1> %i.ci, <2 x float> %i.cd, <2 x float> %i.by ; 3 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cj, %i.ch ; 2 uses
  %i.cl = select <2 x i1> %i.ck, <2 x float> %i.ch, <2 x float> %i.cj
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cg
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fdiv reassoc nsz arcp contract afn <2 x float> %i.cn, %i.m
  store <2 x float> %i.co, ptr %3, align 4, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = select <2 x i1> %i.ci, <2 x float> %i.by, <2 x float> %i.cd
  %i.cr = select <2 x i1> %i.ck, <2 x float> %i.cj, <2 x float> %i.ch
  %i.cs = fadd reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cr
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, splat (float 5.000000e-01) ; 2 uses
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %i.ct, %i.m
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.cu, ptr %i.cp, align 4, !tbaa !50
  %i.cv = extractelement <2 x float> %i.ct, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cw = extractelement <2 x float> %i.m, i64 0
  %i.cx = fdiv reassoc nsz arcp contract afn float %i.bp, %i.cw
  store float %i.cx, ptr %3, align 4, !tbaa !50
  %i.cy = load float, ptr %i.bk, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_sort_coordinates.exit
  %.sink90 = phi float [ %i.cy, %bb.d ], [ %i.cv, %_sort_coordinates.exit ]
  %.sink89 = phi i64 [ 4, %bb.d ], [ 12, %_sort_coordinates.exit ]
  %i.cz = extractelement <2 x float> %i.m, i64 1
  %i.da = fdiv reassoc nsz arcp contract afn float %.sink90, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 %.sink89
  store float %i.da, ptr %i.db, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.e
  ret void
}

declare i32 @dt_dev_distort_transform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_color_picker_box(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 18 uses
  %i.b = icmp eq i32 %3, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i32, ptr %i.c, align 16, !tbaa !106
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !107 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load <2 x i32>, ptr %i.h, align 16, !tbaa !49
  %i.j = sitofp reassoc nsz arcp contract afn <2 x i32> %i.i to <2 x float> ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !91   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !92   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !108
  %.fr107 = freeze i32 %i.p
  %i.q = icmp eq i32 %.fr107, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br i1 %i.q, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.c
  %i.r = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <4 x float>, ptr %i.s, align 8, !tbaa !50
  %i.u = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.r
  store <4 x float> %i.u, ptr %i.a, align 16, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load <2 x float>, ptr %i.v, align 8, !tbaa !50
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, %i.j
  store <2 x float> %i.y, ptr %i.w, align 16, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load <2 x float>, ptr %i.z, align 8, !tbaa !50
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, %i.j ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  store float %i.ad, ptr %i.aa, align 8, !tbaa !50
  %i.ae = extractelement <2 x float> %i.ac, i64 1
  br label %.split106.us

.split:                                           ; preds = %bb.c
  %i.af = load <2 x float>, ptr %2, align 8, !tbaa !50
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.j ; 4 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.ah, ptr %i.a, align 16, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = extractelement <2 x float> %i.ag, i64 0
  %i.ak = extractelement <2 x float> %i.ag, i64 1
  store <2 x float> %i.ag, ptr %i.ai, align 16, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.aj, ptr %i.al, align 8, !tbaa !50
  br label %.split106.us

.split106.us:                                     ; preds = %.split, %.split.us.preheader
  %.sink = phi float [ %i.ak, %.split ], [ %i.ae, %.split.us.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %.sink, ptr %i.am, align 4, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !119
  %i.ap = tail call i32 %i.ao() #14
  %i.aq = and i32 %i.ap, 131072
  %i.ar = icmp eq i32 %3, 0                       ; 2 uses
  %i.as = load ptr, ptr %i.f, align 16, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.au = load i32, ptr %i.at, align 16, !tbaa !120
  %i.av = icmp ne i32 %i.aq, 0
  %i.aw = and i1 %i.ar, %i.av
  %.neg = sext i1 %i.aw to i32
  %i.ax = add i32 %i.au, %.neg
  %i.ay = sitofp reassoc nsz arcp contract afn i32 %i.ax to double
  %i.az = select i1 %i.ar, i32 3, i32 4
  %i.ba = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %i.e, ptr noundef %i.as, double noundef %i.ay, i32 noundef %i.az, ptr noundef nonnull %i.a, i64 noundef 4) #14 ; 0 uses
  %i.bb = load float, ptr %i.a, align 16, !tbaa !50 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !50 ; 3 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %i.bb, %i.bd ; 2 uses
  %i.bf = select i1 %i.be, float %i.bb, float %i.bd ; 3 uses
  %i.bg = select i1 %i.be, float %i.bd, float %i.bb ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !50 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !50 ; 3 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bi, %i.bk ; 2 uses
  %i.bm = select i1 %i.bl, float %i.bi, float %i.bk ; 3 uses
  %i.bn = select i1 %i.bl, float %i.bk, float %i.bi ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load float, ptr %i.bo, align 16, !tbaa !50 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.br = load float, ptr %i.bq, align 8, !tbaa !50 ; 3 uses
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.bp, %i.br ; 2 uses
  %i.bt = select i1 %i.bs, float %i.bp, float %i.br ; 3 uses
  %i.bu = select i1 %i.bs, float %i.br, float %i.bp ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !50 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.by = load float, ptr %i.bx, align 4, !tbaa !50 ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.bw, %i.by ; 2 uses
  %i.ca = select i1 %i.bz, float %i.bw, float %i.by ; 3 uses
  %i.cb = select i1 %i.bz, float %i.by, float %i.bw ; 3 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.bg, %i.bu ; 2 uses
  %i.cd = select i1 %i.cc, float %i.bu, float %i.bg
  %i.ce = select i1 %i.cc, float %i.bg, float %i.bu ; 3 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ogt float %i.bn, %i.cb ; 2 uses
  %i.cg = select i1 %i.cf, float %i.cb, float %i.bn
  %i.ch = select i1 %i.cf, float %i.bn, float %i.cb ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.bf, %i.bt ; 2 uses
  %i.cj = select i1 %i.ci, float %i.bf, float %i.bt
  %i.ck = select i1 %i.ci, float %i.bt, float %i.bf ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.bm, %i.ca ; 2 uses
  %i.cm = select i1 %i.cl, float %i.bm, float %i.ca
  %i.cn = select i1 %i.cl, float %i.ca, float %i.bm ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.ck, %i.ce ; 2 uses
  %i.cp = select i1 %i.co, float %i.ck, float %i.ce
  %i.cq = select i1 %i.co, float %i.ce, float %i.ck
  %i.cr = fcmp reassoc nsz arcp contract afn ogt float %i.cn, %i.ch ; 2 uses
  %i.cs = select i1 %i.cr, float %i.cn, float %i.ch
  %i.ct = select i1 %i.cr, float %i.ch, float %i.cn
  %i.cu = fadd reassoc nsz arcp contract afn float %i.cq, %i.cd
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, 5.000000e-01
  %i.cw = load i32, ptr %1, align 4, !tbaa !93
  %i.cx = sitofp reassoc nsz arcp contract afn i32 %i.cw to float
  %i.cy = fsub reassoc nsz arcp contract afn float %i.cv, %i.cx
  %i.cz = fptosi float %i.cy to i32               ; 4 uses
  store i32 %i.cz, ptr %4, align 4, !tbaa !49
  %i.da = fadd reassoc nsz arcp contract afn float %i.ct, %i.cg
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 5.000000e-01
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !94
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.dd to float
  %i.df = fsub reassoc nsz arcp contract afn float %i.db, %i.de
  %i.dg = fptosi float %i.df to i32               ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !49
  %i.di = fadd reassoc nsz arcp contract afn float %i.cj, %i.cp
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, 5.000000e-01
  %i.dk = load i32, ptr %1, align 4, !tbaa !93
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dk to float
  %i.dm = fsub reassoc nsz arcp contract afn float %i.dj, %i.dl
  %i.dn = fptosi float %i.dm to i32               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !49
  %i.dp = fadd reassoc nsz arcp contract afn float %i.cm, %i.cs
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, 5.000000e-01
  %i.dr = load i32, ptr %i.dc, align 4, !tbaa !94
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dr to float
  %i.dt = fsub reassoc nsz arcp contract afn float %i.dq, %i.ds
  %i.du = fptosi float %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.dw = add nsw i32 %i.cz, 1
  %. = call i32 @llvm.smax.i32(i32 %i.dw, i32 %i.dn) ; 4 uses
  store i32 %., ptr %i.do, align 4, !tbaa !49
  %i.dx = add nsw i32 %i.dg, 1
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 %i.du) ; 4 uses
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !49
  %.not94 = icmp sgt i32 %i.l, %i.cz
  %.not95 = icmp sgt i32 %i.n, %i.dg
  %or.cond103 = select i1 %.not94, i1 %.not95, i1 false
  br i1 %or.cond103, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.split106.us
  %i.dz = icmp slt i32 %., 0
  %i.ea = icmp slt i32 %i.dy, 0
  %or.cond = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = call i32 @llvm.smax.i32(i32 %i.cz, i32 0) ; 2 uses
  store i32 %spec.select, ptr %4, align 4, !tbaa !49
  %spec.select100 = call i32 @llvm.smax.i32(i32 %i.dg, i32 0) ; 2 uses
  store i32 %spec.select100, ptr %i.dh, align 4, !tbaa !49
  %i.eb = icmp sgt i32 %., %i.l
  %spec.select101 = call i32 @llvm.umax.i32(i32 %., i32 1)
  %i.ec = select i1 %i.eb, i32 %i.l, i32 %spec.select101 ; 2 uses
  store i32 %i.ec, ptr %i.do, align 4, !tbaa !49
  %i.ed = icmp sgt i32 %i.dy, %i.n
  %spec.select102 = call i32 @llvm.umax.i32(i32 %i.dy, i32 1)
  %i.ee = select i1 %i.ed, i32 %i.n, i32 %spec.select102 ; 2 uses
  store i32 %i.ee, ptr %i.dv, align 4, !tbaa !49
  %.not98 = icmp sgt i32 %i.ec, %spec.select
  br i1 %.not98, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ef = icmp sle i32 %i.ee, %spec.select100
  %i.eg = zext i1 %i.ef to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.split106.us, %bb.d
  %.081 = phi i32 [ 1, %.split106.us ], [ 1, %bb.d ], [ %i.eg, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.1 = phi i32 [ %.081, %bb.g ], [ 1, %bb.b ]
  ret i32 %.1
}

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_color_picker_helper(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 48)) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.rusage, align 16            ; 4 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = alloca [4 x i32], align 16               ; 7 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca [4 x float], align 16             ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 5 uses
  %i.h = alloca [4 x i32], align 16               ; 7 uses
  %11 = alloca %struct.rusage, align 16           ; 4 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !145
  %i.j = and i32 %i.i, 16
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %dt_get_perf_times.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.k = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #14 ; 0 uses
  %i.l = load i64, ptr %12, align 8, !tbaa !147
  %i.m = add nsw i64 %i.l, -1290608000
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.p = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %11) #14 ; 0 uses
  %i.q = load <2 x i64>, ptr %11, align 16, !tbaa !149 ; 2 uses
  %i.r = shufflevector <2 x i64> %i.q, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x i64> %i.r, i64 %i.m, i64 0
  %i.t = sitofp reassoc nsz arcp contract afn <2 x i64> %i.s to <2 x double>
  %i.u = insertelement <2 x i64> %i.q, i64 %i.o, i64 0
  %i.v = sitofp reassoc nsz arcp contract afn <2 x i64> %i.u to <2 x double>
  %i.w = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.v, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.x = fadd reassoc nsz arcp contract afn <2 x double> %i.w, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %dt_get_perf_times.exit

dt_get_perf_times.exit:                           ; preds = %bb.a, %bb.b
  %i.y = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.x, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false), !tbaa !50
  store <8 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.z, align 4, !tbaa !50
  %i.ab = load i32, ptr %0, align 16, !tbaa !150
  switch i32 %i.ab, label %bb.ak [
    i32 4, label %bb.c
    i32 1, label %bb.ae
  ]

bb.c:                                             ; preds = %dt_get_perf_times.exit
  %.not102 = icmp eq i32 %4, 0
  br i1 %.not102, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.ae = shl nsw i32 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !92
  %i.ah = mul nsw i32 %i.ae, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = call ptr @dt_alloc_aligned(i64 noundef %i.aj) #14 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %.not103 = icmp eq ptr %i.ak, null
  br i1 %.not103, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.am = shl nsw i32 %i.al, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = add nsw i64 %i.ao, 48
  %i.aq = and i64 %i.ap, -64
  %i.ar = call ptr @dt_alloc_aligned(i64 noundef %i.aq) #14 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = load i32, ptr %i.ac, align 4, !tbaa !91 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 7 uses
  %i.au = load i32, ptr %i.af, align 4, !tbaa !92 ; 5 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %.not.i113 = icmp eq i32 %i.au, 0
  br i1 %.not.i113, label %blur_2D_Bspline.exit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.e
  %i.aw = icmp slt i32 %i.au, 2
  %i.ax = shl nsw i64 %i.at, 2                    ; 5 uses
  %i.ay = add nsw i64 %i.av, -1                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  %i.az = add nsw i64 %i.at, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.as, 4
  %n.vec = and i64 %i.at, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph49.i
  %.02647.i = phi i64 [ 0, %.lr.ph49.i ], [ %i.de, %._crit_edge.i ] ; 2 uses
  %i.ba = trunc i64 %.02647.i to i32              ; 3 uses
  br i1 %i.aw, label %dwt_interleave_rows.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = sdiv i32 %i.ba, %i.au
  %i.bc = srem i32 %i.ba, %i.au
  %i.bd = add nsw i32 %i.bc, %i.bb
  br label %dwt_interleave_rows.exit.i

dwt_interleave_rows.exit.i:                       ; preds = %bb.g, %bb.f
  %.1.i.i = phi i32 [ %i.bd, %bb.g ], [ %i.ba, %bb.f ] ; 3 uses
  %i.be = sext i32 %.1.i.i to i64                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.bf = call i32 @llvm.smax.i32(i32 %.1.i.i, i32 2)
  %i.bg = add nsw i32 %i.bf, -2
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = mul i64 %i.ax, %i.bh                    ; 2 uses
  %i.bj = call i32 @llvm.smax.i32(i32 %.1.i.i, i32 1)
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = mul i64 %i.ax, %i.bl                    ; 2 uses
  %i.bn = mul i64 %i.ax, %i.be                    ; 2 uses
  %i.bo = add nsw i64 %i.be, 1
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.ay)
  %i.bp = mul i64 %..i.i, %i.ax                   ; 2 uses
  %i.bq = add nsw i64 %i.be, 2
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.ay)
  %i.bs = mul i64 %i.br, %i.ax                    ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dwt_interleave_rows.exit.i
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader444, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bt = shl i64 %index, 2                       ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt ; 5 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bt
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.bi
  %i.bx = getelementptr [4 x i8], ptr %i.bu, i64 %i.bm
  %i.by = getelementptr [4 x i8], ptr %i.bu, i64 %i.bn
  %i.bz = getelementptr [4 x i8], ptr %i.bu, i64 %i.bp
  %i.ca = getelementptr [4 x i8], ptr %i.bu, i64 %i.bs
  %wide.vec = load <16 x float>, ptr %i.bw, align 4, !tbaa !50, !alias.scope !156
  %wide.vec415 = load <16 x float>, ptr %i.bx, align 4, !tbaa !50, !alias.scope !156
  %wide.vec420 = load <16 x float>, ptr %i.by, align 4, !tbaa !50, !alias.scope !156
  %wide.vec425 = load <16 x float>, ptr %i.bz, align 4, !tbaa !50, !alias.scope !156
  %wide.vec430 = load <16 x float>, ptr %i.ca, align 4, !tbaa !50, !alias.scope !156
  %i.cb = fadd reassoc nsz arcp contract afn <16 x float> %wide.vec425, %wide.vec415
  %i.cc = fmul reassoc nsz arcp contract afn <16 x float> %i.cb, splat (float 2.500000e-01)
  %i.cd = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec420, splat (float 3.750000e-01)
  %i.ce = fadd reassoc nsz arcp contract afn <16 x float> %i.cc, %i.cd
  %i.cf = fadd reassoc nsz arcp contract afn <16 x float> %wide.vec430, %wide.vec
  %i.cg = fmul reassoc nsz arcp contract afn <16 x float> %i.cf, splat (float 6.250000e-02)
  %interleaved.vec = fadd reassoc nsz arcp contract afn <16 x float> %i.ce, %i.cg
  store <16 x float> %interleaved.vec, ptr %i.bv, align 64, !tbaa !50, !alias.scope !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i, label %.lr.ph.i.i.preheader444

.lr.ph.i.i.preheader444:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.036.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader444, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ %.036.i.i.ph, %.lr.ph.i.i.preheader444 ] ; 2 uses
  %i.ci = shl i64 %.036.i.i, 2                    ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ci ; 5 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ci
  %i.cl = getelementptr [4 x i8], ptr %i.cj, i64 %i.bi
  %i.cm = getelementptr [4 x i8], ptr %i.cj, i64 %i.bm
  %i.cn = getelementptr [4 x i8], ptr %i.cj, i64 %i.bn
  %i.co = getelementptr [4 x i8], ptr %i.cj, i64 %i.bp
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %i.bs
  %i.cq = load <4 x float>, ptr %i.cl, align 4, !tbaa !50, !alias.scope !156
  %i.cr = load <4 x float>, ptr %i.cm, align 4, !tbaa !50, !alias.scope !156
  %i.cs = load <4 x float>, ptr %i.cn, align 4, !tbaa !50, !alias.scope !156
  %i.ct = fmul reassoc nsz arcp contract afn <4 x float> %i.cs, splat (float 3.750000e-01)
  %i.cu = load <4 x float>, ptr %i.co, align 4, !tbaa !50, !alias.scope !156
  %i.cv = load <4 x float>, ptr %i.cp, align 4, !tbaa !50, !alias.scope !156
  %i.cw = fadd reassoc nsz arcp contract afn <4 x float> %i.cu, %i.cr
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %i.cw, splat (float 2.500000e-01)
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %i.cv, %i.cq
  %i.cz = fmul reassoc nsz arcp contract afn <4 x float> %i.cy, splat (float 6.250000e-02)
  %i.da = fadd reassoc nsz arcp contract afn <4 x float> %i.cx, %i.ct
  %i.db = fadd reassoc nsz arcp contract afn <4 x float> %i.da, %i.cz
  store <4 x float> %i.db, ptr %i.ck, align 16, !tbaa !50, !alias.scope !157
  %i.dc = add nuw i64 %.036.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dc, %i.at
  br i1 %exitcond.not.i.i, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !129

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %middle.block
  %i.dd = mul nsw i64 %i.be, %i.at
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.h, %dwt_interleave_rows.exit.i
  %i.de = add nuw i64 %.02647.i, 1                ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.de, %i.av
  br i1 %exitcond52.not.i, label %blur_2D_Bspline.exit, label %bb.f

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.046.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dq, %bb.h ] ; 5 uses
  %i.df = add i64 %.046.i, %i.dd
  %.idx.i = shl i64 %i.df, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.dh = trunc i64 %.046.i to i32                ; 2 uses
  %i.di = call i32 @llvm.smax.i32(i32 %i.dh, i32 2)
  %i.dj = shl i32 %i.di, 2
  %i.dk = add i32 %i.dj, -8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dh, i32 1)
  %i.dn = shl i32 %i.dm, 2
  %i.do = add i32 %i.dn, -4
  %i.dp = sext i32 %i.do to i64
  %i.dq = add nuw i64 %.046.i, 1                  ; 3 uses
  %..i29.i = call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.az)
  %i.dr = add i64 %.046.i, 2
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.az)
  %i.dt = getelementptr [4 x i8], ptr %i.ar, i64 %i.dl
  %i.du = getelementptr [4 x i8], ptr %i.ar, i64 %i.dp
  %.idx.i.i = shl i64 %.046.i, 4
  %i.dv = getelementptr i8, ptr %i.ar, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i29.i, 4
  %i.dw = getelementptr i8, ptr %i.ar, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.ds, 4
  %i.dx = getelementptr i8, ptr %i.ar, i64 %.idx26.i.i
  %i.dy = load <4 x float>, ptr %i.dt, align 16, !tbaa !50, !alias.scope !160
end_hunk_0
begin_hunk_1_@dt_color_picker_helper:bb.a
  %i.lf = sext i32 %i.ks to i64
  br label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.lr.ph.i145.preheader, %_color_picker_rgb_or_lab.exit.loopexit
  %.0291.i146 = phi i64 [ %i.ma, %_color_picker_rgb_or_lab.exit.loopexit ], [ %i.lf, %.lr.ph.i145.preheader ] ; 2 uses
  %i.lg = phi <4 x float> [ %i.ly, %_color_picker_rgb_or_lab.exit.loopexit ], [ splat (float f0x7F7FFFFF), %.lr.ph.i145.preheader ]
  %i.lh = phi <4 x float> [ %i.lz, %_color_picker_rgb_or_lab.exit.loopexit ], [ splat (float f0xFF7FFFFF), %.lr.ph.i145.preheader ]
  %i.li = phi <4 x float> [ %i.ls, %_color_picker_rgb_or_lab.exit.loopexit ], [ zeroinitializer, %.lr.ph.i145.preheader ]
  %i.lj = mul i64 %.0291.i146, %i.la
  %gep.i147 = getelementptr [4 x i8], ptr %invariant.gep.i143, i64 %i.lj
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i145, %.preheader.i
  %.01113.i = phi i64 [ %i.lw, %.preheader.i ], [ 0, %.lr.ph.i145 ] ; 2 uses
  %i.lk = phi <4 x float> [ %i.ly, %.preheader.i ], [ %i.lg, %.lr.ph.i145 ] ; 2 uses
  %i.ll = phi <4 x float> [ %i.lz, %.preheader.i ], [ %i.lh, %.lr.ph.i145 ] ; 2 uses
  %i.lm = phi <4 x float> [ %i.ls, %.preheader.i ], [ %i.li, %.lr.ph.i145 ]
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %gep.i147, i64 %.01113.i
  %i.lo = load <4 x float>, ptr %i.ln, align 4, !tbaa !50 ; 4 uses
  %i.lp = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.lk, %i.lo
  %i.lq = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ll, %i.lo
  %i.lr = shufflevector <4 x i1> %i.lp, <4 x i1> %i.lq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ls = fadd reassoc nsz arcp contract afn <4 x float> %i.lo, %i.lm ; 3 uses
  %i.lt = shufflevector <4 x float> %i.lk, <4 x float> %i.ll, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lu = shufflevector <4 x float> %i.lo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lv = select <8 x i1> %i.lr, <8 x float> %i.lt, <8 x float> %i.lu ; 3 uses
  %i.lw = add nuw i64 %.01113.i, 4                ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.ky
  %i.ly = shufflevector <8 x float> %i.lv, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.lz = shufflevector <8 x float> %i.lv, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  br i1 %i.lx, label %.preheader.i, label %_color_picker_rgb_or_lab.exit.loopexit

_color_picker_rgb_or_lab.exit.loopexit:           ; preds = %.preheader.i
  %i.ma = add nuw i64 %.0291.i146, 1              ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.le
  br i1 %i.mb, label %.lr.ph.i145, label %_color_picker_work_4ch.exit170

_color_picker_work_4ch.exit170:                   ; preds = %_color_picker_rgb_or_lab.exit.loopexit, %.lr.ph.preheader.i144, %bb.z
  %i.mc = phi <8 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.z ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph.preheader.i144 ], [ %i.lv, %_color_picker_rgb_or_lab.exit.loopexit ]
  %i.md = phi <4 x float> [ zeroinitializer, %bb.z ], [ zeroinitializer, %.lr.ph.preheader.i144 ], [ %i.ls, %_color_picker_rgb_or_lab.exit.loopexit ]
  %i.me = sub nsw i32 %i.kq, %i.ks
  %i.mf = mul nsw i32 %i.kw, %i.me
  %i.mg = sext i32 %i.mf to i64
  %i.mh = uitofp reassoc nsz arcp contract afn i64 %i.mg to float
  %i.mi = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mk = fdiv reassoc nsz arcp contract afn <4 x float> %i.md, %i.mj
  store <4 x float> %i.mk, ptr %5, align 4, !tbaa !50
  store <8 x float> %i.mc, ptr %i.z, align 4, !tbaa !50
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ml = icmp eq i32 %7, -1
  br i1 %i.ml, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mm = getelementptr i8, ptr %2, i64 8
  %.val109 = load i32, ptr %i.mm, align 4, !tbaa !91
  call fastcc void @_color_picker_work_4ch(ptr noundef %.1, i32 %.val109, ptr noundef %3, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @_color_picker_rgb_or_lab)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.mn = call ptr @dt_iop_colorspace_to_name(i32 noundef %6) #14
  %i.mo = call ptr @dt_iop_colorspace_to_name(i32 noundef %7) #14
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, ptr noundef %i.mn, ptr noundef %i.mo) #14
  %i.mp = getelementptr i8, ptr %2, i64 8
  %.val108 = load i32, ptr %i.mp, align 4, !tbaa !91
  call fastcc void @_color_picker_work_4ch(ptr noundef %.1, i32 %.val108, ptr noundef %3, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @_color_picker_rgb_or_lab)
  br label %bb.ad

bb.ad:                                            ; preds = %.split, %.split95, %_color_picker_work_4ch.exit142, %_color_picker_work_4ch.exit170, %bb.ac, %bb.ab, %bb.x, %_color_picker_work_4ch.exit
  call void @free(ptr noundef %.094) #14
  br label %bb.al

bb.ae:                                            ; preds = %dt_get_perf_times.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !162 ; 2 uses
  switch i32 %i.mr, label %bb.af [
    i32 9, label %bb.ai
    i32 0, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !49 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !49 ; 2 uses
  %i.my = icmp ult i32 %i.mv, %i.mx
  br i1 %i.my, label %.lr.ph.i171, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  br label %_color_picker_work_1ch.exit

.lr.ph.i171:                                      ; preds = %bb.af
  %i.mz = sext i32 %i.mt to i64
  %i.na = load i32, ptr %3, align 4, !tbaa !49    ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !49 ; 2 uses
  %i.nd = icmp ult i32 %i.na, %i.nc
  %i.ne = sext i32 %i.mx to i64
  %i.nf = sext i32 %i.na to i64
  %i.ng = sext i32 %i.nc to i64
  br i1 %i.nd, label %.lr.ph.i171.split, label %._crit_edge.i172.split.thread

._crit_edge.i172.split.thread:                    ; preds = %.lr.ph.i171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  br label %_color_picker_work_1ch.exit

.lr.ph.i171.split:                                ; preds = %.lr.ph.i171
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ni = sext i32 %i.mv to i64
  %i.nj = load i32, ptr %i.nh, align 4, !tbaa !94
  %i.nk = zext i32 %i.nj to i64
  %i.nl = load i32, ptr %2, align 4, !tbaa !93
  %i.nm = zext i32 %i.nl to i64
  br label %.lr.ph.i203

._crit_edge.i172.split:                           ; preds = %_color_picker_bayer.exit.loopexit
  %.pre.i173.pre = load i32, ptr %i.h, align 16, !tbaa !49 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa !50, !alias.scope !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa !50, !alias.scope !164
  %.not.i174 = icmp eq i32 %.pre.i173.pre, 0
  br i1 %.not.i174, label %_color_picker_work_1ch.exit, label %bb.ah

.lr.ph.i203:                                      ; preds = %_color_picker_bayer.exit.loopexit, %.lr.ph.i171.split
  %.02123.i = phi i64 [ %i.ni, %.lr.ph.i171.split ], [ %i.oq, %_color_picker_bayer.exit.loopexit ] ; 3 uses
  %i.nn = mul i64 %.02123.i, %i.mz
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nn
  %i.np = add i64 %.02123.i, %i.nk
  %i.nq = shl i64 %i.np, 1
  %i.nr = and i64 %i.nq, 14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i203
  %.017.i = phi i64 [ %i.nf, %.lr.ph.i203 ], [ %i.oo, %bb.ag ] ; 3 uses
  %i.ns = add i64 %.017.i, %i.nm
  %i.nt = and i64 %i.ns, 1
  %i.nu = or disjoint i64 %i.nr, %i.nt
  %.tr.i.i = trunc nuw nsw i64 %i.nu to i32
  %i.nv = shl nuw nsw i32 %.tr.i.i, 1
  %i.nw = lshr i32 %i.mr, %i.nv
  %i.nx = and i32 %i.nw, 3
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.017.i
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !50 ; 5 uses
  %i.oa = zext nneg i32 %i.nx to i64              ; 4 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.oa ; 2 uses
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !50
  %i.od = fadd reassoc nsz arcp contract afn float %i.oc, %i.nz
  store float %i.od, ptr %i.ob, align 4, !tbaa !50
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.oa ; 2 uses
  %i.of = load float, ptr %i.oe, align 4, !tbaa !50 ; 2 uses
  %i.og = fcmp reassoc nsz arcp contract afn olt float %i.of, %i.nz
  %..i.i204 = select reassoc nsz arcp contract afn i1 %i.og, float %i.of, float %i.nz
  store float %..i.i204, ptr %i.oe, align 4, !tbaa !50
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.oa ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !50 ; 2 uses
  %i.oj = fcmp reassoc nsz arcp contract afn ogt float %i.oi, %i.nz
  %i.ok = select reassoc nsz arcp contract afn i1 %i.oj, float %i.oi, float %i.nz
  store float %i.ok, ptr %i.oh, align 4, !tbaa !50
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.oa ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !49
  %i.on = add i32 %i.om, 1
  store i32 %i.on, ptr %i.ol, align 4, !tbaa !49
  %i.oo = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.op = icmp ult i64 %i.oo, %i.ng
  br i1 %i.op, label %bb.ag, label %_color_picker_bayer.exit.loopexit

_color_picker_bayer.exit.loopexit:                ; preds = %bb.ag
  %i.oq = add nuw i64 %.02123.i, 1                ; 2 uses
  %i.or = icmp ult i64 %i.oq, %i.ne
  br i1 %i.or, label %.lr.ph.i203, label %._crit_edge.i172.split

bb.ah:                                            ; preds = %._crit_edge.i172.split
  %i.os = load float, ptr %i.e, align 16, !tbaa !50
  %i.ot = uitofp reassoc nsz arcp contract afn i32 %.pre.i173.pre to float
  %i.ou = fdiv reassoc nsz arcp contract afn float %i.os, %i.ot
  br label %_color_picker_work_1ch.exit

_color_picker_work_1ch.exit:                      ; preds = %._crit_edge.i172.split.thread, %._crit_edge.thread.i, %._crit_edge.i172.split, %bb.ah
  %i.ov = phi reassoc nsz arcp contract afn float [ %i.ou, %bb.ah ], [ 0.000000e+00, %._crit_edge.i172.split ], [ 0.000000e+00, %._crit_edge.thread.i ], [ 0.000000e+00, %._crit_edge.i172.split.thread ]
  store float %i.ov, ptr %5, align 4, !tbaa !50
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.oz = load <2 x i32>, ptr %i.ow, align 4, !tbaa !49 ; 2 uses
  %i.pa = icmp eq <2 x i32> %i.oz, zeroinitializer
  %i.pb = load <2 x float>, ptr %i.ox, align 4
  %i.pc = uitofp reassoc nsz arcp contract afn <2 x i32> %i.oz to <2 x float>
  %i.pd = fdiv reassoc nsz arcp contract afn <2 x float> %i.pb, %i.pc
  %i.pe = select <2 x i1> %i.pa, <2 x float> zeroinitializer, <2 x float> %i.pd
  store <2 x float> %i.pe, ptr %i.oy, align 4, !tbaa !50
  %i.pf = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !49 ; 2 uses
  %.not.3.i = icmp eq i32 %i.pg, 0
  %i.ph = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.pi = load float, ptr %i.ph, align 4
  %i.pj = uitofp reassoc nsz arcp contract afn i32 %i.pg to float
  %i.pk = fdiv reassoc nsz arcp contract afn float %i.pi, %i.pj
  %i.pl = select reassoc nsz arcp contract afn i1 %.not.3.i, float 0.000000e+00, float %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.pl, ptr %i.pm, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !49 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !49 ; 2 uses
  %i.pu = icmp ult i32 %i.pr, %i.pt
  br i1 %i.pu, label %.lr.ph.i179, label %._crit_edge.thread.i175

._crit_edge.thread.i175:                          ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  br label %_color_picker_work_1ch.exit184

.lr.ph.i179:                                      ; preds = %bb.ai
  %i.pv = sext i32 %i.pp to i64
  %i.pw = load i32, ptr %3, align 4, !tbaa !49    ; 2 uses
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !49 ; 2 uses
  %i.qa = icmp ult i32 %i.pw, %i.pz
  %i.qb = sext i32 %i.pt to i64
  %i.qc = sext i32 %i.pz to i64
  br i1 %i.qa, label %.lr.ph.i179.split.split, label %._crit_edge.i181.split

.lr.ph.i179.split.split:                          ; preds = %.lr.ph.i179
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.qe = sext i32 %i.pr to i64
  %i.qf = load i32, ptr %i.qd, align 4, !tbaa !94
  %invariant.op270 = add i32 %i.qf, 600
  %i.qg = load i32, ptr %2, align 4, !tbaa !93
  %invariant.op = add i32 %i.qg, 600
  br label %.lr.ph.i206

._crit_edge.i181.split:                           ; preds = %_color_picker_xtrans.exit.loopexit243, %.lr.ph.i179
  %.pre.i182 = load i32, ptr %i.d, align 16, !tbaa !49 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !50, !alias.scope !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa !50, !alias.scope !166
  %.not.i183 = icmp eq i32 %.pre.i182, 0
  br i1 %.not.i183, label %_color_picker_work_1ch.exit184, label %bb.aj

.lr.ph.i206:                                      ; preds = %_color_picker_xtrans.exit.loopexit243, %.lr.ph.i179.split.split
  %.02123.i180 = phi i64 [ %i.qe, %.lr.ph.i179.split.split ], [ %i.rk, %_color_picker_xtrans.exit.loopexit243 ] ; 3 uses
  %i.qh = mul i64 %.02123.i180, %i.pv
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qh
  %i.qj = trunc i64 %.02123.i180 to i32
  %.reass271 = add i32 %invariant.op270, %i.qj
  %i.qk = srem i32 %.reass271, 6
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [6 x i8], ptr %i.pn, i64 %i.ql
  br label %FCxtrans.exit.i

FCxtrans.exit.i:                                  ; preds = %.lr.ph.i206, %FCxtrans.exit.i
  %.016.i = phi i64 [ %i.ri, %FCxtrans.exit.i ], [ %i.px, %.lr.ph.i206 ] ; 3 uses
  %i.qn = trunc i64 %.016.i to i32
  %.reass = add i32 %invariant.op, %i.qn
  %i.qo = srem i32 %.reass, 6
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds i8, ptr %i.qm, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !167
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.016.i
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !50 ; 5 uses
  %i.qu = zext i8 %i.qr to i64                    ; 4 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qu ; 2 uses
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !50
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qw, %i.qt
  store float %i.qx, ptr %i.qv, align 4, !tbaa !50
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.qu ; 2 uses
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !50 ; 2 uses
  %i.ra = fcmp reassoc nsz arcp contract afn olt float %i.qz, %i.qt
  %..i.i208 = select reassoc nsz arcp contract afn i1 %i.ra, float %i.qz, float %i.qt
  store float %..i.i208, ptr %i.qy, align 4, !tbaa !50
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qu ; 2 uses
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !50 ; 2 uses
  %i.rd = fcmp reassoc nsz arcp contract afn ogt float %i.rc, %i.qt
  %i.re = select reassoc nsz arcp contract afn i1 %i.rd, float %i.rc, float %i.qt
  store float %i.re, ptr %i.rb, align 4, !tbaa !50
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.qu ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !49
  %i.rh = add i32 %i.rg, 1
  store i32 %i.rh, ptr %i.rf, align 4, !tbaa !49
  %i.ri = add nuw i64 %.016.i, 1                  ; 2 uses
  %i.rj = icmp ult i64 %i.ri, %i.qc
  br i1 %i.rj, label %FCxtrans.exit.i, label %_color_picker_xtrans.exit.loopexit243

_color_picker_xtrans.exit.loopexit243:            ; preds = %FCxtrans.exit.i
  %i.rk = add nuw i64 %.02123.i180, 1             ; 2 uses
  %i.rl = icmp ult i64 %i.rk, %i.qb
  br i1 %i.rl, label %.lr.ph.i206, label %._crit_edge.i181.split

bb.aj:                                            ; preds = %._crit_edge.i181.split
  %i.rm = load float, ptr %i.a, align 16, !tbaa !50
  %i.rn = uitofp reassoc nsz arcp contract afn i32 %.pre.i182 to float
  %i.ro = fdiv reassoc nsz arcp contract afn float %i.rm, %i.rn
  br label %_color_picker_work_1ch.exit184

_color_picker_work_1ch.exit184:                   ; preds = %._crit_edge.thread.i175, %._crit_edge.i181.split, %bb.aj
  %i.rp = phi reassoc nsz arcp contract afn float [ %i.ro, %bb.aj ], [ 0.000000e+00, %._crit_edge.i181.split ], [ 0.000000e+00, %._crit_edge.thread.i175 ]
  store float %i.rp, ptr %5, align 4, !tbaa !50
  %i.rq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.rr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.rt = load <2 x i32>, ptr %i.rq, align 4, !tbaa !49 ; 2 uses
  %i.ru = icmp eq <2 x i32> %i.rt, zeroinitializer
  %i.rv = load <2 x float>, ptr %i.rr, align 4
  %i.rw = uitofp reassoc nsz arcp contract afn <2 x i32> %i.rt to <2 x float>
  %i.rx = fdiv reassoc nsz arcp contract afn <2 x float> %i.rv, %i.rw
  %i.ry = select <2 x i1> %i.ru, <2 x float> zeroinitializer, <2 x float> %i.rx
  store <2 x float> %i.ry, ptr %i.rs, align 4, !tbaa !50
  %i.rz = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !49 ; 2 uses
  %.not.3.i178 = icmp eq i32 %i.sa, 0
  %i.sb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.sc = load float, ptr %i.sb, align 4
  %i.sd = uitofp reassoc nsz arcp contract afn i32 %i.sa to float
  %i.se = fdiv reassoc nsz arcp contract afn float %i.sc, %i.sd
  %i.sf = select reassoc nsz arcp contract afn i1 %.not.3.i178, float 0.000000e+00, float %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.sf, ptr %i.sg, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae, %dt_get_perf_times.exit
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 558, ptr noundef nonnull @__FUNCTION__.dt_color_picker_helper) #14
  unreachable

bb.al:                                            ; preds = %bb.ad, %_color_picker_work_1ch.exit184, %_color_picker_work_1ch.exit
  %i.sh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !145
  %i.si = and i32 %i.sh, 16
  %.not106.not = icmp eq i32 %i.si, 0
  br i1 %.not106.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.sj = load i32, ptr %0, align 16, !tbaa !150
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !162
  %i.sm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sn = load <2 x i32>, ptr %i.sm, align 4, !tbaa !49
  %i.so = load <2 x i32>, ptr %3, align 4, !tbaa !49
  %i.sp = sub nsw <2 x i32> %i.sn, %i.so          ; 2 uses
  %shift = shufflevector <2 x i32> %i.sp, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %i.sp, %shift
  %i.sq = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.sr = sext i32 %i.sq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.ss = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.st = load i64, ptr %10, align 8, !tbaa !147
  %i.su = add nsw i64 %i.st, -1290608000
  %i.sv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.sx = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %9) #14 ; 0 uses
  %i.sy = load <2 x i64>, ptr %9, align 16, !tbaa !149 ; 2 uses
  %i.sz = shufflevector <2 x i64> %i.sy, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.ta = insertelement <2 x i64> %i.sz, i64 %i.su, i64 0
  %i.tb = sitofp reassoc nsz arcp contract afn <2 x i64> %i.ta to <2 x double>
  %i.tc = insertelement <2 x i64> %i.sy, i64 %i.sw, i64 0
  %i.td = sitofp reassoc nsz arcp contract afn <2 x i64> %i.tc to <2 x double>
  %i.te = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.td, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.tf = fadd reassoc nsz arcp contract afn <2 x double> %i.te, %i.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.tg = fsub reassoc nsz arcp contract afn <2 x double> %i.tf, %i.y ; 2 uses
  %i.th = extractelement <2 x double> %i.tg, i64 0
  %i.ti = extractelement <2 x double> %i.tg, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef %i.sj, i32 noundef %i.sl, i32 noundef %6, i32 noundef %7, i64 noundef %i.sr, i32 noundef %4, double noundef %i.th, double noundef %i.ti) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_work_4ch(ptr noundef %0, i32 %.8.val, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  %i.j = load i32, ptr %1, align 4, !tbaa !49     ; 2 uses
  %i.k = sub nsw i32 %i.i, %i.j                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = shl nsw i32 %.8.val, 2
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i32 %i.j, 2
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.r = icmp ult i32 %i.g, %i.e
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = sext i32 %i.g to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.t = load <4 x float>, ptr %i.a, align 16, !tbaa !50
  %i.u = load <4 x float>, ptr %i.b, align 16, !tbaa !50
  %i.v = load <4 x float>, ptr %i.c, align 16, !tbaa !50
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.x = phi <8 x float> [ %i.w, %.preheader.loopexit ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ]
  %i.y = phi <4 x float> [ %i.t, %.preheader.loopexit ], [ zeroinitializer, %bb.a ]
  %i.z = sub nsw i32 %i.e, %i.g
  %i.aa = mul nsw i32 %i.k, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = uitofp reassoc nsz arcp contract afn i64 %i.ab to float
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fdiv reassoc nsz arcp contract afn <4 x float> %i.y, %i.af
  store <4 x float> %i.ag, ptr %2, align 4, !tbaa !50
  store <8 x float> %i.x, ptr %i.ad, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0291 = phi i64 [ %i.ai, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.ah = mul i64 %.0291, %i.o
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah
  call void %4(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %gep, i64 noundef %i.m, ptr noundef %3) #14, !callees !168
  %i.ai = add nuw i64 %.0291, 1                   ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !49
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph, label %.preheader.loopexit
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_nomat(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load i32, ptr %4, align 64, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.b, ptr noundef nonnull %i.c, i32 noundef 1) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.g = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.5, i32 noundef 63) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 516
  %i.k = load i32, ptr %i.j, align 4, !tbaa !172
  %i.l = tail call ptr @cmsCreateTransform(ptr noundef %i.f, i32 noundef 4456604, ptr noundef %i.i, i32 noundef 4849820, i32 noundef %i.k, i32 noundef 0) #14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49   ; 2 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !49
  %i.t = icmp ult i32 %i.p, %i.n
  br i1 %i.t, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.a
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge100:                                   ; preds = %._crit_edge, %bb.a
  %i.y = phi <8 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ], [ %i.au, %._crit_edge ]
  %i.z = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.av, %._crit_edge ]
  %i.aa = sub nsw i32 %i.r, %i.s
  %i.ab = sub nsw i32 %i.n, %i.p
  %i.ac = mul nsw i32 %i.aa, %i.ab
  %i.ad = sext i32 %i.ac to i64
  call void @cmsDeleteTransform(ptr noundef %i.l) #14
  %i.ae = uitofp reassoc nsz arcp contract afn i64 %i.ad to float
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.z, %i.ah
  store <4 x float> %i.ai, ptr %3, align 4, !tbaa !50
  store <8 x float> %i.y, ptr %i.af, align 4, !tbaa !50
  ret void

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge
  %i.aj = phi i32 [ %i.n, %.lr.ph99 ], [ %i.as, %._crit_edge ]
  %i.ak = phi i32 [ %i.r, %.lr.ph99 ], [ %i.at, %._crit_edge ] ; 2 uses
  %.03297 = phi i64 [ %i.u, %.lr.ph99 ], [ %i.aw, %._crit_edge ] ; 2 uses
  %i.al = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph99 ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.am = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph99 ], [ %i.ba, %._crit_edge ] ; 2 uses
  %i.an = phi <4 x float> [ zeroinitializer, %.lr.ph99 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.ao = load i32, ptr %2, align 4, !tbaa !49    ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.ak
  %i.aq = shufflevector <4 x float> %i.al, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ar = sext i32 %i.ao to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.m, align 4, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.as = phi i32 [ %i.aj, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.at = phi i32 [ %i.ak, %bb.b ], [ %i.ft, %._crit_edge.loopexit ]
  %i.au = phi <8 x float> [ %i.aq, %bb.b ], [ %i.fr, %._crit_edge.loopexit ] ; 3 uses
  %i.av = phi <4 x float> [ %i.an, %bb.b ], [ %i.fl, %._crit_edge.loopexit ] ; 2 uses
  %i.aw = add nuw i64 %.03297, 1                  ; 2 uses
  %i.ax = sext i32 %i.as to i64
  %i.ay = icmp ult i64 %i.aw, %i.ax
  %i.az = shufflevector <8 x float> %i.au, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = shufflevector <8 x float> %i.au, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ay, label %bb.b, label %._crit_edge100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03168 = phi i64 [ %i.fs, %.lr.ph ], [ %i.ar, %.lr.ph.preheader ] ; 2 uses
  %i.bb = phi <4 x float> [ %i.fw, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi <4 x float> [ %i.fx, %.lr.ph ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %i.bd = phi <4 x float> [ %i.fl, %.lr.ph ], [ %i.an, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.be = load i32, ptr %i.v, align 4, !tbaa !91
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %.03297, %i.bf
  %i.bh = add i64 %i.bg, %.03168
  %.idx = shl i64 %i.bh, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  call void @cmsDoTransform(ptr noundef %i.l, ptr noundef %i.bi, ptr noundef nonnull %i.a, i32 noundef 1) #14
  %i.bj = load float, ptr %i.w, align 4, !tbaa !50
  %i.bk = load float, ptr %i.a, align 16, !tbaa !50
  %i.bl = load float, ptr %i.x, align 8, !tbaa !50
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bj, 2.000000e-03
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bk, 8.620690e-03
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bn, f0x3E0D3DCB ; 7 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bl, 5.000000e-03
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bo, %i.bm ; 5 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bq, f0x3E53DCB1
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bq, %i.bq
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bq, f0x3E038026
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, f0xBC911AA6
end_hunk_1
