Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg2_metadata?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVBitStreamFilter = type { ptr, ptr, ptr }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"mpeg2_metadata\00", align 1
@mpeg2_metadata_codec_ids = internal constant [2 x i32] [i32 2, i32 0], align 4
@ff_mpeg2_metadata_bsf = local_unnamed_addr constant { %struct.AVBitStreamFilter, i32, [4 x i8], ptr, ptr, ptr, ptr } { %struct.AVBitStreamFilter { ptr @.str, ptr @mpeg2_metadata_codec_ids, ptr @mpeg2_metadata_class }, i32 384, [4 x i8] zeroinitializer, ptr @mpeg2_metadata_init, ptr @ff_cbs_bsf_generic_filter, ptr @ff_cbs_bsf_generic_close, ptr null }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"mpeg2_metadata_bsf\00", align 1
@mpeg2_metadata_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1, ptr @av_default_item_name, ptr @mpeg2_metadata_options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"display_aspect_ratio\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Set display aspect ratio (table 6-3)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"frame_rate\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Set frame rate\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"video_format\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Set video format (table 6-6)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"colour_primaries\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Set colour primaries (table 6-7)\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"transfer_characteristics\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Set transfer characteristics (table 6-8)\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"matrix_coefficients\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Set matrix coefficients (table 6-9)\00", align 1
@mpeg2_metadata_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.3, ptr @.str.4, i32 344, i32 7, { double } zeroinitializer, double 0.000000e+00, double 6.553500e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 352, i32 7, { double } zeroinitializer, double 0.000000e+00, double f0x41EFFFFFFFE00000, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 360, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 7.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 364, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 2.550000e+02, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 368, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 2.550000e+02, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 372, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 2.550000e+02, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.16 = private unnamed_addr constant [34 x i8] c"The value 0 for %s is forbidden.\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"start code\00", align 1
@mpeg2_metadata_type = internal constant { i32, [4 x i8], ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.17, ptr @.str.18, ptr @mpeg2_metadata_update_fragment }, align 8
@.str.20 = private unnamed_addr constant [93 x i8] c"Stream contains a sequence header but not a sequence extension: maybe it's actually MPEG-1?\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Failed to insert new sequence display extension.\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @mpeg2_metadata_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9) #4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11) #4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = tail call i32 @ff_cbs_bsf_generic_init(ptr noundef nonnull %0, ptr noundef nonnull @mpeg2_metadata_type) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.i, %bb.g ], [ -22, %bb.f ], [ -22, %bb.d ], [ -22, %bb.b ]
  ret i32 %.0
}

declare i32 @ff_cbs_bsf_generic_filter(ptr noundef, ptr noundef) #1

declare void @ff_cbs_bsf_generic_close(ptr noundef) #1

declare ptr @av_default_item_name(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ff_cbs_bsf_generic_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mpeg2_metadata_update_fragment(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.thread125

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.l ] ; 4 uses
  %.080106 = phi ptr [ null, %.lr.ph.new ], [ %.181.1, %bb.l ] ; 4 uses
  %.082105 = phi ptr [ null, %.lr.ph.new ], [ %.2.1, %bb.l ] ; 4 uses
  %.084104 = phi ptr [ null, %.lr.ph.new ], [ %.286.1, %bb.l ] ; 4 uses
  %.088102 = phi i32 [ undef, %.lr.ph.new ], [ %.290.1, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
  switch i32 %i.o, label %bb.g [
    i32 179, label %bb.c
    i32 181, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  switch i8 %i.u, label %bb.g [
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b, %bb.c
  %.290 = phi i32 [ %.088102, %bb.c ], [ %.088102, %bb.b ], [ %i.w, %bb.e ], [ %.088102, %bb.f ], [ %.088102, %bb.d ] ; 4 uses
  %.286 = phi ptr [ %.084104, %bb.c ], [ %.084104, %bb.b ], [ %.084104, %bb.e ], [ %i.x, %bb.f ], [ %.084104, %bb.d ] ; 4 uses
  %.2 = phi ptr [ %.082105, %bb.c ], [ %.082105, %bb.b ], [ %i.v, %bb.e ], [ %.082105, %bb.f ], [ %.082105, %bb.d ] ; 4 uses
  %.181 = phi ptr [ %i.q, %bb.c ], [ %.080106, %bb.b ], [ %.080106, %bb.e ], [ %.080106, %bb.f ], [ %.080106, %bb.d ] ; 4 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %indvars.iv.next ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !33
  switch i32 %i.z, label %bb.l [
    i32 179, label %bb.k
    i32 181, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  switch i8 %i.ad, label %bb.l [
    i8 1, label %bb.j
    i8 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.290.1 = phi i32 [ %.290, %bb.k ], [ %.290, %bb.g ], [ %i.ag, %bb.j ], [ %.290, %bb.i ], [ %.290, %bb.h ] ; 3 uses
  %.286.1 = phi ptr [ %.286, %bb.k ], [ %.286, %bb.g ], [ %.286, %bb.j ], [ %i.ae, %bb.i ], [ %.286, %bb.h ] ; 3 uses
  %.2.1 = phi ptr [ %.2, %bb.k ], [ %.2, %bb.g ], [ %i.af, %bb.j ], [ %.2, %bb.i ], [ %.2, %bb.h ] ; 3 uses
  %.181.1 = phi ptr [ %i.ai, %bb.k ], [ %.181, %bb.g ], [ %.181, %bb.j ], [ %.181, %bb.i ], [ %.181, %bb.h ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !29

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.080106.epil.init = phi ptr [ null, %.lr.ph ], [ %.181.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.082105.epil.init = phi ptr [ null, %.lr.ph ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.084104.epil.init = phi ptr [ null, %.lr.ph ], [ %.286.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.088102.epil.init = phi i32 [ undef, %.lr.ph ], [ %.290.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %lcmp.mod130 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %indvars.iv.epil.init ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33
  switch i32 %i.ak, label %._crit_edge [
    i32 179, label %bb.p
    i32 181, label %bb.m
  ]

bb.m:                                             ; preds = %.epil.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  switch i8 %i.ao, label %._crit_edge [
    i8 1, label %bb.o
    i8 2, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  br label %._crit_edge

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ar = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  br label %._crit_edge

bb.p:                                             ; preds = %.epil.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.m, %bb.n, %bb.o, %bb.p, %._crit_edge.unr-lcssa
  %.290.lcssa = phi i32 [ %.290.1, %._crit_edge.unr-lcssa ], [ %.088102.epil.init, %bb.p ], [ %.088102.epil.init, %.epil.preheader ], [ %i.ar, %bb.o ], [ %.088102.epil.init, %bb.n ], [ %.088102.epil.init, %bb.m ]
  %.286.lcssa = phi ptr [ %.286.1, %._crit_edge.unr-lcssa ], [ %.084104.epil.init, %bb.p ], [ %.084104.epil.init, %.epil.preheader ], [ %.084104.epil.init, %bb.o ], [ %i.ap, %bb.n ], [ %.084104.epil.init, %bb.m ] ; 2 uses
  %.2.lcssa = phi ptr [ %.2.1, %._crit_edge.unr-lcssa ], [ %.082105.epil.init, %bb.p ], [ %.082105.epil.init, %.epil.preheader ], [ %i.aq, %bb.o ], [ %.082105.epil.init, %bb.n ], [ %.082105.epil.init, %bb.m ] ; 4 uses
  %.181.lcssa = phi ptr [ %.181.1, %._crit_edge.unr-lcssa ], [ %i.at, %bb.p ], [ %.080106.epil.init, %.epil.preheader ], [ %.080106.epil.init, %bb.o ], [ %.080106.epil.init, %bb.n ], [ %.080106.epil.init, %bb.m ] ; 6 uses
  %i.au = add nsw i32 %.290.lcssa, 1
  %i.av = icmp ne ptr %.181.lcssa, null           ; 2 uses
  %i.aw = icmp ne ptr %.2.lcssa, null
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.t, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  br i1 %i.av, label %bb.r, label %.thread125

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 376 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !37
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.s, label %.thread125

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.20) #4
  store i32 1, ptr %i.ax, align 8, !tbaa !37
  br label %.thread125

bb.t:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !38 ; 2 uses
  %.not97 = icmp eq i32 %i.ba, 0
  br i1 %.not97, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 348
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !39 ; 2 uses
  %.not98 = icmp eq i32 %i.bc, 0
  br i1 %.not98, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.bd = sext i32 %i.ba to i64
  %i.be = sext i32 %i.bc to i64
  %i.bf = call i32 @av_reduce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.bd, i64 noundef %i.be, i64 noundef 65535) #4 ; 0 uses
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !40  ; 3 uses
  %i.bh = icmp eq i32 %i.bg, 4
  %i.bi = load i32, ptr %i.b, align 4             ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 3
  %or.cond3 = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 6
  store i8 2, ptr %i.bk, align 2, !tbaa !43
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.bl = icmp eq i32 %i.bg, 16
  %i.bm = icmp eq i32 %i.bi, 9
  %or.cond5 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond5, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 6
  store i8 3, ptr %i.bn, align 2, !tbaa !43
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.bo = icmp eq i32 %i.bg, 221
  %i.bp = icmp eq i32 %i.bi, 100
  %or.cond7 = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 6 ; 2 uses
  br i1 %or.cond7, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 4, ptr %i.bq, align 2, !tbaa !43
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store i8 1, ptr %i.bq, align 2, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.u, %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !44
  %.not99 = icmp eq i32 %i.bs, 0
  br i1 %.not99, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 356
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !45
  %.not100 = icmp eq i32 %i.bu, 0
  br i1 %.not100, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.bv = load i64, ptr %i.br, align 8
  call void @ff_mpeg12_find_best_frame_rate(i64 %i.bv, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #4
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !40
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 7
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !46
  %i.bz = load i32, ptr %i.d, align 4, !tbaa !40
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 10
  store i8 %i.ca, ptr %i.cb, align 2, !tbaa !48
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !40
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 11
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 360 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !50 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 364
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !26
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !27
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !28
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.ak, label %.thread125

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.not101 = icmp eq ptr %.286.lcssa, null
  br i1 %.not101, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 3
  %i.ct = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.cu = load <2 x i8>, ptr %i.cs, align 1, !tbaa !51
  %i.cv = zext <2 x i8> %i.cu to <2 x i16>
  %i.cw = shl <2 x i16> %i.cv, splat (i16 12)
  %i.cx = load <2 x i16>, ptr %i.ct, align 2, !tbaa !52
  %i.cy = or <2 x i16> %i.cw, %i.cx
  store <8 x i8> <i8 -75, i8 2, i8 5, i8 0, i8 2, i8 2, i8 2, i8 0>, ptr %i.cr, align 8
  store <2 x i16> %i.cy, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !52
  %i.cz = call i32 @ff_cbs_insert_unit_content(ptr noundef nonnull %2, i32 noundef %i.au, i32 noundef 181, ptr noundef nonnull %i.cr, ptr noundef null) #4 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, -1
  br i1 %i.da, label %..critedge_crit_edge, label %bb.am

..critedge_crit_edge:                             ; preds = %bb.al
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  %.pre = load i32, ptr %i.cf, align 8, !tbaa !50
  br label %.critedge

bb.am:                                            ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.21) #4
  br label %.thread125

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ak
  %i.db = phi i32 [ %i.cg, %bb.ak ], [ %.pre, %..critedge_crit_edge ] ; 2 uses
  %.3 = phi ptr [ %.286.lcssa, %bb.ak ], [ %3, %..critedge_crit_edge ] ; 6 uses
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.critedge
  %i.dd = trunc i32 %i.db to i8
  store i8 %i.dd, ptr %.3, align 2, !tbaa !54
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 364
  %i.df = load i32, ptr %i.de, align 4, !tbaa !26 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, -1
  br i1 %i.dj, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !28
  %i.dm = icmp sgt i32 %i.dl, -1
  br i1 %i.dm, label %.thread, label %.thread125

.thread:                                          ; preds = %bb.aq, %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 1, ptr %i.dn, align 1, !tbaa !55
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 1, ptr %i.do, align 1, !tbaa !55
  %i.dp = trunc i32 %i.df to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.3, i64 2
  store i8 %i.dp, ptr %i.dq, align 2, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %.pre111 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %bb.as

bb.as:                                            ; preds = %.thread, %bb.ar
  %i.dr = phi i32 [ %i.di, %.thread ], [ %.pre111, %bb.ar ] ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, -1
  br i1 %i.ds, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dt = trunc i32 %i.dr to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.3, i64 3
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !28 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %bb.av, label %.thread125

bb.av:                                            ; preds = %bb.au
  %i.dy = trunc i32 %i.dw to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %.3, i64 4
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !58
  br label %.thread125

.thread125:                                       ; preds = %bb.a, %bb.am, %bb.aj, %bb.au, %bb.av, %bb.aq, %bb.q, %bb.r, %bb.s
  %.1 = phi i32 [ 0, %bb.q ], [ %i.cz, %bb.am ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.aq ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.aj ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ff_mpeg12_find_best_frame_rate(i64, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_cbs_insert_unit_content(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS17AVBitStreamFilter", !9, i64 0}
!12 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!13 = !{!"AVRational", !6, i64 0, !6, i64 4}
!14 = !{!"AVBSFContext", !10, i64 0, !11, i64 8, !9, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !13, i64 48}
!15 = !{!14, !9, i64 16}
!16 = !{!"p1 _ZTS10CBSBSFType", !9, i64 0}
!17 = !{!"p1 _ZTS21CodedBitstreamContext", !9, i64 0}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!21 = !{!"p1 _ZTS18CodedBitstreamUnit", !9, i64 0}
!22 = !{!"CodedBitstreamFragment", !18, i64 0, !19, i64 8, !19, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !21, i64 40}
!23 = !{!"CBSBSFContext", !10, i64 0, !16, i64 8, !17, i64 16, !17, i64 24, !22, i64 32}
!24 = !{!"MPEG2RawExtensionData", !5, i64 0, !5, i64 1, !5, i64 2}
!25 = !{!"MPEG2MetadataContext", !23, i64 0, !24, i64 80, !13, i64 344, !13, i64 352, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376}
!26 = !{!25, !6, i64 364}
!27 = !{!25, !6, i64 368}
!28 = !{!25, !6, i64 372}
!29 = distinct !{!29, !36}
!30 = !{!22, !6, i64 32}
!31 = !{!22, !21, i64 40}
!32 = !{!"CodedBitstreamUnit", !6, i64 0, !18, i64 8, !19, i64 16, !19, i64 24, !20, i64 32, !9, i64 40, !9, i64 48}
!33 = !{!32, !6, i64 0}
!34 = !{!32, !9, i64 40}
!35 = !{!24, !5, i64 1}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!25, !6, i64 376}
!38 = !{!25, !6, i64 344}
!39 = !{!25, !6, i64 348}
!40 = !{!6, !6, i64 0}
!41 = !{!"short", !5, i64 0}
!42 = !{!"MPEG2RawSequenceHeader", !5, i64 0, !41, i64 2, !41, i64 4, !5, i64 6, !5, i64 7, !6, i64 8, !41, i64 12, !5, i64 14, !5, i64 15, !5, i64 16, !5, i64 80, !5, i64 81}
!43 = !{!42, !5, i64 6}
!44 = !{!25, !6, i64 352}
!45 = !{!25, !6, i64 356}
!46 = !{!42, !5, i64 7}
!47 = !{!"MPEG2RawSequenceExtension", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !41, i64 6, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11}
!48 = !{!47, !5, i64 10}
!49 = !{!47, !5, i64 11}
!50 = !{!25, !6, i64 360}
!51 = !{!5, !5, i64 0}
!52 = !{!41, !41, i64 0}
!53 = !{!"MPEG2RawSequenceDisplayExtension", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !41, i64 6, !41, i64 8}
!54 = !{!53, !5, i64 0}
!55 = !{!53, !5, i64 1}
!56 = !{!53, !5, i64 2}
!57 = !{!53, !5, i64 3}
!58 = !{!53, !5, i64 4}
end_hunk_0
