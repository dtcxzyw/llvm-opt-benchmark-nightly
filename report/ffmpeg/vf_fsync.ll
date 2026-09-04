Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fsync?download=true
inline.NumInlined: 17
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"fsync\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Synchronize video frames from external source.\00", align 1
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@fsync_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @fsync_config_props }], align 16
@ff_vf_fsync = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @ff_video_default_filterpad, ptr @fsync_outputs, ptr @fsync_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @fsync_init, ptr @fsync_uninit, %union.anon.0 zeroinitializer, i32 80, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%ld %ld %d/%d\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unexpected format found (%i of 4).\0A\00", align 1
@fsync_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @fsync_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"set the file name to use for frame sync\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@fsync_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 24, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.7, i32 24, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.11 = private unnamed_addr constant [14 x i8] c"filename: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"End of file. To zero = %i\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Unexpected format found (%i / 4).\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"frame %ld \00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c">= %ld: DUP LAST with pts = %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"<  %ld: DROP\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @fsync_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.11, ptr noundef %i.d) #6
  %i.e = tail call noalias ptr @av_malloc(i64 noundef 257) #6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !24
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.i = tail call i32 @avio_open(ptr noundef nonnull %i.g, ptr noundef %i.h, i32 noundef 1) #6 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !26
  store i8 0, ptr %i.m, align 1, !tbaa !27
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.v = tail call i32 @avio_read(ptr noundef %i.u, ptr noundef %i.p, i32 noundef %i.t) #6 ; 4 uses
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = icmp slt i32 %i.v, %i.t
  %or.cond.i = and i1 %i.w, %i.x
  br i1 %or.cond.i, label %bb.d, label %buf_fill.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !27
  br label %buf_fill.exit

buf_fill.exit:                                    ; preds = %bb.c, %bb.d
  %. = tail call i32 @llvm.smin.i32(i32 %i.v, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %buf_fill.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ %., %buf_fill.exit ], [ %i.i, %bb.b ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @fsync_uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call i32 @avio_closep(ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_frame_free(ptr noundef nonnull %i.f) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 8 uses
  %i.k = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #6 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.g, i32 noundef %i.k) #6
  br label %buf_reload.exit.thread

.critedge:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 15 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 6 uses
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %.lr.ph.preheader.i, label %buf_skip_eol.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  %scevgep.i = getelementptr i8, ptr %i.m, i64 %i.s
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.u, %bb.c ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = load i8, ptr %.07.i, align 1, !tbaa !27
  %.not.i = icmp eq i8 %i.t, 10
  br i1 %.not.i, label %bb.c, label %buf_skip_eol.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.u, %i.o
  br i1 %exitcond.not.i, label %buf_skip_eol.exit, label %.lr.ph.i, !llvm.loop !33

buf_skip_eol.exit:                                ; preds = %.lr.ph.i, %bb.c, %.critedge
  %.0.lcssa.i = phi ptr [ %i.m, %.critedge ], [ %scevgep.i, %bb.c ], [ %.07.i, %.lr.ph.i ] ; 4 uses
  store ptr %.0.lcssa.i, ptr %i.l, align 8, !tbaa !25
  %i.v = icmp ult ptr %.0.lcssa.i, %i.o
  br i1 %i.v, label %.lr.ph.i99, label %.loopexit

.lr.ph.i99:                                       ; preds = %buf_skip_eol.exit, %bb.d
  %.012.i = phi ptr [ %i.x, %bb.d ], [ %.0.lcssa.i, %buf_skip_eol.exit ] ; 2 uses
  %.0811.i = phi i32 [ %i.y, %bb.d ], [ 0, %buf_skip_eol.exit ] ; 3 uses
  %i.w = load i8, ptr %.012.i, align 1, !tbaa !27
  switch i8 %i.w, label %bb.d [
    i8 0, label %buf_get_line_count.exit.thread122
    i8 10, label %buf_get_line_count.exit.thread122
  ]

bb.d:                                             ; preds = %.lr.ph.i99
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.y = add nuw nsw i32 %.0811.i, 1
  %exitcond.not.i100 = icmp eq ptr %i.x, %i.o
  br i1 %exitcond.not.i100, label %.loopexit, label %.lr.ph.i99, !llvm.loop !34

.loopexit:                                        ; preds = %bb.d, %buf_skip_eol.exit
  %i.z = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %.0.lcssa.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i102, label %._crit_edge.i

.lr.ph.i102:                                      ; preds = %.loopexit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %wide.trip.count.i = and i64 %i.ab, 2147483647  ; 2 uses
  %xtraiter = and i64 %i.ab, 1
  %i.af = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.i102.new

.lr.ph.i102.new:                                  ; preds = %.lr.ph.i102
  %unroll_iter = and i64 %i.ab, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i102.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i102.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i102.new ], [ %niter.next.1, %bb.e ]
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.l, align 8, !tbaa !25
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !27
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.l, align 8, !tbaa !25
  %i.an = load i8, ptr %i.al, align 1, !tbaa !27
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !27
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.e, !llvm.loop !35

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i102
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i102 ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod163 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.l, align 8, !tbaa !25
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !27
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.i.epil.init
  store i8 %i.at, ptr %i.av, align 1, !tbaa !27
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !26
  %.pre20.i = ptrtoint ptr %.pre.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.loopexit
  %.pre-phi.i = phi i64 [ %.pre20.i, %._crit_edge.loopexit.i ], [ %i.z, %.loopexit ]
  %.0.lcssa.i101 = phi i64 [ %wide.trip.count.i, %._crit_edge.loopexit.i ], [ 0, %.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.lcssa.i101 ; 3 uses
  store ptr %i.ay, ptr %i.l, align 8, !tbaa !25
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %.pre-phi.i, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !28
  %i.be = tail call i32 @avio_read(ptr noundef %i.bd, ptr noundef %i.ay, i32 noundef %i.bb) #6 ; 5 uses
  %i.bf = icmp sgt i32 %i.be, -1
  %i.bg = icmp slt i32 %i.be, %i.bb
  %or.cond.i.i = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i, label %buf_fill.exit.thread.i, label %buf_fill.exit.i

buf_fill.exit.thread.i:                           ; preds = %._crit_edge.i
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.bi = zext nneg i32 %i.be to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !27
  br label %bb.f

buf_fill.exit.i:                                  ; preds = %._crit_edge.i
  %i.bk = icmp slt i32 %i.be, 0
  br i1 %i.bk, label %buf_reload.exit.thread, label %bb.f

bb.f:                                             ; preds = %buf_fill.exit.i, %buf_fill.exit.thread.i
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !24 ; 3 uses
  store ptr %i.bl, ptr %i.l, align 8, !tbaa !25
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph.i106, label %buf_reload.exit.thread

.lr.ph.i106:                                      ; preds = %bb.f, %bb.g
  %.012.i107 = phi ptr [ %i.bp, %bb.g ], [ %i.bl, %bb.f ] ; 2 uses
  %.0811.i108 = phi i32 [ %i.bq, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.bo = load i8, ptr %.012.i107, align 1, !tbaa !27
  switch i8 %i.bo, label %bb.g [
    i8 0, label %buf_get_line_count.exit.thread122
    i8 10, label %buf_get_line_count.exit.thread122
  ]

bb.g:                                             ; preds = %.lr.ph.i106
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i107, i64 1 ; 2 uses
  %i.bq = add nuw nsw i32 %.0811.i108, 1
  %exitcond.not.i109 = icmp eq ptr %i.bp, %i.bm
  br i1 %exitcond.not.i109, label %buf_reload.exit.thread, label %.lr.ph.i106, !llvm.loop !34

buf_get_line_count.exit.thread122:                ; preds = %.lr.ph.i99, %.lr.ph.i99, %.lr.ph.i106, %.lr.ph.i106
  %.075 = phi i32 [ %.0811.i108, %.lr.ph.i106 ], [ %.0811.i108, %.lr.ph.i106 ], [ %.0811.i, %.lr.ph.i99 ], [ %.0811.i, %.lr.ph.i99 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  %i.bt = tail call i32 @avio_feof(ptr noundef %i.bs) #6
  %.not84 = icmp eq i32 %i.bt, 0
  br i1 %.not84, label %bb.k, label %bb.h

bb.h:                                             ; preds = %buf_get_line_count.exit.thread122
  %.val97 = load ptr, ptr %i.l, align 8, !tbaa !25 ; 3 uses
  %.val98 = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.bu = ptrtoint ptr %.val98 to i64
  %i.bv = ptrtoint ptr %.val97 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %.not8.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not8.i.i, label %bb.v, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.05.i.i = phi i64 [ %i.bz, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val97, i64 %.05.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !27
  %.not.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i, label %buf_get_zero.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bz = add nuw i64 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bz, %i.bw
  br i1 %exitcond.not.i.i, label %buf_get_zero.exit, label %.lr.ph.i.i, !llvm.loop !36

buf_get_zero.exit:                                ; preds = %.lr.ph.i.i, %bb.i
  %.0.lcssa.i.ph.i = phi i64 [ %i.bw, %bb.i ], [ %.05.i.i, %.lr.ph.i.i ]
  %i.ca = trunc i64 %.0.lcssa.i.ph.i to i32
  %i.cb = icmp slt i32 %i.ca, 3
  br i1 %i.cb, label %.lr.ph.i.i112, label %bb.k

.lr.ph.i.i112:                                    ; preds = %buf_get_zero.exit, %bb.j
  %.05.i.i113 = phi i64 [ %i.ce, %bb.j ], [ 0, %buf_get_zero.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val97, i64 %.05.i.i113
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !27
  %.not.i.i114 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i114, label %av_strnlen.exit.loopexit.i116, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i112
  %i.ce = add nuw i64 %.05.i.i113, 1              ; 2 uses
  %exitcond.not.i.i115 = icmp eq i64 %i.ce, %i.bw
  br i1 %exitcond.not.i.i115, label %av_strnlen.exit.loopexit.i116, label %.lr.ph.i.i112, !llvm.loop !36

av_strnlen.exit.loopexit.i116:                    ; preds = %bb.j, %.lr.ph.i.i112
  %.0.lcssa.i.ph.i117 = phi i64 [ %i.bw, %bb.j ], [ %.05.i.i113, %.lr.ph.i.i112 ]
  %i.cf = trunc i64 %.0.lcssa.i.ph.i117 to i32
  br label %bb.v

bb.k:                                             ; preds = %buf_get_zero.exit, %buf_get_line_count.exit.thread122
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42
  %.not85 = icmp eq ptr %i.ch, null
  br i1 %.not85, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.co = tail call i32 (ptr, ptr, ...) @av_sscanf(ptr noundef %i.cj, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn) #6 ; 2 uses
  %.not86 = icmp eq i32 %i.co, 4
  br i1 %.not86, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %i.co) #6
  tail call void @ff_avfilter_link_set_in_status(ptr noundef %i.j, i32 noundef -1094995529, i64 noundef -9223372036854775808) #6
  br label %buf_reload.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 136
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !47
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.14, i64 noundef %i.cr) #6
  %i.cs = load ptr, ptr %i.cg, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !47
  %i.cv = load i64, ptr %i.ck, align 8, !tbaa !48 ; 3 uses
  %.not87 = icmp slt i64 %i.cu, %i.cv
  br i1 %.not87, label %bb.t, label %bb.o
end_hunk_0
