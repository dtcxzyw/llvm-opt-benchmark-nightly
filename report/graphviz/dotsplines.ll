Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dotsplines?download=true
inline.NumInlined: 149
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.atomic_flag = type { i8 }
%struct.Agdesc_s = type { i8, [3 x i8] }
%struct.port = type { %struct.pointf_s, double, ptr, i8, i8, i8, i8, i8, i8, ptr }
%struct.pointf_s = type { double, double }
%struct.attr_state_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pathend_t = type { %struct.boxf, %struct.pointf_s, i32, i32, [20 x %struct.boxf] }
%struct.boxf = type { %struct.pointf_s, %struct.pointf_s }
%struct.spline_info_t = type { double, double, double, double, ptr }
%struct.Agedgeinfo_t = type { %struct.Agrec_s, ptr, %struct.port, %struct.port, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, double, double, %struct.Ppoly_t, i8, i8, i16, i32, i32, i32, i16, i32, ptr }
%struct.Agrec_s = type { ptr, ptr }
%struct.Ppoly_t = type { ptr, i64 }
%struct.Agedgepair_s = type { %struct.Agedge_s, %struct.Agedge_s }
%struct.Agedge_s = type { %struct.Agobj_s, %struct.dtlink_s_, %struct.dtlink_s_, ptr }
%struct.Agobj_s = type { %struct.Agtag_s, ptr }
%struct.Agtag_s = type { i32, i64 }
%struct.dtlink_s_ = type { ptr, %union.anon }
%union.anon = type { ptr }
%struct.points_t = type { %union.anon.5, ptr, %struct.pointf_s }
%union.anon.5 = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.boxes_t = type { %union.anon.6, ptr, %struct.boxf }
%union.anon.6 = type { %struct.list_t_ }
%struct.path = type { %struct.port, %struct.port, i64, ptr, ptr }
%struct.anon = type { %union.anon.0, ptr, ptr }
%union.anon.0 = type { %struct.list_t_ }
%struct.agxbuf = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i64, i64, [7 x i8], i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [68 x i8] c"edge labels with splines=curved not supported in dot - use xlabels\0A\00", align 1
@E_headlabel = external local_unnamed_addr global ptr, align 8
@E_taillabel = external local_unnamed_addr global ptr, align 8
@E_labelangle = external local_unnamed_addr global ptr, align 8
@E_labeldistance = external local_unnamed_addr global ptr, align 8
@State = external local_unnamed_addr global i32, align 4
@EdgeLabelsDone = external local_unnamed_addr global i32, align 4
@sinfo = internal global { ptr, ptr, i8, i8, [6 x i8] } { ptr @swap_ends_p, ptr @spline_merge, i8 0, i8 0, [6 x i8] zeroinitializer }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@make_flat_adj_edges.warned = internal global %struct.atomic_flag zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"flat edge between adjacent nodes one of which has a record shape - replace records with HTML-like labels\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  Edge %s %s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Agraphinfo_t\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"rank\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@E_weight = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"10000\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"auxg\00", align 1
@Agdirected = external local_unnamed_addr global %struct.Agdesc_s, align 4
@Agundirected = external local_unnamed_addr global %struct.Agdesc_s, align 4
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"headport\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"tailport\00", align 1
@E_constr = external local_unnamed_addr global ptr, align 8
@E_dir = external local_unnamed_addr global ptr, align 8
@E_samehead = external local_unnamed_addr global ptr, align 8
@E_sametail = external local_unnamed_addr global ptr, align 8
@E_minlen = external local_unnamed_addr global ptr, align 8
@E_fontcolor = external local_unnamed_addr global ptr, align 8
@E_fontname = external local_unnamed_addr global ptr, align 8
@E_fontsize = external local_unnamed_addr global ptr, align 8
@E_headclip = external local_unnamed_addr global ptr, align 8
@E_label = external local_unnamed_addr global ptr, align 8
@E_label_float = external local_unnamed_addr global ptr, align 8
@E_labelfontcolor = external local_unnamed_addr global ptr, align 8
@E_labelfontname = external local_unnamed_addr global ptr, align 8
@E_labelfontsize = external local_unnamed_addr global ptr, align 8
@E_tailclip = external local_unnamed_addr global ptr, align 8
@E_xlabel = external local_unnamed_addr global ptr, align 8
@N_height = external local_unnamed_addr global ptr, align 8
@N_width = external local_unnamed_addr global ptr, align 8
@N_shape = external local_unnamed_addr global ptr, align 8
@N_style = external local_unnamed_addr global ptr, align 8
@N_fontsize = external local_unnamed_addr global ptr, align 8
@N_fontname = external local_unnamed_addr global ptr, align 8
@N_fontcolor = external local_unnamed_addr global ptr, align 8
@N_label = external local_unnamed_addr global ptr, align 8
@N_xlabel = external local_unnamed_addr global ptr, align 8
@N_showboxes = external local_unnamed_addr global ptr, align 8
@N_ordering = external local_unnamed_addr global ptr, align 8
@N_sides = external local_unnamed_addr global ptr, align 8
@N_peripheries = external local_unnamed_addr global ptr, align 8
@N_skew = external local_unnamed_addr global ptr, align 8
@N_orientation = external local_unnamed_addr global ptr, align 8
@N_distortion = external local_unnamed_addr global ptr, align 8
@N_fixed = external local_unnamed_addr global ptr, align 8
@N_nojustify = external local_unnamed_addr global ptr, align 8
@N_group = external local_unnamed_addr global ptr, align 8
@G_ordering = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"samehead\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"sametail\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"fontname\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"fontsize\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"headclip\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"label_float\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"labelfontname\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"labelfontsize\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"tailclip\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"ordering\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"sides\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"peripheries\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"skew\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"distortion\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Agnodeinfo_t\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"{%s}\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Agedgeinfo_t\00", align 1
@.str.42 = private unnamed_addr constant [67 x i8] c"list element type is not a pointer, but `free` used as destructor\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @portcmp(ptr nofree noundef readonly byval(%struct.port) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.port) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !170, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !170, !range !16, !noundef !17 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.e to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = trunc nuw i8 %i.e to i1
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %0, align 8, !tbaa !171 ; 2 uses
  %i.i = load double, ptr %1, align 8, !tbaa !171 ; 2 uses
  %i.j = fcmp olt double %i.h, %i.i
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fcmp ogt double %i.h, %i.i
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !172 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %i.p = fcmp olt double %i.m, %i.o
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp ogt double %i.m, %i.o
  %. = zext i1 %i.q to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ 1, %bb.e ], [ %., %bb.g ], [ -1, %bb.f ], [ %i.f, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @dot_splines(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @dot_splines_(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dot_splines_(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca [10 x %struct.pointf_s], align 16   ; 26 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.attr_state_t, align 8       ; 45 uses
  %4 = alloca [4 x %struct.pointf_s], align 16    ; 9 uses
  %5 = alloca %struct.pathend_t, align 8          ; 9 uses
  %6 = alloca %struct.pathend_t, align 8          ; 9 uses
  %7 = alloca [7 x %struct.pointf_s], align 16    ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca [3 x %struct.boxf], align 16        ; 16 uses
  %9 = alloca %struct.spline_info_t, align 8      ; 20 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [56 x i8], align 16               ; 4 uses
  %10 = alloca %struct.Agedgeinfo_t, align 8      ; 13 uses
  %11 = alloca %struct.Agedgeinfo_t, align 8      ; 9 uses
  %12 = alloca %struct.Agedgeinfo_t, align 8      ; 3 uses
  %13 = alloca %struct.Agedgepair_s, align 8      ; 13 uses
  %14 = alloca %struct.Agedgepair_s, align 8      ; 11 uses
  %15 = alloca %struct.Agedgepair_s, align 8      ; 9 uses
  %16 = alloca %struct.pathend_t, align 8         ; 12 uses
  %17 = alloca %struct.pathend_t, align 8         ; 12 uses
  %18 = alloca %struct.points_t, align 8          ; 60 uses
  %19 = alloca %struct.points_t, align 8          ; 35 uses
  %20 = alloca %struct.boxes_t, align 8           ; 28 uses
  %21 = alloca %struct.boxf, align 8              ; 4 uses
  %22 = alloca %struct.boxf, align 8              ; 4 uses
  %23 = alloca %struct.boxf, align 8              ; 4 uses
  %i.g = alloca i64, align 8                      ; 10 uses
  %24 = alloca %struct.boxf, align 8              ; 4 uses
  %25 = alloca %struct.boxf, align 8              ; 4 uses
  %i.h = alloca i64, align 8                      ; 10 uses
  %26 = alloca %struct.Agedgeinfo_t, align 8      ; 12 uses
  %27 = alloca %struct.Agedgepair_s, align 8      ; 11 uses
  %28 = alloca %struct.pathend_t, align 8         ; 7 uses
  %29 = alloca %struct.pathend_t, align 8         ; 7 uses
  %30 = alloca [3 x %struct.boxf], align 16       ; 12 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %31 = alloca %struct.Agedgeinfo_t, align 8      ; 3 uses
  %32 = alloca %struct.Agedgeinfo_t, align 8      ; 8 uses
  %33 = alloca %struct.Agedgepair_s, align 8      ; 9 uses
  %.sroa.71224 = alloca ptr, align 8              ; 5 uses
  %.sroa.91225 = alloca ptr, align 8              ; 3 uses
  %34 = alloca %struct.path, align 8              ; 39 uses
  %35 = alloca %struct.anon, align 8              ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71224)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.91225)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %34, i8 0, i64 120, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 25 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load i16, ptr %i.l, align 8, !tbaa !248
  %i.n = and i16 %i.m, 14                         ; 8 uses
  %i.o = zext nneg i16 %i.n to i32                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  store ptr %31, ptr %i.p, align 8, !tbaa !44
  %i.q = icmp eq i16 %i.n, 0
  br i1 %i.q, label %bb.le, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i16 %i.n, 4                      ; 3 uses
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.s = call ptr @agfstnode(ptr noundef nonnull %0) #24 ; 2 uses
  %.not11.i = icmp eq ptr %i.s, null
  br i1 %.not11.i, label %resetRW.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.012.i = phi ptr [ %i.aa, %bb.e ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !249
  %.not10.i = icmp eq ptr %i.w, null
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 368 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !51
  store double %i.z, ptr %i.x, align 8, !tbaa !52
  store i64 %.sroa.0.0.copyload.i, ptr %i.y, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.aa = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.012.i) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %resetRW.exit, label %.lr.ph.i, !llvm.loop !173

resetRW.exit:                                     ; preds = %bb.e, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !255
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 129
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !256
  %i.ah = and i8 %i.ag, 1
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %resetRW.exit
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str) #24
  br label %bb.g

bb.g:                                             ; preds = %resetRW.exit, %bb.f, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %35, i8 0, i64 48, i1 false)
  %i.ai = icmp eq i16 %i.n, 8
  br i1 %i.ai, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.aj = call ptr @agfstnode(ptr noundef nonnull %0) #24 ; 2 uses
  %.not11.i351 = icmp eq ptr %i.aj, null
  br i1 %.not11.i351, label %resetRW.exit357, label %.lr.ph.i352

.lr.ph.i352:                                      ; preds = %bb.h, %bb.j
  %.012.i353 = phi ptr [ %i.ar, %bb.j ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i353, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !249
  %.not10.i354 = icmp eq ptr %i.an, null
  br i1 %.not10.i354, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i352
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i355 = load i64, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 368 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !51
  store double %i.aq, ptr %i.ao, align 8, !tbaa !52
  store i64 %.sroa.0.0.copyload.i355, ptr %i.ap, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i352
  %i.ar = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.012.i353) #24 ; 2 uses
  %.not.i356 = icmp eq ptr %i.ar, null
  br i1 %.not.i356, label %resetRW.exit357, label %.lr.ph.i352, !llvm.loop !173

resetRW.exit357:                                  ; preds = %bb.j, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !255
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 129
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !256
  %.not334 = trunc i8 %i.ax to i1                 ; 2 uses
  br i1 %.not334, label %bb.k, label %edge_normalize.exit.sink.split

bb.k:                                             ; preds = %resetRW.exit357
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 256
  %.01525.i = load ptr, ptr %i.az, align 8, !tbaa !54 ; 2 uses
  %.not26.i = icmp eq ptr %.01525.i, null
  br i1 %.not26.i, label %edge_normalize.exit.sink.split, label %.lr.ph.i358

.lr.ph.i358:                                      ; preds = %bb.k, %place_vnlabel.exit.i
  %.01527.i = phi ptr [ %.015.i, %place_vnlabel.exit.i ], [ %.01525.i, %bb.k ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01527.i, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !55
  %i.be = icmp eq i8 %i.bd, 1
  br i1 %i.be, label %bb.l, label %place_vnlabel.exit.i

bb.l:                                             ; preds = %.lr.ph.i358
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !257 ; 2 uses
  %.not18.i = icmp eq ptr %i.bg, null
  br i1 %.not18.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !258
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 3 uses
  %.not19.i = icmp eq ptr %i.bo, null
  br i1 %.not19.i, label %place_vnlabel.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 264
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !63
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
end_hunk_0
begin_hunk_1_@dot_splines_:bb.a

.thread.i364:                                     ; preds = %gv_calloc.exit
  %i.lj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #25
  br label %gv_calloc.exit365

bb.at:                                            ; preds = %gv_calloc.exit
  %mul.ov.i363 = icmp slt i32 %.0255.lcssa, 0
  br i1 %mul.ov.i363, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lk = load ptr, ptr @stderr, align 8, !tbaa !86
  %i.ll = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lk, ptr noundef nonnull @.str.2, i64 noundef %i.li, i64 noundef 32) #26 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.lm = call noalias ptr @calloc(i64 noundef %i.li, i64 noundef 32) #25 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.aw, label %gv_calloc.exit365

bb.aw:                                            ; preds = %bb.av
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !86
  %i.lp = shl nuw nsw i64 %i.li, 5
  %i.lq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.3, i64 noundef %i.lp) #26 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

gv_calloc.exit365:                                ; preds = %.thread.i364, %bb.av
  %i.lr = phi ptr [ %i.lj, %.thread.i364 ], [ %i.lm, %bb.av ]
  store ptr %i.lr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ls = icmp eq i16 %i.n, 2                     ; 7 uses
  br i1 %i.ls, label %bb.ax, label %.loopexit585

bb.ax:                                            ; preds = %gv_calloc.exit365
  %i.lt = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 256
  %.0265672 = load ptr, ptr %i.lu, align 8, !tbaa !54 ; 2 uses
  %.not307673 = icmp eq ptr %.0265672, null
  br i1 %.not307673, label %.loopexit585, label %.lr.ph676

.lr.ph676:                                        ; preds = %bb.ax, %place_vnlabel.exit
  %.0265674 = phi ptr [ %.0265, %place_vnlabel.exit ], [ %.0265672, %bb.ax ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0265674, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !22 ; 7 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 216
  %i.ly = load i8, ptr %i.lx, align 8, !tbaa !55
  %i.lz = icmp eq i8 %i.ly, 1
  br i1 %i.lz, label %bb.ay, label %place_vnlabel.exit

bb.ay:                                            ; preds = %.lr.ph676
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 136
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !62
  %.not323 = icmp eq ptr %i.mb, null
  br i1 %.not323, label %place_vnlabel.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 264
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !63
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %place_vnlabel.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 272
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.0.in.i = phi ptr [ %i.mg, %bb.ba ], [ %i.ml, %bb.bb ]
  %.0.i366 = load ptr, ptr %.0.in.i, align 8, !tbaa !65 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i366, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !22 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 152
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !66
  %.not.i367 = icmp eq i8 %i.mk, 0
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 160
  br i1 %.not.i367, label %bb.bc, label %bb.bb, !llvm.loop !174

bb.bc:                                            ; preds = %bb.bb
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i366, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 120
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !60 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %.sroa.0.0.copyload.i368 = load double, ptr %i.mp, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 48
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !61
  %i.mq = call ptr @agraphof(ptr noundef nonnull %.0265674) #24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !22
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 132
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !259
  %i.mv = and i32 %i.mu, 1
  %.not12.i = icmp eq i32 %i.mv, 0
  %i.mw = select i1 %.not12.i, double %.sroa.0.0.copyload.i368, double %.sroa.4.0.copyload.i
  %i.mx = load ptr, ptr %i.lv, align 8, !tbaa !22 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %i.mz = load double, ptr %i.my, align 8, !tbaa !67
  %i.na = fmul double %i.mw, 5.000000e-01
  %i.nb = fadd double %i.mz, %i.na
  %i.nc = load ptr, ptr %i.mm, align 8, !tbaa !22
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 120
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !60 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 72
  store double %i.nb, ptr %i.nf, align 8, !tbaa !260
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !69
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 80
  store double %i.nh, ptr %i.ni, align 8, !tbaa !261
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 105
  store i8 1, ptr %i.nj, align 1, !tbaa !262
  br label %place_vnlabel.exit

place_vnlabel.exit:                               ; preds = %bb.bc, %bb.az, %.lr.ph676, %bb.ay
  %i.nk = phi ptr [ %i.mx, %bb.bc ], [ %i.lw, %bb.az ], [ %i.lw, %.lr.ph676 ], [ %i.lw, %bb.ay ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 240
  %.0265 = load ptr, ptr %i.nl, align 8, !tbaa !54 ; 2 uses
  %.not307 = icmp eq ptr %.0265, null
  br i1 %.not307, label %.loopexit585, label %.lr.ph676, !llvm.loop !181

.loopexit585:                                     ; preds = %place_vnlabel.exit, %bb.ax, %gv_calloc.exit365
  %i.nm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  %.val350758 = load i64, ptr %i.nm, align 8, !tbaa !90
  %.not319759.not = icmp eq i64 %.val350758, 0
  br i1 %.not319759.not, label %.thread562, label %.lr.ph762

.lr.ph762:                                        ; preds = %.loopexit585
  %.sroa.gep464 = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %.sroa.gep465 = getelementptr inbounds nuw i8, ptr %33, i64 120
  %.sroa.gep468 = getelementptr inbounds i8, ptr %33, i64 -8
  %i.nn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %.sroa.gep557.i = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 5 uses
  %.sroa.gep558.i = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 3 uses
  %.sroa.gep561.i = getelementptr inbounds i8, ptr %13, i64 -8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.nu = getelementptr inbounds nuw i8, ptr %13, i64 64
  %.sroa.gep535.i = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 3 uses
  %.sroa.gep536.i = getelementptr inbounds nuw i8, ptr %14, i64 120
  %.sroa.gep538.i = getelementptr inbounds i8, ptr %14, i64 -8 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.nw = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.nx = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.ny = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.nz = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.oc = icmp eq i16 %i.n, 10                    ; 5 uses
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 6 uses
  %.sroa.8450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %17, i64 52 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.oj = getelementptr inbounds nuw i8, ptr %34, i64 81
  %i.ok = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 22 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 18 uses
  %i.om = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.on = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %34, i64 33
  %i.oq = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 12 uses
  %i.os = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %34, i64 96 ; 3 uses
  %.sroa.28.0..sroa_idx498.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.sroa.951.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 4 uses
  %.sroa.gep527.i = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %.sroa.gep528.i = getelementptr inbounds nuw i8, ptr %15, i64 120
  %.sroa.gep531.i = getelementptr inbounds i8, ptr %15, i64 -8
  %i.ov = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %.sroa.gep503 = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 2 uses
  %.sroa.gep504 = getelementptr inbounds nuw i8, ptr %27, i64 120
  %.sroa.gep507 = getelementptr inbounds i8, ptr %27, i64 -8
  %i.ow = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.oy = getelementptr inbounds nuw i8, ptr %26, i64 152
  %i.oz = getelementptr inbounds nuw i8, ptr %26, i64 160
  %.sroa.16178.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.sroa.16178.0..sroa_idx179.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %.sroa.16.0..sroa_idx151.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.sroa.254.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %.sroa.252.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %.sroa.250.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %.sroa.248.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 4 uses
  %i.ph = icmp eq i16 %i.n, 6
  %i.pi = zext i1 %i.ph to i32                    ; 3 uses
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ps = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.pv = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.qb = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.qh = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.qi = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.qk = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 4 uses
  %.sroa.10.0..sroa_idx.i97.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.rc = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ri = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.rj = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.rk = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.rm = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.rn = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ro = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.rq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %.sroa.410.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %28, i64 52 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ry = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.sa = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %29, i64 52 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.sd = getelementptr inbounds nuw i8, ptr %30, i64 56
  %i.se = getelementptr inbounds nuw i8, ptr %30, i64 64 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.sg = getelementptr inbounds nuw i8, ptr %32, i64 72
  %i.sh = getelementptr inbounds nuw i8, ptr %32, i64 152
  %i.si = getelementptr inbounds nuw i8, ptr %32, i64 160
  %.sroa.5.0..sroa_idx1227 = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph762, %.loopexit581
  %i.sj = phi i64 [ 0, %.lr.ph762 ], [ %i.cvy, %.loopexit581 ] ; 4 uses
  %.0263760 = phi i32 [ 0, %.lr.ph762 ], [ %.1264.lcssa1038, %.loopexit581 ] ; 3 uses
  %i.sk = load ptr, ptr %35, align 8, !tbaa !79
  %i.sl = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %i.sj) #24
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !65 ; 7 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.0.i369 = phi ptr [ %i.sn, %bb.bd ], [ %i.sr, %bb.be ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i369, i64 16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !22
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 232
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !91 ; 2 uses
  %.not.i370 = icmp eq ptr %i.sr, null
  br i1 %.not.i370, label %.preheader.i, label %bb.be, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.be, %.preheader.i
  %.1.i = phi ptr [ %i.sv, %.preheader.i ], [ %.0.i369, %bb.be ] ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !22 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 160
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !92 ; 2 uses
  %.not8.i = icmp eq ptr %i.sv, null
  br i1 %.not8.i, label %getmainedge.exit, label %.preheader.i, !llvm.loop !1

getmainedge.exit:                                 ; preds = %.preheader.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 3 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !22 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 56
  %i.sz = load i8, ptr %i.sy, align 8, !tbaa !82, !range !16, !noundef !17
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %getmainedge.exit
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 104
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !83, !range !16, !noundef !17
  %i.td = trunc nuw i8 %i.tc to i1                ; 2 uses
  %spec.select = select i1 %i.td, ptr %i.sn, ptr %.1.i
  %i.te = select i1 %i.td, ptr %i.sx, ptr %i.st
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %getmainedge.exit
  %i.tf = phi ptr [ %i.sx, %getmainedge.exit ], [ %i.te, %bb.bf ] ; 2 uses
  %.0273 = phi ptr [ %i.sn, %getmainedge.exit ], [ %spec.select, %bb.bf ] ; 8 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 220
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !78
  %i.ti = and i32 %i.th, 32
  %.not308 = icmp eq i32 %i.ti, 0
  br i1 %.not308, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tj = getelementptr inbounds nuw i8, ptr %.0273, i64 16 ; 2 uses
  %i.tk = load ptr, ptr %i.p, align 8, !tbaa !93  ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.tk, ptr noundef nonnull align 8 dereferenceable(240) %i.tf, i64 240, i1 false), !tbaa.struct !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %33, ptr noundef nonnull align 8 dereferenceable(64) %.0273, i64 64, i1 false), !tbaa.struct !106
  store ptr %i.tk, ptr %i.p, align 8, !tbaa !93
  %i.tl = load i32, ptr %.0273, align 8
  %i.tm = and i32 %i.tl, 3
  %i.tn = icmp eq i32 %i.tm, 2
  %i.to = select i1 %i.tn, i64 56, i64 -8
  %i.tp = getelementptr inbounds i8, ptr %.0273, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !80
  %i.tr = load i32, ptr %33, align 8
  %i.ts = and i32 %i.tr, 3                        ; 2 uses
  %i.tt = icmp eq i32 %i.ts, 3
  %.sroa.sel466 = select i1 %i.tt, ptr %.sroa.gep464, ptr %.sroa.gep465
  store ptr %i.tq, ptr %.sroa.sel466, align 8, !tbaa !80
  %i.tu = load i32, ptr %.0273, align 8
  %i.tv = and i32 %i.tu, 3
  %i.tw = icmp eq i32 %i.tv, 3
  %i.tx = select i1 %i.tw, i64 56, i64 120
  %i.ty = getelementptr inbounds nuw i8, ptr %.0273, i64 %i.tx
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !80
  %i.ua = icmp eq i32 %i.ts, 2
  %.sroa.sel469 = select i1 %i.ua, ptr %.sroa.gep464, ptr %.sroa.gep468
  store ptr %i.tz, ptr %.sroa.sel469, align 8, !tbaa !80
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.uc = load ptr, ptr %i.tj, align 8, !tbaa !22
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ub, ptr noundef nonnull align 8 dereferenceable(48) %i.ud, i64 48, i1 false), !tbaa.struct !107
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tk, i64 72
  %i.uf = load ptr, ptr %i.tj, align 8, !tbaa !22
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ue, ptr noundef nonnull align 8 dereferenceable(48) %i.ug, i64 48, i1 false), !tbaa.struct !107
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tk, i64 152
  store i8 1, ptr %i.uh, align 8, !tbaa !66
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tk, i64 160
  store ptr %.0273, ptr %i.ui, align 8, !tbaa !92
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.1274 = phi ptr [ %33, %bb.bh ], [ %.0273, %bb.bg ]
  %.1264677 = add i32 %.0263760, 1                ; 4 uses
  %i.uj = zext i32 %.1264677 to i64               ; 2 uses
  %.val349678 = load i64, ptr %i.nm, align 8, !tbaa !90
  %i.uk = icmp ugt i64 %.val349678, %i.uj
  br i1 %i.uk, label %.lr.ph682, label %portcmp.exit.thread.thread

.lr.ph682:                                        ; preds = %bb.bi
  %i.ul = getelementptr inbounds nuw i8, ptr %.1274, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph682, %bb.bx
  %i.um = phi i64 [ %i.uj, %.lr.ph682 ], [ %i.xs, %bb.bx ] ; 2 uses
  %.1264680 = phi i32 [ %.1264677, %.lr.ph682 ], [ %.1264, %bb.bx ] ; 8 uses
  %.0262679 = phi i32 [ 1, %.lr.ph682 ], [ %i.xr, %bb.bx ] ; 8 uses
  %i.un = load ptr, ptr %35, align 8, !tbaa !79
  %i.uo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %i.um) #24
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !65 ; 4 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.0.i371 = phi ptr [ %i.uq, %bb.bj ], [ %i.uu, %bb.bk ] ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.0.i371, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !22
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 232
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !91 ; 2 uses
  %.not.i372 = icmp eq ptr %i.uu, null
  br i1 %.not.i372, label %.preheader.i373, label %bb.bk, !llvm.loop !0

.preheader.i373:                                  ; preds = %bb.bk, %.preheader.i373
  %.1.i374 = phi ptr [ %i.uy, %.preheader.i373 ], [ %.0.i371, %bb.bk ] ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.1.i374, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !22 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 160
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !92 ; 2 uses
  %.not8.i375 = icmp eq ptr %i.uy, null
  br i1 %.not8.i375, label %getmainedge.exit376, label %.preheader.i373, !llvm.loop !1

getmainedge.exit376:                              ; preds = %.preheader.i373
  %.not309 = icmp eq ptr %.1.i, %.1.i374
  br i1 %.not309, label %bb.bl, label %portcmp.exit.thread

bb.bl:                                            ; preds = %getmainedge.exit376
  %i.uz = load ptr, ptr %i.sw, align 8, !tbaa !22
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 154
  %i.vb = load i8, ptr %i.va, align 2, !tbaa !269
  %.not310 = icmp eq i8 %i.vb, 0
  br i1 %.not310, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !22 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 56
  %i.vf = load i8, ptr %i.ve, align 8, !tbaa !82, !range !16, !noundef !17
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 104
  %i.vi = load i8, ptr %i.vh, align 8, !tbaa !83, !range !16, !noundef !17
  %i.vj = trunc nuw i8 %i.vi to i1                ; 2 uses
  %spec.select346 = select i1 %i.vj, ptr %i.uq, ptr %.1.i374
end_hunk_1
begin_hunk_2_@dot_splines_:bb.a

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sink913 = phi double [ %i.aiz, %bb.dk ], [ %i.ahj, %bb.dj ]
  %.sink912 = phi double [ %i.ahi, %bb.dk ], [ %i.ams, %bb.dj ]
  %.sink911 = phi double [ %i.aiz, %bb.dk ], [ %i.ahs, %bb.dj ]
  %.sink910 = phi double [ %.2245296.i.i, %bb.dk ], [ %i.ams, %bb.dj ]
  %.4255.i.i.sink907 = phi double [ %i.aja, %bb.dk ], [ %i.amt, %bb.dj ]
  %.sink = phi double [ %i.ahr, %bb.dk ], [ %i.amr, %bb.dj ]
  %storemerge334.i.i = phi double [ %i.amv, %bb.dk ], [ %i.amr, %bb.dj ]
  %storemerge333.i.i = phi double [ %i.ahj, %bb.dk ], [ %i.amu, %bb.dj ]
  %storemerge.i.i = phi double [ %i.amv, %bb.dk ], [ %i.ahi, %bb.dj ]
  %.3246.i.i = phi double [ %i.amv, %bb.dk ], [ %.2245296.i.i, %bb.dj ]
  %.3.i.i = phi double [ %.2297.i.i, %bb.dk ], [ %i.amr, %bb.dj ]
  %i.amx = phi <2 x double> [ %i.amw, %bb.dk ], [ %i.ahq, %bb.dj ]
  %i.amy = phi <2 x double> [ %i.akw, %bb.dk ], [ %i.amq, %bb.dj ] ; 2 uses
  %i.amz = phi <2 x double> [ %i.amj, %bb.dk ], [ %i.amq, %bb.dj ]
  store <2 x double> %i.ahh, ptr %2, align 16, !tbaa !61
  store double %.sink913, ptr %i.pa, align 16, !tbaa !61
  store double %.sink912, ptr %.sroa.16178.0..sroa_idx179.i.i, align 8, !tbaa !61
  store double %.sink911, ptr %i.pb, align 16, !tbaa !61
  store double %.sink910, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !tbaa !61
  store <2 x double> %i.amx, ptr %i.pc, align 16, !tbaa !61
  store double %.4255.i.i.sink907, ptr %i.pd, align 16, !tbaa !61
  store double %i.ahr, ptr %.sroa.254.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.ana = extractelement <2 x double> %i.amy, i64 0
  store double %i.ana, ptr %i.pe, align 16, !tbaa !61
  store double %.sink, ptr %.sroa.252.0..sroa_idx.i.i, align 8, !tbaa !61
  %i.anb = extractelement <2 x double> %i.amy, i64 1
  store double %i.anb, ptr %i.pf, align 16, !tbaa !61
  store double %storemerge334.i.i, ptr %.sroa.250.0..sroa_idx.i.i, align 8, !tbaa !61
  store double %storemerge333.i.i, ptr %i.pg, align 16, !tbaa !61
  store double %storemerge.i.i, ptr %.sroa.248.0..sroa_idx.i.i, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.anc = call ptr @simpleSplineRoute(double %i.ahj, double %i.ahi, double %i.ahs, double %i.ahr, ptr nonnull %2, i64 8, ptr noundef nonnull %i.b, i32 noundef %i.pi) #24, !inline_history !186 ; 4 uses
  %i.and = icmp ne ptr %i.anc, null
  %i.ane = load i64, ptr %i.b, align 8            ; 2 uses
  %i.anf = icmp ne i64 %i.ane, 0
  %or.cond4.not.i.i = select i1 %i.and, i1 %i.anf, i1 false
  br i1 %or.cond4.not.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @free(ptr noundef %i.anc) #24, !inline_history !186
  call void @free(ptr noundef nonnull %i.agt) #24, !inline_history !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %makeSimpleFlatLabels.exit.i

bb.dn:                                            ; preds = %bb.dl
  %i.ang = load i32, ptr %i.aml, align 8
  %i.anh = and i32 %i.ang, 3
  %i.ani = icmp eq i32 %i.anh, 2
  %i.anj = select i1 %i.ani, i64 56, i64 -8
  %i.ank = getelementptr inbounds i8, ptr %i.aml, i64 %i.anj
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !80
  call void @clip_and_install(ptr noundef nonnull %i.aml, ptr noundef %i.anl, ptr noundef nonnull %i.anc, i64 noundef %i.ane, ptr noundef nonnull @sinfo) #24, !inline_history !186
  call void @free(ptr noundef nonnull %i.anc) #24, !inline_history !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %indvars.iv.next313.i.i = add nuw nsw i64 %indvars.iv312.i.i, 1 ; 2 uses
  %exitcond316.not.i.i = icmp eq i64 %indvars.iv.next313.i.i, %i.ags
  br i1 %exitcond316.not.i.i, label %._crit_edge299.i.i, label %bb.di, !llvm.loop !189

._crit_edge299.i.i:                               ; preds = %bb.dn, %.preheader.i.i434
  call void @free(ptr noundef nonnull %i.agt) #24, !inline_history !186
  br label %makeSimpleFlatLabels.exit.i

makeSimpleFlatLabels.exit.i:                      ; preds = %._crit_edge299.i.i, %bb.dm, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %make_flat_edge.exit.thread

.critedge:                                        ; preds = %.lr.ph729.epil.preheader, %bb.cu, %._crit_edge730
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %3, i8 0, i64 320, i1 false)
  %i.anm = call i32 @agisdirected(ptr noundef %0) #24, !inline_history !186
  %.not.i262.i = icmp eq i32 %i.anm, 0
  %Agundirected.val.i.i = load i32, ptr @Agundirected, align 4
  %Agdirected.val.i.i = load i32, ptr @Agdirected, align 4
  %i.ann = select i1 %.not.i262.i, i32 %Agundirected.val.i.i, i32 %Agdirected.val.i.i
  %i.ano = call ptr @agopen(ptr noundef nonnull @.str.13, i32 %i.ann, ptr noundef null) #24, !inline_history !186 ; 53 uses
  %i.anp = call ptr @agbindrec(ptr noundef %i.ano, ptr noundef nonnull @.str.9, i32 noundef 400, i32 noundef 1) #24, !inline_history !186 ; 0 uses
  %i.anq = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #24, !inline_history !186 ; 0 uses
  %i.anr = call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #25, !inline_history !186 ; 4 uses
  %i.ans = icmp eq ptr %i.anr, null
  br i1 %i.ans, label %bb.do, label %gv_alloc.exit.i.i

bb.do:                                            ; preds = %.critedge
  %i.ant = load ptr, ptr @stderr, align 8, !tbaa !86
  %i.anu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ant, ptr noundef nonnull @.str.3, i64 noundef 104) #26, !inline_history !186 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

gv_alloc.exit.i.i:                                ; preds = %.critedge
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ano, i64 16 ; 3 uses
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !22 ; 4 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  store ptr %i.anr, ptr %i.anx, align 8, !tbaa !273
  %i.any = load ptr, ptr %i.j, align 8, !tbaa !22 ; 4 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 16
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !273 ; 2 uses
  %i.aob = load double, ptr %i.aoa, align 8, !tbaa !275
  store double %i.aob, ptr %i.anr, align 8, !tbaa !275
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aoa, i64 24
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !276
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anr, i64 24
  store double %i.aod, ptr %i.aoe, align 8, !tbaa !276
  %i.aof = getelementptr inbounds nuw i8, ptr %i.any, i64 131
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !277
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anw, i64 131
  store i8 %i.aog, ptr %i.aoh, align 1, !tbaa !277
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.any, i64 132
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !259
  %i.aok = and i32 %i.aoj, 1
  %spec.select.i.i = xor i32 %i.aok, 1
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anw, i64 132
  store i32 %spec.select.i.i, ptr %i.aol, align 4, !tbaa !259
  %i.aom = getelementptr inbounds nuw i8, ptr %i.any, i64 352
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anw, i64 352
  %i.aoo = load <2 x i32>, ptr %i.aom, align 8, !tbaa !103
  store <2 x i32> %i.aoo, ptr %i.aon, align 8, !tbaa !103
  %i.aop = call ptr @agroot(ptr noundef nonnull %0) #24, !inline_history !186
  %i.aoq = call ptr @agnxtattr(ptr noundef %i.aop, i32 noundef 1, ptr noundef null) #24, !inline_history !186 ; 2 uses
  %.not4955.i.i = icmp eq ptr %i.aoq, null
  br i1 %.not4955.i.i, label %._crit_edge.i263.i, label %.lr.ph.i.i440

.lr.ph.i.i440:                                    ; preds = %gv_alloc.exit.i.i, %bb.dr
  %.04756.i.i = phi ptr [ %i.apa, %bb.dr ], [ %i.aoq, %gv_alloc.exit.i.i ] ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.04756.i.i, i64 24 ; 2 uses
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !279
  %i.aot = call i32 @aghtmlstr(ptr noundef %i.aos) #24, !inline_history !186
  %.not54.i.i = icmp eq i32 %i.aot, 0
  %i.aou = getelementptr inbounds nuw i8, ptr %.04756.i.i, i64 16
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !280 ; 2 uses
  %i.aow = load ptr, ptr %i.aor, align 8, !tbaa !279 ; 2 uses
  br i1 %.not54.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i440
  %i.aox = call ptr @agattr_html(ptr noundef %i.ano, i32 noundef 1, ptr noundef %i.aov, ptr noundef %i.aow) #24, !inline_history !186 ; 0 uses
  br label %bb.dr

bb.dq:                                            ; preds = %.lr.ph.i.i440
  %i.aoy = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef %i.aov, ptr noundef %i.aow) #24, !inline_history !186 ; 0 uses
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.aoz = call ptr @agroot(ptr noundef nonnull %0) #24, !inline_history !186
  %i.apa = call ptr @agnxtattr(ptr noundef %i.aoz, i32 noundef 1, ptr noundef nonnull %.04756.i.i) #24, !inline_history !186 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.apa, null
  br i1 %.not49.i.i, label %._crit_edge.i263.i, label %.lr.ph.i.i440, !llvm.loop !190

._crit_edge.i263.i:                               ; preds = %bb.dr, %gv_alloc.exit.i.i
  %i.apb = call ptr @agroot(ptr noundef nonnull %0) #24, !inline_history !186
  %i.apc = call ptr @agnxtattr(ptr noundef %i.apb, i32 noundef 2, ptr noundef null) #24, !inline_history !186 ; 2 uses
  %.not5057.i.i = icmp eq ptr %i.apc, null
  br i1 %.not5057.i.i, label %._crit_edge61.i.i, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %._crit_edge.i263.i, %bb.du
  %.158.i.i = phi ptr [ %i.apm, %bb.du ], [ %i.apc, %._crit_edge.i263.i ] ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.158.i.i, i64 24 ; 2 uses
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !279
  %i.apf = call i32 @aghtmlstr(ptr noundef %i.ape) #24, !inline_history !186
  %.not53.i.i = icmp eq i32 %i.apf, 0
  %i.apg = getelementptr inbounds nuw i8, ptr %.158.i.i, i64 16
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !280 ; 2 uses
  %i.api = load ptr, ptr %i.apd, align 8, !tbaa !279 ; 2 uses
  br i1 %.not53.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph60.i.i
  %i.apj = call ptr @agattr_html(ptr noundef %i.ano, i32 noundef 2, ptr noundef %i.aph, ptr noundef %i.api) #24, !inline_history !186 ; 0 uses
  br label %bb.du

bb.dt:                                            ; preds = %.lr.ph60.i.i
  %i.apk = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef %i.aph, ptr noundef %i.api) #24, !inline_history !186 ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.apl = call ptr @agroot(ptr noundef nonnull %0) #24, !inline_history !186
  %i.apm = call ptr @agnxtattr(ptr noundef %i.apl, i32 noundef 2, ptr noundef nonnull %.158.i.i) #24, !inline_history !186 ; 2 uses
  %.not50.i.i = icmp eq ptr %i.apm, null
  br i1 %.not50.i.i, label %._crit_edge61.i.i, label %.lr.ph60.i.i, !llvm.loop !191

._crit_edge61.i.i:                                ; preds = %bb.du, %._crit_edge.i263.i
  %i.apn = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef null) #24, !inline_history !186
  %.not51.i.i = icmp eq ptr %i.apn, null
  br i1 %.not51.i.i, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %._crit_edge61.i.i
  %i.apo = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #24, !inline_history !186 ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %._crit_edge61.i.i
  %i.app = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef null) #24, !inline_history !186
  %.not52.i.i = icmp eq ptr %i.app, null
  br i1 %.not52.i.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.apq = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #24, !inline_history !186 ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.apr = load ptr, ptr @E_constr, align 8, !tbaa !110
  store ptr %i.apr, ptr %3, align 8, !tbaa !112
  %i.aps = load ptr, ptr @E_dir, align 8, !tbaa !110
  store ptr %i.aps, ptr %36, align 8, !tbaa !113
  %i.apt = load ptr, ptr @E_samehead, align 8, !tbaa !110
  store ptr %i.apt, ptr %i.pj, align 8, !tbaa !114
  %i.apu = load ptr, ptr @E_sametail, align 8, !tbaa !110
  store ptr %i.apu, ptr %i.pk, align 8, !tbaa !115
  %i.apv = load ptr, ptr @E_weight, align 8, !tbaa !110
  store ptr %i.apv, ptr %i.pl, align 8, !tbaa !116
  %i.apw = load ptr, ptr @E_minlen, align 8, !tbaa !110
  store ptr %i.apw, ptr %i.pm, align 8, !tbaa !117
  %i.apx = load ptr, ptr @E_fontcolor, align 8, !tbaa !110
  store ptr %i.apx, ptr %i.pn, align 8, !tbaa !118
  %i.apy = load ptr, ptr @E_fontname, align 8, !tbaa !110
  store ptr %i.apy, ptr %i.po, align 8, !tbaa !119
  %i.apz = load ptr, ptr @E_fontsize, align 8, !tbaa !110
  store ptr %i.apz, ptr %i.pp, align 8, !tbaa !120
  %i.aqa = load ptr, ptr @E_headclip, align 8, !tbaa !110
  store ptr %i.aqa, ptr %i.pq, align 8, !tbaa !121
  %i.aqb = load ptr, ptr @E_headlabel, align 8, !tbaa !110
  store ptr %i.aqb, ptr %i.pr, align 8, !tbaa !122
  %i.aqc = load ptr, ptr @E_label, align 8, !tbaa !110
  store ptr %i.aqc, ptr %i.ps, align 8, !tbaa !123
  %i.aqd = load ptr, ptr @E_label_float, align 8, !tbaa !110
  store ptr %i.aqd, ptr %i.pt, align 8, !tbaa !124
  %i.aqe = load ptr, ptr @E_labelfontcolor, align 8, !tbaa !110
  store ptr %i.aqe, ptr %i.pu, align 8, !tbaa !125
  %i.aqf = load ptr, ptr @E_labelfontname, align 8, !tbaa !110
  store ptr %i.aqf, ptr %i.pv, align 8, !tbaa !126
  %i.aqg = load ptr, ptr @E_labelfontsize, align 8, !tbaa !110
  store ptr %i.aqg, ptr %i.pw, align 8, !tbaa !127
  %i.aqh = load ptr, ptr @E_tailclip, align 8, !tbaa !110
  store ptr %i.aqh, ptr %i.px, align 8, !tbaa !128
  %i.aqi = load ptr, ptr @E_taillabel, align 8, !tbaa !110
  store ptr %i.aqi, ptr %i.py, align 8, !tbaa !129
  %i.aqj = load ptr, ptr @E_xlabel, align 8, !tbaa !110
  store ptr %i.aqj, ptr %i.pz, align 8, !tbaa !130
  %i.aqk = load ptr, ptr @N_height, align 8, !tbaa !110
  store ptr %i.aqk, ptr %i.qa, align 8, !tbaa !131
  %i.aql = load ptr, ptr @N_width, align 8, !tbaa !110
  store ptr %i.aql, ptr %i.qb, align 8, !tbaa !132
  %i.aqm = load ptr, ptr @N_shape, align 8, !tbaa !110
  store ptr %i.aqm, ptr %i.qc, align 8, !tbaa !133
  %i.aqn = load ptr, ptr @N_style, align 8, !tbaa !110
  store ptr %i.aqn, ptr %i.qd, align 8, !tbaa !134
  %i.aqo = load ptr, ptr @N_fontsize, align 8, !tbaa !110
  store ptr %i.aqo, ptr %i.qe, align 8, !tbaa !135
  %i.aqp = load ptr, ptr @N_fontname, align 8, !tbaa !110
  store ptr %i.aqp, ptr %i.qf, align 8, !tbaa !136
  %i.aqq = load ptr, ptr @N_fontcolor, align 8, !tbaa !110
  store ptr %i.aqq, ptr %i.qg, align 8, !tbaa !137
  %i.aqr = load ptr, ptr @N_label, align 8, !tbaa !110
  store ptr %i.aqr, ptr %i.qh, align 8, !tbaa !138
  %i.aqs = load ptr, ptr @N_xlabel, align 8, !tbaa !110
  store ptr %i.aqs, ptr %i.qi, align 8, !tbaa !139
  %i.aqt = load ptr, ptr @N_showboxes, align 8, !tbaa !110
  store ptr %i.aqt, ptr %i.qj, align 8, !tbaa !140
  %i.aqu = load ptr, ptr @N_ordering, align 8, !tbaa !110
  store ptr %i.aqu, ptr %i.qk, align 8, !tbaa !141
  %i.aqv = load ptr, ptr @N_sides, align 8, !tbaa !110
  store ptr %i.aqv, ptr %i.ql, align 8, !tbaa !142
  %i.aqw = load ptr, ptr @N_peripheries, align 8, !tbaa !110
  store ptr %i.aqw, ptr %i.qm, align 8, !tbaa !143
  %i.aqx = load ptr, ptr @N_skew, align 8, !tbaa !110
  store ptr %i.aqx, ptr %i.qn, align 8, !tbaa !144
  %i.aqy = load ptr, ptr @N_orientation, align 8, !tbaa !110
  store ptr %i.aqy, ptr %i.qo, align 8, !tbaa !145
  %i.aqz = load ptr, ptr @N_distortion, align 8, !tbaa !110
  store ptr %i.aqz, ptr %i.qp, align 8, !tbaa !146
  %i.ara = load ptr, ptr @N_fixed, align 8, !tbaa !110
  store ptr %i.ara, ptr %i.qq, align 8, !tbaa !147
  %i.arb = load ptr, ptr @N_nojustify, align 8, !tbaa !110
  store ptr %i.arb, ptr %i.qr, align 8, !tbaa !148
  %i.arc = load ptr, ptr @N_group, align 8, !tbaa !110
  store ptr %i.arc, ptr %i.qs, align 8, !tbaa !149
  %i.ard = load i32, ptr @State, align 4, !tbaa !103
  store i32 %i.ard, ptr %i.qt, align 8, !tbaa !150
  %i.are = load ptr, ptr @G_ordering, align 8, !tbaa !110
  store ptr %i.are, ptr %i.qu, align 8, !tbaa !151
  store ptr null, ptr @E_constr, align 8, !tbaa !110
  %i.arf = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef null) #24, !inline_history !186
  store ptr %i.arf, ptr @E_dir, align 8, !tbaa !110
  %i.arg = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef null) #24, !inline_history !186
  store ptr %i.arg, ptr @E_samehead, align 8, !tbaa !110
  %i.arh = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef null) #24, !inline_history !186
  store ptr %i.arh, ptr @E_sametail, align 8, !tbaa !110
  %i.ari = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef null) #24, !inline_history !186 ; 2 uses
  store ptr %i.ari, ptr @E_weight, align 8, !tbaa !110
  %.not.i.i264.i = icmp eq ptr %i.ari, null
  br i1 %.not.i.i264.i, label %bb.dz, label %cloneGraph.exit.i

bb.dz:                                            ; preds = %bb.dy
  %i.arj = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14) #24, !inline_history !186
  store ptr %i.arj, ptr @E_weight, align 8, !tbaa !110
  br label %cloneGraph.exit.i

cloneGraph.exit.i:                                ; preds = %bb.dz, %bb.dy
  store ptr null, ptr @E_minlen, align 8, !tbaa !110
  store ptr null, ptr @E_fontcolor, align 8, !tbaa !110
  %i.ark = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef null) #24, !inline_history !186
  store ptr %i.ark, ptr @E_fontname, align 8, !tbaa !110
  %i.arl = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef null) #24, !inline_history !186
  store ptr %i.arl, ptr @E_fontsize, align 8, !tbaa !110
  %i.arm = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef null) #24, !inline_history !186
  store ptr %i.arm, ptr @E_headclip, align 8, !tbaa !110
  store ptr null, ptr @E_headlabel, align 8, !tbaa !110
  %i.arn = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.24, ptr noundef null) #24, !inline_history !186
  store ptr %i.arn, ptr @E_label, align 8, !tbaa !110
  %i.aro = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef null) #24, !inline_history !186
  store ptr %i.aro, ptr @E_label_float, align 8, !tbaa !110
  store ptr null, ptr @E_labelfontcolor, align 8, !tbaa !110
  %i.arp = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef null) #24, !inline_history !186
  store ptr %i.arp, ptr @E_labelfontname, align 8, !tbaa !110
  %i.arq = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef null) #24, !inline_history !186
  store ptr %i.arq, ptr @E_labelfontsize, align 8, !tbaa !110
  %i.arr = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 2, ptr noundef nonnull @.str.28, ptr noundef null) #24, !inline_history !186
  store ptr %i.arr, ptr @E_tailclip, align 8, !tbaa !110
  store ptr null, ptr @E_taillabel, align 8, !tbaa !110
  store ptr null, ptr @E_xlabel, align 8, !tbaa !110
  %i.ars = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef null) #24, !inline_history !186
  store ptr %i.ars, ptr @N_height, align 8, !tbaa !110
  %i.art = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef null) #24, !inline_history !186
  store ptr %i.art, ptr @N_width, align 8, !tbaa !110
  %i.aru = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef null) #24, !inline_history !186
  store ptr %i.aru, ptr @N_shape, align 8, !tbaa !110
  store ptr null, ptr @N_style, align 8, !tbaa !110
  %i.arv = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.22, ptr noundef null) #24, !inline_history !186
  store ptr %i.arv, ptr @N_fontsize, align 8, !tbaa !110
  %i.arw = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef null) #24, !inline_history !186
  store ptr %i.arw, ptr @N_fontname, align 8, !tbaa !110
  store ptr null, ptr @N_fontcolor, align 8, !tbaa !110
  %i.arx = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef null) #24, !inline_history !186
  store ptr %i.arx, ptr @N_label, align 8, !tbaa !110
  store ptr null, ptr @N_xlabel, align 8, !tbaa !110
  store ptr null, ptr @N_showboxes, align 8, !tbaa !110
  %i.ary = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef null) #24, !inline_history !186
  store ptr %i.ary, ptr @N_ordering, align 8, !tbaa !110
  %i.arz = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef null) #24, !inline_history !186
  store ptr %i.arz, ptr @N_sides, align 8, !tbaa !110
  %i.asa = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef null) #24, !inline_history !186
  store ptr %i.asa, ptr @N_peripheries, align 8, !tbaa !110
  %i.asb = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef null) #24, !inline_history !186
  store ptr %i.asb, ptr @N_skew, align 8, !tbaa !110
  %i.asc = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef null) #24, !inline_history !186
  store ptr %i.asc, ptr @N_orientation, align 8, !tbaa !110
  %i.asd = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef null) #24, !inline_history !186
  store ptr %i.asd, ptr @N_distortion, align 8, !tbaa !110
  %i.ase = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef null) #24, !inline_history !186
  store ptr %i.ase, ptr @N_fixed, align 8, !tbaa !110
  store ptr null, ptr @N_nojustify, align 8, !tbaa !110
  store ptr null, ptr @N_group, align 8, !tbaa !110
  %i.asf = call ptr @agattr_text(ptr noundef %i.ano, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef null) #24, !inline_history !186
  store ptr %i.asf, ptr @G_ordering, align 8, !tbaa !110
  %i.asg = call ptr @agsubg(ptr noundef %i.ano, ptr noundef nonnull @.str.8, i32 noundef 1) #24, !inline_history !186 ; 3 uses
  %i.ash = call ptr @agbindrec(ptr noundef %i.asg, ptr noundef nonnull @.str.9, i32 noundef 400, i32 noundef 1) #24, !inline_history !186 ; 0 uses
  %i.asi = call i32 @agset(ptr noundef %i.asg, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #24, !inline_history !186 ; 0 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !22
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 32
  %i.asm = load double, ptr %i.asl, align 8, !tbaa !67
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !22
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 32
  %i.asq = load double, ptr %i.asp, align 8, !tbaa !67
  %i.asr = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 132
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !259
  %i.asu = and i32 %i.ast, 1
  %.not.i441 = icmp eq i32 %i.asu, 0              ; 2 uses
  %spec.select258.i = select i1 %.not.i441, ptr %i.ael, ptr %i.aej ; 2 uses
  %spec.select259.i = select i1 %.not.i441, ptr %i.aej, ptr %i.ael ; 3 uses
  %i.asv = call fastcc ptr @cloneNode(ptr noundef %i.asg, ptr noundef %spec.select259.i), !inline_history !186 ; 5 uses
  %i.asw = call fastcc ptr @cloneNode(ptr noundef %i.ano, ptr noundef %spec.select258.i), !inline_history !186 ; 5 uses
  %wide.trip.count860 = zext i32 %.0262.lcssa1037 to i64
  br label %.lr.ph736

._crit_edge737:                                   ; preds = %bb.ei
  %.not244.i = icmp eq ptr %.1237.i, null
  br i1 %.not244.i, label %._crit_edge737.thread, label %bb.ej

.lr.ph736:                                        ; preds = %cloneGraph.exit.i, %bb.ei
  %indvars.iv857 = phi i64 [ 0, %cloneGraph.exit.i ], [ %indvars.iv.next858, %bb.ei ] ; 2 uses
  %.0236.i734 = phi ptr [ null, %cloneGraph.exit.i ], [ %.1237.i, %bb.ei ] ; 2 uses
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv857
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %.lr.ph736
  %.0222.in.i = phi ptr [ %i.asx, %.lr.ph736 ], [ %i.atc, %bb.ea ]
  %.0222.i = load ptr, ptr %.0222.in.i, align 8, !tbaa !65 ; 6 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %.0222.i, i64 16
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !22 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 152
  %i.atb = load i8, ptr %i.ata, align 8, !tbaa !66
  %.not254.i = icmp eq i8 %i.atb, 0
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asz, i64 160
  br i1 %.not254.i, label %bb.eb, label %bb.ea, !llvm.loop !192

bb.eb:                                            ; preds = %bb.ea
  %i.atd = getelementptr inbounds nuw i8, ptr %.0222.i, i64 16
  %i.ate = load i32, ptr %.0222.i, align 8
  %i.atf = and i32 %i.ate, 3
  %i.atg = icmp eq i32 %i.atf, 3
  %i.ath = select i1 %i.atg, i64 56, i64 120
  %i.ati = getelementptr inbounds nuw i8, ptr %.0222.i, i64 %i.ath
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !80
  %i.atk = icmp eq ptr %i.atj, %spec.select259.i
  br i1 %i.atk, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.atl = call ptr @agedge(ptr noundef %i.ano, ptr noundef %i.asv, ptr noundef %i.asw, ptr noundef null, i32 noundef 1) #24, !inline_history !186
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.atm = call ptr @agedge(ptr noundef %i.ano, ptr noundef %i.asw, ptr noundef %i.asv, ptr noundef null, i32 noundef 1) #24, !inline_history !186
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sink1108 = phi ptr [ %i.atm, %bb.ed ], [ %i.atl, %bb.ec ] ; 5 uses
  %i.atn = call ptr @agbindrec(ptr noundef %.sink1108, ptr noundef nonnull @.str.41, i32 noundef 240, i32 noundef 1) #24 ; 0 uses
  %i.ato = call i32 @agcopyattr(ptr noundef nonnull %.0222.i, ptr noundef %.sink1108) #24 ; 0 uses
  %i.atp = load ptr, ptr %i.atd, align 8, !tbaa !22 ; 3 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 168
  store ptr %.sink1108, ptr %i.atq, align 8, !tbaa !281
  %.not255.i = icmp eq ptr %.0236.i734, null
  br i1 %.not255.i, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atp, i64 56
  %i.ats = load i8, ptr %i.atr, align 8, !tbaa !82, !range !16, !noundef !17
  %i.att = trunc nuw i8 %i.ats to i1
  br i1 %i.att, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atp, i64 104
  %i.atv = load i8, ptr %i.atu, align 8, !tbaa !83, !range !16, !noundef !17
  %i.atw = trunc nuw i8 %i.atv to i1
  br i1 %i.atw, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.atx = getelementptr inbounds nuw i8, ptr %.sink1108, i64 16
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !22
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 168
  store ptr %.0222.i, ptr %i.atz, align 8, !tbaa !281
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee
  %.1237.i = phi ptr [ %.0236.i734, %bb.ee ], [ null, %bb.ef ], [ null, %bb.eg ], [ %.sink1108, %bb.eh ] ; 3 uses
  %indvars.iv.next858 = add nuw nsw i64 %indvars.iv857, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next858, %wide.trip.count860
  br i1 %exitcond861.not, label %._crit_edge737, label %.lr.ph736, !llvm.loop !193

._crit_edge737.thread:                            ; preds = %._crit_edge737
  %i.aua = call ptr @agedge(ptr noundef %i.ano, ptr noundef %i.asv, ptr noundef %i.asw, ptr noundef null, i32 noundef 1) #24, !inline_history !186
  br label %bb.ej

bb.ej:                                            ; preds = %._crit_edge737.thread, %._crit_edge737
  %.2238.i = phi ptr [ %.1237.i, %._crit_edge737 ], [ %i.aua, %._crit_edge737.thread ] ; 2 uses
  %i.aub = load ptr, ptr @E_weight, align 8, !tbaa !110
  %i.auc = call i32 @agxset(ptr noundef %.2238.i, ptr noundef %i.aub, ptr noundef nonnull @.str.12) #24, !inline_history !186 ; 0 uses
  %i.aud = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 168
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !282
  %i.aug = load ptr, ptr %i.anv, align 8, !tbaa !22 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 168
  store ptr %i.auf, ptr %i.auh, align 8, !tbaa !282
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aug, i64 248
  store ptr %i.ano, ptr %i.aui, align 8, !tbaa !283
  call void @setEdgeType(ptr noundef %i.ano, i32 noundef range(i32 1, 15) %i.o) #24, !inline_history !186
  call void @dot_init_node_edge(ptr noundef %i.ano) #24, !inline_history !186
  call void @dot_rank(ptr noundef %i.ano) #24, !inline_history !186
  %i.auj = call i32 @dot_mincross(ptr noundef %i.ano) #24, !inline_history !186 ; 2 uses
  %.not245.i = icmp eq i32 %i.auj, 0
  br i1 %.not245.i, label %bb.ek, label %bb.gb

bb.ek:                                            ; preds = %bb.ej
  %i.auk = call i32 @dot_position(ptr noundef nonnull %i.ano) #24, !inline_history !186 ; 2 uses
  %.not246.i = icmp eq i32 %i.auk, 0
  br i1 %.not246.i, label %bb.el, label %bb.gb

bb.el:                                            ; preds = %bb.ek
  %i.aul = getelementptr inbounds nuw i8, ptr %spec.select259.i, i64 16 ; 2 uses
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !22 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 32
  %i.auo = load double, ptr %i.aun, align 8, !tbaa !67
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aum, i64 112
  %i.auq = load double, ptr %i.aup, align 8, !tbaa !52
  %i.aur = fsub double %i.auo, %i.auq
  %i.aus = getelementptr inbounds nuw i8, ptr %spec.select258.i, i64 16
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !22 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 32
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !67
  %i.auw = fadd double %i.aur, %i.auv
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aut, i64 104
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !77
  %i.auz = fadd double %i.auw, %i.auy
  %i.ava = fmul double %i.auz, 5.000000e-01
  %i.avb = getelementptr inbounds nuw i8, ptr %i.asv, i64 16 ; 2 uses
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !22
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 32
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !67
  %i.avf = getelementptr inbounds nuw i8, ptr %i.asw, i64 16
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !22
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 32
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !67
  %i.avj = fadd double %i.ave, %i.avi
  %i.avk = fmul double %i.avj, 5.000000e-01       ; 2 uses
  %i.avl = load ptr, ptr %i.anv, align 8, !tbaa !22
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 256
  %.0219.i739 = load ptr, ptr %i.avm, align 8, !tbaa !54 ; 2 uses
  %.not247.i740 = icmp eq ptr %.0219.i739, null
  br i1 %.not247.i740, label %._crit_edge744, label %.lr.ph743.preheader

.lr.ph743.preheader:                              ; preds = %bb.el
  %i.avn = insertelement <2 x double> poison, double %i.avk, i64 0
  %i.avo = insertelement <2 x double> %i.avn, double %i.asq, i64 1
  %i.avp = insertelement <2 x double> poison, double %i.avk, i64 0
  %i.avq = insertelement <2 x double> %i.avp, double %i.asm, i64 1
  br label %.lr.ph743

.lr.ph743:                                        ; preds = %.lr.ph743.preheader, %bb.eq
  %.0219.i741 = phi ptr [ %.0219.i, %bb.eq ], [ %.0219.i739, %.lr.ph743.preheader ] ; 4 uses
  %i.avr = icmp eq ptr %.0219.i741, %i.asv
  br i1 %i.avr, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.lr.ph743
  %i.avs = getelementptr inbounds nuw i8, ptr %.0219.i741, i64 16
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !22 ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 32
  store <2 x double> %i.avq, ptr %i.avu, align 8, !tbaa !61
  br label %bb.eq

bb.en:                                            ; preds = %.lr.ph743
  %i.avv = icmp eq ptr %.0219.i741, %i.asw
  %i.avw = getelementptr inbounds nuw i8, ptr %.0219.i741, i64 16
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !22 ; 4 uses
  br i1 %i.avv, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 32
  store <2 x double> %i.avo, ptr %i.avy, align 8, !tbaa !61
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avx, i64 40
  store double %i.ava, ptr %i.avz, align 8, !tbaa !69
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.em
  %i.awa = phi ptr [ %i.avx, %bb.ep ], [ %i.avx, %bb.eo ], [ %i.avt, %bb.em ]
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 240
  %.0219.i = load ptr, ptr %i.awb, align 8, !tbaa !54 ; 2 uses
  %.not247.i = icmp eq ptr %.0219.i, null
  br i1 %.not247.i, label %._crit_edge744, label %.lr.ph743, !llvm.loop !194

._crit_edge744:                                   ; preds = %bb.eq, %bb.el
  call void @dot_sameports(ptr noundef nonnull %i.ano) #24, !inline_history !186
  %i.awc = call fastcc i32 @dot_splines_(ptr noundef nonnull %i.ano, i32 noundef 0), !inline_history !186 ; 2 uses
  %.not248.i = icmp eq i32 %i.awc, 0
  br i1 %.not248.i, label %bb.er, label %bb.gb

bb.er:                                            ; preds = %._crit_edge744
  call void @dotneato_postprocess(ptr noundef nonnull %i.ano) #24, !inline_history !186
  %i.awd = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 132
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !259
  %i.awg = and i32 %i.awf, 1
  %.not249.i = icmp eq i32 %i.awg, 0
  %i.awh = load ptr, ptr %i.aul, align 8, !tbaa !22 ; 3 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 32
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !67
  %i.awk = load ptr, ptr %i.avb, align 8, !tbaa !22 ; 3 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 32 ; 2 uses
  br i1 %.not249.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awk, i64 40
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awh, i64 40
  %i.awo = load double, ptr %i.awn, align 8, !tbaa !69
  %i.awp = load double, ptr %i.awl, align 8, !tbaa !67
  %i.awq = fadd double %i.awo, %i.awp
  br label %.lr.ph751.preheader

bb.et:                                            ; preds = %bb.er
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awh, i64 40
  %i.aws = load double, ptr %i.awr, align 8, !tbaa !69
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awk, i64 40
  %i.awu = load double, ptr %i.awt, align 8, !tbaa !69
  %i.awv = fsub double %i.aws, %i.awu
  br label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %bb.et, %bb.es
  %.pn.in = phi ptr [ %i.awm, %bb.es ], [ %i.awl, %bb.et ]
  %.sroa.11.0.i = phi double [ %i.awq, %bb.es ], [ %i.awv, %bb.et ] ; 7 uses
  %.pn = load double, ptr %.pn.in, align 8, !tbaa !61
  %.sroa.072.0.i = fsub double %i.awj, %.pn       ; 7 uses
  %wide.trip.count865 = zext i32 %.0262.lcssa1037 to i64
  br label %.lr.ph751

.lr.ph751:                                        ; preds = %.lr.ph751.preheader, %bb.ez
  %indvars.iv862 = phi i64 [ 0, %.lr.ph751.preheader ], [ %indvars.iv.next863, %bb.ez ] ; 2 uses
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv862
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %.lr.ph751
  %.1223.in.i = phi ptr [ %i.aww, %.lr.ph751 ], [ %i.axb, %bb.eu ]
  %.1223.i = load ptr, ptr %.1223.in.i, align 8, !tbaa !65 ; 3 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %.1223.i, i64 16
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !22 ; 3 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 152
  %i.axa = load i8, ptr %i.awz, align 8, !tbaa !66
  %.not250.i = icmp eq i8 %i.axa, 0
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awy, i64 160
  br i1 %.not250.i, label %bb.ev, label %bb.eu, !llvm.loop !195

bb.ev:                                            ; preds = %bb.eu
  %i.axc = getelementptr inbounds nuw i8, ptr %.1223.i, i64 16
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awy, i64 168
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !281 ; 2 uses
  %i.axf = icmp eq ptr %i.axe, %.2238.i
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axe, i64 16 ; 2 uses
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !22 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 168
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !281
  %.not251.i = icmp eq ptr %i.axj, null
  %i.axk = and i1 %i.axf, %.not251.i
  br i1 %i.axk, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axh, i64 16
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !152
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !286 ; 11 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 8 ; 4 uses
  %i.axp = load i64, ptr %i.axo, align 8, !tbaa !288
  %i.axq = call ptr @new_spline(ptr noundef nonnull %.1223.i, i64 noundef %i.axp) #24, !inline_history !186 ; 9 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axn, i64 16
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !289
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axq, i64 16
  store i32 %i.axs, ptr %i.axt, align 8, !tbaa !289
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axq, i64 24
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axn, i64 24
  %i.axw = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 132
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !259
  %i.axz = and i32 %i.axy, 1
  %i.aya = load double, ptr %i.axv, align 8       ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axn, i64 32
  %i.ayc = load double, ptr %i.ayb, align 8       ; 2 uses
  %.not.i265.i = icmp eq i32 %i.axz, 0            ; 4 uses
  %i.ayd = fneg double %i.aya
  %.sroa.01.0.i.i = select i1 %.not.i265.i, double %i.aya, double %i.ayc
  %.sroa.4.0.i.i = select i1 %.not.i265.i, double %i.ayc, double %i.ayd
  %i.aye = fadd double %.sroa.072.0.i, %.sroa.01.0.i.i
  %i.ayf = fadd double %.sroa.11.0.i, %.sroa.4.0.i.i
  store double %i.aye, ptr %i.axu, align 8, !tbaa !61
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.axq, i64 32
  store double %i.ayf, ptr %.sroa.424.0..sroa_idx.i, align 8, !tbaa !61
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axn, i64 20
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !290
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axq, i64 20
  store i32 %i.ayh, ptr %i.ayi, align 4, !tbaa !290
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axq, i64 40
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axn, i64 40
  %i.ayl = load double, ptr %i.ayk, align 8       ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axn, i64 48
  %i.ayn = load double, ptr %i.aym, align 8       ; 2 uses
  %i.ayo = fneg double %i.ayl
  %.sroa.01.0.i267.i = select i1 %.not.i265.i, double %i.ayl, double %i.ayn
  %.sroa.4.0.i268.i = select i1 %.not.i265.i, double %i.ayn, double %i.ayo
  %i.ayp = fadd double %.sroa.072.0.i, %.sroa.01.0.i267.i
  %i.ayq = fadd double %.sroa.11.0.i, %.sroa.4.0.i268.i
  store double %i.ayp, ptr %i.ayj, align 8, !tbaa !61
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.axq, i64 48
  store double %i.ayq, ptr %.sroa.422.0..sroa_idx.i, align 8, !tbaa !61
  %i.ayr = load i64, ptr %i.axo, align 8, !tbaa !288
  %.not794 = icmp eq i64 %i.ayr, 0
  br i1 %.not794, label %.loopexit579, label %.lr.ph748

.lr.ph748:                                        ; preds = %bb.ew, %bb.ex
  %.0225.i746 = phi i64 [ %i.azl, %bb.ex ], [ 0, %bb.ew ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ays = load ptr, ptr %i.axq, align 8, !tbaa !291
  %i.ayt = getelementptr inbounds nuw [16 x i8], ptr %i.ays, i64 %.0225.i746 ; 3 uses
  %i.ayu = load ptr, ptr %i.axn, align 8, !tbaa !291
  %i.ayv = getelementptr inbounds nuw [16 x i8], ptr %i.ayu, i64 %.0225.i746 ; 2 uses
  %i.ayw = load ptr, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 132
  %i.ayy = load i32, ptr %i.ayx, align 4, !tbaa !259
  %i.ayz = and i32 %i.ayy, 1
  %37 = load double, ptr %i.ayv, align 8          ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  %39 = load double, ptr %38, align 8             ; 2 uses
  %.not.i271.i = icmp eq i32 %i.ayz, 0            ; 8 uses
  %40 = fneg double %37
  %.sroa.01.0.i272.i = select i1 %.not.i271.i, double %37, double %39
  %.sroa.4.0.i273.i = select i1 %.not.i271.i, double %39, double %40
  %41 = fadd double %.sroa.072.0.i, %.sroa.01.0.i272.i
  %42 = fadd double %.sroa.11.0.i, %.sroa.4.0.i273.i
  store double %41, ptr %i.ayt, align 8, !tbaa !61
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  store double %42, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ayt, i64 16, i1 false), !tbaa.struct !258
  %i.aza = add nuw i64 %.0225.i746, 1             ; 3 uses
  %i.azb = load i64, ptr %i.axo, align 8, !tbaa !288
  %.not252.i = icmp ult i64 %i.aza, %i.azb
  br i1 %.not252.i, label %bb.ex, label %.thread547

.thread547:                                       ; preds = %.lr.ph748
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit579

bb.ex:                                            ; preds = %.lr.ph748
  %i.azc = load ptr, ptr %i.axq, align 8, !tbaa !291
  %i.azd = getelementptr inbounds nuw [16 x i8], ptr %i.azc, i64 %i.aza ; 3 uses
  %i.aze = load ptr, ptr %i.axn, align 8, !tbaa !291
  %i.azf = getelementptr inbounds nuw [16 x i8], ptr %i.aze, i64 %i.aza ; 2 uses
  %43 = load double, ptr %i.azf, align 8          ; 2 uses
  %44 = getelementptr inbounds nuw i8, ptr %i.azf, i64 8
  %45 = load double, ptr %44, align 8             ; 2 uses
  %46 = fneg double %43
  %.sroa.01.0.i277.i = select i1 %.not.i271.i, double %43, double %45
  %.sroa.4.0.i278.i = select i1 %.not.i271.i, double %45, double %46
  %47 = fadd double %.sroa.072.0.i, %.sroa.01.0.i277.i
  %48 = fadd double %.sroa.11.0.i, %.sroa.4.0.i278.i
  store double %47, ptr %i.azd, align 8, !tbaa !61
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azd, i64 8
  store double %48, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.qv, ptr noundef nonnull align 8 dereferenceable(16) %i.azd, i64 16, i1 false), !tbaa.struct !258
  %i.azg = add nuw i64 %.0225.i746, 2             ; 2 uses
  %i.azh = load ptr, ptr %i.axq, align 8, !tbaa !291
  %i.azi = getelementptr inbounds nuw [16 x i8], ptr %i.azh, i64 %i.azg ; 3 uses
  %i.azj = load ptr, ptr %i.axn, align 8, !tbaa !291
  %i.azk = getelementptr inbounds nuw [16 x i8], ptr %i.azj, i64 %i.azg ; 2 uses
  %49 = load double, ptr %i.azk, align 8          ; 2 uses
  %50 = getelementptr inbounds nuw i8, ptr %i.azk, i64 8
  %51 = load double, ptr %50, align 8             ; 2 uses
  %52 = fneg double %49
  %.sroa.01.0.i282.i = select i1 %.not.i271.i, double %49, double %51
  %.sroa.4.0.i283.i = select i1 %.not.i271.i, double %51, double %52
  %53 = fadd double %.sroa.072.0.i, %.sroa.01.0.i282.i
  %54 = fadd double %.sroa.11.0.i, %.sroa.4.0.i283.i
  store double %53, ptr %i.azi, align 8, !tbaa !61
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  store double %54, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.qw, ptr noundef nonnull align 8 dereferenceable(16) %i.azi, i64 16, i1 false), !tbaa.struct !258
  %i.azl = add i64 %.0225.i746, 3                 ; 3 uses
  %i.azm = load ptr, ptr %i.axn, align 8, !tbaa !291
  %i.azn = getelementptr inbounds nuw [16 x i8], ptr %i.azm, i64 %i.azl ; 2 uses
  %55 = load double, ptr %i.azn, align 8          ; 2 uses
  %56 = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  %57 = load double, ptr %56, align 8             ; 2 uses
  %58 = fneg double %55
  %.sroa.01.0.i287.i = select i1 %.not.i271.i, double %55, double %57
  %.sroa.4.0.i288.i = select i1 %.not.i271.i, double %57, double %58
  %59 = fadd double %.sroa.072.0.i, %.sroa.01.0.i287.i
  %60 = fadd double %.sroa.11.0.i, %.sroa.4.0.i288.i
  store double %59, ptr %i.qx, align 16, !tbaa !61
  store double %60, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !61
  %i.azo = getelementptr inbounds nuw i8, ptr %i.ayw, i64 32
  call void @update_bb_bz(ptr noundef nonnull %i.azo, ptr noundef nonnull %4) #24, !inline_history !186
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.azp = load i64, ptr %i.axo, align 8, !tbaa !288
  %i.azq = icmp ult i64 %i.azl, %i.azp
  br i1 %i.azq, label %.lr.ph748, label %.loopexit579

.loopexit579:                                     ; preds = %bb.ex, %bb.ew, %.thread547
  %i.azr = load ptr, ptr %i.axc, align 8, !tbaa !22
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 120
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !60 ; 5 uses
  %.not253.i = icmp eq ptr %i.azt, null
  br i1 %.not253.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.loopexit579
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 72
  %i.azv = load ptr, ptr %i.axg, align 8, !tbaa !22
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 120
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !60 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 72
  %i.azz = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 132
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !259
  %i.bac = and i32 %i.bab, 1
  %i.bad = load double, ptr %i.azy, align 8       ; 2 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %i.azx, i64 80
  %i.baf = load double, ptr %i.bae, align 8       ; 2 uses
  %.not.i291.i = icmp eq i32 %i.bac, 0            ; 2 uses
  %i.bag = fneg double %i.bad
  %.sroa.01.0.i292.i = select i1 %.not.i291.i, double %i.bad, double %i.baf
  %.sroa.4.0.i293.i = select i1 %.not.i291.i, double %i.baf, double %i.bag
  %i.bah = fadd double %.sroa.072.0.i, %.sroa.01.0.i292.i
  %i.bai = fadd double %.sroa.11.0.i, %.sroa.4.0.i293.i
  store double %i.bah, ptr %i.azu, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i442 = getelementptr inbounds nuw i8, ptr %i.azt, i64 80
  store double %i.bai, ptr %.sroa.4.0..sroa_idx.i442, align 8, !tbaa !61
  %i.baj = getelementptr inbounds nuw i8, ptr %i.azt, i64 105
  store i8 1, ptr %i.baj, align 1, !tbaa !262
  call void @updateBB(ptr noundef nonnull %0, ptr noundef nonnull %i.azt) #24, !inline_history !186
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.loopexit579, %bb.ev
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 1 ; 2 uses
  %exitcond866.not = icmp eq i64 %indvars.iv.next863, %wide.trip.count865
  br i1 %exitcond866.not, label %make_flat_edge.exit, label %.lr.ph751, !llvm.loop !196

bb.fa:                                            ; preds = %._crit_edge713
  %i.bak = getelementptr inbounds nuw i8, ptr %.0150.i, i64 16 ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.ady, i64 120
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !60
  %.not170.i = icmp eq ptr %i.bam, null
  br i1 %.not170.i, label %bb.fo, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ban = load i32, ptr %.0150.i, align 8
  %i.bao = and i32 %i.ban, 3                      ; 2 uses
  %i.bap = icmp eq i32 %i.bao, 3
  %.sroa.gep489 = getelementptr inbounds nuw i8, ptr %.0150.i, i64 56 ; 3 uses
  %.sroa.gep490 = getelementptr inbounds nuw i8, ptr %.0150.i, i64 120
  %.sroa.sel491 = select i1 %i.bap, ptr %.sroa.gep489, ptr %.sroa.gep490
  %i.baq = load ptr, ptr %.sroa.sel491, align 8, !tbaa !80 ; 2 uses
  %i.bar = icmp eq i32 %i.bao, 2
  %.sroa.gep492 = getelementptr inbounds i8, ptr %.0150.i, i64 -8 ; 2 uses
  %.sroa.sel493 = select i1 %i.bar, ptr %.sroa.gep489, ptr %.sroa.gep492
  %i.bas = load ptr, ptr %.sroa.sel493, align 8, !tbaa !80 ; 2 uses
  %i.bat = load ptr, ptr %i.bak, align 8, !tbaa !22 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 232
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !91
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %bb.fb
  %.088.i = phi ptr [ %i.bav, %bb.fb ], [ %i.baz, %bb.fc ] ; 3 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.088.i, i64 16
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !22
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 232
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !91 ; 2 uses
  %.not.i423 = icmp eq ptr %i.baz, null
  br i1 %.not.i423, label %bb.fd, label %bb.fc, !llvm.loop !197

bb.fd:                                            ; preds = %bb.fc
  %i.bba = load i32, ptr %.088.i, align 8
  %i.bbb = and i32 %i.bba, 3
  %i.bbc = icmp eq i32 %i.bbb, 3
  %i.bbd = select i1 %i.bbc, i64 56, i64 120
  %i.bbe = getelementptr inbounds nuw i8, ptr %.088.i, i64 %i.bbd
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !80
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bat, i64 120
  %i.bbh = load ptr, ptr %i.bbg, align 8, !tbaa !60
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 72
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbf, i64 16 ; 2 uses
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !22
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bbi, ptr noundef nonnull align 8 dereferenceable(16) %i.bbl, i64 16, i1 false), !tbaa.struct !258
  %i.bbm = load ptr, ptr %i.bak, align 8, !tbaa !22 ; 3 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 120
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !60 ; 4 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 105
  store i8 1, ptr %i.bbp, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  br i1 %i.ls, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.baq, i64 16
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !22
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbm, i64 24
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bas, i64 16
  %i.bbv = load ptr, ptr %i.bbu, align 8, !tbaa !22
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 32
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbm, i64 72
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbo, i64 72
  %.sroa.08.0.copyload.i = load double, ptr %i.bby, align 8, !tbaa !61
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bbo, i64 80
  %.sroa.410.0.copyload.i = load double, ptr %.sroa.410.0..sroa_idx.i, align 8, !tbaa !61
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbo, i64 48
  %i.bca = load double, ptr %i.bbz, align 8, !tbaa !270
  %i.bcb = fmul double %i.bca, 5.000000e-01
  %i.bcc = fsub double %.sroa.410.0.copyload.i, %i.bcb
  %i.bcd = load <2 x double>, ptr %i.bbs, align 8
  %i.bce = load <2 x double>, ptr %i.bbt, align 8
  %i.bcf = fadd <2 x double> %i.bcd, %i.bce
  store <2 x double> %i.bcf, ptr %7, align 16, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ro, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !258
  %i.bcg = load <2 x double>, ptr %i.bbw, align 8
  %i.bch = load <2 x double>, ptr %i.bbx, align 8
  %i.bci = fadd <2 x double> %i.bcg, %i.bch
  store double %.sroa.08.0.copyload.i, ptr %i.rr, align 16, !tbaa !61
  store double %i.bcc, ptr %.sroa.410.0..sroa_idx11.i, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.rq, ptr noundef nonnull align 16 dereferenceable(16) %i.rr, i64 16, i1 false), !tbaa.struct !258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.rp, ptr noundef nonnull align 16 dereferenceable(16) %i.rr, i64 16, i1 false)
  store <2 x double> %i.bci, ptr %i.rt, align 16, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.rs, ptr noundef nonnull align 16 dereferenceable(16) %i.rt, i64 16, i1 false), !tbaa.struct !258
  store i64 7, ptr %i.c, align 8, !tbaa !101
  br label %bb.fm

bb.ff:                                            ; preds = %bb.fd
  %i.bcj = load ptr, ptr %i.bbj, align 8, !tbaa !22 ; 5 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 32
  %i.bcl = load double, ptr %i.bck, align 8, !tbaa !67 ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcj, i64 104
  %i.bcn = load double, ptr %i.bcm, align 8, !tbaa !77
  %i.bco = fsub double %i.bcl, %i.bcn
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcj, i64 112
  %i.bcq = load double, ptr %i.bcp, align 8, !tbaa !52
  %i.bcr = fadd double %i.bcl, %i.bcq
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcj, i64 40
  %i.bct = load double, ptr %i.bcs, align 8, !tbaa !69 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcj, i64 96
  %i.bcv = load double, ptr %i.bcu, align 8, !tbaa !108
  %i.bcw = fmul double %i.bcv, 5.000000e-01
  %i.bcx = fadd double %i.bct, %i.bcw             ; 2 uses
  %i.bcy = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 264
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !72
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.baq, i64 16 ; 2 uses
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !22 ; 3 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 360
  %i.bde = load i32, ptr %i.bdd, align 8, !tbaa !84
  %i.bdf = sext i32 %i.bde to i64
  %i.bdg = getelementptr inbounds [88 x i8], ptr %i.bda, i64 %i.bdf ; 2 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 32
  %i.bdi = load double, ptr %i.bdh, align 8, !tbaa !153
  %i.bdj = fsub double %i.bct, %i.bdi
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdc, i64 40
  %i.bdl = load double, ptr %i.bdk, align 8, !tbaa !69
  %i.bdm = fsub double %i.bdj, %i.bdl
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdg, i64 40
  %i.bdo = load double, ptr %i.bdn, align 8, !tbaa !154
  %i.bdp = fadd double %i.bdm, %i.bdo
  %i.bdq = fdiv double %i.bdp, 6.000000e+00       ; 2 uses
  %i.bdr = fcmp olt double %i.bdq, 5.000000e+00
  %i.bds = select i1 %i.bdr, double 5.000000e+00, double %i.bdq
  %i.bdt = fsub double %i.bcx, %i.bds             ; 3 uses
  call fastcc void @maximal_bbox(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef readonly %0, ptr noundef nonnull byval(%struct.spline_info_t) align 8 %9, ptr %i.bdc, ptr noundef null, ptr noundef nonnull %.0150.i)
  %.sroa.020.0.copyload.i.i424 = load double, ptr %5, align 8, !tbaa !61 ; 2 uses
  %.sroa.10.0.copyload.i.i = load double, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !61 ; 2 uses
  store i32 4, ptr %i.qy, align 8, !tbaa !156
  call void @beginpath(ptr noundef nonnull %34, ptr noundef nonnull %.0150.i, i32 noundef 2, ptr noundef nonnull %5, i1 noundef zeroext false) #24
  %i.bdu = load i32, ptr %i.ra, align 4, !tbaa !157 ; 2 uses
  %i.bdv = sext i32 %i.bdu to i64
  %i.bdw = getelementptr [32 x i8], ptr %i.qz, i64 %i.bdv ; 5 uses
  %i.bdx = getelementptr i8, ptr %i.bdw, i64 -8
  %i.bdy = load double, ptr %i.bdx, align 8, !tbaa !158 ; 2 uses
  %i.bdz = load ptr, ptr %i.bdb, align 8, !tbaa !22 ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 40
  %i.beb = load double, ptr %i.bea, align 8, !tbaa !69
  %i.bec = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 264
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !72
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bdz, i64 360
  %i.beg = load i32, ptr %i.bef, align 8, !tbaa !84
  %i.beh = sext i32 %i.beg to i64
  %i.bei = getelementptr inbounds [88 x i8], ptr %i.bee, i64 %i.beh
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 40
  %i.bek = load double, ptr %i.bej, align 8, !tbaa !154
  %i.bel = fadd double %i.beb, %i.bek             ; 2 uses
  %i.bem = fcmp olt double %.sroa.020.0.copyload.i.i424, %.sroa.10.0.copyload.i.i
end_hunk_2
