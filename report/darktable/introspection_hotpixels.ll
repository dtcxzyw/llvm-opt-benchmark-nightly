Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_hotpixels?download=true
inline.NumInlined: 19
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_introspection_t = type { i32, i32, ptr, i64, ptr, i64, i64 }
%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [11 x i8] c"hot pixels\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"remove abnormally bright pixels\0Aby dampening them with neighbors\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"corrective\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"linear, raw, scene-referred\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"reconstruction, raw\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"non_raw\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/darktable/darktable/src/iop/hotpixels.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"lower threshold for hot pixel\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"strength of hot pixel correction\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"permissive\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"markfixed\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"hot pixel correction\0Aonly works for raw images.\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.26, i64 16, ptr getelementptr (i8, ptr @introspection_linear, i64 352), i64 1120, i64 688 }, align 8
@introspection_init.f4 = internal global [5 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr getelementptr (i8, ptr @introspection_linear, i64 264), ptr null], align 16
@__const._process_xtrans.search = private unnamed_addr constant [20 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 -1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 1], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 -2, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 0, i32 -2], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 -2, i32 -1], [2 x i32] [i32 -2, i32 1], [2 x i32] [i32 2, i32 -1], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 -1, i32 -2], [2 x i32] [i32 1, i32 -2], [2 x i32] [i32 -1, i32 2], [2 x i32] [i32 1, i32 2]], align 16
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"fixed %d pixel\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"fixed %d pixels\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"halign\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"mark fixed pixels\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"detect by 3 neighbors\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"dt_iop_hotpixels_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.12, ptr @.str.12, ptr @.str.5, i64 4, i64 0, ptr null }, float 0.000000e+00, float 1.000000e+00, float 2.500000e-01, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.10, ptr @.str.10, ptr @.str.5, i64 4, i64 4, ptr null }, float 0.000000e+00, float 1.000000e+00, float 5.000000e-02, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.23, ptr @.str.15, ptr @.str.15, ptr @.str.24, i64 4, i64 8, ptr null }, i32 0, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] }, [16 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i32, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.23, ptr @.str.14, ptr @.str.14, ptr @.str.25, i64 4, i64 12, ptr null }, i32 0, [4 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.26, ptr @.str.5, ptr @.str.5, ptr @.str.5, i64 16, i64 0, ptr null }, i64 4, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #17
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #17
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #17
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #17
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #17
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #17
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #17
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 130
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x [6 x [4 x [2 x i32]]]], align 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !28  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41  ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43
  %.not = icmp eq i32 %i.g, 0                     ; 12 uses
  %.neg = select i1 %.not, i32 -1, i32 -4         ; 2 uses
  %i.h = select i1 %.not, i64 1, i64 4            ; 22 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !97
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !98
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, %i.k
  %i.p = select i1 %.not, i64 0, i64 2            ; 3 uses
  %i.q = shl i64 %i.o, %i.p
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %.not30 = icmp eq i32 %i.s, 0
  br i1 %.not30, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.f, align 4, !tbaa !43
  %.not31 = icmp eq i32 %i.t, 0
  br i1 %.not31, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !99 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !100 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i32 4, i32 3         ; 2 uses
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !97  ; 6 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !98  ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = icmp sgt i32 %i.ac, 2
  br i1 %i.ae, label %.lr.ph139.i, label %_process_monochrome.exit

.lr.ph139.i:                                      ; preds = %bb.c
  %i.af = add i32 %i.ab, -1                       ; 2 uses
  %i.ag = icmp sgt i32 %i.ab, 2
  %i.ah = sext i32 %.neg to i64                   ; 2 uses
  %i.ai = mul nsw i32 %i.ab, %.neg
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = select i1 %.not, i32 0, i32 2
  %i.al = shl nuw i32 %i.ab, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  br i1 %i.ag, label %.lr.ph139.split.us.i, label %_process_monochrome.exit

.lr.ph139.split.us.i:                             ; preds = %.lr.ph139.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46
  %.fr.i = freeze i32 %i.ao
  %.not117.i = icmp eq i32 %.fr.i, 0
  %i.ap = zext nneg i32 %i.ab to i64              ; 2 uses
  %wide.trip.count203.i = zext nneg i32 %i.ad to i64 ; 2 uses
  br i1 %.not117.i, label %.lr.ph.us.us.i.preheader, label %.lr.ph.us.preheader.i

.lr.ph.us.us.i.preheader:                         ; preds = %.lr.ph139.split.us.i
  %n.vec124 = and i64 %i.h, 4
  br label %.lr.ph.us.us.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph139.split.us.i
  %wide.trip.count187.i = zext nneg i32 %i.af to i64
  %n.vec113 = and i64 %i.h, 4
  %n.vec102 = and i64 %i.h, 4
  %n.vec102.1 = and i64 %i.h, 4
  %n.vec102.epil = and i64 %i.h, 4
  %n.vec = and i64 %i.h, 4
  %n.vec.1 = and i64 %i.h, 4
  %n.vec.epil = and i64 %i.h, 4
  br label %.lr.ph.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.split.us.us.us.i
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i, %._crit_edge.split.us.us.us.i ], [ 1, %.lr.ph.us.us.i.preheader ] ; 2 uses
  %.0107136.us.us.i = phi i32 [ %.3110.us.us.us.i, %._crit_edge.split.us.us.us.i ], [ 0, %.lr.ph.us.us.i.preheader ]
  %i.aq = mul nuw nsw i64 %indvars.iv200.i, %i.ap
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = shl nuw i64 %i.ar, %i.p                 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.as
  br label %bb.d

bb.d:                                             ; preds = %.critedge.us.us.us.i, %.lr.ph.us.us.i
  %.0103135.us.us.us.i = phi i32 [ 1, %.lr.ph.us.us.i ], [ %i.bz, %.critedge.us.us.us.i ]
  %.0104134.us.us.us.i = phi ptr [ %i.au, %.lr.ph.us.us.i ], [ %i.cb, %.critedge.us.us.us.i ] ; 3 uses
  %.0105133.us.us.us.i = phi ptr [ %i.at, %.lr.ph.us.us.i ], [ %i.ca, %.critedge.us.us.us.i ] ; 6 uses
  %.1108132.us.us.us.i = phi i32 [ %.0107136.us.us.i, %.lr.ph.us.us.i ], [ %.3110.us.us.us.i, %.critedge.us.us.us.i ] ; 3 uses
  %i.av = load float, ptr %.0105133.us.us.us.i, align 4, !tbaa !47 ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.av, %i.v
  br i1 %i.aw, label %bb.e, label %.critedge.us.us.us.i

bb.e:                                             ; preds = %bb.d
  %i.ax = fmul reassoc nsz arcp contract afn float %i.av, %i.x ; 4 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %.0105133.us.us.us.i, i64 %i.ah
  %i.az = load float, ptr %i.ay, align 4, !tbaa !47 ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.ax, %i.az ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %.099.us.us.us.i = zext i1 %i.ba to i32
  %i.bc = and i1 %i.ba, %i.bb
  %.098.us.us.us.i = select nsz i1 %i.bc, float %i.az, float 0.000000e+00 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0105133.us.us.us.i, i64 %i.aj
  %i.be = load float, ptr %i.bd, align 4, !tbaa !47 ; 3 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.ax, %i.be ; 2 uses
  %i.bg = select i1 %i.ba, i32 2, i32 1
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.be, %.098.us.us.us.i
  %.1100.us.us.us.i = select i1 %i.bf, i32 %i.bg, i32 %.099.us.us.us.i
  %i.bi = and i1 %i.bf, %i.bh
  %.1.us.us.us.i = select nsz i1 %i.bi, float %i.be, float %.098.us.us.us.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0105133.us.us.us.i, i64 %i.h
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !47 ; 3 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.ax, %i.bk ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt float %i.bk, %.1.us.us.us.i
  %i.bn = zext i1 %i.bl to i32
  %.2101.us.us.us.i = add nuw nsw i32 %.1100.us.us.us.i, %i.bn
  %i.bo = and i1 %i.bl, %i.bm
  %.2.us.us.us.i = select nsz i1 %i.bo, float %i.bk, float %.1.us.us.us.i ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0105133.us.us.us.i, i64 %i.am
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !47 ; 3 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.ax, %i.bq ; 2 uses
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.bq, %.2.us.us.us.i
  %i.bt = zext i1 %i.br to i32
  %.3102.us.us.us.i = add nuw nsw i32 %.2101.us.us.us.i, %i.bt
  %i.bu = select i1 %i.br, i1 %i.bs, i1 false
  %.3.us.us.us.i = select nsz i1 %i.bu, float %i.bq, float %.2.us.us.us.i ; 2 uses
  %.not116.us.us.us.i = icmp samesign ult i32 %.3102.us.us.us.i, %i.aa
  br i1 %.not116.us.us.us.i, label %.critedge.us.us.us.i, label %.preheader125.us.us.us.i.preheader

.preheader125.us.us.us.i.preheader:               ; preds = %bb.e
  br i1 %.not, label %.preheader125.us.us.us.i, label %vector.ph123

vector.ph123:                                     ; preds = %.preheader125.us.us.us.i.preheader
  %broadcast.splatinsert125 = insertelement <4 x float> poison, float %.3.us.us.us.i, i64 0
  %broadcast.splat126 = shufflevector <4 x float> %broadcast.splatinsert125, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next129, %vector.body127 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.0104134.us.us.us.i, i64 %index128
  store <4 x float> %broadcast.splat126, ptr %i.bv, align 4, !tbaa !47
  %index.next129 = add nuw i64 %index128, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.bw, label %middle.block130, label %vector.body127, !llvm.loop !81

.preheader125.us.us.us.i:                         ; preds = %.preheader125.us.us.us.i.preheader, %.preheader125.us.us.us.i
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i, %.preheader125.us.us.us.i ], [ 0, %.preheader125.us.us.us.i.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0104134.us.us.us.i, i64 %indvars.iv194.i
  store float %.3.us.us.us.i, ptr %i.bx, align 4, !tbaa !47
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %indvars.iv.next195.i, %i.h
  br i1 %exitcond198.not.i, label %middle.block130, label %.preheader125.us.us.us.i, !llvm.loop !82

middle.block130:                                  ; preds = %vector.body127, %.preheader125.us.us.us.i
  %i.by = add nsw i32 %.1108132.us.us.us.i, 1
  br label %.critedge.us.us.us.i

.critedge.us.us.us.i:                             ; preds = %middle.block130, %bb.e, %bb.d
  %.3110.us.us.us.i = phi i32 [ %.1108132.us.us.us.i, %bb.d ], [ %.1108132.us.us.us.i, %bb.e ], [ %i.by, %middle.block130 ] ; 3 uses
  %i.bz = add nuw nsw i32 %.0103135.us.us.us.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0105133.us.us.us.i, i64 %i.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0104134.us.us.us.i, i64 %i.h
  %exitcond199.not.i = icmp eq i32 %i.bz, %i.af
  br i1 %exitcond199.not.i, label %._crit_edge.split.us.us.us.i, label %bb.d

._crit_edge.split.us.us.us.i:                     ; preds = %.critedge.us.us.us.i
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %exitcond204.not.i = icmp eq i64 %indvars.iv.next201.i, %wide.trip.count203.i
  br i1 %exitcond204.not.i, label %_process_monochrome.exit, label %.lr.ph.us.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.split.us160.i, %.lr.ph.us.preheader.i
  %indvars.iv189.i = phi i64 [ 1, %.lr.ph.us.preheader.i ], [ %indvars.iv.next190.i, %._crit_edge.split.us160.i ] ; 2 uses
  %.0107136.us.i = phi i32 [ 0, %.lr.ph.us.preheader.i ], [ %.3110.us159.i, %._crit_edge.split.us160.i ]
  %i.cc = mul nuw nsw i64 %indvars.iv189.i, %i.ap
  %i.cd = add nuw nsw i64 %i.cc, 1
  %i.ce = shl nuw i64 %i.cd, %i.p                 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ce
  br label %bb.f

bb.f:                                             ; preds = %.critedge.us158.i, %.lr.ph.us.i
  %indvar220 = phi i64 [ %indvar.next221, %.critedge.us158.i ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i, %.critedge.us158.i ], [ 1, %.lr.ph.us.i ] ; 2 uses
  %.0104134.us144.i = phi ptr [ %i.ei, %.critedge.us158.i ], [ %i.cg, %.lr.ph.us.i ] ; 9 uses
  %.0105133.us145.i = phi ptr [ %i.eh, %.critedge.us158.i ], [ %i.cf, %.lr.ph.us.i ] ; 12 uses
  %.1108132.us146.i = phi i32 [ %.3110.us159.i, %.critedge.us158.i ], [ %.0107136.us.i, %.lr.ph.us.i ] ; 3 uses
  %i.ch = tail call i64 @llvm.umin.i64(i64 %indvar220, i64 9) ; 2 uses
  %umax.neg = add nuw nsw i64 %i.ch, 1            ; 2 uses
  %i.ci = load float, ptr %.0105133.us145.i, align 4, !tbaa !47 ; 2 uses
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, %i.v
  br i1 %i.cj, label %bb.g, label %.critedge.us158.i

bb.g:                                             ; preds = %bb.f
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ci, %i.x ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %.0105133.us145.i, i64 %i.ah
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !47 ; 3 uses
  %i.cn = fcmp reassoc nsz arcp contract afn ogt float %i.ck, %i.cm ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cm, 0.000000e+00
  %.099.us147.i = zext i1 %i.cn to i32
  %i.cp = and i1 %i.cn, %i.co
  %.098.us148.i = select nsz i1 %i.cp, float %i.cm, float 0.000000e+00 ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.0105133.us145.i, i64 %i.aj
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !47 ; 3 uses
  %i.cs = fcmp reassoc nsz arcp contract afn ogt float %i.ck, %i.cr ; 2 uses
  %i.ct = select i1 %i.cn, i32 2, i32 1
  %i.cu = fcmp reassoc nsz arcp contract afn ogt float %i.cr, %.098.us148.i
  %.1100.us149.i = select i1 %i.cs, i32 %i.ct, i32 %.099.us147.i
  %i.cv = and i1 %i.cs, %i.cu
  %.1.us150.i = select nsz i1 %i.cv, float %i.cr, float %.098.us148.i ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0105133.us145.i, i64 %i.h
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !47 ; 3 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ogt float %i.ck, %i.cx ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt float %i.cx, %.1.us150.i
  %i.da = zext i1 %i.cy to i32
  %.2101.us151.i = add nuw nsw i32 %.1100.us149.i, %i.da
  %i.db = and i1 %i.cy, %i.cz
  %.2.us152.i = select nsz i1 %i.db, float %i.cx, float %.1.us150.i ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0105133.us145.i, i64 %i.am
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !47 ; 3 uses
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.ck, %i.dd ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt float %i.dd, %.2.us152.i
  %i.dg = zext i1 %i.de to i32
  %.3102.us153.i = add nuw nsw i32 %.2101.us151.i, %i.dg
  %i.dh = select i1 %i.de, i1 %i.df, i1 false
  %.3.us154.i = select nsz i1 %i.dh, float %i.dd, float %.2.us152.i ; 2 uses
  %.not116.us155.i = icmp samesign ult i32 %.3102.us153.i, %i.aa
  br i1 %.not116.us155.i, label %.critedge.us158.i, label %.preheader125.us156.i.preheader

.preheader125.us156.i.preheader:                  ; preds = %bb.g
  br i1 %.not, label %.preheader125.us156.i, label %vector.ph112

vector.ph112:                                     ; preds = %.preheader125.us156.i.preheader
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %.3.us154.i, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph112
  %index117 = phi i64 [ 0, %vector.ph112 ], [ %index.next118, %vector.body116 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.0104134.us144.i, i64 %index117
  store <4 x float> %broadcast.splat115, ptr %i.di, align 4, !tbaa !47
  %index.next118 = add nuw i64 %index117, 4       ; 2 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %.pre.i.epil = load float, ptr %.0105133.us145.i, align 4, !tbaa !47 ; 2 uses
  %.idx.i.epil = shl nsw i64 %indvars.iv171.i.epil.init, 4
  %invariant.gep.i.epil = getelementptr i8, ptr %.0104134.us144.i, i64 %.idx.i.epil ; 2 uses
  br i1 %.not, label %scalar.ph100.epil, label %vector.ph101.epil

vector.ph101.epil:                                ; preds = %.preheader122.us.i.epil.preheader
  %broadcast.splatinsert103.epil = insertelement <4 x float> poison, float %.pre.i.epil, i64 0
  %broadcast.splat104.epil = shufflevector <4 x float> %broadcast.splatinsert103.epil, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body105.epil

vector.body105.epil:                              ; preds = %vector.body105.epil, %vector.ph101.epil
  %index106.epil = phi i64 [ 0, %vector.ph101.epil ], [ %index.next107.epil, %vector.body105.epil ] ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %invariant.gep.i.epil, i64 %index106.epil
  store <4 x float> %broadcast.splat104.epil, ptr %i.ds, align 4, !tbaa !47
  %index.next107.epil = add nuw i64 %index106.epil, 4 ; 2 uses
  %i.dt = icmp eq i64 %index.next107.epil, %n.vec102.epil
  br i1 %i.dt, label %.preheader123.us.i, label %vector.body105.epil, !llvm.loop !85

scalar.ph100.epil:                                ; preds = %.preheader122.us.i.epil.preheader, %scalar.ph100.epil
  %indvars.iv166.i.epil = phi i64 [ %indvars.iv.next167.i.epil, %scalar.ph100.epil ], [ 0, %.preheader122.us.i.epil.preheader ] ; 2 uses
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i.epil, i64 %indvars.iv166.i.epil
  store float %.pre.i.epil, ptr %gep.i.epil, align 4, !tbaa !47
  %indvars.iv.next167.i.epil = add nuw nsw i64 %indvars.iv166.i.epil, 1 ; 2 uses
  %exitcond170.not.i.epil = icmp eq i64 %indvars.iv.next167.i.epil, %i.h
  br i1 %exitcond170.not.i.epil, label %.preheader123.us.i, label %scalar.ph100.epil, !llvm.loop !86

.preheader123.us.i:                               ; preds = %vector.body105.epil, %scalar.ph100.epil, %.preheader123.us.i.unr-lcssa
  %i.du = add nsw i32 %.1108132.us146.i, 1        ; 4 uses
  %i.dv = trunc i64 %indvars.iv184.i to i32
  %i.dw = sub i32 %i.ab, %i.dv
  %.fr.us.i = freeze i32 %i.dw                    ; 3 uses
  %or.cond130.us.i = icmp sgt i32 %.fr.us.i, 1
  br i1 %or.cond130.us.i, label %.preheader.us.preheader.i, label %.critedge.us158.i

.preheader.us.preheader.i:                        ; preds = %.preheader123.us.i
  %i.dx = tail call i32 @llvm.umin.i32(i32 %.fr.us.i, i32 11)
  %wide.trip.count182.i = zext nneg i32 %i.dx to i64
  %i.dy = add nsw i64 %wide.trip.count182.i, -1   ; 3 uses
  %xtraiter223 = and i64 %i.dy, 1
  %i.dz = icmp eq i32 %.fr.us.i, 2
  br i1 %i.dz, label %.preheader.us.i.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter226 = and i64 %i.dy, -2
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %middle.block.1, %.preheader.us.preheader.i.new
  %indvars.iv179.i = phi i64 [ 1, %.preheader.us.preheader.i.new ], [ %indvars.iv.next180.i.1, %middle.block.1 ] ; 3 uses
  %niter227 = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter227.next.1, %middle.block.1 ]
  %.pre205.i = load float, ptr %.0105133.us145.i, align 4, !tbaa !47 ; 2 uses
  %.idx210.i = shl nuw nsw i64 %indvars.iv179.i, 4
  %invariant.gep213.i = getelementptr inbounds nuw i8, ptr %.0104134.us144.i, i64 %.idx210.i ; 2 uses
  br i1 %.not, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre205.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213.i, i64 %index
  store <4 x float> %broadcast.splat, ptr %i.ea, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !87

scalar.ph:                                        ; preds = %.preheader.us.i, %scalar.ph
  %indvars.iv174.i = phi i64 [ %indvars.iv.next175.i, %scalar.ph ], [ 0, %.preheader.us.i ] ; 2 uses
  %gep214.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213.i, i64 %indvars.iv174.i
  store float %.pre205.i, ptr %gep214.i, align 4, !tbaa !47
  %indvars.iv.next175.i = add nuw nsw i64 %indvars.iv174.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next175.i, %i.h
  br i1 %exitcond178.not.i, label %middle.block, label %scalar.ph, !llvm.loop !88

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %.pre205.i.1 = load float, ptr %.0105133.us145.i, align 4, !tbaa !47 ; 2 uses
  %indvars.iv.next180.i = shl i64 %indvars.iv179.i, 4
  %i.ec = getelementptr i8, ptr %.0104134.us144.i, i64 %indvars.iv.next180.i
  %invariant.gep213.i.1 = getelementptr i8, ptr %i.ec, i64 16 ; 2 uses
  br i1 %.not, label %scalar.ph.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %middle.block
  %broadcast.splatinsert.1 = insertelement <4 x float> poison, float %.pre205.i.1, i64 0
  %broadcast.splat.1 = shufflevector <4 x float> %broadcast.splatinsert.1, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213.i.1, i64 %index.1
  store <4 x float> %broadcast.splat.1, ptr %i.ed, align 4, !tbaa !47
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.ee = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.ee, label %middle.block.1, label %vector.body.1, !llvm.loop !87

scalar.ph.1:                                      ; preds = %middle.block, %scalar.ph.1
  %indvars.iv174.i.1 = phi i64 [ %indvars.iv.next175.i.1, %scalar.ph.1 ], [ 0, %middle.block ] ; 2 uses
  %gep214.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213.i.1, i64 %indvars.iv174.i.1
  store float %.pre205.i.1, ptr %gep214.i.1, align 4, !tbaa !47
  %indvars.iv.next175.i.1 = add nuw nsw i64 %indvars.iv174.i.1, 1 ; 2 uses
  %exitcond178.not.i.1 = icmp eq i64 %indvars.iv.next175.i.1, %i.h
  br i1 %exitcond178.not.i.1, label %middle.block.1, label %scalar.ph.1, !llvm.loop !88

middle.block.1:                                   ; preds = %scalar.ph.1, %vector.body.1
  %indvars.iv.next180.i.1 = add nuw nsw i64 %indvars.iv179.i, 2 ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %.critedge.us158.i.loopexit.unr-lcssa, label %.preheader.us.i

.critedge.us158.i.loopexit.unr-lcssa:             ; preds = %middle.block.1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.critedge.us158.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %.critedge.us158.i.loopexit.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv179.i.epil.init = phi i64 [ 1, %.preheader.us.preheader.i ], [ %indvars.iv.next180.i.1, %.critedge.us158.i.loopexit.unr-lcssa ]
  %lcmp.mod225 = trunc i64 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %.pre205.i.epil = load float, ptr %.0105133.us145.i, align 4, !tbaa !47 ; 2 uses
  %.idx210.i.epil = shl nuw nsw i64 %indvars.iv179.i.epil.init, 4
  %invariant.gep213.i.epil = getelementptr inbounds nuw i8, ptr %.0104134.us144.i, i64 %.idx210.i.epil ; 2 uses
  br i1 %.not, label %scalar.ph.epil, label %vector.ph.epil

vector.ph.epil:                                   ; preds = %.preheader.us.i.epil.preheader
  %broadcast.splatinsert.epil = insertelement <4 x float> poison, float %.pre205.i.epil, i64 0
  %broadcast.splat.epil = shufflevector <4 x float> %broadcast.splatinsert.epil, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body.epil

vector.body.epil:                                 ; preds = %vector.body.epil, %vector.ph.epil
  %index.epil = phi i64 [ 0, %vector.ph.epil ], [ %index.next.epil, %vector.body.epil ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213.i.epil, i64 %index.epil
  store <4 x float> %broadcast.splat.epil, ptr %i.ef, align 4, !tbaa !47
  %index.next.epil = add nuw i64 %index.epil, 4   ; 2 uses
  %i.eg = icmp eq i64 %index.next.epil, %n.vec.epil
  br i1 %i.eg, label %.critedge.us158.i, label %vector.body.epil, !llvm.loop !87

scalar.ph.epil:                                   ; preds = %.preheader.us.i.epil.preheader, %scalar.ph.epil
  %indvars.iv174.i.epil = phi i64 [ %indvars.iv.next175.i.epil, %scalar.ph.epil ], [ 0, %.preheader.us.i.epil.preheader ] ; 2 uses
  %gep214.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213.i.epil, i64 %indvars.iv174.i.epil
  store float %.pre205.i.epil, ptr %gep214.i.epil, align 4, !tbaa !47
  %indvars.iv.next175.i.epil = add nuw nsw i64 %indvars.iv174.i.epil, 1 ; 2 uses
  %exitcond178.not.i.epil = icmp eq i64 %indvars.iv.next175.i.epil, %i.h
  br i1 %exitcond178.not.i.epil, label %.critedge.us158.i, label %scalar.ph.epil, !llvm.loop !88

.critedge.us158.i:                                ; preds = %.critedge.us158.i.loopexit.unr-lcssa, %scalar.ph.epil, %vector.body.epil, %.preheader123.us.i, %bb.g, %bb.f
  %.3110.us159.i = phi i32 [ %.1108132.us146.i, %bb.f ], [ %.1108132.us146.i, %bb.g ], [ %i.du, %.preheader123.us.i ], [ %i.du, %vector.body.epil ], [ %i.du, %scalar.ph.epil ], [ %i.du, %.critedge.us158.i.loopexit.unr-lcssa ] ; 3 uses
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0105133.us145.i, i64 %i.h
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0104134.us144.i, i64 %i.h
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i, %wide.trip.count187.i
  %indvar.next221 = add i64 %indvar220, 1
  br i1 %exitcond188.not.i, label %._crit_edge.split.us160.i, label %bb.f

._crit_edge.split.us160.i:                        ; preds = %.critedge.us158.i
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i, %wide.trip.count203.i
  br i1 %exitcond193.not.i, label %_process_monochrome.exit, label %.lr.ph.us.i

bb.h:                                             ; preds = %bb.b
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 184
  %i.em = load i32, ptr %i.el, align 8, !tbaa !64
  %i.en = icmp eq i32 %i.em, 9
  br i1 %i.en, label %bb.i, label %bb.ax

bb.i:                                             ; preds = %bb.h
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %.preheader121.i

.preheader121.i:                                  ; preds = %bb.at, %bb.i
  %indvars.iv170.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next171.i, %bb.at ] ; 3 uses
  %i.ep = trunc i64 %indvars.iv170.i to i32       ; 2 uses
  %i.eq = or i32 %i.ep, 600
  %i.er = urem i32 %i.eq, 6
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [6 x i8], ptr %i.eo, i64 %i.es ; 6 uses
  %i.eu = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %indvars.iv170.i ; 6 uses
  %i.ev = add i32 %i.ep, 600                      ; 6 uses
  %i.ew = load i8, ptr %i.et, align 1, !tbaa !65
  %i.ex = insertelement <2 x i32> <i32 600, i32 poison>, i32 %i.ev, i64 1
  br label %bb.au

bb.j:                                             ; preds = %bb.at
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !99 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !100 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !45
  %.not.i38 = icmp eq i32 %i.fd, 0
  %i.fe = select i1 %.not.i38, i32 4, i32 3       ; 2 uses
  %i.ff = load i32, ptr %i.l, align 4, !tbaa !98  ; 2 uses
  %i.fg = add nsw i32 %i.ff, -2
  %i.fh = icmp sgt i32 %i.ff, 4
  br i1 %i.fh, label %.lr.ph142.i, label %_process_xtrans.exit

.lr.ph142.i:                                      ; preds = %bb.j
  %i.fi = load i32, ptr %i.i, align 4, !tbaa !97  ; 4 uses
  %i.fj = sext i32 %i.fi to i64                   ; 10 uses
  %i.fk = add i32 %i.fi, -2                       ; 2 uses
  %i.fl = icmp sgt i32 %i.fi, 4
  br i1 %i.fl, label %.lr.ph142.split.us.i, label %_process_xtrans.exit

.lr.ph142.split.us.i:                             ; preds = %.lr.ph142.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !46
  %.fr.i39 = freeze i32 %i.fn
  %.not118.i = icmp eq i32 %.fr.i39, 0
  %wide.trip.count203.i40 = zext nneg i32 %i.fg to i64 ; 2 uses
  br i1 %.not118.i, label %.lr.ph138.us.us.i, label %.lr.ph138.us.preheader.i

.lr.ph138.us.preheader.i:                         ; preds = %.lr.ph142.split.us.i
  %wide.trip.count188.i = zext nneg i32 %i.fk to i64
  br label %.lr.ph138.us.i

.lr.ph138.us.us.i:                                ; preds = %.lr.ph142.split.us.i, %._crit_edge.split.us.us.us.i50
  %indvars.iv200.i46 = phi i64 [ %indvars.iv.next201.i51, %._crit_edge.split.us.us.us.i50 ], [ 2, %.lr.ph142.split.us.i ] ; 3 uses
  %.0109139.us.us.i = phi i32 [ %.3.us.us.us.i48, %._crit_edge.split.us.us.us.i50 ], [ 0, %.lr.ph142.split.us.i ]
  %i.fo = mul nuw nsw i64 %indvars.iv200.i46, %i.fj ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fo
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = trunc nuw nsw i64 %indvars.iv200.i46 to i32
  %i.fu = urem i32 %i.ft, 6
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.fv
  br label %bb.k

bb.k:                                             ; preds = %.critedge.us.us.us.i47, %.lr.ph138.us.us.i
  %.0105136.us.us.us.i = phi i32 [ 2, %.lr.ph138.us.us.i ], [ %i.ih, %.critedge.us.us.us.i47 ] ; 2 uses
  %.0106135.us.us.us.i = phi ptr [ %i.fs, %.lr.ph138.us.us.i ], [ %i.ij, %.critedge.us.us.us.i47 ] ; 2 uses
  %.0107134.us.us.us.i = phi ptr [ %i.fq, %.lr.ph138.us.us.i ], [ %i.ii, %.critedge.us.us.us.i47 ] ; 6 uses
  %.1110133.us.us.us.i = phi i32 [ %.0109139.us.us.i, %.lr.ph138.us.us.i ], [ %.3.us.us.us.i48, %.critedge.us.us.us.i47 ] ; 3 uses
  %i.fx = load float, ptr %.0107134.us.us.us.i, align 4, !tbaa !47 ; 2 uses
  %i.fy = fcmp reassoc nsz arcp contract afn ogt float %i.fx, %i.ez
  br i1 %i.fy, label %.preheader120.us.us.us.i, label %.critedge.us.us.us.i47

.preheader120.us.us.us.i:                         ; preds = %bb.k
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fx, %i.fb ; 4 uses
  %i.ga = urem i32 %.0105136.us.us.us.i, 6
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %i.gb ; 8 uses
  %i.gd = load i32, ptr %i.gc, align 16, !tbaa !103
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !103
  %i.gg = sext i32 %i.gd to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %.0107134.us.us.us.i, i64 %i.gg
  %i.gi = sext i32 %i.gf to i64
  %i.gj = mul nsw i64 %i.gi, %i.fj
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !47 ; 3 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.fz, %i.gl ; 2 uses
  %i.gn = zext i1 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !103
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !103
  %i.gs = sext i32 %i.gp to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.0107134.us.us.us.i, i64 %i.gs
  %i.gu = sext i32 %i.gr to i64
  %i.gv = mul nsw i64 %i.gu, %i.fj
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !47 ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.fz, %i.gx ; 2 uses
  %i.gz = zext i1 %i.gy to i32
  %.1104.us.us.us.1.i = add nuw nsw i32 %i.gz, %i.gn
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.hb = load i32, ptr %i.ha, align 16, !tbaa !103
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !103
  %i.he = sext i32 %i.hb to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %.0107134.us.us.us.i, i64 %i.he
  %i.hg = sext i32 %i.hd to i64
  %i.hh = mul nsw i64 %i.hg, %i.fj
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !47 ; 3 uses
  %i.hk = fcmp reassoc nsz arcp contract afn ogt float %i.fz, %i.hj ; 2 uses
  %i.hl = zext i1 %i.hk to i32
  %.1104.us.us.us.2.i = add nuw nsw i32 %.1104.us.us.us.1.i, %i.hl
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !103
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !103
  %i.hq = sext i32 %i.hn to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0107134.us.us.us.i, i64 %i.hq
  %i.hs = sext i32 %i.hp to i64
  %i.ht = mul nsw i64 %i.hs, %i.fj
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !47 ; 3 uses
  %i.hw = fcmp reassoc nsz arcp contract afn ogt float %i.fz, %i.hv ; 2 uses
  %i.hx = zext i1 %i.hw to i32
  %.1104.us.us.us.3.i = add nuw nsw i32 %.1104.us.us.us.2.i, %i.hx
  %.not117.us.us.us.i = icmp samesign ult i32 %.1104.us.us.us.3.i, %i.fe
  br i1 %.not117.us.us.us.i, label %.critedge.us.us.us.i47, label %bb.l

bb.l:                                             ; preds = %.preheader120.us.us.us.i
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.gl, 0.000000e+00
  %i.hz = and i1 %i.gm, %i.hy
  %.1.us.us.us.i53 = select nsz i1 %i.hz, float %i.gl, float 0.000000e+00 ; 2 uses
  %i.ia = fcmp reassoc nsz arcp contract afn ogt float %i.gx, %.1.us.us.us.i53
  %i.ib = select i1 %i.gy, i1 %i.ia, i1 false
  %.1.us.us.us.1.i = select nsz i1 %i.ib, float %i.gx, float %.1.us.us.us.i53 ; 2 uses
  %i.ic = fcmp reassoc nsz arcp contract afn ogt float %i.hj, %.1.us.us.us.1.i
  %i.id = select i1 %i.hk, i1 %i.ic, i1 false
  %.1.us.us.us.2.i = select nsz i1 %i.id, float %i.hj, float %.1.us.us.us.1.i ; 2 uses
  %i.ie = fcmp reassoc nsz arcp contract afn ogt float %i.hv, %.1.us.us.us.2.i
  %i.if = select i1 %i.hw, i1 %i.ie, i1 false
  %.1.us.us.us.3.i = select nsz i1 %i.if, float %i.hv, float %.1.us.us.us.2.i
  store float %.1.us.us.us.3.i, ptr %.0106135.us.us.us.i, align 4, !tbaa !47
  %i.ig = add nsw i32 %.1110133.us.us.us.i, 1
  br label %.critedge.us.us.us.i47

.critedge.us.us.us.i47:                           ; preds = %bb.l, %.preheader120.us.us.us.i, %bb.k
  %.3.us.us.us.i48 = phi i32 [ %.1110133.us.us.us.i, %bb.k ], [ %.1110133.us.us.us.i, %.preheader120.us.us.us.i ], [ %i.ig, %bb.l ] ; 3 uses
  %i.ih = add nuw nsw i32 %.0105136.us.us.us.i, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0107134.us.us.us.i, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.0106135.us.us.us.i, i64 4
  %exitcond199.not.i49 = icmp eq i32 %i.ih, %i.fk
  br i1 %exitcond199.not.i49, label %._crit_edge.split.us.us.us.i50, label %bb.k

._crit_edge.split.us.us.us.i50:                   ; preds = %.critedge.us.us.us.i47
  %indvars.iv.next201.i51 = add nuw nsw i64 %indvars.iv200.i46, 1 ; 2 uses
  %exitcond204.not.i52 = icmp eq i64 %indvars.iv.next201.i51, %wide.trip.count203.i40
  br i1 %exitcond204.not.i52, label %_process_xtrans.exit, label %.lr.ph138.us.us.i

.lr.ph138.us.i:                                   ; preds = %._crit_edge.split.us161.i, %.lr.ph138.us.preheader.i
  %indvars.iv190.i = phi i64 [ 2, %.lr.ph138.us.preheader.i ], [ %indvars.iv.next191.i, %._crit_edge.split.us161.i ] ; 3 uses
  %.0109139.us.i = phi i32 [ 0, %.lr.ph138.us.preheader.i ], [ %.3.us160.i, %._crit_edge.split.us161.i ]
  %i.ik = mul nuw nsw i64 %indvars.iv190.i, %i.fj ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ik
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = trunc i64 %indvars.iv190.i to i32
  %i.iq = insertelement <2 x i32> poison, i32 %i.ip, i64 0
  %i.ir = shufflevector <2 x i32> %i.iq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.is = add <2 x i32> %i.ir, <i32 0, i32 600>
  %i.it = urem <2 x i32> %i.is, splat (i32 6)     ; 2 uses
  %i.iu = extractelement <2 x i32> %i.it, i64 0
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.iv
  %i.ix = extractelement <2 x i32> %i.it, i64 1
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [6 x i8], ptr %i.eo, i64 %i.iy ; 7 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge.us159.i, %.lr.ph138.us.i
  %indvar228 = phi i64 [ %indvar.next229, %.critedge.us159.i ], [ 0, %.lr.ph138.us.i ] ; 3 uses
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i, %.critedge.us159.i ], [ 2, %.lr.ph138.us.i ] ; 2 uses
  %.0106135.us147.i = phi ptr [ %i.ob, %.critedge.us159.i ], [ %i.io, %.lr.ph138.us.i ] ; 8 uses
  %.0107134.us148.i = phi ptr [ %i.oa, %.critedge.us159.i ], [ %i.im, %.lr.ph138.us.i ] ; 12 uses
  %.1110133.us149.i = phi i32 [ %.3.us160.i, %.critedge.us159.i ], [ %.0109139.us.i, %.lr.ph138.us.i ] ; 3 uses
  %i.ja = add i64 %indvar228, 1
  %i.jb = tail call i64 @llvm.umin.i64(i64 %i.ja, i64 9) ; 3 uses
  %i.jc = load float, ptr %.0107134.us148.i, align 4, !tbaa !47 ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ogt float %i.jc, %i.ez
  br i1 %i.jd, label %.preheader120.us150.i, label %.critedge.us159.i

.preheader120.us150.i:                            ; preds = %bb.m
  %i.je = fmul reassoc nsz arcp contract afn float %i.jc, %i.fb ; 4 uses
  %i.jf = trunc nuw nsw i64 %indvars.iv185.i to i32 ; 3 uses
  %i.jg = urem i32 %i.jf, 6
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.iw, i64 %i.jh ; 8 uses
  %i.jj = load i32, ptr %i.ji, align 16, !tbaa !103
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !103
  %i.jm = sext i32 %i.jj to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %.0107134.us148.i, i64 %i.jm
  %i.jo = sext i32 %i.jl to i64
  %i.jp = mul nsw i64 %i.jo, %i.fj
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jp
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !47 ; 3 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt float %i.je, %i.jr ; 2 uses
  %i.jt = zext i1 %i.js to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !103
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !103
  %i.jy = sext i32 %i.jv to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %.0107134.us148.i, i64 %i.jy
  %i.ka = sext i32 %i.jx to i64
  %i.kb = mul nsw i64 %i.ka, %i.fj
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kb
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !47 ; 3 uses
  %i.ke = fcmp reassoc nsz arcp contract afn ogt float %i.je, %i.kd ; 2 uses
  %i.kf = zext i1 %i.ke to i32
  %.1104.us154.1.i = add nuw nsw i32 %i.kf, %i.jt
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.kh = load i32, ptr %i.kg, align 16, !tbaa !103
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !103
  %i.kk = sext i32 %i.kh to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %.0107134.us148.i, i64 %i.kk
  %i.km = sext i32 %i.kj to i64
  %i.kn = mul nsw i64 %i.km, %i.fj
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !47 ; 3 uses
  %i.kq = fcmp reassoc nsz arcp contract afn ogt float %i.je, %i.kp ; 2 uses
end_hunk_1
begin_hunk_2_@process:bb.a

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1112.i.2 = phi i32 [ %i.pw, %bb.af ], [ %.0111123.i.2, %bb.ae ] ; 2 uses
  %indvars.iv.next.i36.2 = add nuw nsw i64 %indvars.iv.i35.2, 1
  %i.px = icmp samesign ult i64 %indvars.iv.i35.2, 19
  %i.py = icmp slt i32 %.1112.i.2, 4
  %i.pz = select i1 %i.px, i1 %i.py, i1 false
  br i1 %i.pz, label %bb.ae, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.qa = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !65
  %i.qc = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  %i.qd = insertelement <2 x i32> <i32 603, i32 poison>, i32 %i.ev, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %indvars.iv.i35.3 = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next.i36.3, %bb.ak ] ; 3 uses
  %.0111123.i.3 = phi i32 [ 0, %bb.ah ], [ %.1112.i.3, %bb.ak ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.3
  %i.qf = load <2 x i32>, ptr %i.qe, align 8, !tbaa !103 ; 3 uses
  %i.qg = add <2 x i32> %i.qd, %i.qf
  %i.qh = srem <2 x i32> %i.qg, splat (i32 6)     ; 2 uses
  %i.qi = extractelement <2 x i32> %i.qh, i64 1
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.qj
  %i.ql = extractelement <2 x i32> %i.qh, i64 0
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.qk, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !65
  %i.qp = icmp eq i8 %i.qb, %i.qo
  br i1 %i.qp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.qq = sext i32 %.0111123.i.3 to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.qq ; 2 uses
  %i.qs = extractelement <2 x i32> %i.qf, i64 0
  store i32 %i.qs, ptr %i.qr, align 8, !tbaa !103
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qu = extractelement <2 x i32> %i.qf, i64 1
  store i32 %i.qu, ptr %i.qt, align 4, !tbaa !103
  %i.qv = add nsw i32 %.0111123.i.3, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1112.i.3 = phi i32 [ %i.qv, %bb.aj ], [ %.0111123.i.3, %bb.ai ] ; 2 uses
  %indvars.iv.next.i36.3 = add nuw nsw i64 %indvars.iv.i35.3, 1
  %i.qw = icmp samesign ult i64 %indvars.iv.i35.3, 19
  %i.qx = icmp slt i32 %.1112.i.3, 4
  %i.qy = select i1 %i.qw, i1 %i.qx, i1 false
  br i1 %i.qy, label %bb.ai, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qz = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !65
  %i.rb = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.rc = insertelement <2 x i32> <i32 604, i32 poison>, i32 %i.ev, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %indvars.iv.i35.4 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next.i36.4, %bb.ao ] ; 3 uses
  %.0111123.i.4 = phi i32 [ 0, %bb.al ], [ %.1112.i.4, %bb.ao ] ; 3 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.4
  %i.re = load <2 x i32>, ptr %i.rd, align 8, !tbaa !103 ; 3 uses
  %i.rf = add <2 x i32> %i.rc, %i.re
  %i.rg = srem <2 x i32> %i.rf, splat (i32 6)     ; 2 uses
  %i.rh = extractelement <2 x i32> %i.rg, i64 1
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.ri
  %i.rk = extractelement <2 x i32> %i.rg, i64 0
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds i8, ptr %i.rj, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !65
  %i.ro = icmp eq i8 %i.ra, %i.rn
  br i1 %i.ro, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.rp = sext i32 %.0111123.i.4 to i64
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rp ; 2 uses
  %i.rr = extractelement <2 x i32> %i.re, i64 0
  store i32 %i.rr, ptr %i.rq, align 8, !tbaa !103
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.rt = extractelement <2 x i32> %i.re, i64 1
  store i32 %i.rt, ptr %i.rs, align 4, !tbaa !103
  %i.ru = add nsw i32 %.0111123.i.4, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1112.i.4 = phi i32 [ %i.ru, %bb.an ], [ %.0111123.i.4, %bb.am ] ; 2 uses
  %indvars.iv.next.i36.4 = add nuw nsw i64 %indvars.iv.i35.4, 1
  %i.rv = icmp samesign ult i64 %indvars.iv.i35.4, 19
  %i.rw = icmp slt i32 %.1112.i.4, 4
  %i.rx = select i1 %i.rv, i1 %i.rw, i1 false
  br i1 %i.rx, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ry = getelementptr inbounds nuw i8, ptr %i.et, i64 5
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !65
  %i.sa = getelementptr inbounds nuw i8, ptr %i.eu, i64 160
  %i.sb = insertelement <2 x i32> <i32 605, i32 poison>, i32 %i.ev, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %indvars.iv.i35.5 = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next.i36.5, %bb.as ] ; 3 uses
  %.0111123.i.5 = phi i32 [ 0, %bb.ap ], [ %.1112.i.5, %bb.as ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35.5
  %i.sd = load <2 x i32>, ptr %i.sc, align 8, !tbaa !103 ; 3 uses
  %i.se = add <2 x i32> %i.sb, %i.sd
  %i.sf = srem <2 x i32> %i.se, splat (i32 6)     ; 2 uses
  %i.sg = extractelement <2 x i32> %i.sf, i64 1
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.sh
  %i.sj = extractelement <2 x i32> %i.sf, i64 0
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds i8, ptr %i.si, i64 %i.sk
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !65
  %i.sn = icmp eq i8 %i.rz, %i.sm
  br i1 %i.sn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.so = sext i32 %.0111123.i.5 to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.so ; 2 uses
  %i.sq = extractelement <2 x i32> %i.sd, i64 0
  store i32 %i.sq, ptr %i.sp, align 8, !tbaa !103
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.ss = extractelement <2 x i32> %i.sd, i64 1
  store i32 %i.ss, ptr %i.sr, align 4, !tbaa !103
  %i.st = add nsw i32 %.0111123.i.5, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1112.i.5 = phi i32 [ %i.st, %bb.ar ], [ %.0111123.i.5, %bb.aq ] ; 2 uses
  %indvars.iv.next.i36.5 = add nuw nsw i64 %indvars.iv.i35.5, 1
  %i.su = icmp samesign ult i64 %indvars.iv.i35.5, 19
  %i.sv = icmp slt i32 %.1112.i.5, 4
  %i.sw = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %i.sw, label %bb.aq, label %bb.at

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, 6
  br i1 %exitcond173.not.i, label %bb.j, label %.preheader121.i

bb.au:                                            ; preds = %bb.aw, %.preheader121.i
  %indvars.iv.i35 = phi i64 [ 0, %.preheader121.i ], [ %indvars.iv.next.i36, %bb.aw ] ; 3 uses
  %.0111123.i = phi i32 [ 0, %.preheader121.i ], [ %.1112.i, %bb.aw ] ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr @__const._process_xtrans.search, i64 %indvars.iv.i35
  %i.sy = load <2 x i32>, ptr %i.sx, align 8, !tbaa !103 ; 3 uses
  %i.sz = add <2 x i32> %i.ex, %i.sy
  %i.ta = srem <2 x i32> %i.sz, splat (i32 6)     ; 2 uses
  %i.tb = extractelement <2 x i32> %i.ta, i64 1
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [6 x i8], ptr %i.eo, i64 %i.tc
  %i.te = extractelement <2 x i32> %i.ta, i64 0
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.td, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !65
  %i.ti = icmp eq i8 %i.ew, %i.th
  br i1 %i.ti, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.tj = sext i32 %.0111123.i to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.tj ; 2 uses
  %i.tl = extractelement <2 x i32> %i.sy, i64 0
  store i32 %i.tl, ptr %i.tk, align 8, !tbaa !103
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  %i.tn = extractelement <2 x i32> %i.sy, i64 1
  store i32 %i.tn, ptr %i.tm, align 4, !tbaa !103
  %i.to = add nsw i32 %.0111123.i, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1112.i = phi i32 [ %i.to, %bb.av ], [ %.0111123.i, %bb.au ] ; 2 uses
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  %i.tp = icmp samesign ult i64 %indvars.iv.i35, 19
  %i.tq = icmp slt i32 %.1112.i, 4
  %i.tr = select i1 %i.tp, i1 %i.tq, i1 false
  br i1 %i.tr, label %bb.au, label %bb.z

_process_xtrans.exit:                             ; preds = %._crit_edge.split.us161.i, %._crit_edge.split.us.us.us.i50, %bb.j, %.lr.ph142.i
  %.0109.lcssa.i = phi i32 [ 0, %bb.j ], [ 0, %.lr.ph142.i ], [ %.3.us.us.us.i48, %._crit_edge.split.us.us.us.i50 ], [ %.3.us160.i, %._crit_edge.split.us161.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_process_monochrome.exit

bb.ax:                                            ; preds = %bb.h
  %i.ts = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !99 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !100 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !45
  %.not.i54 = icmp eq i32 %i.tx, 0
  %i.ty = select i1 %.not.i54, i32 4, i32 3       ; 4 uses
  %i.tz = load i32, ptr %i.l, align 4, !tbaa !98  ; 2 uses
  %i.ua = add i32 %i.tz, -2
  %i.ub = icmp sgt i32 %i.tz, 4
  br i1 %i.ub, label %.lr.ph112.i, label %_process_monochrome.exit

.lr.ph112.i:                                      ; preds = %bb.ax
  %i.uc = load i32, ptr %i.i, align 4, !tbaa !97  ; 7 uses
  %i.ud = shl i32 %i.uc, 1                        ; 2 uses
  %i.ue = sext i32 %i.uc to i64                   ; 4 uses
  %i.uf = add i32 %i.uc, -2                       ; 2 uses
  %i.ug = icmp sgt i32 %i.uc, 4
  %i.uh = sub nsw i32 0, %i.ud
  %i.ui = sext i32 %i.uh to i64                   ; 4 uses
  %6 = sext i32 %i.ud to i64                      ; 5 uses
  br i1 %i.ug, label %.lr.ph112.split.us.i, label %_process_monochrome.exit

.lr.ph112.split.us.i:                             ; preds = %.lr.ph112.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !46
  %.fr.i55 = freeze i32 %i.uk
  %.not94.i = icmp eq i32 %.fr.i55, 0
  %wide.trip.count152.i = zext i32 %i.ua to i64   ; 3 uses
  br i1 %.not94.i, label %.lr.ph108.us.us.i.preheader, label %.lr.ph108.us.preheader.i

.lr.ph108.us.us.i.preheader:                      ; preds = %.lr.ph112.split.us.i
  %i.ul = shl nuw nsw i64 %i.ue, 3                ; 4 uses
  %i.um = getelementptr i8, ptr %3, i64 %i.ul
  %scevgep = getelementptr i8, ptr %i.um, i64 8   ; 3 uses
  %i.un = shl nuw nsw i64 %wide.trip.count152.i, 2
  %i.uo = add nsw i64 %i.un, -4
  %i.up = mul i64 %i.uo, %i.ue                    ; 3 uses
  %i.uq = add nsw i32 %i.uc, -5
  %i.ur = zext i32 %i.uq to i64
  %i.us = shl nuw nsw i64 %i.ur, 2                ; 3 uses
  %i.ut = getelementptr i8, ptr %3, i64 %i.up
  %i.uu = getelementptr i8, ptr %i.ut, i64 %i.us
  %scevgep141 = getelementptr i8, ptr %i.uu, i64 12 ; 3 uses
  %i.uv = shl nsw i64 %6, 2                       ; 4 uses
  %i.uw = getelementptr i8, ptr %2, i64 %i.ul
  %i.ux = getelementptr i8, ptr %i.uw, i64 %i.uv
  %scevgep142 = getelementptr i8, ptr %i.ux, i64 8
  %i.uy = getelementptr i8, ptr %2, i64 %i.up
  %i.uz = getelementptr i8, ptr %i.uy, i64 %i.uv
  %i.va = getelementptr i8, ptr %i.uz, i64 %i.us
  %scevgep143 = getelementptr i8, ptr %i.va, i64 12
  %scevgep144 = getelementptr i8, ptr %2, i64 %i.ul
  %7 = add i64 %i.up, %i.us                       ; 2 uses
  %i.vb = getelementptr i8, ptr %2, i64 %7
  %scevgep145 = getelementptr i8, ptr %i.vb, i64 20
  %i.vc = add nuw nsw i64 %i.ul, 8
  %i.vd = sub nsw i64 %i.vc, %i.uv
  %scevgep146 = getelementptr i8, ptr %2, i64 %i.vd
  %i.ve = add i64 %7, 12
  %i.vf = sub i64 %i.ve, %i.uv
  %scevgep147 = getelementptr i8, ptr %2, i64 %i.vf
  %i.vg = add nsw i32 %i.uc, -4                   ; 3 uses
  %i.vh = zext i32 %i.vg to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.vg, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep143
  %bound1 = icmp ult ptr %scevgep142, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  %bound0148 = icmp ult ptr %scevgep, %scevgep145
  %bound1149 = icmp ult ptr %scevgep144, %scevgep141
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx = or i1 %found.conflict, %found.conflict150
  %bound0151 = icmp ult ptr %scevgep, %scevgep147
  %bound1152 = icmp ult ptr %scevgep146, %scevgep141
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx, %found.conflict153
  %min.iters.check156 = icmp ult i32 %i.vg, 16
  %i.vi = and i64 %i.vh, 8
  %n.vec158 = and i64 %i.vh, 4294967280           ; 5 uses
  %i.vj = trunc nuw i64 %n.vec158 to i32
  %i.vk = or disjoint i32 %i.vj, 2
  %i.vl = shl nuw nsw i64 %n.vec158, 2            ; 2 uses
  %broadcast.splatinsert159 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat160 = shufflevector <8 x float> %broadcast.splatinsert159, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.tv, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert163 = insertelement <8 x i32> poison, i32 %i.ty, i64 0
  %broadcast.splat164 = shufflevector <8 x i32> %broadcast.splatinsert163, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n180 = icmp eq i64 %n.vec158, %i.vh
  %min.epilog.iters.check.not.not = icmp eq i64 %i.vi, 0
  %n.vec184 = and i64 %i.vh, 4294967288           ; 4 uses
  %i.vm = trunc nuw i64 %n.vec184 to i32
  %i.vn = or disjoint i32 %i.vm, 2
  %i.vo = shl nuw nsw i64 %n.vec184, 2            ; 2 uses
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %i.tt, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %i.tv, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <8 x i32> poison, i32 %i.ty, i64 0
  %broadcast.splat190 = shufflevector <8 x i32> %broadcast.splatinsert189, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n202 = icmp eq i64 %n.vec184, %i.vh
  br label %iter.check

.lr.ph108.us.preheader.i:                         ; preds = %.lr.ph112.split.us.i
  %wide.trip.count.i56 = zext nneg i32 %i.uf to i64
  br label %.lr.ph108.us.i

iter.check:                                       ; preds = %.lr.ph108.us.us.i.preheader, %._crit_edge.split.us.us.us.i66
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %._crit_edge.split.us.us.us.i66 ], [ 2, %.lr.ph108.us.us.i.preheader ] ; 2 uses
  %.085109.us.us.i = phi i32 [ %.388.us.us.us.i.lcssa, %._crit_edge.split.us.us.us.i66 ], [ 0, %.lr.ph108.us.us.i.preheader ] ; 4 uses
  %i.vp = mul nuw nsw i64 %indvars.iv149.i, %i.ue ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 6 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.vp
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  br i1 %conflict.rdx154, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph157

vector.ph157:                                     ; preds = %vector.main.loop.iter.check
  %i.vu = getelementptr i8, ptr %i.vt, i64 %i.vl
  %i.vv = getelementptr i8, ptr %i.vr, i64 %i.vl
  %i.vw = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.085109.us.us.i, i64 0
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph157
  %index166 = phi i64 [ 0, %vector.ph157 ], [ %index.next178, %vector.body165 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.vw, %vector.ph157 ], [ %predphi, %vector.body165 ]
  %vec.phi167 = phi <8 x i32> [ zeroinitializer, %vector.ph157 ], [ %predphi177, %vector.body165 ]
  %i.vx = shl i64 %index166, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vt, i64 %i.vx ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.vr, i64 %i.vx ; 8 uses
  %i.vy = getelementptr i8, ptr %next.gep168, i64 32
  %wide.load = load <8 x float>, ptr %next.gep168, align 4, !tbaa !47, !alias.scope !104 ; 2 uses
  %wide.load169 = load <8 x float>, ptr %i.vy, align 4, !tbaa !47, !alias.scope !104 ; 2 uses
  %i.vz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load, %broadcast.splat160 ; 5 uses
  %i.wa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load169, %broadcast.splat160 ; 5 uses
  %i.wb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat162 ; 4 uses
  %i.wc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load169, %broadcast.splat162 ; 4 uses
  %i.wd = getelementptr i8, ptr %next.gep168, i64 -8
  %i.we = getelementptr i8, ptr %next.gep168, i64 24
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wd, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %wide.masked.load170 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.we, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.wf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load ; 3 uses
  %i.wg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load170 ; 3 uses
  %i.wh = zext <8 x i1> %i.wf to <8 x i32>
  %i.wi = zext <8 x i1> %i.wg to <8 x i32>
  %i.wj = getelementptr [4 x i8], ptr %next.gep168, i64 %i.ui ; 2 uses
  %i.wk = getelementptr i8, ptr %i.wj, i64 32
  %wide.masked.load171 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wj, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !105 ; 3 uses
  %wide.masked.load172 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wk, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !105 ; 3 uses
  %i.wl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load171 ; 2 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load172 ; 2 uses
  %i.wn = select <8 x i1> %i.wf, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.wo = select <8 x i1> %i.wg, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.wp = select <8 x i1> %i.wl, <8 x i32> %i.wn, <8 x i32> %i.wh
  %i.wq = select <8 x i1> %i.wm, <8 x i32> %i.wo, <8 x i32> %i.wi
  %i.wr = getelementptr i8, ptr %next.gep168, i64 8
  %i.ws = getelementptr i8, ptr %next.gep168, i64 40
  %wide.masked.load173 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wr, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %wide.masked.load174 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ws, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.wt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load173 ; 2 uses
  %i.wu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load174 ; 2 uses
  %i.wv = zext <8 x i1> %i.wt to <8 x i32>
  %i.ww = zext <8 x i1> %i.wu to <8 x i32>
  %i.wx = add nuw nsw <8 x i32> %i.wp, %i.wv
  %i.wy = add nuw nsw <8 x i32> %i.wq, %i.ww
  %i.wz = getelementptr [4 x i8], ptr %next.gep168, i64 %6 ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wz, i64 32
  %wide.masked.load175 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.wz, <8 x i1> %i.vz, <8 x float> poison), !tbaa !47, !alias.scope !106 ; 3 uses
  %wide.masked.load176 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.xa, <8 x i1> %i.wa, <8 x float> poison), !tbaa !47, !alias.scope !106 ; 3 uses
  %i.xb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wb, %wide.masked.load175 ; 2 uses
  %i.xc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, %wide.masked.load176 ; 2 uses
  %i.xd = zext <8 x i1> %i.xb to <8 x i32>
  %i.xe = zext <8 x i1> %i.xc to <8 x i32>
  %i.xf = add nuw nsw <8 x i32> %i.wx, %i.xd
  %i.xg = add nuw nsw <8 x i32> %i.wy, %i.xe
  %i.xh = icmp samesign uge <8 x i32> %i.xf, %broadcast.splat164
  %i.xi = icmp samesign uge <8 x i32> %i.xg, %broadcast.splat164
  %i.xj = select <8 x i1> %i.vz, <8 x i1> %i.xh, <8 x i1> zeroinitializer ; 2 uses
  %i.xk = select <8 x i1> %i.wa, <8 x i1> %i.xi, <8 x i1> zeroinitializer ; 2 uses
  %i.xl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load, zeroinitializer
  %i.xm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load170, zeroinitializer
  %i.xn = and <8 x i1> %i.wf, %i.xl
  %i.xo = and <8 x i1> %i.wg, %i.xm
  %i.xp = select nsz <8 x i1> %i.xn, <8 x float> %wide.masked.load, <8 x float> zeroinitializer ; 2 uses
  %i.xq = select nsz <8 x i1> %i.xo, <8 x float> %wide.masked.load170, <8 x float> zeroinitializer ; 2 uses
  %i.xr = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load171, %i.xp
  %i.xs = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load172, %i.xq
  %i.xt = and <8 x i1> %i.wl, %i.xr
  %i.xu = and <8 x i1> %i.wm, %i.xs
  %i.xv = select nsz <8 x i1> %i.xt, <8 x float> %wide.masked.load171, <8 x float> %i.xp ; 2 uses
  %i.xw = select nsz <8 x i1> %i.xu, <8 x float> %wide.masked.load172, <8 x float> %i.xq ; 2 uses
  %i.xx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load173, %i.xv
  %i.xy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load174, %i.xw
  %i.xz = and <8 x i1> %i.wt, %i.xx
  %i.ya = and <8 x i1> %i.wu, %i.xy
  %i.yb = select nsz <8 x i1> %i.xz, <8 x float> %wide.masked.load173, <8 x float> %i.xv ; 2 uses
  %i.yc = select nsz <8 x i1> %i.ya, <8 x float> %wide.masked.load174, <8 x float> %i.xw ; 2 uses
  %i.yd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load175, %i.yb
  %i.ye = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load176, %i.yc
  %i.yf = select <8 x i1> %i.xb, <8 x i1> %i.yd, <8 x i1> zeroinitializer
  %i.yg = select <8 x i1> %i.xc, <8 x i1> %i.ye, <8 x i1> zeroinitializer
  %i.yh = select nsz <8 x i1> %i.yf, <8 x float> %wide.masked.load175, <8 x float> %i.yb
  %i.yi = select nsz <8 x i1> %i.yg, <8 x float> %wide.masked.load176, <8 x float> %i.yc
  %i.yj = getelementptr i8, ptr %next.gep, i64 32
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yh, ptr align 4 %next.gep, <8 x i1> %i.xj), !tbaa !47, !alias.scope !107, !noalias !108
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yi, ptr align 4 %i.yj, <8 x i1> %i.xk), !tbaa !47, !alias.scope !107, !noalias !108
  %i.yk = zext <8 x i1> %i.xj to <8 x i32>
  %predphi = add <8 x i32> %vec.phi, %i.yk        ; 2 uses
  %i.yl = zext <8 x i1> %i.xk to <8 x i32>
  %predphi177 = add <8 x i32> %vec.phi167, %i.yl  ; 2 uses
  %index.next178 = add nuw i64 %index166, 16      ; 2 uses
  %i.ym = icmp eq i64 %index.next178, %n.vec158
  br i1 %i.ym, label %middle.block179, label %vector.body165, !llvm.loop !94

middle.block179:                                  ; preds = %vector.body165
  %bin.rdx = add <8 x i32> %predphi177, %predphi
  %i.yn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  br i1 %cmp.n180, label %._crit_edge.split.us.us.us.i66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block179
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec158, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.yn, %vec.epilog.iter.check ], [ %.085109.us.us.i, %vector.main.loop.iter.check ]
  %i.yo = getelementptr i8, ptr %i.vt, i64 %i.vo
  %i.yp = getelementptr i8, ptr %i.vr, i64 %i.vo
  %i.yq = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi192 = phi <8 x i32> [ %i.yq, %vec.epilog.ph ], [ %predphi200, %vec.epilog.vector.body ]
  %i.yr = shl i64 %index191, 2                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.vt, i64 %i.yr
  %next.gep194 = getelementptr i8, ptr %i.vr, i64 %i.yr ; 5 uses
  %wide.load195 = load <8 x float>, ptr %next.gep194, align 4, !tbaa !47, !alias.scope !104 ; 2 uses
  %i.ys = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load195, %broadcast.splat186 ; 5 uses
  %i.yt = fmul reassoc nsz arcp contract afn <8 x float> %wide.load195, %broadcast.splat188 ; 4 uses
  %i.yu = getelementptr i8, ptr %next.gep194, i64 -8
  %wide.masked.load196 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yu, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.yv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yt, %wide.masked.load196 ; 3 uses
  %i.yw = zext <8 x i1> %i.yv to <8 x i32>
  %i.yx = getelementptr [4 x i8], ptr %next.gep194, i64 %i.ui
  %wide.masked.load197 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.yx, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !105 ; 3 uses
  %i.yy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yt, %wide.masked.load197 ; 2 uses
  %i.yz = select <8 x i1> %i.yv, <8 x i32> splat (i32 2), <8 x i32> splat (i32 1)
  %i.za = select <8 x i1> %i.yy, <8 x i32> %i.yz, <8 x i32> %i.yw
  %i.zb = getelementptr i8, ptr %next.gep194, i64 8
  %wide.masked.load198 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zb, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !104 ; 3 uses
  %i.zc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.yt, %wide.masked.load198 ; 2 uses
  %i.zd = zext <8 x i1> %i.zc to <8 x i32>
  %i.ze = add nuw nsw <8 x i32> %i.za, %i.zd
  %i.zf = getelementptr [4 x i8], ptr %next.gep194, i64 %6
  %wide.masked.load199 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.zf, <8 x i1> %i.ys, <8 x float> poison), !tbaa !47, !alias.scope !106 ; 3 uses
end_hunk_2
