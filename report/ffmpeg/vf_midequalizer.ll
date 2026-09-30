Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_midequalizer?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"midequalizer\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Apply Midway Equalization.\00", align 1
@midequalizer_inputs = internal constant [2 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input0 }, %struct.AVFilterPad { ptr @.str.3, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input1 }], align 16
@midequalizer_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.4, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@pix_fmts = internal constant [57 x i32] [i32 79, i32 5, i32 31, i32 14, i32 32, i32 78, i32 4, i32 33, i32 0, i32 13, i32 12, i32 138, i32 7, i32 6, i32 71, i32 111, i32 8, i32 173, i32 168, i32 166, i32 181, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 123, i32 127, i32 131, i32 125, i32 129, i32 133, i32 73, i32 75, i32 135, i32 137, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 163, i32 161, i32 45, i32 47, i32 49, i32 93, i32 95, i32 97, i32 77, i32 113, i32 30, i32 -1], align 16
@ff_vf_midequalizer = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @midequalizer_inputs, ptr @midequalizer_outputs, ptr @midequalizer_class, i32 131072, [4 x i8] zeroinitializer }, i8 2, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 216, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"in0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"in1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@midequalizer_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @midequalizer_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"set planes\00", align 1
@midequalizer_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 76, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 1.500000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.f) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #9
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input0(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #9 ; 3 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !31
  %i.i = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.h) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.i, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !39
  %i.m = zext nneg i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.q, ptr %i.s, align 4, !tbaa !42
  store i32 %i.q, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !43   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.u, ptr %i.w, align 4, !tbaa !42
  store i32 %i.u, ptr %i.v, align 8, !tbaa !42
  %i.x = load i32, ptr %i.p, align 4, !tbaa !41
  %i.y = sub nsw i32 0, %i.x
  %i.z = zext nneg i8 %i.o to i32
  %i.aa = ashr i32 %i.y, %i.z
  %i.ab = sub nsw i32 0, %i.aa                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !42
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !43
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = ashr i32 %i.af, %i.m
  %i.ah = sub nsw i32 0, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !57
  %i.am = shl nuw i32 1, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 4 uses
  store i32 %i.am, ptr %i.an, align 8, !tbaa !44
  %i.ao = sext i32 %i.am to i64
  %i.ap = tail call noalias ptr @av_calloc(i64 noundef %i.ao, i64 noundef 4) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !46
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !44
  %i.as = sext i32 %i.ar to i64
  %i.at = tail call noalias ptr @av_calloc(i64 noundef %i.as, i64 noundef 4) #9
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !46
  %i.av = load i32, ptr %i.an, align 8, !tbaa !44
  %i.aw = sext i32 %i.av to i64
  %i.ax = tail call noalias ptr @av_calloc(i64 noundef %i.aw, i64 noundef 4) #9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !47
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !46
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !46
  %.not43 = icmp eq ptr %i.ba, null
  %.not44 = icmp eq ptr %i.ax, null
  %or.cond = select i1 %.not43, i1 true, i1 %.not44
  br i1 %or.cond, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b
  %i.bb = load i32, ptr %i.an, align 8, !tbaa !44
  %i.bc = icmp eq i32 %i.bb, 256
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %midequalizer8.midequalizer16 = select i1 %i.bc, ptr @midequalizer8, ptr @midequalizer16
  store ptr %midequalizer8.midequalizer16, ptr %i.bd, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0 = phi i32 [ -12, %bb.a ], [ -12, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_input1(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #9 ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !31
  %i.i = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.h) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.i, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.p, ptr %i.r, align 4, !tbaa !42
  store i32 %i.p, ptr %i.q, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.t, ptr %i.v, align 4, !tbaa !42
  store i32 %i.t, ptr %i.u, align 8, !tbaa !42
  %i.w = load i32, ptr %i.o, align 4, !tbaa !41
  %i.x = sub nsw i32 0, %i.w
  %i.y = zext nneg i8 %i.n to i32
  %i.z = ashr i32 %i.x, %i.y
  %i.aa = sub nsw i32 0, %i.z                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !42
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !43
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = zext nneg i8 %i.l to i32
  %i.ag = ashr i32 %i.ae, %i.af
  %i.ah = sub nsw i32 0, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !42
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @midequalizer8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef captures(none) %10, ptr nofree noundef captures(none) %11, ptr nofree noundef captures(none) %12, i64 noundef %13) #4 {
bb.a:
  %i.a = shl i64 %13, 2                           ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.a, i1 false)
  %i.b = icmp sgt i32 %7, 0
  %i.c = icmp sgt i32 %6, 0
  %or.cond.i = and i1 %i.c, %i.b                  ; 2 uses
  br i1 %or.cond.i, label %.preheader29.preheader.i, label %.preheader.i

.preheader29.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %6 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.d = icmp ult i32 %6, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %._crit_edge.i, %.preheader29.preheader.i
  %.02532.i = phi i32 [ %i.ao, %._crit_edge.i ], [ 0, %.preheader29.preheader.i ]
  %.02631.i = phi ptr [ %i.an, %._crit_edge.i ], [ %0, %.preheader29.preheader.i ] ; 6 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader29.i.new

.preheader.i:                                     ; preds = %._crit_edge.i, %bb.a
  %i.e = add i64 %13, -1                          ; 11 uses
  %.not.i33 = icmp eq i64 %i.e, 0                 ; 2 uses
  %.pre42.i = uitofp nsz i64 %13 to float         ; 9 uses
  br i1 %.not.i33, label %compute_histogram8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre.i = load float, ptr %10, align 4, !tbaa !50 ; 2 uses
  %xtraiter80 = and i64 %i.e, 1
  %i.f = icmp eq i64 %13, 2
  br i1 %i.f, label %.epil.preheader79, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter84 = and i64 %i.e, -2
  br label %bb.c

.preheader29.i.new:                               ; preds = %.preheader29.i, %.preheader29.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader29.i.new ], [ 0, %.preheader29.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader29.i.new ], [ 0, %.preheader29.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.02631.i, i64 %indvars.iv.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !65
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.i ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !50
  %i.l = fadd nsz float %i.k, 1.000000e+00
  store float %i.l, ptr %i.j, align 4, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %.02631.i, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !65
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.p ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !50
  %i.s = fadd nsz float %i.r, 1.000000e+00
  store float %i.s, ptr %i.q, align 4, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %.02631.i, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !65
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.w ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !50
  %i.z = fadd nsz float %i.y, 1.000000e+00
  store float %i.z, ptr %i.x, align 4, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %.02631.i, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !65
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ad ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !50
  %i.ag = fadd nsz float %i.af, 1.000000e+00
  store float %i.ag, ptr %i.ae, align 4, !tbaa !50
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader29.i.new, !llvm.loop !58

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader29.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader29.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader29.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.02631.i, i64 %indvars.iv.i.epil
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !65
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.aj ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !50
  %i.am = fadd nsz float %i.al, 1.000000e+00
  store float %i.am, ptr %i.ak, align 4, !tbaa !50
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.b, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.i.unr-lcssa
  %i.an = getelementptr inbounds i8, ptr %.02631.i, i64 %3
  %i.ao = add nuw nsw i32 %.02532.i, 1            ; 2 uses
  %exitcond37.not.i = icmp eq i32 %i.ao, %7
  br i1 %exitcond37.not.i, label %.preheader.i, label %.preheader29.i, !llvm.loop !60

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %i.ap = phi float [ %.pre.i, %.lr.ph.i.new ], [ %i.ay, %bb.c ] ; 2 uses
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next39.i.1, %bb.c ] ; 3 uses
  %niter85 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter85.next.1, %bb.c ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv38.i
  %indvars.iv.next39.i = or disjoint i64 %indvars.iv38.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next39.i ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !50
  %i.at = fadd nsz float %i.ap, %i.as             ; 3 uses
  store float %i.at, ptr %i.ar, align 4, !tbaa !50
  %i.au = fdiv nsz float %i.ap, %.pre42.i
  store float %i.au, ptr %i.aq, align 4, !tbaa !50
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next39.i
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next39.i.1 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !50
  %i.ay = fadd nsz float %i.at, %i.ax             ; 3 uses
  store float %i.ay, ptr %i.aw, align 4, !tbaa !50
  %i.az = fdiv nsz float %i.at, %.pre42.i
  store float %i.az, ptr %i.av, align 4, !tbaa !50
  %niter85.next.1 = add nuw i64 %niter85, 2       ; 2 uses
  %niter85.ncmp.1 = icmp eq i64 %niter85.next.1, %unroll_iter84
  br i1 %niter85.ncmp.1, label %compute_histogram8.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !61

compute_histogram8.exit.loopexit.unr-lcssa:       ; preds = %bb.c
  %lcmp.mod82.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod82.not, label %compute_histogram8.exit, label %.epil.preheader79

.epil.preheader79:                                ; preds = %compute_histogram8.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi float [ %.pre.i, %.lr.ph.i ], [ %i.ay, %compute_histogram8.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv38.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next39.i.1, %compute_histogram8.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv38.i.epil.init
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv38.i.epil.init
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !50
  %i.be = fadd nsz float %.epil.init, %i.bd
  store float %i.be, ptr %i.bc, align 4, !tbaa !50
  %i.bf = fdiv nsz float %.epil.init, %.pre42.i
  store float %i.bf, ptr %i.ba, align 4, !tbaa !50
  br label %compute_histogram8.exit

compute_histogram8.exit:                          ; preds = %.epil.preheader79, %compute_histogram8.exit.loopexit.unr-lcssa, %.preheader.i
end_hunk_0
begin_hunk_1_@midequalizer8:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader86
  %indvars.iv.i48.epil = phi i64 [ %indvars.iv.i48.epil.init, %.epil.preheader86 ], [ %indvars.iv.next.i49.epil, %bb.d ] ; 2 uses
  %epil.iter88 = phi i64 [ 0, %.epil.preheader86 ], [ %epil.iter88.next, %bb.d ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.02631.i47, i64 %indvars.iv.i48.epil
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !65
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.ct ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !50
  %i.cw = fadd nsz float %i.cv, 1.000000e+00
  store float %i.cw, ptr %i.cu, align 4, !tbaa !50
  %indvars.iv.next.i49.epil = add nuw nsw i64 %indvars.iv.i48.epil, 1
  %epil.iter88.next = add i64 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i64 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %._crit_edge.i51, label %bb.d, !llvm.loop !62

._crit_edge.i51:                                  ; preds = %bb.d, %._crit_edge.i51.unr-lcssa
  %i.cx = getelementptr inbounds i8, ptr %.02631.i47, i64 %4
  %i.cy = add nuw nsw i32 %.02532.i46, 1          ; 2 uses
  %exitcond37.not.i52 = icmp eq i32 %i.cy, %9
  br i1 %exitcond37.not.i52, label %.preheader.i35, label %.preheader29.i45, !llvm.loop !60

bb.e:                                             ; preds = %bb.e, %.lr.ph.i38.new
  %i.cz = phi float [ %.pre.i39, %.lr.ph.i38.new ], [ %i.di, %bb.e ] ; 2 uses
  %indvars.iv38.i40 = phi i64 [ 0, %.lr.ph.i38.new ], [ %indvars.iv.next39.i41.1, %bb.e ] ; 3 uses
  %niter101 = phi i64 [ 0, %.lr.ph.i38.new ], [ %niter101.next.1, %bb.e ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv38.i40
  %indvars.iv.next39.i41 = or disjoint i64 %indvars.iv38.i40, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next39.i41 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !50
  %i.dd = fadd nsz float %i.cz, %i.dc             ; 3 uses
  store float %i.dd, ptr %i.db, align 4, !tbaa !50
  %i.de = fdiv nsz float %i.cz, %.pre42.i
  store float %i.de, ptr %i.da, align 4, !tbaa !50
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next39.i41
  %indvars.iv.next39.i41.1 = add nuw nsw i64 %indvars.iv38.i40, 2 ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.next39.i41.1 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !50
  %i.di = fadd nsz float %i.dd, %i.dh             ; 3 uses
  store float %i.di, ptr %i.dg, align 4, !tbaa !50
  %i.dj = fdiv nsz float %i.dd, %.pre42.i
  store float %i.dj, ptr %i.df, align 4, !tbaa !50
  %niter101.next.1 = add nuw i64 %niter101, 2     ; 2 uses
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %compute_histogram8.exit53.unr-lcssa, label %bb.e, !llvm.loop !61

compute_histogram8.exit53.unr-lcssa:              ; preds = %bb.e
  %lcmp.mod98.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod98.not, label %compute_histogram8.exit53, label %.epil.preheader93

.epil.preheader93:                                ; preds = %compute_histogram8.exit53.unr-lcssa, %.lr.ph.i38
  %.epil.init97 = phi float [ %.pre.i39, %.lr.ph.i38 ], [ %i.di, %compute_histogram8.exit53.unr-lcssa ] ; 2 uses
  %indvars.iv38.i40.epil.init = phi i64 [ 0, %.lr.ph.i38 ], [ %indvars.iv.next39.i41.1, %compute_histogram8.exit53.unr-lcssa ] ; 2 uses
  %lcmp.mod99 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv38.i40.epil.init
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv38.i40.epil.init
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !50
  %i.do = fadd nsz float %.epil.init97, %i.dn
  store float %i.do, ptr %i.dm, align 4, !tbaa !50
  %i.dp = fdiv nsz float %.epil.init97, %.pre42.i
  store float %i.dp, ptr %i.dk, align 4, !tbaa !50
  br label %compute_histogram8.exit53

compute_histogram8.exit53:                        ; preds = %compute_histogram8.exit53.unr-lcssa, %.epil.preheader93
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.e ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !50
  %i.ds = fdiv nsz float %i.dr, %.pre42.i
  store float %i.ds, ptr %i.dq, align 4, !tbaa !50
  %.not.i54 = icmp eq i64 %13, 0
  br i1 %.not.i54, label %compute_contrast_change.exit, label %.preheader.i55.preheader

.preheader.i55.preheader:                         ; preds = %compute_histogram8.exit53.thread, %compute_histogram8.exit53
  %xtraiter102 = and i64 %13, 1
  %i.dt = icmp eq i64 %i.e, 0
  br i1 %i.dt, label %.preheader.i55.epil.preheader, label %.preheader.i55.preheader.new

.preheader.i55.preheader.new:                     ; preds = %.preheader.i55.preheader
  %unroll_iter106 = and i64 %13, -2
  br label %.preheader.i55

.preheader.i55:                                   ; preds = %.critedge.i.1, %.preheader.i55.preheader.new
  %indvars.iv20.i = phi i64 [ 0, %.preheader.i55.preheader.new ], [ %indvars.iv.next21.i.1, %.critedge.i.1 ] ; 5 uses
  %niter107 = phi i64 [ 0, %.preheader.i55.preheader.new ], [ %niter107.next.1, %.critedge.i.1 ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv20.i
  %i.dv = load float, ptr %i.du, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i55
  %indvars.iv.i56 = phi i64 [ 0, %.preheader.i55 ], [ %indvars.iv.next.i58, %bb.g ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i56
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !50
  %i.dy = fcmp nsz olt float %i.dx, %i.dv
  br i1 %i.dy, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i58 = add nuw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next.i58, %13
  br i1 %exitcond.not.i59, label %.critedge.i, label %bb.f, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.0.lcssa.in.i = phi i64 [ %13, %bb.g ], [ %indvars.iv.i56, %bb.f ]
  %.0.lcssa.i = trunc i64 %.0.lcssa.in.i to i32
  %i.dz = trunc nuw nsw i64 %indvars.iv20.i to i32
  %i.ea = add nuw nsw i32 %.0.lcssa.i, %i.dz
  %i.eb = lshr i32 %i.ea, 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv20.i
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !42
  %indvars.iv.next21.i = or disjoint i64 %indvars.iv20.i, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next21.i
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.critedge.i
  %indvars.iv.i56.1 = phi i64 [ 0, %.critedge.i ], [ %indvars.iv.next.i58.1, %bb.i ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i56.1
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !50
  %i.eh = fcmp nsz olt float %i.eg, %i.ee
  br i1 %i.eh, label %bb.i, label %.critedge.i.1

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i58.1 = add nuw i64 %indvars.iv.i56.1, 1 ; 2 uses
  %exitcond.not.i59.1 = icmp eq i64 %indvars.iv.next.i58.1, %13
  br i1 %exitcond.not.i59.1, label %.critedge.i.1, label %bb.h, !llvm.loop !0

.critedge.i.1:                                    ; preds = %bb.i, %bb.h
  %.0.lcssa.in.i.1 = phi i64 [ %13, %bb.i ], [ %indvars.iv.i56.1, %bb.h ]
  %.0.lcssa.i.1 = trunc i64 %.0.lcssa.in.i.1 to i32
  %i.ei = trunc nuw nsw i64 %indvars.iv.next21.i to i32
  %i.ej = add nuw nsw i32 %.0.lcssa.i.1, %i.ei
  %i.ek = lshr i32 %i.ej, 1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next21.i
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !42
  %indvars.iv.next21.i.1 = add nuw nsw i64 %indvars.iv20.i, 2 ; 2 uses
  %niter107.next.1 = add i64 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i64 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %compute_contrast_change.exit.loopexit.unr-lcssa, label %.preheader.i55, !llvm.loop !1

compute_contrast_change.exit.loopexit.unr-lcssa:  ; preds = %.critedge.i.1
  %lcmp.mod104.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %compute_contrast_change.exit, label %.preheader.i55.epil.preheader

.preheader.i55.epil.preheader:                    ; preds = %compute_contrast_change.exit.loopexit.unr-lcssa, %.preheader.i55.preheader
  %indvars.iv20.i.epil.init = phi i64 [ 0, %.preheader.i55.preheader ], [ %indvars.iv.next21.i.1, %compute_contrast_change.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod105 = trunc i64 %13 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv20.i.epil.init
  %i.en = load float, ptr %i.em, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader.i55.epil.preheader
  %indvars.iv.i56.epil = phi i64 [ 0, %.preheader.i55.epil.preheader ], [ %indvars.iv.next.i58.epil, %bb.k ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i56.epil
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !50
  %i.eq = fcmp nsz olt float %i.ep, %i.en
  br i1 %i.eq, label %bb.k, label %.critedge.i.epil

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i58.epil = add nuw i64 %indvars.iv.i56.epil, 1 ; 2 uses
  %exitcond.not.i59.epil = icmp eq i64 %indvars.iv.next.i58.epil, %13
  br i1 %exitcond.not.i59.epil, label %.critedge.i.epil, label %bb.j, !llvm.loop !0

.critedge.i.epil:                                 ; preds = %bb.k, %bb.j
  %.0.lcssa.in.i.epil = phi i64 [ %13, %bb.k ], [ %indvars.iv.i56.epil, %bb.j ]
  %.0.lcssa.i.epil = trunc i64 %.0.lcssa.in.i.epil to i32
  %i.er = trunc nuw nsw i64 %indvars.iv20.i.epil.init to i32
  %i.es = add nuw nsw i32 %.0.lcssa.i.epil, %i.er
  %i.et = lshr i32 %i.es, 1
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv20.i.epil.init
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !42
  br label %compute_contrast_change.exit

compute_contrast_change.exit:                     ; preds = %.critedge.i.epil, %compute_contrast_change.exit.loopexit.unr-lcssa, %compute_histogram8.exit53
  br i1 %or.cond.i, label %.preheader.preheader, label %._crit_edge64.split

.preheader.preheader:                             ; preds = %compute_contrast_change.exit
  %wide.trip.count = zext nneg i32 %6 to i64      ; 2 uses
  %xtraiter109 = and i64 %wide.trip.count, 1
  %i.ev = icmp eq i32 %6, 1
  %unroll_iter113 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod112 = trunc i32 %6 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.063 = phi i32 [ %i.ft, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03162 = phi ptr [ %i.fs, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.03261 = phi ptr [ %i.fr, %._crit_edge ], [ %2, %.preheader.preheader ] ; 4 uses
  br i1 %i.ev, label %.epil.preheader108, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter114 = phi i64 [ %niter114.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.03162, i64 %indvars.iv
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !65
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !42
  %14 = tail call i32 @llvm.smax.i32(i32 %i.fa, i32 0)
  %.0.i60 = tail call i32 @llvm.umin.i32(i32 %14, i32 255)
  %i.fb = trunc nuw i32 %.0.i60 to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.03261, i64 %indvars.iv
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.03162, i64 %indvars.iv.next
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !65
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !42
  %15 = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 0)
  %.0.i60.1 = tail call i32 @llvm.umin.i32(i32 %15, i32 255)
  %i.fi = trunc nuw i32 %.0.i60.1 to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.03261, i64 %indvars.iv.next
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !63

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod111.not, label %._crit_edge, label %.epil.preheader108

.epil.preheader108:                               ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.fk = getelementptr inbounds nuw i8, ptr %.03162, i64 %indvars.iv.epil.init
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !65
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !42
  %16 = tail call i32 @llvm.smax.i32(i32 %i.fo, i32 0)
  %.0.i60.epil = tail call i32 @llvm.umin.i32(i32 %16, i32 255)
  %i.fp = trunc nuw i32 %.0.i60.epil to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %.03261, i64 %indvars.iv.epil.init
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !65
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader108
  %i.fr = getelementptr inbounds i8, ptr %.03261, i64 %5
  %i.fs = getelementptr inbounds i8, ptr %.03162, i64 %3
  %i.ft = add nuw nsw i32 %.063, 1                ; 2 uses
  %exitcond66.not = icmp eq i32 %i.ft, %7
  br i1 %exitcond66.not, label %._crit_edge64.split, label %.preheader, !llvm.loop !64

._crit_edge64.split:                              ; preds = %._crit_edge, %compute_contrast_change.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @midequalizer16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef captures(none) %10, ptr nofree noundef captures(none) %11, ptr nofree noundef captures(none) %12, i64 noundef %13) #4 {
bb.a:
  %i.a = sdiv i64 %3, 2                           ; 2 uses
  %i.b = shl i64 %13, 2                           ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.b, i1 false)
  %i.c = icmp sgt i32 %7, 0                       ; 2 uses
  %i.d = icmp sgt i32 %6, 0                       ; 2 uses
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %.preheader29.preheader.i, label %.preheader.i

.preheader29.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %6 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.e = icmp ult i32 %6, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %._crit_edge.i, %.preheader29.preheader.i
  %.02532.i = phi i32 [ %i.ap, %._crit_edge.i ], [ 0, %.preheader29.preheader.i ]
  %.02631.i = phi ptr [ %i.ao, %._crit_edge.i ], [ %0, %.preheader29.preheader.i ] ; 6 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader29.i.new

.preheader.i:                                     ; preds = %._crit_edge.i, %bb.a
  %i.f = add i64 %13, -1                          ; 11 uses
  %.not.i = icmp eq i64 %i.f, 0                   ; 2 uses
  %.pre42.i = uitofp nsz i64 %13 to float         ; 9 uses
  br i1 %.not.i, label %compute_histogram16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre.i = load float, ptr %10, align 4, !tbaa !50 ; 2 uses
  %xtraiter81 = and i64 %i.f, 1
  %i.g = icmp eq i64 %13, 2
  br i1 %i.g, label %.epil.preheader80, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter85 = and i64 %i.f, -2
  br label %bb.c

.preheader29.i.new:                               ; preds = %.preheader29.i, %.preheader29.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader29.i.new ], [ 0, %.preheader29.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader29.i.new ], [ 0, %.preheader29.i ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.02631.i, i64 %indvars.iv.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !75
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !50
  %i.m = fadd nsz float %i.l, 1.000000e+00
  store float %i.m, ptr %i.k, align 4, !tbaa !50
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.02631.i, i64 %indvars.iv.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !75
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.q ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !50
  %i.t = fadd nsz float %i.s, 1.000000e+00
  store float %i.t, ptr %i.r, align 4, !tbaa !50
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.02631.i, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !75
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.x ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !50
  %i.aa = fadd nsz float %i.z, 1.000000e+00
  store float %i.aa, ptr %i.y, align 4, !tbaa !50
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.02631.i, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !75
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ae ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !50
  %i.ah = fadd nsz float %i.ag, 1.000000e+00
  store float %i.ah, ptr %i.af, align 4, !tbaa !50
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader29.i.new, !llvm.loop !66

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader29.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader29.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader29.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.02631.i, i64 %indvars.iv.i.epil
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !75
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !50
  %i.an = fadd nsz float %i.am, 1.000000e+00
  store float %i.an, ptr %i.al, align 4, !tbaa !50
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.b, !llvm.loop !67

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.i.unr-lcssa
  %i.ao = getelementptr inbounds [2 x i8], ptr %.02631.i, i64 %i.a
  %i.ap = add nuw nsw i32 %.02532.i, 1            ; 2 uses
  %exitcond37.not.i = icmp eq i32 %i.ap, %7
  br i1 %exitcond37.not.i, label %.preheader.i, label %.preheader29.i, !llvm.loop !68

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %i.aq = phi float [ %.pre.i, %.lr.ph.i.new ], [ %i.az, %bb.c ] ; 2 uses
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next39.i.1, %bb.c ] ; 3 uses
  %niter86 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter86.next.1, %bb.c ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv38.i
  %indvars.iv.next39.i = or disjoint i64 %indvars.iv38.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next39.i ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !50
  %i.au = fadd nsz float %i.aq, %i.at             ; 3 uses
  store float %i.au, ptr %i.as, align 4, !tbaa !50
  %i.av = fdiv nsz float %i.aq, %.pre42.i
  store float %i.av, ptr %i.ar, align 4, !tbaa !50
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next39.i
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next39.i.1 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !50
  %i.az = fadd nsz float %i.au, %i.ay             ; 3 uses
  store float %i.az, ptr %i.ax, align 4, !tbaa !50
  %i.ba = fdiv nsz float %i.au, %.pre42.i
  store float %i.ba, ptr %i.aw, align 4, !tbaa !50
  %niter86.next.1 = add nuw i64 %niter86, 2       ; 2 uses
  %niter86.ncmp.1 = icmp eq i64 %niter86.next.1, %unroll_iter85
  br i1 %niter86.ncmp.1, label %compute_histogram16.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !69

compute_histogram16.exit.loopexit.unr-lcssa:      ; preds = %bb.c
  %lcmp.mod83.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod83.not, label %compute_histogram16.exit, label %.epil.preheader80

.epil.preheader80:                                ; preds = %compute_histogram16.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi float [ %.pre.i, %.lr.ph.i ], [ %i.az, %compute_histogram16.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv38.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next39.i.1, %compute_histogram16.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv38.i.epil.init
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv38.i.epil.init
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !50
  %i.bf = fadd nsz float %.epil.init, %i.be
  store float %i.bf, ptr %i.bd, align 4, !tbaa !50
  %i.bg = fdiv nsz float %.epil.init, %.pre42.i
  store float %i.bg, ptr %i.bb, align 4, !tbaa !50
  br label %compute_histogram16.exit

compute_histogram16.exit:                         ; preds = %.epil.preheader80, %compute_histogram16.exit.loopexit.unr-lcssa, %.preheader.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.f ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !50
  %i.bj = fdiv nsz float %i.bi, %.pre42.i
  store float %i.bj, ptr %i.bh, align 4, !tbaa !50
  %i.bk = sdiv i64 %4, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %i.b, i1 false)
  %i.bl = icmp sgt i32 %9, 0
  %i.bm = icmp sgt i32 %8, 0
  %or.cond.i35 = and i1 %i.bm, %i.bl
  br i1 %or.cond.i35, label %.preheader29.preheader.i44, label %.preheader.i36

.preheader29.preheader.i44:                       ; preds = %compute_histogram16.exit
  %wide.trip.count.i45 = zext nneg i32 %8 to i64  ; 2 uses
  %xtraiter88 = and i64 %wide.trip.count.i45, 3   ; 3 uses
  %i.bn = icmp ult i32 %8, 4
  %unroll_iter92 = and i64 %wide.trip.count.i45, 2147483644
  %lcmp.mod90.not = icmp eq i64 %xtraiter88, 0
  %lcmp.mod91 = icmp ne i64 %xtraiter88, 0
  br label %.preheader29.i46

.preheader29.i46:                                 ; preds = %._crit_edge.i52, %.preheader29.preheader.i44
  %.02532.i47 = phi i32 [ %i.da, %._crit_edge.i52 ], [ 0, %.preheader29.preheader.i44 ]
  %.02631.i48 = phi ptr [ %i.cz, %._crit_edge.i52 ], [ %1, %.preheader29.preheader.i44 ] ; 6 uses
  br i1 %i.bn, label %.epil.preheader87, label %.preheader29.i46.new

.preheader.i36:                                   ; preds = %._crit_edge.i52, %compute_histogram16.exit
  br i1 %.not.i, label %compute_histogram16.exit54.thread, label %.lr.ph.i39

compute_histogram16.exit54.thread:                ; preds = %.preheader.i36
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.f ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !50
  %i.bq = fdiv nsz float %i.bp, %.pre42.i
  store float %i.bq, ptr %i.bo, align 4, !tbaa !50
  br label %.preheader.i56.preheader
end_hunk_1
begin_hunk_2_@midequalizer16:bb.a
  %.0.lcssa.i = trunc i64 %.0.lcssa.in.i to i32
  %i.eb = trunc nuw nsw i64 %indvars.iv20.i to i32
  %i.ec = add nuw nsw i32 %.0.lcssa.i, %i.eb
  %i.ed = lshr i32 %i.ec, 1
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv20.i
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !42
  %indvars.iv.next21.i = or disjoint i64 %indvars.iv20.i, 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next21.i
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.critedge.i
  %indvars.iv.i57.1 = phi i64 [ 0, %.critedge.i ], [ %indvars.iv.next.i59.1, %bb.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i57.1
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !50
  %i.ej = fcmp nsz olt float %i.ei, %i.eg
  br i1 %i.ej, label %bb.i, label %.critedge.i.1

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i59.1 = add nuw i64 %indvars.iv.i57.1, 1 ; 2 uses
  %exitcond.not.i60.1 = icmp eq i64 %indvars.iv.next.i59.1, %13
  br i1 %exitcond.not.i60.1, label %.critedge.i.1, label %bb.h, !llvm.loop !0

.critedge.i.1:                                    ; preds = %bb.i, %bb.h
  %.0.lcssa.in.i.1 = phi i64 [ %13, %bb.i ], [ %indvars.iv.i57.1, %bb.h ]
  %.0.lcssa.i.1 = trunc i64 %.0.lcssa.in.i.1 to i32
  %i.ek = trunc nuw nsw i64 %indvars.iv.next21.i to i32
  %i.el = add nuw nsw i32 %.0.lcssa.i.1, %i.ek
  %i.em = lshr i32 %i.el, 1
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next21.i
  store i32 %i.em, ptr %i.en, align 4, !tbaa !42
  %indvars.iv.next21.i.1 = add nuw nsw i64 %indvars.iv20.i, 2 ; 2 uses
  %niter108.next.1 = add i64 %niter108, 2         ; 2 uses
  %niter108.ncmp.1 = icmp eq i64 %niter108.next.1, %unroll_iter107
  br i1 %niter108.ncmp.1, label %compute_contrast_change.exit.loopexit.unr-lcssa, label %.preheader.i56, !llvm.loop !1

compute_contrast_change.exit.loopexit.unr-lcssa:  ; preds = %.critedge.i.1
  %lcmp.mod105.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %compute_contrast_change.exit, label %.preheader.i56.epil.preheader

.preheader.i56.epil.preheader:                    ; preds = %compute_contrast_change.exit.loopexit.unr-lcssa, %.preheader.i56.preheader
  %indvars.iv20.i.epil.init = phi i64 [ 0, %.preheader.i56.preheader ], [ %indvars.iv.next21.i.1, %compute_contrast_change.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod106 = trunc i64 %13 to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv20.i.epil.init
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.preheader.i56.epil.preheader
  %indvars.iv.i57.epil = phi i64 [ 0, %.preheader.i56.epil.preheader ], [ %indvars.iv.next.i59.epil, %bb.k ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i57.epil
  %i.er = load float, ptr %i.eq, align 4, !tbaa !50
  %i.es = fcmp nsz olt float %i.er, %i.ep
  br i1 %i.es, label %bb.k, label %.critedge.i.epil

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i59.epil = add nuw i64 %indvars.iv.i57.epil, 1 ; 2 uses
  %exitcond.not.i60.epil = icmp eq i64 %indvars.iv.next.i59.epil, %13
  br i1 %exitcond.not.i60.epil, label %.critedge.i.epil, label %bb.j, !llvm.loop !0

.critedge.i.epil:                                 ; preds = %bb.k, %bb.j
  %.0.lcssa.in.i.epil = phi i64 [ %13, %bb.k ], [ %indvars.iv.i57.epil, %bb.j ]
  %.0.lcssa.i.epil = trunc i64 %.0.lcssa.in.i.epil to i32
  %i.et = trunc nuw nsw i64 %indvars.iv20.i.epil.init to i32
  %i.eu = add nuw nsw i32 %.0.lcssa.i.epil, %i.et
  %i.ev = lshr i32 %i.eu, 1
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv20.i.epil.init
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !42
  br label %compute_contrast_change.exit

compute_contrast_change.exit:                     ; preds = %.critedge.i.epil, %compute_contrast_change.exit.loopexit.unr-lcssa, %compute_histogram16.exit54
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge65.split

.preheader.lr.ph:                                 ; preds = %compute_contrast_change.exit
  %i.ex = sdiv i64 %5, 2
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge65.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %6 to i64      ; 2 uses
  %xtraiter110 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ey = icmp ult i32 %6, 4
  %unroll_iter114 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod112.not = icmp eq i64 %xtraiter110, 0
  %lcmp.mod113 = icmp ne i64 %xtraiter110, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.064 = phi i32 [ %i.gk, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.03363 = phi ptr [ %i.gi, %._crit_edge ], [ %2, %.preheader.preheader ] ; 6 uses
  %.03462 = phi ptr [ %i.gj, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  br i1 %i.ey, label %.epil.preheader109, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter115 = phi i64 [ %niter115.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.03462, i64 %indvars.iv
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !75
  %i.fb = zext i16 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !42
  %i.fe = trunc i32 %i.fd to i16
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.03363, i64 %indvars.iv
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !75
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %.03462, i64 %indvars.iv.next
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !75
  %i.fi = zext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !42
  %i.fl = trunc i32 %i.fk to i16
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %.03363, i64 %indvars.iv.next
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !75
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %.03462, i64 %indvars.iv.next.1
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !75
  %i.fp = zext i16 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !42
  %i.fs = trunc i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %.03363, i64 %indvars.iv.next.1
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !75
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %.03462, i64 %indvars.iv.next.2
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !75
  %i.fw = zext i16 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !42
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.03363, i64 %indvars.iv.next.2
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !75
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter115.next.3 = add i64 %niter115, 4         ; 2 uses
  %niter115.ncmp.3 = icmp eq i64 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !71

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod112.not, label %._crit_edge, label %.epil.preheader109

.epil.preheader109:                               ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader109
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader109 ], [ %indvars.iv.next.epil, %bb.l ] ; 3 uses
  %epil.iter111 = phi i64 [ 0, %.epil.preheader109 ], [ %epil.iter111.next, %bb.l ]
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %.03462, i64 %indvars.iv.epil
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !75
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !42
  %i.gg = trunc i32 %i.gf to i16
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.03363, i64 %indvars.iv.epil
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !75
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter111.next = add i64 %epil.iter111, 1   ; 2 uses
  %epil.iter111.cmp.not = icmp eq i64 %epil.iter111.next, %xtraiter110
  br i1 %epil.iter111.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.l, %._crit_edge.unr-lcssa
  %i.gi = getelementptr inbounds [2 x i8], ptr %.03363, i64 %i.ex
  %i.gj = getelementptr inbounds [2 x i8], ptr %.03462, i64 %i.a
  %i.gk = add nuw nsw i32 %.064, 1                ; 2 uses
  %exitcond67.not = icmp eq i32 %i.gk, %7
  br i1 %exitcond67.not, label %._crit_edge65.split, label %.preheader, !llvm.loop !73

._crit_edge65.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %compute_contrast_change.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56), (280, 288)) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load <2 x i32>, ptr %i.i, align 8, !tbaa !42
  store <2 x i32> %i.k, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  store i64 %i.n, ptr %i.l, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.s = tail call i32 @ff_framesync_init(ptr noundef nonnull %i.r, ptr noundef %i.a, i32 noundef 2) #9 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.y = load i64, ptr %i.x, align 8, !tbaa !42
  store i64 %i.y, ptr %i.w, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  store i32 1, ptr %i.ad, align 4, !tbaa !80
  store i32 0, ptr %i.v, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 2, ptr %i.ae, align 4, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  store i32 1, ptr %i.af, align 4, !tbaa !80
  store i32 0, ptr %i.z, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  store i32 2, ptr %i.ag, align 4, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store ptr @process_frame, ptr %i.ai, align 8, !tbaa !84
  %i.aj = tail call i32 @ff_framesync_configure(ptr noundef nonnull %i.r) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.am = load i64, ptr %i.al, align 4, !tbaa !42
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.aj, %bb.b ], [ %i.s, %bb.a ]
  ret i32 %.0
}

declare i32 @ff_framesync_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @process_frame(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.k = call i32 @ff_framesync_get_frame(ptr noundef nonnull %i.j, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 0) #9 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @ff_framesync_get_frame(ptr noundef nonnull %i.j, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 0) #9 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.p = load i32, ptr %i.o, align 8, !tbaa !89
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.r = call ptr @av_frame_clone(ptr noundef %i.q) #9 ; 2 uses
  %.not67 = icmp eq ptr %i.r, null
  br i1 %.not67, label %.critedge, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41
  %i.w = call ptr @ff_get_video_buffer(ptr noundef %i.i, i32 noundef %i.t, i32 noundef %i.v) #9 ; 7 uses
  %.not65.not = icmp eq ptr %i.w, null
  br i1 %.not65.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.y = call i32 @av_frame_copy_props(ptr noundef nonnull %i.w, ptr noundef %i.x) #9 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !37
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 18 uses
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.aq = and i32 %i.ap, %i.ao
  %.not66 = icmp eq i32 %i.aq, 0
  br i1 %.not66, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !42
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !42
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !42
  %i.bd = load i32, ptr %i.am, align 8, !tbaa !44
  %i.be = icmp sgt i32 %i.bd, 256
  %i.bf = zext i1 %i.be to i32
  %i.bg = shl i32 %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42
  call void @av_image_copy_plane(ptr noundef %i.as, i32 noundef %i.au, ptr noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.bg, i32 noundef %i.bi) #9
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !92
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !90  ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !42
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !42
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !42
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !42
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !42
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !42
  %i.cl = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.cm = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.co = load i32, ptr %i.am, align 8, !tbaa !44
  %i.cp = sext i32 %i.co to i64
  call void %i.bj(ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %i.br, i64 noundef %i.bv, i64 noundef %i.bz, i64 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.cn, i64 noundef %i.cp) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cq = load i32, ptr %i.z, align 8, !tbaa !37
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next, %i.cr
  br i1 %i.cs, label %bb.g, label %.loopexit, !llvm.loop !85

.loopexit:                                        ; preds = %bb.j, %bb.f, %bb.d
  %.059 = phi ptr [ %i.r, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.j ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !93
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.cx = load i64, ptr %i.cv, align 4
  %i.cy = load i64, ptr %i.cw, align 8
  %i.cz = call i64 @av_rescale_q(i64 noundef %i.cu, i64 %i.cx, i64 %i.cy) #10
  %i.da = getelementptr inbounds nuw i8, ptr %.059, i64 136
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !98
  %i.db = call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef nonnull %.059) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %.loopexit
  %.1 = phi i32 [ -12, %bb.e ], [ %i.db, %.loopexit ], [ %i.m, %bb.b ], [ %i.k, %bb.a ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #3

declare i32 @ff_framesync_get_frame(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #6

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare void @ff_framesync_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !51}
!1 = distinct !{!1, !51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !11, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p2 _ZTS12AVFilterLink", !16, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !11, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!20 = !{!"AVFilterContext", !12, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !17, i64 32, !8, i64 40, !15, i64 48, !17, i64 56, !8, i64 64, !11, i64 72, !18, i64 80, !8, i64 88, !8, i64 92, !14, i64 96, !8, i64 104, !19, i64 112, !8, i64 120}
!21 = !{!20, !11, i64 72}
!22 = !{!"p1 _ZTS15AVFilterContext", !11, i64 0}
!23 = !{!"AVRational", !8, i64 0, !8, i64 4}
!24 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!25 = !{!"p2 _ZTS15AVFrameSideData", !16, i64 0}
!26 = !{!"p1 _ZTS15AVFilterFormats", !11, i64 0}
!27 = !{!"p1 _ZTS22AVFilterChannelLayouts", !11, i64 0}
!28 = !{!"AVFilterFormatsConfig", !26, i64 0, !26, i64 8, !27, i64 16, !26, i64 24, !26, i64 32, !26, i64 40}
!29 = !{!"AVFilterLink", !22, i64 0, !15, i64 8, !22, i64 16, !15, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !23, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !24, i64 72, !23, i64 96, !25, i64 104, !8, i64 112, !8, i64 116, !28, i64 120, !28, i64 168}
!30 = !{!29, !22, i64 16}
!31 = !{!29, !8, i64 36}
!32 = !{!"p1 int", !11, i64 0}
!33 = !{!"long", !7, i64 0}
!34 = !{!"p1 _ZTS13FFFrameSyncIn", !11, i64 0}
!35 = !{!"FFFrameSync", !12, i64 0, !22, i64 8, !8, i64 16, !23, i64 20, !33, i64 32, !11, i64 40, !11, i64 48, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 65, !34, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92}
!36 = !{!"MidEqualizerContext", !12, i64 0, !7, i64 8, !7, i64 40, !8, i64 72, !8, i64 76, !8, i64 80, !7, i64 88, !32, i64 104, !35, i64 112, !11, i64 208}
!37 = !{!36, !8, i64 72}
!38 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !33, i64 16, !7, i64 24, !14, i64 104}
!39 = !{!38, !7, i64 9}
!40 = !{!38, !7, i64 10}
!41 = !{!29, !8, i64 44}
!42 = !{!8, !8, i64 0}
!43 = !{!29, !8, i64 40}
!44 = !{!36, !8, i64 80}
!45 = !{!"p1 float", !11, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!36, !32, i64 104}
!48 = !{!36, !11, i64 208}
!49 = !{!"float", !7, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"p1 _ZTS12AVFilterLink", !11, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!56 = !{!"AVComponentDescriptor", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!57 = !{!56, !8, i64 16}
!58 = distinct !{!58, !51}
!59 = distinct !{!59, !52}
!60 = distinct !{!60, !51}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !52}
!63 = distinct !{!63, !51}
!64 = distinct !{!64, !51}
!65 = !{!7, !7, i64 0}
!66 = distinct !{!66, !51}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !51}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !52}
!71 = distinct !{!71, !51}
!72 = distinct !{!72, !52}
!73 = distinct !{!73, !51}
!74 = !{!"short", !7, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!29, !22, i64 0}
!77 = !{!20, !17, i64 32}
!78 = !{!36, !34, i64 184}
!79 = !{!"FFFrameSyncIn", !8, i64 0, !8, i64 4, !23, i64 8, !55, i64 16, !55, i64 24, !33, i64 32, !33, i64 40, !7, i64 48, !7, i64 49, !8, i64 52, !8, i64 56}
!80 = !{!79, !8, i64 52}
!81 = !{!79, !8, i64 0}
!82 = !{!79, !8, i64 4}
!83 = !{!36, !11, i64 160}
!84 = !{!36, !11, i64 152}
!85 = distinct !{!85, !51}
!86 = !{!35, !22, i64 8}
!87 = !{!35, !11, i64 48}
!88 = !{!20, !17, i64 56}
!89 = !{!20, !8, i64 104}
!90 = !{!55, !55, i64 0}
!91 = !{!36, !8, i64 76}
!92 = !{!14, !14, i64 0}
!93 = !{!36, !33, i64 144}
!94 = !{!"p2 omnipotent char", !16, i64 0}
!95 = !{!"p2 _ZTS11AVBufferRef", !16, i64 0}
!96 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!97 = !{!"AVFrame", !7, i64 0, !7, i64 64, !94, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !23, i64 124, !33, i64 136, !33, i64 144, !23, i64 152, !8, i64 160, !11, i64 168, !8, i64 176, !8, i64 180, !7, i64 184, !95, i64 248, !8, i64 256, !25, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !33, i64 304, !96, i64 312, !8, i64 320, !19, i64 328, !19, i64 336, !33, i64 344, !33, i64 352, !33, i64 360, !33, i64 368, !11, i64 376, !24, i64 384, !33, i64 408, !8, i64 416}
!98 = !{!97, !33, i64 136}
end_hunk_2
