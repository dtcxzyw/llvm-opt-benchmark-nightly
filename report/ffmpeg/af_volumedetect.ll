Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_volumedetect?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }

@.str = private unnamed_addr constant [13 x i8] c"volumedetect\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Detect audio volume.\00", align 1
@volumedetect_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@.compoundliteral = internal constant [3 x i32] [i32 1, i32 6, i32 -1], align 4
@ff_af_volumedetect = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @volumedetect_inputs, ptr @ff_audio_default_filterpad, ptr null, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 4, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @.compoundliteral }, i32 524296, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"n_samples: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"power <= 0x8000 * 0x8000\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"libavfilter/af_volumedetect.c\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"mean_volume: %.1f dB\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"max_volume: %.1f dB\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"histogram_%ddb: %ld\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr noundef %0) #0 {
vector.ph:
  %i.a = alloca [92 x i64], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %i.a, i8 0, i64 736, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !21
  %i.e = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.f = icmp eq i64 %index.next, 65536
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %i.g = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.e) ; 6 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.3, i64 noundef %i.g) #8
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %print_stats.exit, label %bb.a

bb.a:                                             ; preds = %middle.block
  %i.h = lshr i64 %i.g, 33
  %i.i = trunc nuw nsw i64 %i.h to i32            ; 2 uses
  %i.j = icmp ugt i64 %i.g, 562949953421311       ; 2 uses
  %i.k = lshr i32 %i.i, 16
  %spec.select.i.i = select i1 %i.j, i32 %i.k, i32 %i.i ; 3 uses
  %spec.select11.i.i = select i1 %i.j, i64 16, i64 0 ; 2 uses
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.l = lshr i32 %spec.select.i.i, 8
  %i.m = or disjoint i64 %spec.select11.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.l
  %.1.i.i = select i1 %.not.i.i, i64 %spec.select11.i.i, i64 %i.m
  %i.n = zext nneg i32 %.110.i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !31
  %i.q = zext i8 %i.p to i64
  %i.r = add nuw nsw i64 %.1.i.i, %i.q
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv91.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next92.i, %bb.b ] ; 3 uses
  %.05981.i = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]
  %.06080.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.b ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv91.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = lshr i64 %i.t, %i.r                      ; 2 uses
  %i.v = add i64 %i.u, %.05981.i                  ; 5 uses
  %i.w = add nsw i64 %indvars.iv91.i, -32768      ; 2 uses
  %i.x = mul nsw i64 %i.w, %i.w
  %i.y = mul i64 %i.x, %i.u
  %i.z = add i64 %i.y, %.06080.i                  ; 2 uses
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next92.i, 65536
  br i1 %exitcond94.not.i, label %bb.c, label %bb.b, !llvm.loop !24

bb.c:                                             ; preds = %bb.b
  %.not65.i = icmp eq i64 %i.v, 0
  br i1 %.not65.i, label %print_stats.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = lshr i64 %i.v, 1
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = udiv i64 %i.ab, %i.v                    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 1073741825
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 94) #8
  tail call void @abort() #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not.i70.i = icmp ugt i64 %i.v, %i.ab
  br i1 %.not.i70.i, label %logdb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = uitofp nsz nneg i64 %i.ac to double
  %i.af = fmul nnan nsz double %i.ae, f0x3E10000000000000
  %i.ag = tail call nnan nsz double @llvm.log10.f64(double %i.af)
  %i.ah = fmul nnan nsz double %i.ag, -1.000000e+01
  br label %logdb.exit.i

logdb.exit.i:                                     ; preds = %bb.g, %bb.f
  %.0.i.i = phi nsz double [ %i.ah, %bb.g ], [ 9.100000e+01, %bb.f ]
  %i.ai = fneg nsz double %.0.i.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.7, double noundef %i.ai) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %logdb.exit.i
  %indvars.iv95.i = phi i64 [ 32768, %logdb.exit.i ], [ %indvars.iv.next96.i, %bb.j ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv95.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 262144
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %.not66.i = icmp eq i64 %i.al, 0
  br i1 %.not66.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %1 = sub nuw nsw i64 32768, %indvars.iv95.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.an = load i64, ptr %i.am, align 8, !tbaa !21
  %.not67.i = icmp eq i64 %i.an, 0
  br i1 %.not67.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next96.i = add nsw i64 %indvars.iv95.i, -1
  %i.ao = icmp samesign ugt i64 %indvars.iv95.i, 1
  br i1 %i.ao, label %bb.h, label %logdb.exit73.i, !llvm.loop !25

bb.k:                                             ; preds = %bb.i, %bb.h
  %2 = trunc nuw nsw i64 %indvars.iv95.i to i32   ; 2 uses
  %i.ap = mul nsw i32 %2, %2
  %i.aq = uitofp nneg i32 %i.ap to double
  %i.ar = fmul nnan nsz double %i.aq, f0x3E10000000000000
  %i.as = tail call nnan nsz double @llvm.log10.f64(double %i.ar)
  %i.at = fmul nnan nsz double %i.as, -1.000000e+01
  br label %logdb.exit73.i

logdb.exit73.i:                                   ; preds = %bb.j, %bb.k
  %.0.i72.i = phi nsz double [ %i.at, %bb.k ], [ 9.100000e+01, %bb.j ]
  %i.au = fneg nsz double %.0.i72.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.8, double noundef %i.au) #8
  br label %bb.l

bb.l:                                             ; preds = %logdb.exit76.i, %logdb.exit73.i
  %indvars.iv98.i = phi i64 [ 0, %logdb.exit73.i ], [ %indvars.iv.next99.i, %logdb.exit76.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv98.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ax = add nsw i64 %indvars.iv98.i, -32768     ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %logdb.exit76.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = mul nsw i64 %i.ax, %i.ax
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = uitofp nneg i32 %i.ba to double
  %i.bc = fmul nnan nsz double %i.bb, f0x3E10000000000000
  %i.bd = tail call nnan nsz double @llvm.log10.f64(double %i.bc)
  %i.be = fmul nnan nsz double %i.bd, -1.000000e+01
  %i.bf = fptosi double %i.be to i32
  %i.bg = sext i32 %i.bf to i64
  br label %logdb.exit76.i

logdb.exit76.i:                                   ; preds = %bb.m, %bb.l
  %.0.i75.i = phi i64 [ %i.bg, %bb.m ], [ 91, %bb.l ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.i75.i ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21
  %i.bj = add i64 %i.bi, %i.aw
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !21
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next99.i, 65536
  br i1 %exitcond101.not.i, label %.preheader.i, label %bb.l, !llvm.loop !26

.preheader.i:                                     ; preds = %logdb.exit76.i, %bb.n
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %bb.n ], [ 0, %logdb.exit76.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv102.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21
  %.not68.i = icmp eq i64 %i.bl, 0
  br i1 %.not68.i, label %bb.n, label %.critedge2.i

bb.n:                                             ; preds = %.preheader.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 92
  br i1 %exitcond105.not.i, label %print_stats.exit, label %.preheader.i, !llvm.loop !27

.critedge2.i:                                     ; preds = %.preheader.i
  %i.bm = udiv i64 %i.g, 1000
  %i.bn = icmp ugt i64 %i.g, 999
  br i1 %i.bn, label %.lr.ph.i, label %print_stats.exit

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.i
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %.lr.ph.i ], [ %indvars.iv102.i, %.critedge2.i ] ; 4 uses
  %.087.i = phi i64 [ %i.br, %.lr.ph.i ], [ 0, %.critedge2.i ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv106.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv106.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %i.bq, i64 noundef %i.bp) #8
  %i.br = add i64 %i.bp, %.087.i                  ; 2 uses
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1
  %i.bs = icmp samesign ult i64 %indvars.iv106.i, 91
  %i.bt = icmp ult i64 %i.br, %i.bm
  %or.cond.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %print_stats.exit, !llvm.loop !28

print_stats.exit:                                 ; preds = %bb.n, %.lr.ph.i, %middle.block, %bb.c, %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %i.k = tail call i32 @av_sample_fmt_is_planar(i32 noundef %i.j) #8
  %.not = icmp eq i32 %i.k, 0                     ; 2 uses
  %i.l = select i1 %.not, i32 %i.h, i32 1
  %spec.select = mul i32 %i.l, %i.f               ; 3 uses
  %spec.select23 = select i1 %.not, i32 1, i32 %i.h ; 2 uses
  %i.m = icmp sgt i32 %spec.select23, 0
  br i1 %i.m, label %.lr.ph27, label %._crit_edge28.split

.lr.ph27:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = icmp sgt i32 %spec.select, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge28.split

.lr.ph.preheader:                                 ; preds = %.lr.ph27
  %wide.trip.count33 = zext nneg i32 %spec.select23 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %spec.select, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv30
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 5 uses
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !54
  %i.v = sext i16 %i.u to i64
  %i.w = getelementptr [8 x i8], ptr %i.d, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 262144   ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !54
  %i.ad = sext i16 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %i.d, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 262144 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !54
  %i.al = sext i16 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.d, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 262144 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !54
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.d, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 262144 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !32

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !54
  %i.ba = sext i16 %i.az to i64
  %i.bb = getelementptr [8 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 262144 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !21
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge28.split, label %.lr.ph, !llvm.loop !34

._crit_edge28.split:                              ; preds = %._crit_edge, %.lr.ph27, %bb.a
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.bj = tail call i32 @ff_filter_frame(ptr noundef %i.bi, ptr noundef %1) #8
  ret i32 %i.bj
}
end_hunk_0
