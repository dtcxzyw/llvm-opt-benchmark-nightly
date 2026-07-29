inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Basic_Info = type { i32, i32, i32 }
%struct.KeyInfo = type { %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s, %struct.KeyInfo_s }
%struct.KeyInfo_s = type { i32, i32, i32 }
%struct.Hash_Key = type { [4 x i32], i32 }
%struct.Move = type { i32, i32, i32 }

@g_empty_squares = dso_local local_unnamed_addr global i32 0, align 4
@g_print = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MultiSource/Applications/obsequi/negamax.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid player.\0A\00", align 1
@g_board_size = external local_unnamed_addr global [2 x i32], align 4
@countbits16 = external local_unnamed_addr global [65536 x i32], align 16
@g_board = external local_unnamed_addr global [2 x [32 x i32]], align 16
@g_info_totals = external local_unnamed_addr global [2 x %struct.Basic_Info], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"No moves\00", align 1
@g_num_nodes = dso_local local_unnamed_addr global i64 0, align 8
@starting_depth = internal unnamed_addr global i32 0, align 4
@g_move_number = dso_local local_unnamed_addr global [128 x i32] zeroinitializer, align 16
@g_keyinfo = external local_unnamed_addr global [2 x [32 x [32 x %struct.KeyInfo]]], align 16
@g_norm_hashkey = dso_local local_unnamed_addr global %struct.Hash_Key zeroinitializer, align 4
@g_flipV_hashkey = dso_local local_unnamed_addr global %struct.Hash_Key zeroinitializer, align 4
@g_flipH_hashkey = dso_local local_unnamed_addr global %struct.Hash_Key zeroinitializer, align 4
@g_flipVH_hashkey = dso_local local_unnamed_addr global %struct.Hash_Key zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Move (%d,%d), value %d: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"alpha %d, beta %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Winner found: %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"The value is %d at a depth of %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Nodes: %u.\0A\00", align 1
@g_first_move = dso_local local_unnamed_addr global [2 x [32 x [32 x i32]]] zeroinitializer, align 16
@stat_nth_try = internal unnamed_addr global [40 x [10 x i32]] zeroinitializer, align 16
@stat_cutoffs = internal unnamed_addr global [40 x i32] zeroinitializer, align 16
@stat_nodes = internal unnamed_addr global [40 x i32] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [15 x i8] c"%d %d %d %d.\0A\0A\00", align 1
@cut1 = internal unnamed_addr global i32 0, align 4
@cut2 = internal unnamed_addr global i32 0, align 4
@cut3 = internal unnamed_addr global i32 0, align 4
@cut4 = internal unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"cutoffs depth %d: (%d) %d -\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" >%d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Should always have a move.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @search_for_move(i8 noundef signext %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [256 x %struct.Move], align 16      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = tail call ptr @__ctype_toupper_loc() #11
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = sext i8 %0 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %.not268 = icmp eq i32 %i.e, 86                 ; 3 uses
  br i1 %.not268, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.e, 72
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 1, ptr noundef nonnull @.str.1) #10
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0257 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ]     ; 6 uses
  %i.g = load i32, ptr @g_board_size, align 4, !tbaa !4 ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 2 uses
  %storemerge283 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = xor i32 %i.l, -1                         ; 2 uses
  %i.n = and i32 %i.m, 65535
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = lshr i32 %i.m, 16
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = add i32 %i.q, %storemerge283
  %i.w = add i32 %i.v, %i.u
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.next.1
  %i.y = load i32, ptr %i.x, align 8, !tbaa !4
  %i.z = xor i32 %i.y, -1                         ; 2 uses
  %i.aa = and i32 %i.z, 65535
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = lshr i32 %i.z, 16
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = add i32 %i.ad, %i.w
  %i.aj = add i32 %i.ai, %i.ah                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %storemerge283.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod370 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod370)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @g_board, i64 %indvars.iv.epil.init
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = xor i32 %i.am, -1                       ; 2 uses
  %i.ao = and i32 %i.an, 65535
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = lshr i32 %i.an, 16
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = add i32 %i.ar, %storemerge283.epil.init
  %i.ax = add i32 %i.aw, %i.av
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %storemerge.lcssa = phi i32 [ 0, %bb.d ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph.epil.preheader ]
  store i32 %storemerge.lcssa, ptr @g_empty_squares, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_cutoffs, i8 0, i64 160, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_nodes, i8 0, i64 160, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @stat_nth_try, i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 40), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 80), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 120), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 160), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 200), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 240), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 280), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 320), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 360), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 400), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 440), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 480), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 520), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 560), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 600), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 640), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 680), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 720), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 760), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 800), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 840), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 880), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 920), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 960), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1000), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1040), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1080), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1120), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1160), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1200), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1240), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1280), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1320), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1360), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1400), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1440), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1480), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1520), i8 0, i64 24, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1560), i8 0, i64 24, i1 false), !tbaa !4
  %i.ay = xor i32 %.0257, 1                       ; 2 uses
  %i.az = zext nneg i32 %.0257 to i64             ; 2 uses
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13
  %i.bc = zext nneg i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !15
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  store i32 -1, ptr %1, align 4, !tbaa !4
  store i32 -1, ptr %2, align 4, !tbaa !4
  store i64 0, ptr %3, align 8, !tbaa !16
  br label %.thread

bb.f:                                             ; preds = %._crit_edge
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !15
  %.not = icmp slt i32 %i.bh, %i.bj
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %1, align 4, !tbaa !4
  store i32 -1, ptr %2, align 4, !tbaa !4
  store i64 0, ptr %3, align 8, !tbaa !16
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.bk = call i32 @move_generator(ptr noundef nonnull %4, i32 noundef %.0257) #10 ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str, i32 noundef 160, i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @score_and_get_first(ptr noundef nonnull %4, i32 noundef %i.bk, i32 noundef %.0257, i64 4294967295, i32 undef) #10
  call void @sort_moves(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %i.bk) #10
  %i.bm = getelementptr inbounds nuw [49152 x i8], ptr @g_keyinfo, i64 %i.az ; 2 uses
  %scevgep336 = getelementptr i8, ptr %4, i64 -12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge311
  %.0244314 = phi i32 [ 1, %bb.j ], [ %i.lm, %._crit_edge311 ] ; 5 uses
  %.0249313 = phi i32 [ 0, %bb.j ], [ %.2251352354, %._crit_edge311 ] ; 3 uses
  %.0253312 = phi i32 [ %i.bk, %bb.j ], [ %i.kd, %._crit_edge311 ] ; 5 uses
  store i64 0, ptr @g_num_nodes, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_cutoffs, i8 0, i64 160, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_nodes, i8 0, i64 160, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @stat_nth_try, i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 40), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 80), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 120), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 160), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 200), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 240), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 280), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 320), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 360), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 400), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 440), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 480), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 520), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 560), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 600), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 640), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 680), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 720), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 760), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 800), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 840), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 880), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 920), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 960), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1000), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1040), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1080), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1120), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1160), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1200), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1240), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1280), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1320), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1360), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1400), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1440), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1480), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1520), i8 0, i64 24, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @stat_nth_try, i64 1560), i8 0, i64 24, i1 false), !tbaa !4
  store i32 %.0244314, ptr @starting_depth, align 4, !tbaa !4
  %i.bn = icmp sgt i32 %.0253312, 0
  br i1 %i.bn, label %.lr.ph288, label %._crit_edge289.thread

.lr.ph288:                                        ; preds = %bb.k
  %i.bo = add nsw i32 %.0244314, -1
  %wide.trip.count322 = zext nneg i32 %.0253312 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph288, %bb.m
  %indvars.iv319 = phi i64 [ 0, %.lr.ph288 ], [ %indvars.iv.next320, %bb.m ] ; 3 uses
  %.0255285 = phi i32 [ -5000, %.lr.ph288 ], [ %spec.select, %bb.m ] ; 3 uses
  call void (...) @set_position_values() #10
  %i.bp = trunc nuw nsw i64 %indvars.iv319 to i32 ; 2 uses
  store i32 %i.bp, ptr @g_move_number, align 16, !tbaa !4
  %i.bq = load i32, ptr @g_empty_squares, align 4, !tbaa !4
  %i.br = add nsw i32 %i.bq, -2
  store i32 %i.br, ptr @g_empty_squares, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv319 ; 7 uses
  %.sroa.017.0.copyload = load i64, ptr %i.bs, align 4
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %.sroa.218.0.copyload = load i32, ptr %.sroa.218.0..sroa_idx, align 4
  call void @toggle_move(i64 %.sroa.017.0.copyload, i32 %.sroa.218.0.copyload, i32 noundef %.0257) #10
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [1536 x i8], ptr %i.bm, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !15
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [48 x i8], ptr %i.bv, i64 %i.by ; 12 uses
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !18 ; 2 uses
  %i.cb = and i32 %i.ca, 31
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = sdiv i32 %i.ca, 32
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = xor i32 %i.cc, %i.cg
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20 ; 2 uses
  %i.ck = and i32 %i.cj, 31
  %i.cl = shl nuw i32 1, %i.ck
  %i.cm = sdiv i32 %i.cj, 32
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = xor i32 %i.cl, %i.cp
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !21
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.cu = xor i32 %i.ct, %i.cs
  store i32 %i.cu, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !24 ; 2 uses
  %i.cx = and i32 %i.cw, 31
  %i.cy = shl nuw i32 1, %i.cx
  %i.cz = sdiv i32 %i.cw, 32
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = xor i32 %i.cy, %i.dc
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.df = load i32, ptr %i.de, align 16, !tbaa !25 ; 2 uses
  %i.dg = and i32 %i.df, 31
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = sdiv i32 %i.df, 32
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = xor i32 %i.dh, %i.dl
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !26
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.dq = xor i32 %i.dp, %i.do
  store i32 %i.dq, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !27 ; 2 uses
  %i.dt = and i32 %i.ds, 31
  %i.du = shl nuw i32 1, %i.dt
  %i.dv = sdiv i32 %i.ds, 32
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = xor i32 %i.du, %i.dy
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28 ; 2 uses
  %i.ec = and i32 %i.eb, 31
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = sdiv i32 %i.eb, 32
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = xor i32 %i.ed, %i.eh
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ek = load i32, ptr %i.ej, align 16, !tbaa !29
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.em = xor i32 %i.el, %i.ek
  store i32 %i.em, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !30 ; 2 uses
  %i.ep = and i32 %i.eo, 31
  %i.eq = shl nuw i32 1, %i.ep
  %i.er = sdiv i32 %i.eo, 32
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = xor i32 %i.eq, %i.eu
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !31 ; 2 uses
  %i.ey = and i32 %i.ex, 31
  %i.ez = shl nuw i32 1, %i.ey
  %i.fa = sdiv i32 %i.ex, 32
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = xor i32 %i.ez, %i.fd
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !32
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.fi = xor i32 %i.fh, %i.fg
  store i32 %i.fi, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  call void (...) @check_hash_code_sanity() #10
  %i.fj = sub nsw i32 0, %.0255285
  %i.fk = call fastcc i32 @negamax(i32 noundef %i.bo, i32 noundef %i.ay, i32 noundef -5000, i32 noundef %i.fj) ; 3 uses
  %i.fl = sub nsw i32 0, %i.fk                    ; 5 uses
  %i.fm = load i32, ptr @g_empty_squares, align 4, !tbaa !4
  %i.fn = add nsw i32 %i.fm, 2
  store i32 %i.fn, ptr @g_empty_squares, align 4, !tbaa !4
  %.sroa.0.0.copyload = load i64, ptr %i.bs, align 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.218.0..sroa_idx, align 4
  call void @toggle_move(i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef %.0257) #10
  %i.fo = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [1536 x i8], ptr %i.bm, i64 %i.fp
  %i.fr = load i32, ptr %i.bw, align 4, !tbaa !15
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [48 x i8], ptr %i.fq, i64 %i.fs ; 12 uses
  %i.fu = load i32, ptr %i.ft, align 16, !tbaa !18 ; 2 uses
  %i.fv = and i32 %i.fu, 31
  %i.fw = shl nuw i32 1, %i.fv
  %i.fx = sdiv i32 %i.fu, 32
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.fy ; 2 uses
end_hunk_0
begin_hunk_1_@search_for_move:bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ft, i64 28
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !28 ; 2 uses
  %i.hw = and i32 %i.hv, 31
  %i.hx = shl nuw i32 1, %i.hw
  %i.hy = sdiv i32 %i.hv, 32
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = xor i32 %i.hx, %i.ib
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.ie = load i32, ptr %i.id, align 16, !tbaa !29
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ig = xor i32 %i.if, %i.ie
  store i32 %i.ig, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !30 ; 2 uses
  %i.ij = and i32 %i.ii, 31
  %i.ik = shl nuw i32 1, %i.ij
  %i.il = sdiv i32 %i.ii, 32
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.im ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %i.ip = xor i32 %i.ik, %i.io
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !31 ; 2 uses
  %i.is = and i32 %i.ir, 31
  %i.it = shl nuw i32 1, %i.is
  %i.iu = sdiv i32 %i.ir, 32
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %i.iy = xor i32 %i.it, %i.ix
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !32
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.jc = xor i32 %i.jb, %i.ja
  store i32 %i.jc, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  call void (...) @check_hash_code_sanity() #10
  %i.jd = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.je = load i32, ptr %i.bw, align 4, !tbaa !15
  %i.jf = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  %i.jg = call ptr @u64bit_to_string(i64 noundef %i.jf) #10
  %i.jh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.jd, i32 noundef %i.je, i32 noundef %i.fl, ptr noundef %i.jg) ; 0 uses
  %i.ji = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.0255285, i32 noundef 5000) ; 0 uses
  store i32 %i.fl, ptr %.sroa.218.0..sroa_idx, align 4, !tbaa !33
  %i.jj = icmp slt i32 %i.fk, -4999
  br i1 %i.jj, label %._crit_edge289, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select = call i32 @llvm.smax.i32(i32 %.0255285, i32 %i.fl)
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge289, label %bb.l, !llvm.loop !34

._crit_edge289:                                   ; preds = %bb.m, %bb.l
  %.1246.lcssa.ph = phi i32 [ %.0253312, %bb.m ], [ %i.bp, %bb.l ]
  %i.jk = icmp slt i32 %i.fk, -4999
  br i1 %i.jk, label %.split.loop.exit356, label %.lr.ph297.preheader

._crit_edge289.thread:                            ; preds = %bb.k
  %i.jl = icmp sgt i32 %.0249313, 4999
  br i1 %i.jl, label %.split.loop.exit, label %._crit_edge298

.lr.ph297.preheader:                              ; preds = %._crit_edge289
  %wide.trip.count327 = zext nneg i32 %.0253312 to i64
  br label %.lr.ph297

.split.loop.exit356:                              ; preds = %._crit_edge289
  %i.jm = zext nneg i32 %.1246.lcssa.ph to i64
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %._crit_edge289.thread, %.split.loop.exit356
  %.2251351 = phi i32 [ %i.fl, %.split.loop.exit356 ], [ %.0249313, %._crit_edge289.thread ] ; 2 uses
  %.1246.lcssa350 = phi i64 [ %i.jm, %.split.loop.exit356 ], [ 0, %._crit_edge289.thread ]
  %i.jn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.2251351) ; 0 uses
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %.1246.lcssa350 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %. = select i1 %.not268, ptr %2, ptr %1
  %.360 = select i1 %.not268, ptr %1, ptr %2
  store i32 %i.jp, ptr %., align 4, !tbaa !4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !15
  store i32 %i.jr, ptr %.360, align 4, !tbaa !4
  %i.js = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  store i64 %i.js, ptr %3, align 8, !tbaa !16
  call fastcc void @print_stats()
  br label %.thread

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %bb.q
  %indvars.iv324 = phi i64 [ 0, %.lr.ph297.preheader ], [ %indvars.iv.next325, %bb.q ] ; 3 uses
  %.0240296 = phi i32 [ 0, %.lr.ph297.preheader ], [ %.1241, %bb.q ] ; 5 uses
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv324 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !33
  %i.jw = icmp slt i32 %i.jv, -4999
  br i1 %i.jw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph297
  %i.jx = add nsw i32 %.0240296, 1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph297
  %i.jy = icmp sgt i32 %.0240296, 0
  br i1 %i.jy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jz = trunc nuw nsw i64 %indvars.iv324 to i32
  %i.ka = sub nsw i32 %i.jz, %.0240296
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [12 x i8], ptr %4, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kc, ptr noundef nonnull align 4 dereferenceable(12) %i.jt, i64 12, i1 false), !tbaa.struct !35
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %.1241 = phi i32 [ %i.jx, %bb.n ], [ %.0240296, %bb.p ], [ %.0240296, %bb.o ] ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge298, label %.lr.ph297, !llvm.loop !36

._crit_edge298:                                   ; preds = %bb.q, %._crit_edge289.thread
  %.2251352354 = phi i32 [ %.0249313, %._crit_edge289.thread ], [ %i.fl, %bb.q ] ; 3 uses
  %.0240.lcssa = phi i32 [ 0, %._crit_edge289.thread ], [ %.1241, %bb.q ]
  %i.kd = sub i32 %.0253312, %.0240.lcssa         ; 5 uses
  call fastcc void @print_stats()
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge298
  %i.kf = icmp sgt i32 %i.kd, 0
  br i1 %i.kf, label %.lr.ph310.preheader, label %._crit_edge311

.lr.ph310.preheader:                              ; preds = %bb.r
  %i.kg = zext nneg i32 %i.kd to i64
  %wide.trip.count344 = zext nneg i32 %i.kd to i64 ; 4 uses
  %i.kh = add nsw i64 %wide.trip.count344, -2
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %bb.t
  %indvars.iv341 = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next342, %bb.t ] ; 7 uses
  %indvars.iv329 = phi i64 [ 1, %.lr.ph310.preheader ], [ %indvars.iv.next330, %bb.t ] ; 5 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv341 ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 3 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next342, %i.kg
  %i.kk = trunc nuw nsw i64 %indvars.iv341 to i32 ; 3 uses
  br i1 %i.kj, label %.lr.ph304.preheader, label %._crit_edge305

.lr.ph304.preheader:                              ; preds = %.lr.ph310
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !33 ; 3 uses
  %i.kn = sub nsw i64 %indvars.iv341, %wide.trip.count344
  %i.ko = and i64 %i.kn, 1
  %lcmp.mod372.not.not = icmp eq i64 %i.ko, 0
  br i1 %lcmp.mod372.not.not, label %.lr.ph304.prol, label %.lr.ph304.prol.loopexit

.lr.ph304.prol:                                   ; preds = %.lr.ph304.preheader
  %i.kp = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv329
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !33 ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, %i.km
  %spec.select269.prol = call i32 @llvm.smax.i32(i32 %i.kr, i32 %i.km)
  %i.kt = trunc nuw nsw i64 %indvars.iv329 to i32
  %spec.select270.prol = select i1 %i.ks, i32 %i.kt, i32 %i.kk ; 2 uses
  %indvars.iv.next332.prol = add nuw nsw i64 %indvars.iv329, 1
  br label %.lr.ph304.prol.loopexit

.lr.ph304.prol.loopexit:                          ; preds = %.lr.ph304.prol, %.lr.ph304.preheader
  %spec.select270.lcssa.unr = phi i32 [ poison, %.lr.ph304.preheader ], [ %spec.select270.prol, %.lr.ph304.prol ]
  %indvars.iv331.unr = phi i64 [ %indvars.iv329, %.lr.ph304.preheader ], [ %indvars.iv.next332.prol, %.lr.ph304.prol ]
  %.0236301.unr = phi i32 [ %i.kk, %.lr.ph304.preheader ], [ %spec.select270.prol, %.lr.ph304.prol ]
  %.0238300.unr = phi i32 [ %i.km, %.lr.ph304.preheader ], [ %spec.select269.prol, %.lr.ph304.prol ]
  %i.ku = icmp eq i64 %i.kh, %indvars.iv341
  br i1 %i.ku, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304
  %indvars.iv331 = phi i64 [ %indvars.iv.next332.1, %.lr.ph304 ], [ %indvars.iv331.unr, %.lr.ph304.prol.loopexit ] ; 4 uses
  %.0236301 = phi i32 [ %spec.select270.1, %.lr.ph304 ], [ %.0236301.unr, %.lr.ph304.prol.loopexit ]
  %.0238300 = phi i32 [ %spec.select269.1, %.lr.ph304 ], [ %.0238300.unr, %.lr.ph304.prol.loopexit ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv331
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !33 ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, %.0238300
  %spec.select269 = call i32 @llvm.smax.i32(i32 %i.kx, i32 %.0238300) ; 2 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv331 to i32
  %spec.select270 = select i1 %i.ky, i32 %i.kz, i32 %.0236301
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next332
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !33 ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, %spec.select269
  %spec.select269.1 = call i32 @llvm.smax.i32(i32 %i.lc, i32 %spec.select269)
  %i.le = trunc nuw nsw i64 %indvars.iv.next332 to i32
  %spec.select270.1 = select i1 %i.ld, i32 %i.le, i32 %spec.select270 ; 2 uses
  %indvars.iv.next332.1 = add nuw nsw i64 %indvars.iv331, 2 ; 2 uses
  %exitcond335.not.1 = icmp eq i64 %indvars.iv.next332.1, %wide.trip.count344
  br i1 %exitcond335.not.1, label %._crit_edge305, label %.lr.ph304, !llvm.loop !37

._crit_edge305:                                   ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304, %.lr.ph310
  %.0236.lcssa = phi i32 [ %i.kk, %.lr.ph310 ], [ %spec.select270.lcssa.unr, %.lr.ph304.prol.loopexit ], [ %spec.select270.1, %.lr.ph304 ] ; 3 uses
  %i.lf = zext i32 %.0236.lcssa to i64
  %.not266 = icmp eq i64 %indvars.iv341, %i.lf
  br i1 %.not266, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge305
  %5 = sext i32 %.0236.lcssa to i64               ; 2 uses
  %i.lg = getelementptr inbounds [12 x i8], ptr %4, i64 %5
  %.sroa.0.0.copyload373 = load <3 x i32>, ptr %i.lg, align 4
  %6 = trunc i64 %indvars.iv341 to i32
  %7 = xor i32 %6, -1
  %8 = add i32 %.0236.lcssa, %7
  %9 = zext i32 %8 to i64                         ; 2 uses
  %10 = mul nuw nsw i64 %9, 12
  %11 = sub nsw i64 %5, %9
  %12 = mul nsw i64 %11, 12                       ; 2 uses
  %i.lh = getelementptr i8, ptr %4, i64 %12
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %12
  %indvars.iv.next339 = add nuw nsw i64 %10, 12
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lh, ptr noundef nonnull align 4 dereferenceable(1) %scevgep337, i64 %indvars.iv.next339, i1 false)
  store <3 x i32> %.sroa.0.0.copyload373, ptr %i.ki, align 4
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge305, %bb.s
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge311, label %.lr.ph310, !llvm.loop !38

._crit_edge311:                                   ; preds = %bb.t, %bb.r
  %i.li = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.2251352354, i32 noundef %.0244314) ; 0 uses
  %i.lj = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.lk) ; 0 uses
  %i.lm = add nuw nsw i32 %.0244314, 44
  %i.ln = icmp samesign ult i32 %.0244314, 6
  br i1 %i.ln, label %bb.k, label %bb.u, !llvm.loop !39

bb.u:                                             ; preds = %._crit_edge298, %._crit_edge311
  store i32 -1, ptr %1, align 4, !tbaa !4
  store i32 -1, ptr %2, align 4, !tbaa !4
  %i.lo = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  store i64 %i.lo, ptr %3, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %.split.loop.exit, %bb.u
  %.3 = phi i32 [ %.2251351, %.split.loop.exit ], [ %.2251352354, %bb.u ], [ -5000, %bb.g ], [ 5000, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_fatal_error_aux(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @move_generator(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @score_and_get_first(ptr noundef, i32 noundef, i32 noundef, i64, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @sort_moves(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @set_position_values(...) local_unnamed_addr #3

declare void @toggle_move(i64, i32, i32 noundef) local_unnamed_addr #3

declare void @check_hash_code_sanity(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @negamax(i32 noundef range(i32 -2147483648, 49) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 -2147483647, -2147483648) %2, i32 noundef range(i32 -2147483647, -2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca [256 x %struct.Move], align 16      ; 9 uses
  %5 = alloca %struct.Move, align 8               ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %6 = alloca %struct.Move, align 8               ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !4
  store i32 %3, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.d = xor i32 %1, 1                            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.e = load i64, ptr @g_num_nodes, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @g_num_nodes, align 8, !tbaa !16
  %i.g = load i32, ptr @starting_depth, align 4, !tbaa !4
  %i.h = sub nsw i32 %i.g, %0
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @stat_nodes, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !4
  %i.m = icmp slt i32 %0, 1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @does_next_player_win(i32 noundef %1, i32 noundef 0) #10 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @does_who_just_moved_win(i32 noundef %i.d, i32 noundef 0) #10 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  %i.r = sub nsw i32 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 -5000, i32 %i.r
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  %i.s = zext nneg i32 %1 to i64                  ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = zext nneg i32 %i.d to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = icmp sgt i32 %i.u, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr @cut1, align 4, !tbaa !4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr @cut1, align 4, !tbaa !4
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15
  %.not = icmp slt i32 %i.ac, %i.ae
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr @cut2, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr @cut2, align 4, !tbaa !4
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  store i32 -1, ptr %6, align 8, !tbaa !13
  %i.ah = call i32 @hashlookup(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %0, ptr noundef nonnull %6, i32 noundef %1) #10
  %.not196 = icmp eq i32 %i.ah, 0
  br i1 %.not196, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  store i32 -1, ptr %6, align 8, !tbaa !13
  %i.aj = call i32 @does_next_player_win(i32 noundef %1, i32 noundef 0) #10
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr @cut3, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr @cut3, align 4, !tbaa !4
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @does_who_just_moved_win(i32 noundef %i.d, i32 noundef 0) #10
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr @cut4, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr @cut4, align 4, !tbaa !4
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.ar = call i32 @move_generator_stage1(ptr noundef nonnull %4, i32 noundef %1) #10 ; 2 uses
  %.not197 = icmp ne i32 %i.ar, 0                 ; 3 uses
  br i1 %.not197, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 @move_generator_stage2(ptr noundef nonnull %4, i32 noundef 0, i32 noundef %1) #10 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str, i32 noundef 458, i32 noundef 1, ptr noundef nonnull @.str.13) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.199 = phi i32 [ 3, %bb.p ], [ 3, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.0183 = phi i32 [ 0, %bb.p ], [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 5 uses
  %.sroa.04.0.copyload = load i64, ptr %6, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8
  call void @score_and_get_first(ptr noundef nonnull %4, i32 noundef %.0183, i32 noundef %1, i64 %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 16 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !35
  %i.au = getelementptr inbounds nuw [49152 x i8], ptr @g_keyinfo, i64 %i.s ; 2 uses
  %i.av = add nsw i32 %0, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  %.0186 = phi i32 [ 1, %bb.q ], [ %.1187223, %.loopexit ] ; 3 uses
  %.0184 = phi i32 [ 0, %bb.q ], [ %.1185201, %.loopexit ] ; 5 uses
  %.0181 = phi i32 [ 0, %bb.q ], [ %.1182225, %.loopexit ]
  switch i32 %.0181, label %bb.u [
    i32 0, label %bb.t
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %.loopexit.jt1
  call void @sort_moves(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %.0183) #10
  %i.aw = icmp slt i32 %.0184, %.0183
  br i1 %i.aw, label %.lr.ph.preheader, label %..loopexit_crit_edge

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp slt i32 %.0184, %.0186
  br i1 %i.ax, label %.lr.ph.preheader, label %.loopexit.jt1

bb.u:                                             ; preds = %bb.r
  %i.ay = call i32 @move_generator_stage2(ptr noundef nonnull %4, i32 noundef %.0186, i32 noundef %1) #10 ; 2 uses
  %i.az = icmp slt i32 %.0184, %i.ay
  br i1 %i.az, label %.lr.ph.preheader, label %.loopexit.jt3

..loopexit_crit_edge:                             ; preds = %bb.s
  %.pre = load i32, ptr %i.c, align 4, !tbaa !4
  %.pre213 = load i32, ptr %i.b, align 4, !tbaa !4
  br label %.loopexit
end_hunk_1
begin_hunk_2_@negamax:bb.a
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = xor i32 %i.du, %i.dy
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.eb = load i32, ptr %i.ea, align 16, !tbaa !29
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ed = xor i32 %i.ec, %i.eb
  store i32 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !30 ; 2 uses
  %i.eg = and i32 %i.ef, 31
  %i.eh = shl nuw i32 1, %i.eg
  %i.ei = sdiv i32 %i.ef, 32
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = xor i32 %i.eh, %i.el
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !31 ; 2 uses
  %i.ep = and i32 %i.eo, 31
  %i.eq = shl nuw i32 1, %i.ep
  %i.er = sdiv i32 %i.eo, 32
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = xor i32 %i.eq, %i.eu
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !32
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.ez = xor i32 %i.ey, %i.ex
  store i32 %i.ez, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.fa = load i32, ptr %i.b, align 4, !tbaa !4
  %i.fb = sub nsw i32 0, %i.fa
  %i.fc = load i32, ptr %i.a, align 4, !tbaa !4
  %i.fd = sub nsw i32 0, %i.fc
  %i.fe = call fastcc i32 @negamax(i32 noundef %i.av, i32 noundef %i.d, i32 noundef %i.fb, i32 noundef %i.fd)
  %i.ff = sub nsw i32 0, %i.fe
  store i32 %i.ff, ptr %i.c, align 4, !tbaa !4
  %i.fg = load i32, ptr @g_empty_squares, align 4, !tbaa !4
  %i.fh = add nsw i32 %i.fg, 2
  store i32 %i.fh, ptr @g_empty_squares, align 4, !tbaa !4
  %.sroa.0.0.copyload = load i64, ptr %i.bj, align 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 4
  call void @toggle_move(i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef %1) #10
  %i.fi = load i32, ptr %i.bj, align 4, !tbaa !13
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [1536 x i8], ptr %i.au, i64 %i.fj
  %i.fl = load i32, ptr %i.bn, align 4, !tbaa !15
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [48 x i8], ptr %i.fk, i64 %i.fm ; 12 uses
  %i.fo = load i32, ptr %i.fn, align 16, !tbaa !18 ; 2 uses
  %i.fp = and i32 %i.fo, 31
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = sdiv i32 %i.fo, 32
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = xor i32 %i.fq, %i.fu
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20 ; 2 uses
  %i.fy = and i32 %i.fx, 31
  %i.fz = shl nuw i32 1, %i.fy
  %i.ga = sdiv i32 %i.fx, 32
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ge = xor i32 %i.fz, %i.gd
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !21
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.gi = xor i32 %i.gh, %i.gg
  store i32 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !24 ; 2 uses
  %i.gl = and i32 %i.gk, 31
  %i.gm = shl nuw i32 1, %i.gl
  %i.gn = sdiv i32 %i.gk, 32
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %i.gr = xor i32 %i.gm, %i.gq
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.gt = load i32, ptr %i.gs, align 16, !tbaa !25 ; 2 uses
  %i.gu = and i32 %i.gt, 31
  %i.gv = shl nuw i32 1, %i.gu
  %i.gw = sdiv i32 %i.gt, 32
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !4
  %i.ha = xor i32 %i.gv, %i.gz
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !26
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.he = xor i32 %i.hd, %i.hc
  store i32 %i.he, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !27 ; 2 uses
  %i.hh = and i32 %i.hg, 31
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = sdiv i32 %i.hg, 32
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.hk ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = xor i32 %i.hi, %i.hm
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fn, i64 28
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !28 ; 2 uses
  %i.hq = and i32 %i.hp, 31
  %i.hr = shl nuw i32 1, %i.hq
  %i.hs = sdiv i32 %i.hp, 32
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !4
  %i.hw = xor i32 %i.hr, %i.hv
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.hy = load i32, ptr %i.hx, align 16, !tbaa !29
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ia = xor i32 %i.hz, %i.hy
  store i32 %i.ia, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fn, i64 36
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !30 ; 2 uses
  %i.id = and i32 %i.ic, 31
  %i.ie = shl nuw i32 1, %i.id
  %i.if = sdiv i32 %i.ic, 32
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !4
  %i.ij = xor i32 %i.ie, %i.ii
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !31 ; 2 uses
  %i.im = and i32 %i.il, 31
  %i.in = shl nuw i32 1, %i.im
  %i.io = sdiv i32 %i.il, 32
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = xor i32 %i.in, %i.ir
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !4
  %i.it = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !32
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.iw = xor i32 %i.iv, %i.iu
  store i32 %i.iw, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.ix = load i32, ptr %i.c, align 4, !tbaa !4   ; 7 uses
  %i.iy = load i32, ptr %i.b, align 4, !tbaa !4   ; 4 uses
  %.not198 = icmp slt i32 %i.ix, %i.iy
  br i1 %.not198, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  store i32 %i.ix, ptr %i.a, align 4, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false), !tbaa.struct !35
  %i.iz = load i32, ptr @starting_depth, align 4, !tbaa !4
  %i.ja = sub nsw i32 %i.iz, %0
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr @stat_cutoffs, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !4
  %i.jf = icmp slt i64 %indvars.iv, 5
  %i.jg = getelementptr inbounds [40 x i8], ptr @stat_nth_try, i64 %i.jb ; 2 uses
  br i1 %i.jf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %indvars.iv ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = add nsw i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !4
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 20 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !4
  %i.jm = add nsw i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !4
  br label %.loopexit

bb.y:                                             ; preds = %.lr.ph
  %i.jn = load i32, ptr %i.a, align 4, !tbaa !4
  %i.jo = icmp sgt i32 %i.ix, %i.jn
  br i1 %i.jo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.ix, ptr %i.a, align 4, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false), !tbaa.struct !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.1187222, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !40

.loopexit:                                        ; preds = %bb.aa, %..loopexit_crit_edge, %bb.w, %bb.x
  %.1182225 = phi i32 [ %.199, %..loopexit_crit_edge ], [ %.1182224, %bb.x ], [ %.1182224, %bb.w ], [ %.1182224, %bb.aa ]
  %i.jp = phi i1 [ %.not197, %..loopexit_crit_edge ], [ %i.ba, %bb.x ], [ %i.ba, %bb.w ], [ %i.ba, %bb.aa ]
  %.1187223 = phi i32 [ %.0183, %..loopexit_crit_edge ], [ %.1187222, %bb.x ], [ %.1187222, %bb.w ], [ %.1187222, %bb.aa ]
  %i.jq = phi i32 [ %.pre213, %..loopexit_crit_edge ], [ %i.iy, %bb.x ], [ %i.iy, %bb.w ], [ %i.iy, %bb.aa ]
  %i.jr = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.ix, %bb.x ], [ %i.ix, %bb.w ], [ %i.ix, %bb.aa ]
  %.1185201 = phi i32 [ %.0184, %..loopexit_crit_edge ], [ %i.bg, %bb.x ], [ %i.bg, %bb.w ], [ %.1187222, %bb.aa ]
  %i.js = icmp slt i32 %i.jr, %i.jq
  %or.cond = and i1 %i.jp, %i.js
  br i1 %or.cond, label %bb.r, label %.loopexit.jt3, !llvm.loop !41

.loopexit.jt1:                                    ; preds = %bb.t
  %.pre.jt1 = load i32, ptr %i.c, align 4, !tbaa !4
  %.pre213.jt1 = load i32, ptr %i.b, align 4, !tbaa !4
  %i.jt = icmp slt i32 %.pre.jt1, %.pre213.jt1
  br i1 %i.jt, label %bb.s, label %.loopexit.jt3, !llvm.loop !41

.loopexit.jt3:                                    ; preds = %.loopexit.jt1, %.loopexit, %bb.u
  %i.ju = load i32, ptr %i.a, align 4, !tbaa !4
  %i.jv = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  %i.jw = and i64 %i.e, 4294967295
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = lshr i64 %i.jx, 5
  %i.jz = trunc i64 %i.jy to i32
  call void @hashstore(i32 noundef %i.ju, i32 noundef %2, i32 noundef %3, i32 noundef %i.jz, i32 noundef %0, ptr noundef nonnull byval(%struct.Move) align 8 %5, i32 noundef %1) #10
  %i.ka = load i32, ptr %i.a, align 4, !tbaa !4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %bb.b, %.loopexit.jt3, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.1 = phi i32 [ %i.ka, %.loopexit.jt3 ], [ 5000, %bb.e ], [ -5000, %bb.g ], [ %i.ai, %bb.i ], [ 5000, %bb.k ], [ -5000, %bb.m ], [ %spec.select, %bb.c ], [ 5000, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @u64bit_to_string(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_stats() unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @cut1, align 4, !tbaa !4
  %i.b = load i32, ptr @cut2, align 4, !tbaa !4
  %i.c = load i32, ptr @cut3, align 4, !tbaa !4
  %i.d = load i32, ptr @cut4, align 4, !tbaa !4
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stat_cutoffs, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @stat_nodes, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %.not13 = icmp eq i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %.not13, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.j, i32 noundef %i.i, i32 noundef %i.g) ; 0 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr @stat_nth_try, i64 %indvars.iv ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.v) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !4
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.ab) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !42

bb.d:                                             ; preds = %bb.c
  ret void
}

declare i32 @does_next_player_win(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @does_who_just_moved_win(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hashlookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @move_generator_stage1(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @move_generator_stage2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @hashstore(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.Move) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !5, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!15 = !{!14, !5, i64 4}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !5, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 12, !14, i64 24, !14, i64 36}
!20 = !{!19, !5, i64 4}
!21 = !{!19, !5, i64 8}
!22 = !{!23, !5, i64 16}
!23 = !{!"", !6, i64 0, !5, i64 16}
!24 = !{!19, !5, i64 12}
!25 = !{!19, !5, i64 16}
!26 = !{!19, !5, i64 20}
!27 = !{!19, !5, i64 24}
!28 = !{!19, !5, i64 28}
!29 = !{!19, !5, i64 32}
!30 = !{!19, !5, i64 36}
!31 = !{!19, !5, i64 40}
!32 = !{!19, !5, i64 44}
!33 = !{!14, !5, i64 8}
!34 = distinct !{!34, !12}
!35 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
end_hunk_2
