inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"deflicker\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Remove temporal frame luminance variations.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr @request_frame, ptr null }], align 16
@pixel_fmts = internal constant [49 x i32] [i32 8, i32 173, i32 168, i32 166, i32 181, i32 30, i32 6, i32 7, i32 0, i32 4, i32 31, i32 5, i32 12, i32 13, i32 32, i32 14, i32 138, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 151, i32 131, i32 127, i32 123, i32 153, i32 133, i32 129, i32 125, i32 45, i32 47, i32 49, i32 33, i32 78, i32 79, i32 85, i32 91, i32 187, i32 97, i32 83, i32 89, i32 185, i32 95, i32 81, i32 87, i32 93, i32 -1], align 16
@ff_vf_deflicker = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @outputs, ptr @deflicker_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pixel_fmts }, i32 2176, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"lavfi.deflicker.luminance\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"lavfi.deflicker.new_luminance\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"lavfi.deflicker.relative_change\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Buffer queue overflow, dropping.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"queue->available\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"libavfilter/bufferqueue.h\00", align 1
@deflicker_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @deflicker_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"set how many frames to use\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"set how to smooth luminance\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"arithmetic mean\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"gm\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"geometric mean\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"hm\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"harmonic mean\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"qm\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"quadratic mean\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"cubic mean\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"power mean\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"median\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"leave frames unchanged\00", align 1
@deflicker_options = internal constant [13 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 8, i32 2, %union.anon.2 { i64 5 }, double 2.000000e+00, double 1.290000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.13, i32 8, i32 2, %union.anon.2 { i64 5 }, double 2.000000e+00, double 1.290000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 12, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 6.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.16, i32 12, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 6.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 0, i32 11, %union.anon.2 { i64 5 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.30, i32 0, i32 11, %union.anon.2 { i64 6 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 16, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@switch.table.config_input = private unnamed_addr constant [7 x ptr] [ptr @get_am_factor, ptr @get_gm_factor, ptr @get_hm_factor, ptr @get_qm_factor, ptr @get_cm_factor, ptr @get_pm_factor, ptr @get_median_factor], align 8

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2138 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !20   ; 2 uses
  %.not2.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i, label %ff_bufqueue_discard_all.exit, label %ff_bufqueue_get.exit.lr.ph.i

ff_bufqueue_get.exit.lr.ph.i:                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2136 ; 2 uses
  br label %ff_bufqueue_get.exit.i

ff_bufqueue_get.exit.i:                           ; preds = %ff_bufqueue_get.exit.i, %ff_bufqueue_get.exit.lr.ph.i
  %i.h = phi i16 [ %i.f, %ff_bufqueue_get.exit.lr.ph.i ], [ %i.r, %ff_bufqueue_get.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.i = load i16, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = add i16 %i.h, -1
  store i16 %i.m, ptr %i.e, align 2, !tbaa !20
  store ptr null, ptr %i.k, align 8, !tbaa !24
  %i.n = zext i16 %i.i to i32
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = urem i32 %i.o, 129
  %i.q = trunc nuw nsw i32 %i.p to i16
  store i16 %i.q, ptr %i.g, align 8, !tbaa !23
  store ptr %i.l, ptr %i.a, align 8, !tbaa !24
  call void @av_frame_free(ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.r = load i16, ptr %i.e, align 2, !tbaa !20   ; 2 uses
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %ff_bufqueue_discard_all.exit, label %ff_bufqueue_get.exit.i, !llvm.loop !26

ff_bufqueue_discard_all.exit:                     ; preds = %ff_bufqueue_get.exit.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @av_freep(ptr noundef nonnull %i.s) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1104 ; 6 uses
  %i.m = getelementptr i8, ptr %i.k, i64 2138     ; 13 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !40   ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !43
  %i.r = icmp sgt i32 %i.q, %i.o
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 2160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.w = tail call nsz float %i.v(ptr noundef nonnull %i.f, ptr noundef %1) #13
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 2144 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa
  store float %i.w, ptr %i.ab, align 4, !tbaa !47
  %.val.i = load i16, ptr %i.m, align 2, !tbaa !20 ; 2 uses
  %.not.i = icmp eq i16 %.val.i, 129
  br i1 %.not.i, label %bb.d, label %ff_bufqueue_add.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.f, i32 noundef 24, ptr noundef nonnull @.str.7) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 2136
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !23
  %i.ae = zext i16 %i.ad to i32
  %i.af = load i16, ptr %i.m, align 2, !tbaa !20
  %i.ag = add i16 %i.af, -1                       ; 2 uses
  store i16 %i.ag, ptr %i.m, align 2, !tbaa !20
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ah, %i.ae
  %i.aj = urem i32 %i.ai, 129
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  tail call void @av_frame_free(ptr noundef nonnull %i.al) #13
  %.pre.i = load i16, ptr %i.m, align 2, !tbaa !20
  %.pre74 = load i32, ptr %i.y, align 8, !tbaa !46
  br label %ff_bufqueue_add.exit

ff_bufqueue_add.exit:                             ; preds = %bb.c, %bb.d
  %i.am = phi i32 [ %.pre74, %bb.d ], [ %i.z, %bb.c ]
  %i.an = phi i16 [ %.pre.i, %bb.d ], [ %.val.i, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 2136
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !23
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add i16 %i.an, 1
  store i16 %i.ar, ptr %i.m, align 2, !tbaa !20
  %i.as = zext i16 %i.an to i32
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = urem i32 %i.at, 129
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.av
  store ptr %1, ptr %i.aw, align 8, !tbaa !24
  %i.ax = add nsw i32 %i.am, 1
  store i32 %i.ax, ptr %i.y, align 8, !tbaa !46
  br label %bb.n

bb.e:                                             ; preds = %bb.b, %bb.a
  %.not71 = icmp eq i16 %i.n, 0
  br i1 %.not71, label %ff_bufqueue_peek.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 2136
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !23
  %i.ba = urem i16 %i.az, 129
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !24
  br label %ff_bufqueue_peek.exit

ff_bufqueue_peek.exit:                            ; preds = %bb.e, %bb.f
  %i.be = phi ptr [ %i.bd, %bb.f ], [ null, %bb.e ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !50
  %i.bj = tail call ptr @ff_get_video_buffer(ptr noundef %i.i, i32 noundef %i.bg, i32 noundef %i.bi) #13 ; 8 uses
  %.not64 = icmp eq ptr %i.bj, null
  br i1 %.not64, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ff_bufqueue_peek.exit
  call void @av_frame_free(ptr noundef nonnull %i.a) #13
  br label %bb.n

bb.h:                                             ; preds = %ff_bufqueue_peek.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 2152
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  call void %i.bl(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !52 ; 2 uses
  %.not65 = icmp eq i32 %i.bn, 0
  br i1 %.not65, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 2168
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !55
  %i.bt = sext i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !55
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i32, ptr %i.bf, align 8, !tbaa !49
  %i.bz = load i32, ptr %i.bh, align 4, !tbaa !50
  %i.ca = load float, ptr %i.c, align 4, !tbaa !47
  %i.cb = call i32 %i.bp(ptr noundef nonnull %i.f, ptr noundef %i.bq, i64 noundef %i.bt, ptr noundef %i.bu, i64 noundef %i.bx, i32 noundef %i.by, i32 noundef %i.bz, float noundef %i.ca) #13 ; 0 uses
  %.pre = load i32, ptr %i.bm, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cc = phi i32 [ %.pre, %bb.i ], [ %i.bn, %bb.h ] ; 2 uses
  %i.cd = sub nsw i32 1, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !56
  %i.cg = icmp slt i32 %i.cd, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.cl = sub i32 0, %i.cc
  %i.cm = sext i32 %i.cl to i64
  %i.cn = add nsw i64 %i.cm, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 7 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !55
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !54
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !55
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !55
  %i.cz = load i32, ptr %i.cj, align 8, !tbaa !57
  %i.da = icmp sgt i32 %i.cz, 8
  %i.db = zext i1 %i.da to i32
  %i.dc = shl i32 %i.cy, %i.db
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !55
  call void @av_image_copy_plane(ptr noundef %i.cq, i32 noundef %i.cs, ptr noundef %i.cu, i32 noundef %i.cw, i32 noundef %i.dc, i32 noundef %i.de) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.df = load i32, ptr %i.ce, align 4, !tbaa !56
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.k, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.di = call i32 @av_frame_copy_props(ptr noundef nonnull %i.bj, ptr noundef %i.be) #13 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bj, i64 312 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !47
  %i.dm = fpext nsz float %i.dl to double
  %i.dn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.3, double noundef %i.dm) #13 ; 0 uses
  %i.do = call i32 @av_dict_set(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, i32 noundef 0) #13 ; 0 uses
  %i.dp = load float, ptr %i.dk, align 8, !tbaa !47
  %i.dq = load float, ptr %i.c, align 4, !tbaa !47
  %i.dr = fmul nsz float %i.dp, %i.dq
  %i.ds = fpext nsz float %i.dr to double
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.3, double noundef %i.ds) #13 ; 0 uses
  %i.du = call i32 @av_dict_set(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.d, i32 noundef 0) #13 ; 0 uses
  %i.dv = load float, ptr %i.c, align 4, !tbaa !47
  %i.dw = fadd nsz float %i.dv, -1.000000e+00
  %i.dx = fpext nsz float %i.dw to double
  %i.dy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.3, double noundef %i.dx) #13 ; 0 uses
  %i.dz = call i32 @av_dict_set(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.d, i32 noundef 0) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.ea = load i16, ptr %i.m, align 2, !tbaa !20  ; 2 uses
  %.not.i66 = icmp eq i16 %i.ea, 0
  br i1 %.not.i66, label %bb.l, label %ff_bufqueue_get.exit

bb.l:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 101) #13
  call void @abort() #14
  unreachable

ff_bufqueue_get.exit:                             ; preds = %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 2136 ; 4 uses
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !23 ; 2 uses
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ed ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !24
  %i.eg = add i16 %i.ea, -1
  store i16 %i.eg, ptr %i.m, align 2, !tbaa !20
  store ptr null, ptr %i.ee, align 8, !tbaa !24
  %i.eh = zext i16 %i.ec to i32
  %i.ei = add nuw nsw i32 %i.eh, 1
  %i.ej = urem i32 %i.ei, 129
  %i.ek = trunc nuw nsw i32 %i.ej to i16
  store i16 %i.ek, ptr %i.eb, align 8, !tbaa !23
  store ptr %i.ef, ptr %i.b, align 8, !tbaa !24
  call void @av_frame_free(ptr noundef nonnull %i.b) #13
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.em = load i32, ptr %i.p, align 8, !tbaa !43
  %i.en = add nsw i32 %i.em, -1
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr nonnull align 4 %i.el, i64 %i.ep, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 2160
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !45
  %i.es = call nsz float %i.er(ptr noundef nonnull %i.f, ptr noundef %1) #13
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 2144
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !46
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr %i.dk, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  store float %i.es, ptr %i.ex, align 4, !tbaa !47
  %.val.i67 = load i16, ptr %i.m, align 2, !tbaa !20 ; 2 uses
  %.not.i68 = icmp eq i16 %.val.i67, 129
  br i1 %.not.i68, label %bb.m, label %ff_bufqueue_add.exit70

bb.m:                                             ; preds = %ff_bufqueue_get.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.f, i32 noundef 24, ptr noundef nonnull @.str.7) #13
  %i.ey = load i16, ptr %i.eb, align 8, !tbaa !23
  %i.ez = zext i16 %i.ey to i32
  %i.fa = load i16, ptr %i.m, align 2, !tbaa !20
  %i.fb = add i16 %i.fa, -1                       ; 2 uses
  store i16 %i.fb, ptr %i.m, align 2, !tbaa !20
  %i.fc = zext i16 %i.fb to i32
  %i.fd = add nuw nsw i32 %i.fc, %i.ez
  %i.fe = urem i32 %i.fd, 129
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ff
  call void @av_frame_free(ptr noundef nonnull %i.fg) #13
  %.pre.i69 = load i16, ptr %i.m, align 2, !tbaa !20
  br label %ff_bufqueue_add.exit70

ff_bufqueue_add.exit70:                           ; preds = %ff_bufqueue_get.exit, %bb.m
  %i.fh = phi i16 [ %.pre.i69, %bb.m ], [ %.val.i67, %ff_bufqueue_get.exit ] ; 2 uses
  %i.fi = load i16, ptr %i.eb, align 8, !tbaa !23
  %i.fj = zext i16 %i.fi to i32
  %i.fk = add i16 %i.fh, 1
  store i16 %i.fk, ptr %i.m, align 2, !tbaa !20
  %i.fl = zext i16 %i.fh to i32
  %i.fm = add nuw nsw i32 %i.fj, %i.fl
  %i.fn = urem i32 %i.fm, 129
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fo
  store ptr %1, ptr %i.fp, align 8, !tbaa !24
  %i.fq = call i32 @ff_filter_frame(ptr noundef nonnull %i.i, ptr noundef nonnull %i.bj) #13
  br label %bb.n

bb.n:                                             ; preds = %ff_bufqueue_add.exit70, %bb.g, %ff_bufqueue_add.exit
  %.062 = phi i32 [ %i.fq, %ff_bufqueue_add.exit70 ], [ -12, %bb.g ], [ 0, %ff_bufqueue_add.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !60
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.j, ptr %i.k, align 4, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sub nsw i32 0, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !63
  %i.q = zext nneg i8 %i.p to i32
  %i.r = ashr i32 %i.n, %i.q
  %i.s = sub nsw i32 0, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 %i.s, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store i32 %i.s, ptr %i.v, align 4, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !50   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %i.x, ptr %i.y, align 4, !tbaa !55
  store i32 %i.x, ptr %i.t, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !49
  %i.ab = sub nsw i32 0, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !64
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = ashr i32 %i.ab, %i.ae
  %i.ag = sub nsw i32 0, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 %i.ag, ptr %i.ai, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !49 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 %i.al, ptr %i.am, align 4, !tbaa !55
  store i32 %i.al, ptr %i.ah, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !65 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !57
  %i.aq = icmp eq i32 %i.ao, 8                    ; 2 uses
  %spec.select = select i1 %i.aq, ptr @deflicker8, ptr @deflicker16
  %spec.select46 = select i1 %i.aq, ptr @calc_avgy8, ptr @calc_avgy16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 2168
  store ptr %spec.select, ptr %i.ar, align 8, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 2160
  store ptr %spec.select46, ptr %i.as, align 8, !tbaa !45
  %i.at = shl nuw i32 1, %i.ao
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @av_calloc(i64 noundef %i.au, i64 noundef 8) #13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !67
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !68 ; 2 uses
  %i.az = icmp ult i32 %i.ay, 7
  br i1 %i.az, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.ba = zext nneg i32 %i.ay to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_input, i64 %i.ba
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2152
  store ptr %switch.load, ptr %i.bb, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %bb.b ], [ 0, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @deflicker8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) #6 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  %i.b = icmp sgt i32 %5, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge21.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 10 uses
  %i.c = add nsw i32 %6, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = mul i64 %4, %i.d
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 %wide.trip.count
  %i.g = mul i64 %2, %i.d
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep26 = getelementptr i8, ptr %i.h, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %5, 4
  %bound0 = icmp ult ptr %3, %scevgep26
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.i = or i64 %2, %4
  %i.j = icmp slt i64 %i.i, 0
  %i.k = or i1 %found.conflict, %i.j
  %min.iters.check28 = icmp ult i32 %5, 16
  %i.l = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %7, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  %n.vec29 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert30 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat31 = shufflevector <4 x float> %broadcast.splatinsert30, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n35 = icmp eq i64 %n.vec29, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.m = add nsw i64 %wide.trip.count, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.020 = phi i32 [ %i.bk, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01519 = phi ptr [ %i.bj, %._crit_edge ], [ %1, %.preheader.preheader ] ; 6 uses
  %.01618 = phi ptr [ %i.bi, %._crit_edge ], [ %3, %.preheader.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.k
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01519, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !69, !alias.scope !70
  %i.o = uitofp <16 x i8> %wide.load to <16 x float>
  %i.p = fmul nsz <16 x float> %broadcast.splat, %i.o
  %i.q = fptosi <16 x float> %i.p to <16 x i32>   ; 3 uses
  %i.r = icmp ult <16 x i32> %i.q, splat (i32 256)
  %i.s = icmp sgt <16 x i32> %i.q, splat (i32 -1)
  %i.t = sext <16 x i1> %i.s to <16 x i8>
  %i.u = trunc nuw <16 x i32> %i.q to <16 x i8>
  %i.v = select <16 x i1> %i.r, <16 x i8> %i.u, <16 x i8> %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.01618, i64 %index
  store <16 x i8> %i.v, ptr %i.w, align 1, !tbaa !69, !alias.scope !73, !noalias !70
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01519, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.y, align 1, !tbaa !69, !alias.scope !70
  %i.z = uitofp <4 x i8> %wide.load33 to <4 x float>
  %i.aa = fmul nsz <4 x float> %broadcast.splat31, %i.z
  %i.ab = fptosi <4 x float> %i.aa to <4 x i32>   ; 3 uses
  %i.ac = icmp ult <4 x i32> %i.ab, splat (i32 256)
  %i.ad = icmp sgt <4 x i32> %i.ab, splat (i32 -1)
  %i.ae = sext <4 x i1> %i.ad to <4 x i8>
  %i.af = trunc nuw <4 x i32> %i.ab to <4 x i8>
  %i.ag = select <4 x i1> %i.ac, <4 x i8> %i.af, <4 x i8> %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618, i64 %index32
  store <4 x i8> %i.ag, ptr %i.ah, align 1, !tbaa !69, !alias.scope !73, !noalias !70
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n35, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec29, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.01519, i64 %indvars.iv.ph
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !69
  %i.al = uitofp i8 %i.ak to float
  %i.am = fmul nsz float %7, %i.al
  %i.an = fptosi float %i.am to i32               ; 3 uses
  %.not.i.prol = icmp ult i32 %i.an, 256
  %isnotneg.i.prol = icmp sgt i32 %i.an, -1
  %i.ao = sext i1 %isnotneg.i.prol to i8
  %i.ap = trunc nuw i32 %i.an to i8
  %.0.i.prol = select i1 %.not.i.prol, i8 %i.ap, i8 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618, i64 %indvars.iv.ph
  store i8 %.0.i.prol, ptr %i.aq, align 1, !tbaa !69
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.m
  br i1 %i.ar, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01519, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = uitofp i8 %i.at to float
  %i.av = fmul nsz float %7, %i.au
  %i.aw = fptosi float %i.av to i32               ; 3 uses
  %.not.i = icmp ult i32 %i.aw, 256
  %isnotneg.i = icmp sgt i32 %i.aw, -1
  %i.ax = sext i1 %isnotneg.i to i8
  %i.ay = trunc nuw i32 %i.aw to i8
  %.0.i = select i1 %.not.i, i8 %i.ay, i8 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.01618, i64 %indvars.iv
  store i8 %.0.i, ptr %i.az, align 1, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01519, i64 %indvars.iv.next
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !69
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = fmul nsz float %7, %i.bc
  %i.be = fptosi float %i.bd to i32               ; 3 uses
end_hunk_0
begin_hunk_1_@deflicker16:bb.a
._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bg = getelementptr inbounds [2 x i8], ptr %.02024, i64 %i.h
  %i.bh = getelementptr inbounds [2 x i8], ptr %.02123, i64 %i.i
  %i.bi = add nuw nsw i32 %.025, 1                ; 2 uses
  %exitcond28.not = icmp eq i32 %i.bi, %6
  br i1 %exitcond28.not, label %._crit_edge26.split, label %.preheader, !llvm.loop !97

._crit_edge26.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal float @calc_avgy16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = shl nuw i32 1, %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, i8 0, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader27.lr.ph, label %.preheader

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55
  %i.s = sdiv i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  br i1 %i.p, label %.preheader27.lr.ph.split, label %.preheader

.preheader27.lr.ph.split:                         ; preds = %.preheader27.lr.ph
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !67   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = icmp ult i32 %i.o, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split, %._crit_edge
  %.02430 = phi i32 [ 0, %.preheader27.lr.ph.split ], [ %i.bp, %._crit_edge ]
  %.02629 = phi ptr [ %i.c, %.preheader27.lr.ph.split ], [ %i.bo, %._crit_edge ] ; 6 uses
  br i1 %i.v, label %.epil.preheader, label %.preheader27.new

.preheader:                                       ; preds = %._crit_edge, %.preheader27.lr.ph, %bb.a
  %i.w = load i32, ptr %i.f, align 8, !tbaa !57   ; 3 uses
  %.not = icmp eq i32 %i.w, 31
  br i1 %.not, label %._crit_edge33, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = shl nuw nsw i32 1, %i.w
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %wide.trip.count40 = zext nneg i32 %i.x to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 2
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count40, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi44 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x i64>, ptr %i.z, align 8, !tbaa !82
  %wide.load45 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !82
  %i.ab = mul <2 x i64> %wide.load, %vec.ind
  %i.ac = mul <2 x i64> %wide.load45, %step.add
  %i.ad = add <2 x i64> %i.ab, %vec.phi           ; 2 uses
  %i.ae = add <2 x i64> %i.ac, %vec.phi44         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %._crit_edge33.loopexit

.preheader27.new:                                 ; preds = %.preheader27, %.preheader27.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader27.new ], [ 0, %.preheader27 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader27.new ], [ 0, %.preheader27 ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.02629, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !89
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !82
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.02629, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !89
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !82
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.02629, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !89
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !82
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.02629, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 6
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !89
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !82
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !82
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader27.new, !llvm.loop !99

._crit_edge.unr-lcssa:                            ; preds = %.preheader27.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader27
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.02629, i64 %indvars.iv.epil
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !89
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !82
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !82
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.bo = getelementptr inbounds [2 x i8], ptr %.02629, i64 %i.t
  %i.bp = add nuw nsw i32 %.02430, 1              ; 2 uses
  %exitcond36.not = icmp eq i32 %i.bp, %i.l
  br i1 %exitcond36.not, label %.preheader, label %.preheader27, !llvm.loop !101

scalar.ph:                                        ; preds = %.lr.ph, %scalar.ph
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %scalar.ph ], [ 0, %.lr.ph ] ; 3 uses
  %.02531 = phi i64 [ %i.bt, %scalar.ph ], [ 0, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv37
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !82
  %i.bs = mul i64 %i.br, %indvars.iv37
  %i.bt = add i64 %i.bs, %.02531                  ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge33.loopexit, label %scalar.ph, !llvm.loop !102

._crit_edge33.loopexit:                           ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ag, %middle.block ], [ %i.bt, %scalar.ph ]
  %i.bu = sitofp nsz i64 %.lcssa to float
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %.preheader
  %.025.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.bu, %._crit_edge33.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !55
  %i.bx = mul nsw i32 %i.bw, %i.l
  %i.by = sitofp nsz i32 %i.bx to float
  %i.bz = fdiv nsz float %.025.lcssa, %i.by
  ret float %i.bz
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_median_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #7 {
bb.a:
  %i.a = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 588 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.d, ptr noundef nonnull align 8 dereferenceable(516) %i.e, i64 516, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %i.d, ptr %i.a, align 16, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !103
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %.0173 = phi i32 [ 1, %bb.a ], [ %.1153, %.thread ] ; 2 uses
  %i.l = add nsw i32 %.0173, -1                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !103 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103  ; 2 uses
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph168.preheader, label %.thread

.lr.ph168.preheader:                              ; preds = %bb.b
  %i.s = sext i32 %.0173 to i64
  %i.t = add nsw i64 %i.s, -1
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %bb.t
  %indvars.iv = phi i64 [ %i.t, %.lr.ph168.preheader ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  %.0121165 = phi ptr [ %i.o, %.lr.ph168.preheader ], [ %.1122, %bb.t ] ; 14 uses
  %.0124164 = phi ptr [ %i.q, %.lr.ph168.preheader ], [ %.1125, %bb.t ] ; 12 uses
  %i.u = getelementptr inbounds i8, ptr %.0124164, i64 -4 ; 6 uses
  %i.v = icmp ult ptr %.0121165, %i.u
  %i.w = ptrtoint ptr %.0124164 to i64            ; 7 uses
  br i1 %i.v, label %bb.c, label %bb.u

bb.c:                                             ; preds = %.lr.ph168
  %i.x = getelementptr inbounds i8, ptr %.0124164, i64 -8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0121165, i64 4 ; 3 uses
  %i.z = ptrtoint ptr %.0121165 to i64            ; 5 uses
  %i.aa = sub i64 %i.w, %i.z
  %i.ab = ashr i64 %i.aa, 3                       ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.0121165, i64 %i.ab ; 12 uses
  %i.ad = sub i64 %i.z, %i.w
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.w, %i.ah
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = load float, ptr %.0121165, align 4, !tbaa !47 ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = load float, ptr %i.ac, align 4, !tbaa !47
  store float %i.am, ptr %i.ac, align 4, !tbaa !47
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ao = load float, ptr %.0124164, align 4, !tbaa !47
  store float %i.am, ptr %.0124164, align 4, !tbaa !47
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.ap = trunc i64 %i.ab to i32
  %i.aq = icmp ugt i32 %i.ap, -2147483648
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load float, ptr %i.ac, align 4, !tbaa !47
  %i.as = load float, ptr %.0121165, align 4, !tbaa !47
  store float %i.as, ptr %i.ac, align 4, !tbaa !47
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.h
  %.sink = phi float [ %i.ar, %bb.h ], [ %i.an, %bb.e ], [ %i.ao, %bb.f ]
  store float %.sink, ptr %.0121165, align 4, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %.0128 = phi i32 [ 1, %bb.g ], [ 0, %.sink.split ]
  %i.at = ptrtoint ptr %i.ac to i64
  %i.au = sub i64 %i.at, %i.w
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load float, ptr %.0124164, align 4, !tbaa !47
  %i.az = load float, ptr %i.ac, align 4, !tbaa !47
  store float %i.az, ptr %.0124164, align 4, !tbaa !47
  store float %i.ay, ptr %i.ac, align 4, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1129 = phi i32 [ 0, %bb.j ], [ %.0128, %bb.i ]
  %i.ba = icmp eq ptr %.0121165, %i.x
  br i1 %i.ba, label %.thread.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load float, ptr %i.ac, align 4, !tbaa !47 ; 2 uses
  %i.bc = load float, ptr %i.u, align 4, !tbaa !47
  store float %i.bc, ptr %i.ac, align 4, !tbaa !47
  store float %i.bb, ptr %i.u, align 4, !tbaa !47
  %.not140159 = icmp ugt ptr %i.y, %i.x
  br i1 %.not140159, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.bd = ptrtoint ptr %i.u to i64                ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge144
  %.0130161 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %.2132, %.critedge144 ] ; 4 uses
  %.0133160 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %.2135, %.critedge144 ]
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.n
  %.1134156 = phi ptr [ %.0133160, %.preheader ], [ %i.bh, %bb.n ] ; 3 uses
  %i.be = ptrtoint ptr %.1134156 to i64
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = and i64 %i.bf, 8589934592
  %.not149 = icmp eq i64 %i.bg, 0
  br i1 %.not149, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.1134156, i64 4 ; 3 uses
  %.not142 = icmp ugt ptr %i.bh, %.0130161
  br i1 %.not142, label %.critedge, label %bb.m, !llvm.loop !104

.critedge:                                        ; preds = %bb.n, %bb.m
  %.1134.lcssa = phi ptr [ %i.bh, %bb.n ], [ %.1134156, %bb.m ] ; 7 uses
  %.not143157 = icmp ugt ptr %.1134.lcssa, %.0130161
  br i1 %.not143157, label %.critedge144, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.o
  %.1131158 = phi ptr [ %i.bn, %bb.o ], [ %.0130161, %.critedge ] ; 5 uses
  %i.bi = ptrtoint ptr %.1131158 to i64
  %i.bj = sub i64 %i.bi, %i.bd
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds i8, ptr %.1131158, i64 -4 ; 3 uses
  %.not143 = icmp ugt ptr %.1134.lcssa, %i.bn
  br i1 %.not143, label %.critedge144, label %.lr.ph, !llvm.loop !105

.critedge2:                                       ; preds = %.lr.ph
  %i.bo = load float, ptr %.1131158, align 4, !tbaa !47
  %i.bp = load float, ptr %.1134.lcssa, align 4, !tbaa !47
  store float %i.bp, ptr %.1131158, align 4, !tbaa !47
  store float %i.bo, ptr %.1134.lcssa, align 4, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %.1134.lcssa, i64 4
  %i.br = getelementptr inbounds i8, ptr %.1131158, i64 -4
  br label %.critedge144

.critedge144:                                     ; preds = %bb.o, %.critedge, %.critedge2
  %.2135 = phi ptr [ %i.bq, %.critedge2 ], [ %.1134.lcssa, %.critedge ], [ %.1134.lcssa, %bb.o ] ; 3 uses
  %.2132 = phi ptr [ %i.br, %.critedge2 ], [ %.0130161, %.critedge ], [ %i.bn, %bb.o ] ; 3 uses
  %.not140 = icmp ugt ptr %.2135, %.2132
  br i1 %.not140, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %.critedge144
  %.pre = load float, ptr %i.u, align 4, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.bs = phi float [ %i.bb, %bb.l ], [ %.pre, %._crit_edge.loopexit ]
  %.0133.lcssa = phi ptr [ %i.y, %bb.l ], [ %.2135, %._crit_edge.loopexit ] ; 7 uses
  %.0130.lcssa = phi ptr [ %i.x, %bb.l ], [ %.2132, %._crit_edge.loopexit ] ; 2 uses
  %i.bt = load float, ptr %.0133.lcssa, align 4, !tbaa !47
  store float %i.bs, ptr %.0133.lcssa, align 4, !tbaa !47
  store float %i.bt, ptr %i.u, align 4, !tbaa !47
  %.not141 = icmp eq i32 %.1129, 0
  br i1 %.not141, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds i8, ptr %.0133.lcssa, i64 -4
  %i.bv = icmp eq ptr %i.ac, %i.bu
  %i.bw = icmp eq ptr %i.ac, %.0133.lcssa
  %or.cond = or i1 %i.bw, %i.bv
  br i1 %or.cond, label %.preheader150.preheader, label %bb.q

.preheader150.preheader:                          ; preds = %bb.p
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.w)
  %i.bx = add i64 %umax, 3
  %i.by = sub i64 %i.bx, %i.z
  %i.bz = and i64 %i.by, -4
  %scevgep = getelementptr i8, ptr %.0121165, i64 %i.bz
  %i.ca = icmp eq ptr %scevgep, %.0124164
  br i1 %i.ca, label %.thread.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader150.preheader, %._crit_edge
  %i.cb = ptrtoint ptr %.0133.lcssa to i64        ; 2 uses
  %i.cc = sub i64 %i.w, %i.cb
  %i.cd = sub i64 %i.cb, %i.z
  %i.ce = icmp slt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %.0121165, ptr %i.cf, align 16, !tbaa !103
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.0130.lcssa, ptr %i.cg, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %.0133.lcssa, i64 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.0133.lcssa, i64 4
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 16, !tbaa !103
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.0124164, ptr %i.ck, align 8, !tbaa !103
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.1125 = phi ptr [ %.0124164, %bb.r ], [ %.0130.lcssa, %bb.s ] ; 2 uses
  %.1122 = phi ptr [ %i.ch, %bb.r ], [ %.0121165, %bb.s ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cl = icmp ult ptr %.1122, %.1125
  br i1 %i.cl, label %.lr.ph168, label %.thread.loopexit

bb.u:                                             ; preds = %.lr.ph168
  %i.cm = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.cn = ptrtoint ptr %.0121165 to i64
  %i.co = sub i64 %i.cn, %i.w
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cs = load float, ptr %.0124164, align 4, !tbaa !47
  %i.ct = load float, ptr %.0121165, align 4, !tbaa !47
  store float %i.ct, ptr %.0124164, align 4, !tbaa !47
  store float %i.cs, ptr %.0121165, align 4, !tbaa !47
  br label %.thread

.thread.loopexit:                                 ; preds = %.preheader150.preheader, %bb.k, %bb.t
  %.1153.ph.in = phi i64 [ %indvars.iv, %.preheader150.preheader ], [ %indvars.iv, %bb.k ], [ %indvars.iv.next, %bb.t ]
  %.1153.ph = trunc i64 %.1153.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b, %bb.u, %bb.v
  %.1153 = phi i32 [ %i.cm, %bb.v ], [ %i.cm, %bb.u ], [ %i.l, %bb.b ], [ %.1153.ph, %.thread.loopexit ] ; 2 uses
  %.not = icmp eq i32 %.1153, 0
  br i1 %.not, label %bb.w, label %bb.b, !llvm.loop !107

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cu = ashr i32 %i.g, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !47
  %i.cy = load float, ptr %i.e, align 8, !tbaa !47
  %i.cz = fdiv nsz float %i.cx, %i.cy
  store float %i.cz, ptr %1, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_am_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.h = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load float, ptr %i.i, align 4, !tbaa !47
  %i.k = fadd nsz float %i.j, %i.h                ; 2 uses
  store float %i.k, ptr %1, align 4, !tbaa !47
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !47
  %i.o = fadd nsz float %i.n, %i.k                ; 2 uses
  store float %i.o, ptr %1, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !47
  %i.s = fadd nsz float %i.r, %i.o                ; 2 uses
  store float %i.s, ptr %1, align 4, !tbaa !47
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !47
  %i.w = fadd nsz float %i.v, %i.s                ; 4 uses
  store float %i.w, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !108

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.x = phi float [ %.epil.init, %.epil.preheader ], [ %i.aa, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.z = load float, ptr %i.y, align 4, !tbaa !47
  %i.aa = fadd nsz float %i.z, %i.x               ; 3 uses
  store float %i.aa, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !109

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ab = phi float [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %bb.c ]
  %i.ac = sitofp nsz i32 %i.d to float
  %i.ad = fdiv nsz float %i.ab, %i.ac             ; 2 uses
  store float %i.ad, ptr %1, align 4, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.af = load float, ptr %i.ae, align 8, !tbaa !47
  %i.ag = fdiv nsz float %i.ad, %i.af
  store float %i.ag, ptr %1, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_gm_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store float 1.000000e+00, ptr %1, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.h = phi float [ 1.000000e+00, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load float, ptr %i.i, align 4, !tbaa !47
  %i.k = fmul nsz float %i.j, %i.h                ; 2 uses
  store float %i.k, ptr %1, align 4, !tbaa !47
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !47
  %i.o = fmul nsz float %i.n, %i.k                ; 2 uses
  store float %i.o, ptr %1, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !47
  %i.s = fmul nsz float %i.r, %i.o                ; 2 uses
  store float %i.s, ptr %1, align 4, !tbaa !47
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !47
  %i.w = fmul nsz float %i.v, %i.s                ; 4 uses
  store float %i.w, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !110

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 1.000000e+00, %.lr.ph ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.x = phi float [ %.epil.init, %.epil.preheader ], [ %i.aa, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.z = load float, ptr %i.y, align 4, !tbaa !47
  %i.aa = fmul nsz float %i.z, %i.x               ; 3 uses
  store float %i.aa, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !111

._crit_edge.loopexit:                             ; preds = %bb.c, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %bb.c ]
  %i.ab = fpext nsz float %.lcssa to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ac = phi double [ %i.ab, %._crit_edge.loopexit ], [ 1.000000e+00, %bb.a ]
  %i.ad = sitofp nsz i32 %i.d to float
  %i.ae = fdiv nsz float 1.000000e+00, %i.ad
  %i.af = fpext nsz float %i.ae to double
  %i.ag = tail call nsz double @llvm.pow.f64(double %i.ac, double %i.af)
  %i.ah = fptrunc nsz double %i.ag to float       ; 2 uses
  store float %i.ah, ptr %1, align 4, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !47
  %i.ak = fdiv nsz float %i.ah, %i.aj
  store float %i.ak, ptr %1, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_hm_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.h = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.aa, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load float, ptr %i.i, align 4, !tbaa !47
  %i.k = fdiv nsz float 1.000000e+00, %i.j
  %i.l = fadd nsz float %i.h, %i.k                ; 2 uses
  store float %i.l, ptr %1, align 4, !tbaa !47
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !47
  %i.p = fdiv nsz float 1.000000e+00, %i.o
  %i.q = fadd nsz float %i.l, %i.p                ; 2 uses
  store float %i.q, ptr %1, align 4, !tbaa !47
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !47
  %i.u = fdiv nsz float 1.000000e+00, %i.t
  %i.v = fadd nsz float %i.q, %i.u                ; 2 uses
  store float %i.v, ptr %1, align 4, !tbaa !47
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !47
  %i.z = fdiv nsz float 1.000000e+00, %i.y
  %i.aa = fadd nsz float %i.v, %i.z               ; 4 uses
  store float %i.aa, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !112

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.ab = phi float [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !47
  %i.ae = fdiv nsz float 1.000000e+00, %i.ad
  %i.af = fadd nsz float %i.ab, %i.ae             ; 3 uses
  store float %i.af, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !113

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ag = phi float [ 0.000000e+00, %bb.a ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %bb.c ]
  %i.ah = sitofp nsz i32 %i.d to float
  %i.ai = fdiv nsz float %i.ah, %i.ag             ; 2 uses
  store float %i.ai, ptr %1, align 4, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !47
  %i.al = fdiv nsz float %i.ai, %i.ak
  store float %i.al, ptr %1, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_qm_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.h = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load float, ptr %i.i, align 4, !tbaa !47 ; 2 uses
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.h) ; 2 uses
  store float %i.k, ptr %1, align 4, !tbaa !47
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !47 ; 2 uses
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.k) ; 2 uses
  store float %i.o, ptr %1, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !47 ; 2 uses
  %i.s = tail call nsz float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.o) ; 2 uses
  store float %i.s, ptr %1, align 4, !tbaa !47
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !47 ; 2 uses
  %i.w = tail call nsz float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.s) ; 4 uses
  store float %i.w, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !114

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.x = phi float [ %.epil.init, %.epil.preheader ], [ %i.aa, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.z = load float, ptr %i.y, align 4, !tbaa !47 ; 2 uses
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x) ; 3 uses
  store float %i.aa, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !115

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ab = phi float [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %bb.c ]
  %i.ac = sitofp nsz i32 %i.d to float
  %i.ad = fdiv nsz float %i.ab, %i.ac
  %i.ae = tail call nsz float @llvm.sqrt.f32(float %i.ad) ; 2 uses
  store float %i.ae, ptr %1, align 4, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ag = load float, ptr %i.af, align 8, !tbaa !47
  %i.ah = fdiv nsz float %i.ae, %i.ag
  store float %i.ah, ptr %1, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_cm_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.h = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.aa, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load float, ptr %i.i, align 4, !tbaa !47 ; 3 uses
  %i.k = fmul nsz float %i.j, %i.j
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.j, float %i.h) ; 2 uses
  store float %i.l, ptr %1, align 4, !tbaa !47
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !47 ; 3 uses
  %i.p = fmul nsz float %i.o, %i.o
  %i.q = tail call nsz float @llvm.fmuladd.f32(float %i.p, float %i.o, float %i.l) ; 2 uses
  store float %i.q, ptr %1, align 4, !tbaa !47
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !47 ; 3 uses
  %i.u = fmul nsz float %i.t, %i.t
  %i.v = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.t, float %i.q) ; 2 uses
  store float %i.v, ptr %1, align 4, !tbaa !47
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !47 ; 3 uses
  %i.z = fmul nsz float %i.y, %i.y
  %i.aa = tail call nsz float @llvm.fmuladd.f32(float %i.z, float %i.y, float %i.v) ; 4 uses
  store float %i.aa, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.ab = phi float [ %.epil.init, %.epil.preheader ], [ %i.af, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !47 ; 3 uses
  %i.ae = fmul nsz float %i.ad, %i.ad
  %i.af = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.ad, float %i.ab) ; 3 uses
  store float %i.af, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !117

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ag = phi float [ 0.000000e+00, %bb.a ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %bb.c ]
  %i.ah = sitofp nsz i32 %i.d to float
  %i.ai = fdiv nsz float %i.ag, %i.ah
  %i.aj = tail call nsz float @cbrtf(float noundef %i.ai) #15 ; 2 uses
  store float %i.aj, ptr %1, align 4, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.al = load float, ptr %i.ak, align 8, !tbaa !47
  %i.am = fdiv nsz float %i.aj, %i.al
  store float %i.am, ptr %1, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_pm_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sitofp nsz i32 %i.d to float
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %i.g = uitofp nneg i32 %i.d to float            ; 7 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.i = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ab, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !47
  %i.l = tail call nsz float @llvm.pow.f32(float %i.k, float %i.g)
  %i.m = fadd nsz float %i.i, %i.l                ; 2 uses
  store float %i.m, ptr %1, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !47
  %i.q = tail call nsz float @llvm.pow.f32(float %i.p, float %i.g)
  %i.r = fadd nsz float %i.m, %i.q                ; 2 uses
  store float %i.r, ptr %1, align 4, !tbaa !47
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !47
  %i.v = tail call nsz float @llvm.pow.f32(float %i.u, float %i.g)
  %i.w = fadd nsz float %i.r, %i.v                ; 2 uses
  store float %i.w, ptr %1, align 4, !tbaa !47
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !47
  %i.aa = tail call nsz float @llvm.pow.f32(float %i.z, float %i.g)
  %i.ab = fadd nsz float %i.w, %i.aa              ; 4 uses
  store float %i.ab, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !118

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.ac = phi float [ %.epil.init, %.epil.preheader ], [ %i.ag, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !47
  %i.af = tail call nsz float @llvm.pow.f32(float %i.ae, float %i.g)
  %i.ag = fadd nsz float %i.ac, %i.af             ; 3 uses
  store float %i.ag, ptr %1, align 4, !tbaa !47
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !119

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.._crit_edge_crit_edge
  %.pre-phi = phi float [ %.pre, %.._crit_edge_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %i.ah = phi float [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %bb.c ]
  %i.ai = fdiv nsz float %i.ah, %.pre-phi
  %i.aj = fdiv nsz float 1.000000e+00, %.pre-phi
  %i.ak = tail call nsz float @llvm.pow.f32(float %i.ai, float %i.aj) ; 2 uses
  store float %i.ak, ptr %1, align 4, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = load float, ptr %i.al, align 8, !tbaa !47
  %i.an = fdiv nsz float %i.ak, %i.am
  store float %i.an, ptr %1, align 4, !tbaa !47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.f) #13 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2144 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2138
  %i.n = load i16, ptr %i.m, align 2, !tbaa !20
  %i.o = zext i16 %i.n to i32
  %i.p = icmp samesign ult i32 %i.l, %i.o
  br i1 %i.p, label %ff_bufqueue_peek.exit, label %.critedge

ff_bufqueue_peek.exit:                            ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2136
  %i.s = load i16, ptr %i.r, align 8, !tbaa !23
  %i.t = zext i16 %i.s to i32
  %i.u = add nuw nsw i32 %i.l, %i.t
  %i.v = urem i32 %i.u, 129
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %ff_bufqueue_peek.exit
  %i.z = tail call ptr @av_frame_clone(ptr noundef nonnull %i.y) #13 ; 2 uses
  %.not24 = icmp eq ptr %i.z, null
  br i1 %.not24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 1, ptr %i.aa, align 4, !tbaa !44
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = tail call i32 @filter_frame(ptr noundef %i.ac, ptr noundef nonnull %i.z)
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !46
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.i, align 8, !tbaa !46
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %ff_bufqueue_peek.exit, %bb.d, %bb.a, %bb.b, %bb.e
  %.118 = phi i32 [ %i.g, %bb.a ], [ %i.ad, %bb.e ], [ -541478725, %bb.b ], [ -12, %bb.d ], [ -12, %ff_bufqueue_peek.exit ], [ -12, %bb.c ]
  ret i32 %.118
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !22, i64 1034}
!21 = !{!"FFBufQueue", !7, i64 0, !22, i64 1032, !22, i64 1034}
!22 = !{!"short", !7, i64 0}
!23 = !{!21, !22, i64 1032}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !30, i64 16}
!29 = !{!"AVFilterLink", !30, i64 0, !15, i64 8, !30, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !31, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !32, i64 72, !31, i64 96, !33, i64 104, !6, i64 112, !6, i64 116, !34, i64 120, !34, i64 168}
!30 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!31 = !{!"AVRational", !6, i64 0, !6, i64 4}
!32 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!33 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!34 = !{!"AVFilterFormatsConfig", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!35 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!36 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!37 = !{!10, !16, i64 56}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!40 = !{!41, !22, i64 2138}
!41 = !{!"DeflickerContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 48, !42, i64 64, !7, i64 72, !7, i64 588, !21, i64 1104, !6, i64 2144, !12, i64 2152, !12, i64 2160, !12, i64 2168}
!42 = !{!"p1 long", !12, i64 0}
!43 = !{!41, !6, i64 8}
!44 = !{!41, !6, i64 20}
!45 = !{!41, !12, i64 2160}
!46 = !{!41, !6, i64 2144}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !7, i64 0}
!49 = !{!29, !6, i64 40}
!50 = !{!29, !6, i64 44}
!51 = !{!41, !12, i64 2152}
!52 = !{!41, !6, i64 16}
!53 = !{!41, !12, i64 2168}
!54 = !{!14, !14, i64 0}
!55 = !{!6, !6, i64 0}
!56 = !{!41, !6, i64 28}
!57 = !{!41, !6, i64 24}
!58 = distinct !{!58, !27}
!59 = !{!29, !6, i64 36}
!60 = !{!61, !7, i64 8}
!61 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !62, i64 16, !7, i64 24, !14, i64 104}
!62 = !{!"long", !7, i64 0}
!63 = !{!61, !7, i64 10}
!64 = !{!61, !7, i64 9}
!65 = !{!66, !6, i64 16}
!66 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!67 = !{!41, !42, i64 64}
!68 = !{!41, !6, i64 12}
!69 = !{!7, !7, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72}
!72 = distinct !{!72, !"LVerDomain"}
!73 = !{!74}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !27, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = distinct !{!79, !27, !76, !77}
!80 = distinct !{!80, !27, !76}
!81 = distinct !{!81, !27}
!82 = !{!62, !62, i64 0}
!83 = distinct !{!83, !27, !76, !77}
!84 = distinct !{!84, !27}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !27}
!88 = distinct !{!88, !27, !77, !76}
!89 = !{!22, !22, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !27, !76, !77}
!96 = distinct !{!96, !27, !76}
!97 = distinct !{!97, !27}
!98 = distinct !{!98, !27, !76, !77}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !86}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !27, !77, !76}
!103 = !{!12, !12, i64 0}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = distinct !{!106, !27}
!107 = distinct !{!107, !27}
!108 = distinct !{!108, !27}
!109 = distinct !{!109, !86}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !86}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !86}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !86}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !86}
!118 = distinct !{!118, !27}
!119 = distinct !{!119, !86}
!120 = !{!29, !30, i64 0}
!121 = !{!10, !16, i64 32}
end_hunk_1
