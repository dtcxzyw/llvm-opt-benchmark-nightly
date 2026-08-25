Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/emapCore?download=true
inline.NumInlined: 489
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Emap_PackEntry_t_ = type { i32, i32, i32, i32, [6 x i32], i64 }
%struct.Emap_Lib_t_ = type { ptr, i32, i32, ptr, i32, i32, ptr, float, float }
%struct.Emap_Tuples_t_ = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Emap_Best_t_ = type { ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, i32, double, float }

@.str = private unnamed_addr constant [59 x i8] c"Warning: %d AIG nodes did not receive a direct cut match.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ABC_EMAP_TIMED_MOG\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ABC_EMAP_DEBUG_MOG\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"ABC emap MOG timed trial initial: applied=%d area=%.2f best=%.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"ABC emap MOG exact trial initial: applied=%d area=%.2f delay=%.2f best=%.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ABC_EMAP_MFFC_EXACT\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"ABC emap MOG MFFC exact trial initial: applied=%d area=%.2f delay=%.2f best=%.2f\0A\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"ABC emap MOG pack trial initial: applied=%d area=%.2f delay=%.2f best=%.2f\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ABC_EMAP_SKIP_MOG_AREA\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"ABC emap MOG timed trial round %d: applied=%d area=%.2f best=%.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"ABC emap MOG exact trial round %d: applied=%d area=%.2f delay=%.2f best=%.2f\0A\00", align 1
@.str.11 = private unnamed_addr constant [83 x i8] c"ABC emap MOG MFFC exact trial round %d: applied=%d area=%.2f delay=%.2f best=%.2f\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"ABC emap MOG pack trial round %d: applied=%d area=%.2f delay=%.2f best=%.2f\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"Warning: %d AIG nodes did not receive an area-recovery match.\0A\00", align 1
@.str.14 = private unnamed_addr constant [113 x i8] c"ABC emap MOG area: tuples=%d calls=%d candidates=%d accepts=%d reject_twin=%d reject_required=%d reject_flow=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [144 x i8] c"ABC emap MOG local exact: calls=%d candidates=%d accepts=%d reject_unused=%d reject_twin=%d reject_shared=%d reject_required=%d reject_area=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"ABC emap MOG local exact by arity: cand2=%d cand3=%d accept2=%d accept3=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [169 x i8] c"ABC-native emap mapped %d AIG nodes using %d GENLIB truth variants, %d MOG variants, %d exact-cover changes, and packed %d MOG pairs in %s mode with delay target %.2f.\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"ABC_EMAP_MFFC_TUPLES\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"ABC emap MOG tuple setup: tuples=%d groups=%d mode=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"mffc\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"ABC_EMAP_LOCAL_MOG_EXACT\00", align 1
@.str.26 = private unnamed_addr constant [84 x i8] c"ABC emap MOG MFFC-exact trial: entries=%d tried=%d applied=%d area=%.2f delay=%.2f\0A\00", align 1
@.str.27 = private unnamed_addr constant [109 x i8] c"ABC emap MOG req sample %d: roots=(%d,%d) phases=(%d,%d) arr=(%.2f,%.2f) req=(%.2f,%.2f) invreq=(%.2f,%.2f)\0A\00", align 1
@.str.28 = private unnamed_addr constant [112 x i8] c"ABC emap MOG invreq sample %d: roots=(%d,%d) phases=(%d,%d) arr=(%.2f,%.2f) req=(%.2f,%.2f) invreq=(%.2f,%.2f)\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"emap\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Cannot find inverter gate in the current GENLIB library.\00", align 1

; Function Attrs: nounwind uwtable
define ptr @Emap_ManMapAigStructural(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Emap_PackEntry_t_, align 8  ; 5 uses
  %6 = alloca %struct.Emap_PackEntry_t_, align 8  ; 5 uses
  %7 = alloca %struct.Emap_PackEntry_t_, align 8  ; 5 uses
  %i.a = alloca [6 x i32], align 16               ; 13 uses
  %i.b = alloca [6 x i32], align 16               ; 5 uses
  %i.c = alloca [6 x i32], align 16               ; 7 uses
  %8 = alloca %struct.Emap_Lib_t_, align 8        ; 41 uses
  %9 = alloca %struct.Emap_Tuples_t_, align 8     ; 41 uses
  %i.d = alloca float, align 4                    ; 27 uses
  %i.e = alloca float, align 4                    ; 8 uses
  %i.f = alloca double, align 8                   ; 13 uses
  %i.g = alloca double, align 8                   ; 8 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %i.i = alloca float, align 4                    ; 6 uses
  %i.j = alloca double, align 8                   ; 6 uses
  %i.k = alloca float, align 4                    ; 6 uses
  %i.l = alloca float, align 4                    ; 6 uses
  %i.m = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 32, i1 false)
  %i.n = tail call ptr @Mio_LibraryReadInv(ptr noundef %1) #19 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !8
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %Emap_LibPrepare.exit.thread, label %bb.b

Emap_LibPrepare.exit.thread:                      ; preds = %bb.a
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.kj

bb.b:                                             ; preds = %bb.a
  %i.q = tail call double @Mio_GateReadArea(ptr noundef nonnull %i.n) #19
  %i.r = fptrunc double %i.q to float
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store float %i.r, ptr %i.s, align 8, !tbaa !15
  %i.t = tail call i32 @Mio_GateReadPinNum(ptr noundef nonnull %i.n) #19
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call float @Mio_GateReadPinDelay(ptr noundef nonnull %i.n, i32 noundef 0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi float [ %i.u, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 7 uses
  store float %i.v, ptr %i.w, align 4, !tbaa !16
  %i.x = tail call ptr @Mio_LibraryReadGates(ptr noundef %1) #19 ; 2 uses
  %.not3538.i = icmp eq ptr %i.x, null
  br i1 %.not3538.i, label %.loopexit927, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.j
  %.039.i = phi ptr [ %i.ad, %bb.j ], [ %i.x, %bb.d ] ; 6 uses
  %i.y = tail call i32 @Mio_GateReadPinNum(ptr noundef nonnull %.039.i) #19 ; 4 uses
  %i.z = tail call ptr @Mio_GateReadTwin(ptr noundef nonnull %.039.i) #19 ; 4 uses
  %i.aa = add i32 %i.y, -7
  %or.cond.i = icmp ult i32 %i.aa, -5
  br i1 %or.cond.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %.not36.i = icmp eq ptr %i.z, null
  br i1 %.not36.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ugt ptr %.039.i, %i.z
  br i1 %i.ab, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @Mio_GateReadPinNum(ptr noundef nonnull %i.z) #19
  %.not37.i = icmp eq i32 %i.ac, %i.y
  br i1 %.not37.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call fastcc void @Emap_LibMogPermute_rec(ptr noundef nonnull %8, ptr noundef %.039.i, ptr noundef %i.z, i32 noundef %i.y, i32 noundef 0, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call fastcc void @Emap_LibPermute_rec(ptr noundef nonnull %8, ptr noundef %.039.i, i32 noundef %i.y, i32 noundef 0, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph.i
  %i.ad = tail call ptr @Mio_GateReadNext(ptr noundef nonnull %.039.i) #19 ; 2 uses
  %.not35.i = icmp eq ptr %i.ad, null
  br i1 %.not35.i, label %.loopexit927.loopexit, label %.lr.ph.i, !llvm.loop !17

.loopexit927.loopexit:                            ; preds = %bb.j
  %.pre = load ptr, ptr %8, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre1033 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !20
  %i.ae = sext i32 %.pre1033 to i64
  br label %.loopexit927

.loopexit927:                                     ; preds = %.loopexit927.loopexit, %bb.d
  %i.af = phi i64 [ %i.ae, %.loopexit927.loopexit ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %.pre, %.loopexit927.loopexit ], [ null, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  tail call void @qsort(ptr noundef %i.ag, i64 noundef %i.af, i64 noundef 104, ptr noundef nonnull @Emap_CellCompare) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ai = getelementptr i8, ptr %0, i64 32        ; 36 uses
  %.val477 = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.aj = getelementptr i8, ptr %.val477, i64 4
  %.val477.val = load i32, ptr %i.aj, align 4, !tbaa !37
  %i.ak = sext i32 %.val477.val to i64
  %i.al = tail call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 5320) #20 ; 114 uses
  %i.am = tail call ptr @Abc_AigConst1(ptr noundef %0) #19
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %.val495 = load i32, ptr %i.an, align 8, !tbaa !40
  %i.ao = zext i32 %.val495 to i64
  %i.ap = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %i.ao ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !43 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit927
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %wide.trip.count69.i.i = zext nneg i32 %i.aq to i64
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv66.i.i = phi i64 [ %indvars.iv.next67.i.i, %bb.l ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %indvars.iv66.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !45
  %.not.i.us.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.us.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !48
  %.not13.i.us.i.i = icmp eq i64 %i.aw, 1
  br i1 %.not13.i.us.i.i, label %Emap_NodeAddConstCut.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.us.i.i
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %wide.trip.count69.i.i
  br i1 %exitcond70.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !49

._crit_edge.i.i:                                  ; preds = %bb.l
  %i.ax = icmp eq i32 %i.aq, 128
  br i1 %i.ax, label %.preheader.i.i, label %._crit_edge.thread.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.i
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i.1, %.preheader.i.i ], [ 0, %._crit_edge.i.i ] ; 4 uses
  %.058.i.i = phi i32 [ %spec.select46.i.i.1, %.preheader.i.i ], [ -1, %._crit_edge.i.i ] ; 2 uses
  %.03757.i.i = phi i32 [ %spec.select.i.i.1, %.preheader.i.i ], [ -1, %._crit_edge.i.i ]
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %indvars.iv71.i.i
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !45 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, %.058.i.i
  %i.bb = trunc nuw nsw i64 %indvars.iv71.i.i to i32
  %spec.select.i.i = select i1 %i.ba, i32 %i.bb, i32 %.03757.i.i
  %spec.select46.i.i = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %.058.i.i) ; 2 uses
  %indvars.iv.next72.i.i = or disjoint i64 %indvars.iv71.i.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %indvars.iv.next72.i.i
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !45 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %spec.select46.i.i
  %i.bf = trunc nuw nsw i64 %indvars.iv.next72.i.i to i32
  %spec.select.i.i.1 = select i1 %i.be, i32 %i.bf, i32 %spec.select.i.i ; 2 uses
  %spec.select46.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 %spec.select46.i.i) ; 2 uses
  %indvars.iv.next72.i.i.1 = add nuw nsw i64 %indvars.iv71.i.i, 2 ; 2 uses
  %exitcond75.not.i.i.1 = icmp eq i64 %indvars.iv.next72.i.i.1, 128
  br i1 %exitcond75.not.i.i.1, label %bb.m, label %.preheader.i.i, !llvm.loop !50

bb.m:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp sgt i32 %spec.select46.i.i.1, 0
  br i1 %.not.i.i, label %bb.n, label %Emap_NodeAddConstCut.exit

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.loopexit927
  %i.bg = add nsw i32 %i.aq, 1
  store i32 %i.bg, ptr %i.ap, align 8, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i, %bb.m
  %.sink87.i.i = phi i32 [ %i.aq, %._crit_edge.thread.i.i ], [ %spec.select.i.i.1, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bi = sext i32 %.sink87.i.i to i64
  %i.bj = getelementptr inbounds [40 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 1, ptr %i.bk, align 8, !tbaa !48
  br label %Emap_NodeAddConstCut.exit

Emap_NodeAddConstCut.exit:                        ; preds = %bb.k, %bb.m, %bb.n
  %i.bl = tail call ptr @Abc_AigConst1(ptr noundef %0) #19
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %.val494 = load i32, ptr %i.bm, align 8, !tbaa !40
  %i.bn = zext i32 %.val494 to i64
  %i.bo = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 5208
  store double 0.000000e+00, ptr %i.bp, align 8, !tbaa !51
  %i.bq = tail call ptr @Abc_AigConst1(ptr noundef %0) #19
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %.val493 = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bs = zext i32 %.val493 to i64
  %i.bt = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 5216
  store float 0.000000e+00, ptr %i.bu, align 8, !tbaa !53
end_hunk_0
begin_hunk_1_@Emap_ManMapAigStructural:bb.a
  %i.pz = zext nneg i32 %.val290.i to i64
  %i.qa = shl nuw nsw i64 %i.pz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.px, i8 -1, i64 %i.qa, i1 false), !tbaa !58
  br label %._crit_edge276.i

._crit_edge276.i:                                 ; preds = %.lr.ph275.preheader.i, %._crit_edge.i550
  br i1 %.not.i549, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge276.i
  %i.qb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  store i32 0, ptr %i.qc, align 4, !tbaa !85
  store i32 100, ptr %i.qb, align 8, !tbaa !86
  %i.qd = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !87
  %i.qf = tail call noalias ptr @calloc(i64 noundef %.pre-phi.i, i64 noundef 4) #20
  %i.qg = tail call noalias ptr @calloc(i64 noundef %.pre-phi.i, i64 noundef 1) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge276.i
  %.0196.i = phi ptr [ %i.qb, %bb.bn ], [ null, %._crit_edge276.i ] ; 6 uses
  %.0195.i = phi ptr [ %i.qf, %bb.bn ], [ null, %._crit_edge276.i ] ; 5 uses
  %.0194.i = phi ptr [ %i.qg, %bb.bn ], [ null, %._crit_edge276.i ] ; 13 uses
  br i1 %i.py, label %.lr.ph294.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.bo
  tail call void @qsort(ptr noundef %i.pw, i64 noundef 0, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  br label %._crit_edge323.i

.lr.ph294.i:                                      ; preds = %bb.bo
  %i.qh = getelementptr i8, ptr %.val231.i, i64 8
  %.val234.val.i = load ptr, ptr %i.qh, align 8, !tbaa !56
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit267.i, %.lr.ph294.i
  %.val370.i = phi i32 [ %.val290.i, %.lr.ph294.i ], [ %.val.i, %.loopexit267.i ] ; 2 uses
  %indvars.iv351.i = phi i64 [ 0, %.lr.ph294.i ], [ %indvars.iv.next352.i, %.loopexit267.i ] ; 2 uses
  %.0182292.i = phi i32 [ 0, %.lr.ph294.i ], [ %.4186.i, %.loopexit267.i ] ; 4 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.val234.val.i, i64 %indvars.iv351.i
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !57 ; 3 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %.loopexit267.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ql = getelementptr i8, ptr %i.qj, i64 28
  %.val235.i = load i32, ptr %i.ql, align 4, !tbaa !60
  %.not262.i = icmp eq i32 %.val235.i, 2
  br i1 %.not262.i, label %.preheader266.i, label %.loopexit267.i

.preheader266.i:                                  ; preds = %bb.bq
  %i.qm = getelementptr i8, ptr %i.qj, i64 16     ; 4 uses
  %.val233.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.qn = zext i32 %.val233.i to i64
  %i.qo = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %i.qn ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !43 ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, 0
  br i1 %i.qq, label %.lr.ph284.split.us.preheader.i, label %._crit_edge285.1.i

.lr.ph284.split.us.preheader.i:                   ; preds = %.preheader266.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %wide.trip.count349.i = zext nneg i32 %i.qp to i64
  br label %.lr.ph284.split.us.i

.lr.ph284.split.us.i:                             ; preds = %bb.br, %.lr.ph284.split.us.preheader.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph284.split.us.preheader.i ], [ %indvars.iv.next347.i, %bb.br ] ; 3 uses
  %.2184281.us.i = phi i32 [ %.0182292.i, %.lr.ph284.split.us.preheader.i ], [ %.3185.us.i, %bb.br ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [40 x i8], ptr %i.qr, i64 %indvars.iv346.i ; 3 uses
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !45 ; 3 uses
  %i.qu = add i32 %i.qt, -4
  %or.cond.us.i = icmp ult i32 %i.qu, -2
  br i1 %or.cond.us.i, label %bb.br, label %._crit_edge280.us.i

._crit_edge280.us.i:                              ; preds = %.lr.ph284.split.us.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !48
  %.val232.us.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.qx = sext i32 %.2184281.us.i to i64
  %i.qy = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.qx ; 6 uses
  store i32 %.val232.us.i, ptr %i.qy, align 8, !tbaa !88
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  store i32 0, ptr %i.qz, align 4, !tbaa !90
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rb = trunc nuw nsw i64 %indvars.iv346.i to i32
  store i32 %i.rb, ptr %i.ra, align 8, !tbaa !91
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  store i32 %i.qt, ptr %i.rc, align 4, !tbaa !92
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  store i64 %i.qw, ptr %i.rd, align 8, !tbaa !93
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rg = shl nuw nsw i32 %i.qt, 2
  %i.rh = zext nneg i32 %i.rg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rf, ptr nonnull readonly align 4 %i.re, i64 %i.rh, i1 false), !tbaa !58
  %i.ri = add nsw i32 %.2184281.us.i, 1
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge280.us.i, %.lr.ph284.split.us.i
  %.3185.us.i = phi i32 [ %i.ri, %._crit_edge280.us.i ], [ %.2184281.us.i, %.lr.ph284.split.us.i ] ; 3 uses
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  br i1 %exitcond350.not.i, label %._crit_edge285.i, label %.lr.ph284.split.us.i, !llvm.loop !94

._crit_edge285.i:                                 ; preds = %bb.br
  %.val233.1.pre.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %.phi.trans.insert.i566 = zext i32 %.val233.1.pre.i to i64
  %.phi.trans.insert369.i = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %.phi.trans.insert.i566 ; 2 uses
  %.pre.i567 = load i32, ptr %.phi.trans.insert369.i, align 8, !tbaa !43 ; 2 uses
  %i.rj = icmp sgt i32 %.pre.i567, 0
  br i1 %i.rj, label %.lr.ph284.split.preheader.1.i, label %._crit_edge285.1.i

.lr.ph284.split.preheader.1.i:                    ; preds = %._crit_edge285.i
  %i.rk = getelementptr inbounds nuw i8, ptr %.phi.trans.insert369.i, i64 8
  %wide.trip.count.1.i = zext nneg i32 %.pre.i567 to i64
  br label %.lr.ph284.split.1.i

.lr.ph284.split.1.i:                              ; preds = %bb.bs, %.lr.ph284.split.preheader.1.i
  %indvars.iv340.1.i = phi i64 [ 0, %.lr.ph284.split.preheader.1.i ], [ %indvars.iv.next341.1.i, %bb.bs ] ; 3 uses
  %.2184281.1.i = phi i32 [ %.3185.us.i, %.lr.ph284.split.preheader.1.i ], [ %.3185.1.i, %bb.bs ] ; 3 uses
  %i.rl = getelementptr inbounds nuw [40 x i8], ptr %i.rk, i64 %indvars.iv340.1.i ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !45 ; 4 uses
  %i.rn = add i32 %i.rm, -4
  %or.cond.1.i = icmp ult i32 %i.rn, -2
  br i1 %or.cond.1.i, label %bb.bs, label %._crit_edge280.1.i

._crit_edge280.1.i:                               ; preds = %.lr.ph284.split.1.i
  %i.ro = shl nuw nsw i32 1, %i.rm
  %i.rp = zext nneg i32 %i.ro to i64
  %notmask.i.1.i = shl nsw i64 -1, %i.rp
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !48
  %i.rs = xor i64 %notmask.i.1.i, %i.rr
  %i.rt = xor i64 %i.rs, -1
  %.val232.1.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.ru = sext i32 %.2184281.1.i to i64
  %i.rv = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.ru ; 6 uses
  store i32 %.val232.1.i, ptr %i.rv, align 8, !tbaa !88
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  store i32 1, ptr %i.rw, align 4, !tbaa !90
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.ry = trunc nuw nsw i64 %indvars.iv340.1.i to i32
  store i32 %i.ry, ptr %i.rx, align 8, !tbaa !91
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 %i.rm, ptr %i.rz, align 4, !tbaa !92
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  store i64 %i.rt, ptr %i.sa, align 8, !tbaa !93
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.sd = shl nuw nsw i32 %i.rm, 2
  %i.se = zext nneg i32 %i.sd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sc, ptr nonnull readonly align 4 %i.sb, i64 %i.se, i1 false), !tbaa !58
  %i.sf = add nsw i32 %.2184281.1.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge280.1.i, %.lr.ph284.split.1.i
  %.3185.1.i = phi i32 [ %i.sf, %._crit_edge280.1.i ], [ %.2184281.1.i, %.lr.ph284.split.1.i ] ; 2 uses
  %indvars.iv.next341.1.i = add nuw nsw i64 %indvars.iv340.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next341.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %._crit_edge285.1.i, label %.lr.ph284.split.1.i, !llvm.loop !94

._crit_edge285.1.i:                               ; preds = %bb.bs, %._crit_edge285.i, %.preheader266.i
  %.2184.lcssa.1.i = phi i32 [ %.3185.us.i, %._crit_edge285.i ], [ %.0182292.i, %.preheader266.i ], [ %.3185.1.i, %bb.bs ]
  %.val.pre.i = load i32, ptr %i.ph, align 4, !tbaa !37
  br label %.loopexit267.i

.loopexit267.i:                                   ; preds = %._crit_edge285.1.i, %bb.bq, %bb.bp
  %.val.i = phi i32 [ %.val370.i, %bb.bp ], [ %.val370.i, %bb.bq ], [ %.val.pre.i, %._crit_edge285.1.i ] ; 2 uses
  %.4186.i = phi i32 [ %.0182292.i, %bb.bp ], [ %.0182292.i, %bb.bq ], [ %.2184.lcssa.1.i, %._crit_edge285.1.i ] ; 8 uses
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %i.sg = sext i32 %.val.i to i64
  %i.sh = icmp slt i64 %indvars.iv.next352.i, %i.sg
  br i1 %i.sh, label %bb.bp, label %.critedge.i, !llvm.loop !95

.critedge.i:                                      ; preds = %.loopexit267.i
  %i.si = sext i32 %.4186.i to i64
  tail call void @qsort(ptr noundef %i.pw, i64 noundef %i.si, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.sj = icmp sgt i32 %.4186.i, 0
  br i1 %i.sj, label %.lr.ph322.i, label %._crit_edge323.i

.lr.ph322.i:                                      ; preds = %.critedge.i
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.sl = getelementptr i8, ptr %.0196.i, i64 4   ; 3 uses
  %i.sm = getelementptr i8, ptr %.0196.i, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.st = icmp sgt i32 %i.pf, 0
  br i1 %i.st, label %.lr.ph322.split.preheader.i, label %._crit_edge323.i

.lr.ph322.split.preheader.i:                      ; preds = %.lr.ph322.i
  %i.su = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.3193319.i = add nsw i32 %.4186.i, -1
  %i.sv = zext nneg i32 %.3193319.i to i64
  %i.sw = load ptr, ptr %i.su, align 8
  br label %.lr.ph322.split.i

.loopexit265.i:                                   ; preds = %.loopexit.i, %.lr.ph322.split.i
  %i.sx = phi i32 [ %i.ta, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %i.sy = phi i32 [ %i.tb, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %.1181.lcssa.i = phi i32 [ %.0180320.i, %.lr.ph322.split.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next366.i = add nsw i64 %indvars.iv365.i, -1
  %i.sz = icmp sgt i64 %indvars.iv365.i, 0
  br i1 %i.sz, label %.lr.ph322.split.i, label %._crit_edge323.i, !llvm.loop !96

.lr.ph322.split.i:                                ; preds = %.loopexit265.i, %.lr.ph322.split.preheader.i
  %i.ta = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.sx, %.loopexit265.i ] ; 2 uses
  %i.tb = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.sy, %.loopexit265.i ] ; 2 uses
  %indvars.iv365.i = phi i64 [ %i.sv, %.lr.ph322.split.preheader.i ], [ %indvars.iv.next366.i, %.loopexit265.i ] ; 3 uses
  %.0180320.i = phi i32 [ 0, %.lr.ph322.split.preheader.i ], [ %.1181.lcssa.i, %.loopexit265.i ] ; 2 uses
  %i.tc = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %indvars.iv365.i ; 6 uses
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !88
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [5320 x i8], ptr %i.al, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !91
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [40 x i8], ptr %i.tg, i64 %i.tj ; 5 uses
  %i.tl = icmp sgt i32 %i.tb, 0
  br i1 %i.tl, label %.lr.ph317.i, label %.loopexit265.i

.lr.ph317.i:                                      ; preds = %.lr.ph322.split.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 4 ; 13 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph317.i
  %i.tp = phi i32 [ %i.ta, %.lr.ph317.i ], [ %i.adv, %.loopexit.i ]
  %indvars.iv362.i = phi i64 [ 0, %.lr.ph317.i ], [ %indvars.iv.next363.i, %.loopexit.i ] ; 3 uses
  %.1181315.i = phi i32 [ %.0180320.i, %.lr.ph317.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %i.tq = getelementptr inbounds nuw [144 x i8], ptr %i.sw, i64 %indvars.iv362.i ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !97
  %i.tt = load i32, ptr %i.tk, align 8, !tbaa !45
  %.not211.i = icmp eq i32 %i.ts, %i.tt
  br i1 %.not211.i, label %.preheader264.i, label %.loopexit.i

.preheader264.i:                                  ; preds = %bb.bt
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 80 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 72 ; 2 uses
  %i.tw = trunc nuw nsw i64 %indvars.iv362.i to i32
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge2.i, %.preheader264.i
  %.not212.i = phi i1 [ true, %.preheader264.i ], [ false, %.critedge2.i ] ; 3 uses
  %.0177312.i = phi i32 [ 0, %.preheader264.i ], [ 1, %.critedge2.i ]
  %.2311.i = phi i32 [ %.1181315.i, %.preheader264.i ], [ %.7.i, %.critedge2.i ] ; 4 uses
  %.in.i = select i1 %.not212.i, ptr %i.tv, ptr %i.tu
  %i.tx = load i64, ptr %.in.i, align 8, !tbaa !99
  %.in213.i = select i1 %.not212.i, ptr %i.tu, ptr %i.tv
  %i.ty = load i64, ptr %.in213.i, align 8, !tbaa !99 ; 4 uses
  %i.tz = load i64, ptr %i.tm, align 8, !tbaa !93
  %.not214.i = icmp eq i64 %i.tx, %i.tz
  br i1 %.not214.i, label %bb.bv, label %.critedge2.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.ua = load i32, ptr %i.tk, align 8, !tbaa !45 ; 5 uses
  %i.ub = icmp slt i32 %i.ua, 1                   ; 3 uses
  %.pre377.i = zext nneg i32 %i.ua to i64         ; 3 uses
  br i1 %i.ub, label %.preheader.i.i552.preheader, label %.lr.ph.i.i551

.lr.ph.i.i551:                                    ; preds = %bb.bv
  %i.uc = shl nuw nsw i64 %.pre377.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sk, ptr nonnull readonly align 4 %i.tn, i64 %i.uc, i1 false), !tbaa !58
  br label %.preheader.i.i552.preheader

.preheader.i.i552.preheader:                      ; preds = %.lr.ph.i.i551, %bb.bv
  br label %.preheader.i.i552

.preheader.i.i552:                                ; preds = %.preheader.i.i552.preheader, %Emap_PackEntryCompare.exit.i.i
  %.02249.i.i = phi i32 [ %.1.i.i, %Emap_PackEntryCompare.exit.i.i ], [ %.4186.i, %.preheader.i.i552.preheader ] ; 2 uses
  %.02348.i.i = phi i32 [ %.124.i.i, %Emap_PackEntryCompare.exit.i.i ], [ 0, %.preheader.i.i552.preheader ] ; 2 uses
  %i.ud = add nuw nsw i32 %.02348.i.i, %.02249.i.i
  %i.ue = lshr i32 %i.ud, 1                       ; 3 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.uf ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !92 ; 2 uses
  %.not.i.i.i553 = icmp eq i32 %i.ui, %i.ua
  br i1 %.not.i.i.i553, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.preheader.i.i552
  %i.uj = sub nsw i32 %i.ui, %i.ua
  br label %Emap_PackEntryCompare.exit.i.i

bb.bx:                                            ; preds = %.preheader.i.i552
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !93 ; 2 uses
  %i.um = icmp ult i64 %i.ul, %i.ty
  br i1 %i.um, label %Emap_PackEntryCompare.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.un = icmp ugt i64 %i.ul, %i.ty               ; 2 uses
  %brmerge.i.i = or i1 %i.ub, %i.un
  %.mux.i.i = zext i1 %i.un to i32
  br i1 %brmerge.i.i, label %Emap_PackEntryCompare.exit.i.i, label %.lr.ph.i.i.i562

.lr.ph.i.i.i562:                                  ; preds = %bb.by
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next.i.i.i564 = add nuw nsw i64 %indvars.iv.i.i.i563, 1 ; 2 uses
  %exitcond.not.i.i.i565 = icmp eq i64 %indvars.iv.next.i.i.i564, %.pre377.i
  br i1 %exitcond.not.i.i.i565, label %Emap_PackEntryCompare.exit.i.i, label %bb.ca, !llvm.loop !100

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i.i.i562
  %indvars.iv.i.i.i563 = phi i64 [ 0, %.lr.ph.i.i.i562 ], [ %indvars.iv.next.i.i.i564, %bb.bz ] ; 3 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv.i.i.i563
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !58 ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv.i.i.i563
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !58 ; 2 uses
  %.not28.i.i.i = icmp eq i32 %i.uq, %i.us
  br i1 %.not28.i.i.i, label %bb.bz, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ut = sub nsw i32 %i.uq, %i.us
  br label %Emap_PackEntryCompare.exit.i.i

Emap_PackEntryCompare.exit.i.i:                   ; preds = %bb.bz, %bb.cb, %bb.by, %bb.bx, %bb.bw
  %.021.i.i.i = phi i32 [ %i.uj, %bb.bw ], [ %.mux.i.i, %bb.by ], [ -1, %bb.bx ], [ %i.ut, %bb.cb ], [ 0, %bb.bz ]
  %i.uu = icmp slt i32 %.021.i.i.i, 0             ; 2 uses
  %i.uv = add nuw nsw i32 %i.ue, 1
  %.124.i.i = select i1 %i.uu, i32 %i.uv, i32 %.02348.i.i ; 6 uses
  %.1.i.i = select i1 %i.uu, i32 %.02249.i.i, i32 %i.ue ; 2 uses
  %i.uw = icmp slt i32 %.124.i.i, %.1.i.i
  br i1 %i.uw, label %.preheader.i.i552, label %._crit_edge.i.loopexit.i, !llvm.loop !101

._crit_edge.i.loopexit.i:                         ; preds = %Emap_PackEntryCompare.exit.i.i
  %i.ux = icmp eq i32 %.124.i.i, %.4186.i
  br i1 %i.ux, label %Emap_PackEntryFindFirst.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.uy = zext nneg i32 %.124.i.i to i64
  %i.uz = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.uy ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 12
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !92
  %.not.i26.i.i = icmp eq i32 %i.vb, %i.ua
  br i1 %.not.i26.i.i, label %bb.cd, label %Emap_PackEntryFindFirst.exit.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 40
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !93
  %or.cond.not.i.i = icmp ne i64 %i.vd, %i.ty     ; 2 uses
  %brmerge66.i.i = or i1 %i.ub, %or.cond.not.i.i
  %.mux67.i.i = select i1 %or.cond.not.i.i, i32 -1, i32 %.124.i.i
  br i1 %brmerge66.i.i, label %Emap_PackEntryFindFirst.exit.i, label %.lr.ph.i29.i.i

.lr.ph.i29.i.i:                                   ; preds = %bb.cd
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next.i33.i.i = add nuw nsw i64 %indvars.iv.i31.i.i, 1 ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %indvars.iv.next.i33.i.i, %.pre377.i
  br i1 %exitcond.not.i34.i.i, label %Emap_PackEntryFindFirst.exit.i, label %bb.cf, !llvm.loop !100

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i29.i.i
  %indvars.iv.i31.i.i = phi i64 [ 0, %.lr.ph.i29.i.i ], [ %indvars.iv.next.i33.i.i, %bb.ce ] ; 3 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %indvars.iv.i31.i.i
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !58
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv.i31.i.i
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !58
  %.not28.i32.i.i = icmp eq i32 %i.vg, %i.vi
  br i1 %.not28.i32.i.i, label %bb.ce, label %Emap_PackEntryFindFirst.exit.thread.i

Emap_PackEntryFindFirst.exit.thread.i:            ; preds = %bb.cf, %bb.cc, %._crit_edge.i.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge2.i

Emap_PackEntryFindFirst.exit.i:                   ; preds = %bb.ce, %bb.cd
  %.025.i.i = phi i32 [ %.mux67.i.i, %bb.cd ], [ %.124.i.i, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %or.cond326.i = icmp ult i32 %.025.i.i, %.4186.i
  br i1 %or.cond326.i, label %.lr.ph303.preheader.i, label %.critedge2.i

.lr.ph303.preheader.i:                            ; preds = %Emap_PackEntryFindFirst.exit.i
  %i.vj = zext nneg i32 %.025.i.i to i64
  %.promoted = load ptr, ptr %9, align 8
  %i.vk = load ptr, ptr %i.pl, align 8
  %i.vl = load ptr, ptr %i.pn, align 8
  br label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, %.lr.ph303.preheader.i
  %i.vm = phi ptr [ %.promoted, %.lr.ph303.preheader.i ], [ %i.ads, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 12 uses
  %indvars.iv359.i = phi i64 [ %i.vj, %.lr.ph303.preheader.i ], [ %indvars.iv.next360.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 2 uses
  %.3301.i = phi i32 [ %.2311.i, %.lr.ph303.preheader.i ], [ %.5.ph.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 16 uses
  %i.vn = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %indvars.iv359.i ; 6 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 12
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !92 ; 6 uses
  %i.vq = load i32, ptr %i.tk, align 8, !tbaa !45
  %i.vr = icmp eq i32 %i.vp, %i.vq
  br i1 %i.vr, label %bb.cg, label %.critedge2.i

bb.cg:                                            ; preds = %.lr.ph303.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 40
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !93
  %i.vu = icmp eq i64 %i.vt, %i.ty
  br i1 %i.vu, label %.preheader.i554, label %.critedge2.i

.preheader.i554:                                  ; preds = %bb.cg
  %i.vv = icmp sgt i32 %i.vp, 0                   ; 2 uses
  br i1 %i.vv, label %.lr.ph298.i, label %._crit_edge299.thread.i

.lr.ph298.i:                                      ; preds = %.preheader.i554
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vn, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.vp to i64 ; 3 uses
  %min.iters.check1263 = icmp ult i32 %i.vp, 8
  br i1 %min.iters.check1263, label %scalar.ph1262.preheader, label %vector.ph1264

vector.ph1264:                                    ; preds = %.lr.ph298.i
  %n.vec1265 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1273, %vector.body1266 ] ; 3 uses
  %vec.phi1268 = phi <4 x i1> [ zeroinitializer, %vector.ph1264 ], [ %i.wd, %vector.body1266 ]
  %vec.phi1269 = phi <4 x i1> [ zeroinitializer, %vector.ph1264 ], [ %i.we, %vector.body1266 ]
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %index1267 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %wide.load = load <4 x i32>, ptr %i.vx, align 4, !tbaa !58
  %wide.load1270 = load <4 x i32>, ptr %i.vy, align 4, !tbaa !58
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %index1267 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %wide.load1271 = load <4 x i32>, ptr %i.vz, align 4, !tbaa !58
  %wide.load1272 = load <4 x i32>, ptr %i.wa, align 4, !tbaa !58
  %i.wb = icmp ne <4 x i32> %wide.load, %wide.load1271
  %i.wc = icmp ne <4 x i32> %wide.load1270, %wide.load1272
  %i.wd = or <4 x i1> %vec.phi1268, %i.wb         ; 2 uses
  %i.we = or <4 x i1> %vec.phi1269, %i.wc         ; 2 uses
  %index.next1273 = add nuw i64 %index1267, 8     ; 2 uses
  %i.wf = icmp eq i64 %index.next1273, %n.vec1265
  br i1 %i.wf, label %middle.block1274, label %vector.body1266, !llvm.loop !102

middle.block1274:                                 ; preds = %vector.body1266
  %bin.rdx1275 = or <4 x i1> %i.we, %i.wd
  %bin.rdx1275.fr = freeze <4 x i1> %bin.rdx1275
  %i.wg = bitcast <4 x i1> %bin.rdx1275.fr to i4
  %.not1319 = icmp eq i4 %i.wg, 0
  %rdx.select = zext i1 %.not1319 to i32          ; 2 uses
  %cmp.n1276 = icmp eq i64 %n.vec1265, %wide.trip.count.i
  br i1 %cmp.n1276, label %._crit_edge299.i, label %scalar.ph1262.preheader

scalar.ph1262.preheader:                          ; preds = %.lr.ph298.i, %middle.block1274
  %indvars.iv354.i.ph = phi i64 [ 0, %.lr.ph298.i ], [ %n.vec1265, %middle.block1274 ]
  %.0297.i.ph = phi i32 [ 1, %.lr.ph298.i ], [ %rdx.select, %middle.block1274 ]
  br label %scalar.ph1262

scalar.ph1262:                                    ; preds = %scalar.ph1262.preheader, %scalar.ph1262
  %indvars.iv354.i = phi i64 [ %indvars.iv.next355.i, %scalar.ph1262 ], [ %indvars.iv354.i.ph, %scalar.ph1262.preheader ] ; 3 uses
  %.0297.i = phi i32 [ %spec.select.i561, %scalar.ph1262 ], [ %.0297.i.ph, %scalar.ph1262.preheader ]
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv354.i
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !58
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %indvars.iv354.i
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !58
  %.not220.i = icmp eq i32 %i.wi, %i.wk
  %spec.select.i561 = select i1 %.not220.i, i32 %.0297.i, i32 0 ; 2 uses
  %indvars.iv.next355.i = add nuw nsw i64 %indvars.iv354.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next355.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge299.i, label %scalar.ph1262, !llvm.loop !103

._crit_edge299.i:                                 ; preds = %scalar.ph1262, %middle.block1274
  %spec.select.i561.lcssa = phi i32 [ %rdx.select, %middle.block1274 ], [ %spec.select.i561, %scalar.ph1262 ]
  %i.wl = icmp eq i32 %spec.select.i561.lcssa, 0
  br i1 %i.wl, label %.critedge2.i, label %._crit_edge299.thread.i

._crit_edge299.thread.i:                          ; preds = %._crit_edge299.i, %.preheader.i554
  %i.wm = load i32, ptr %i.vn, align 8, !tbaa !88 ; 7 uses
  %i.wn = load i32, ptr %i.tc, align 8, !tbaa !88 ; 7 uses
  %i.wo = icmp eq i32 %i.wm, %i.wn
  br i1 %i.wo, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge299.thread.i
  %.val236.i = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.wp = getelementptr i8, ptr %.val236.i, i64 8
  %.val236.val.i = load ptr, ptr %i.wp, align 8, !tbaa !56 ; 4 uses
  %i.wq = sext i32 %i.wn to i64
  %i.wr = getelementptr inbounds [8 x i8], ptr %.val236.val.i, i64 %i.wq ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !57 ; 5 uses
  %i.wt = sext i32 %i.wm to i64                   ; 2 uses
  %i.wu = getelementptr inbounds [8 x i8], ptr %.val236.val.i, i64 %i.wt
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !57 ; 4 uses
  %i.ww = getelementptr i8, ptr %i.ws, i64 20
  %.val31.i.i = load i32, ptr %i.ww, align 4
  %i.wx = and i32 %.val31.i.i, 15
  %.not.i.i555 = icmp eq i32 %i.wx, 2
  br i1 %.not.i.i555, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ws, i64 20
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = and i32 %i.wz, 15
  %.not1.i.i = icmp eq i32 %i.xa, 1
  br i1 %.not1.i.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xb = getelementptr i8, ptr %i.ws, i64 32
  %.val25.i.i = load ptr, ptr %i.xb, align 8, !tbaa !61 ; 2 uses
  %.val25.val.i.i = load i32, ptr %.val25.i.i, align 4, !tbaa !58
  %i.xc = icmp eq i32 %.val25.val.i.i, %i.wm
  br i1 %i.xc, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.xd = getelementptr i8, ptr %.val25.i.i, i64 4
  %.val27.val.i.i = load i32, ptr %i.xd, align 4, !tbaa !58
  %i.xe = icmp eq i32 %.val27.val.i.i, %i.wm
  br i1 %i.xe, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.xf = getelementptr i8, ptr %i.wv, i64 44
  %.val29.i.i = load i32, ptr %i.xf, align 4, !tbaa !104
  %i.xg = icmp eq i32 %.val29.i.i, 1
  br i1 %i.xg, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %i.xh = getelementptr i8, ptr %i.wv, i64 20
  %.val30.i.i = load i32, ptr %i.xh, align 4
  %i.xi = and i32 %.val30.i.i, 15
  %.not2.i.i = icmp eq i32 %i.xi, 2
  br i1 %.not2.i.i, label %Emap_ObjPairHasDirectDanglingRelation.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wv, i64 20
  %i.xk = load i32, ptr %i.xj, align 4
  %i.xl = and i32 %i.xk, 15
  %.not3.i.i = icmp eq i32 %i.xl, 1
  br i1 %.not3.i.i, label %Emap_ObjPairHasDirectDanglingRelation.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.xm = getelementptr i8, ptr %i.wv, i64 32
  %.val24.i.i = load ptr, ptr %i.xm, align 8, !tbaa !61 ; 2 uses
  %.val24.val.i.i = load i32, ptr %.val24.i.i, align 4, !tbaa !58
  %i.xn = icmp eq i32 %.val24.val.i.i, %i.wn
  br i1 %i.xn, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.xo = getelementptr i8, ptr %.val24.i.i, i64 4
  %.val26.val.i.i = load i32, ptr %i.xo, align 4, !tbaa !58
  %i.xp = icmp eq i32 %.val26.val.i.i, %i.wn
  br i1 %i.xp, label %bb.cq, label %Emap_ObjPairHasDirectDanglingRelation.exit.i

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.xq = getelementptr i8, ptr %i.ws, i64 44
  %.val28.i.i = load i32, ptr %i.xq, align 4, !tbaa !104
  %i.xr = icmp eq i32 %.val28.i.i, 1
  br i1 %i.xr, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, label %Emap_ObjPairHasDirectDanglingRelation.exit.i

Emap_ObjPairHasDirectDanglingRelation.exit.i:     ; preds = %bb.cq, %bb.cp, %bb.cn, %bb.cm
  br i1 %.not.i549, label %bb.dc, label %bb.cr

bb.cr:                                            ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit.i
  %i.xs = tail call noundef i32 @llvm.smin.i32(i32 %i.wn, i32 %i.wm) ; 3 uses
  %i.xt = tail call noundef i32 @llvm.smax.i32(i32 %i.wn, i32 %i.wm)
  %i.xu = sext i32 %i.xs to i64                   ; 2 uses
  %i.xv = getelementptr inbounds [8 x i8], ptr %.val236.val.i, i64 %i.xu
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !57 ; 2 uses
  %i.xx = sext i32 %i.xt to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %.val236.val.i, i64 %i.xx
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !57 ; 4 uses
  %i.ya = getelementptr i8, ptr %i.xz, i64 20
  %.val51.i.i = load i32, ptr %i.ya, align 4
  %i.yb = and i32 %.val51.i.i, 15
  %.not.i238.i = icmp eq i32 %i.yb, 2
  br i1 %.not.i238.i, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 20
  %i.yd = load i32, ptr %i.yc, align 4
  %i.ye = and i32 %i.yd, 15
  %.not1.i239.i = icmp eq i32 %i.ye, 1
  br i1 %.not1.i239.i, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.yf = getelementptr i8, ptr %i.xz, i64 32
  %.val47.i.i = load ptr, ptr %i.yf, align 8, !tbaa !61 ; 2 uses
  %.val47.val.i.i = load i32, ptr %.val47.i.i, align 4, !tbaa !58
  %i.yg = icmp eq i32 %.val47.val.i.i, %i.xs
  br i1 %i.yg, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.yh = getelementptr i8, ptr %.val47.i.i, i64 4
  %.val48.val.i.i = load i32, ptr %i.yh, align 4, !tbaa !58
  %i.yi = icmp eq i32 %.val48.val.i.i, %i.xs
  br i1 %i.yi, label %bb.cv, label %bb.cw

end_hunk_1
begin_hunk_2_@Emap_ManMapAigStructural:bb.a
  store i32 0, ptr %i.aas, align 4, !tbaa !58
  %indvars.iv.next14.i.i = add nuw nsw i64 %indvars.iv13.i.i, 1 ; 2 uses
  %.val52.i.i = load i32, ptr %i.sl, align 4, !tbaa !85
  %i.aat = sext i32 %.val52.i.i to i64
  %i.aau = icmp slt i64 %indvars.iv.next14.i.i, %i.aat
  br i1 %i.aau, label %bb.db, label %Emap_ObjPairHasMffcDanglingRelation.exit.i, !llvm.loop !110

Emap_ObjPairHasMffcDanglingRelation.exit.i:       ; preds = %bb.db, %.preheader.i241.i
  store i32 0, ptr %i.sl, align 4, !tbaa !85
  br i1 %.not261.i, label %bb.di, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i

bb.dc:                                            ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit.i
  %i.aav = load ptr, ptr %i.sn, align 8, !tbaa !111
  %.not.i.i243.i = icmp eq ptr %i.aav, null
  br i1 %.not.i.i243.i, label %bb.dd, label %Abc_NtkIncrementTravId.exit.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.aaw = getelementptr i8, ptr %.val236.i, i64 4
  %.val.val.i.i.i = load i32, ptr %i.aaw, align 4, !tbaa !37 ; 2 uses
  %i.aax = add nsw i32 %.val.val.i.i.i, 500       ; 5 uses
  %i.aay = load i32, ptr %i.so, align 8, !tbaa !86
  %.not.i.i.i.i.i = icmp slt i32 %i.aay, %i.aax
  br i1 %.not.i.i.i.i.i, label %bb.de, label %Vec_IntGrow.exit.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.aaz = sext i32 %i.aax to i64
  %i.aba = shl nsw i64 %i.aaz, 2
  %i.abb = tail call noalias ptr @malloc(i64 noundef %i.aba) #21 ; 2 uses
  store ptr %i.abb, ptr %i.sn, align 8, !tbaa !87
  store i32 %i.aax, ptr %i.so, align 8, !tbaa !86
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %bb.de, %bb.dd
  %i.abc = phi ptr [ %i.abb, %bb.de ], [ null, %bb.dd ]
  %i.abd = icmp sgt i32 %.val.val.i.i.i, -500
  br i1 %i.abd, label %.lr.ph.i.i.i.i, label %Vec_IntFill.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.abe = zext nneg i32 %i.aax to i64
  %i.abf = shl nuw nsw i64 %i.abe, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abc, i8 0, i64 %i.abf, i1 false), !tbaa !58
  br label %Vec_IntFill.exit.i.i.i

Vec_IntFill.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.aax, ptr %i.sp, align 4, !tbaa !85
  %.pre372.i = load ptr, ptr %i.wr, align 8, !tbaa !57
  br label %Abc_NtkIncrementTravId.exit.i.i

Abc_NtkIncrementTravId.exit.i.i:                  ; preds = %Vec_IntFill.exit.i.i.i, %bb.dc
  %i.abg = phi ptr [ %i.ws, %bb.dc ], [ %.pre372.i, %Vec_IntFill.exit.i.i.i ]
  %i.abh = load i32, ptr %i.sq, align 8, !tbaa !112
  %i.abi = add nsw i32 %i.abh, 1
  store i32 %i.abi, ptr %i.sq, align 8, !tbaa !112
  %i.abj = tail call fastcc i32 @Emap_ObjIsInTfi_rec(ptr noundef %i.abg, i32 noundef %i.wm)
  %.not.i244.i = icmp eq i32 %i.abj, 0
  br i1 %.not.i244.i, label %bb.df, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i

bb.df:                                            ; preds = %Abc_NtkIncrementTravId.exit.i.i
  %i.abk = load ptr, ptr %i.sn, align 8, !tbaa !111
  %.not.i9.i.i = icmp eq ptr %i.abk, null
  %.val.pre.i.i = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  br i1 %.not.i9.i.i, label %bb.dg, label %Emap_ObjPairHasTfiRelation.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.abl = getelementptr i8, ptr %.val.pre.i.i, i64 4
  %.val.val.i11.i.i = load i32, ptr %i.abl, align 4, !tbaa !37 ; 2 uses
  %i.abm = add nsw i32 %.val.val.i11.i.i, 500     ; 5 uses
  %i.abn = load i32, ptr %i.so, align 8, !tbaa !86
  %.not.i.i.i12.i.i = icmp slt i32 %i.abn, %i.abm
  br i1 %.not.i.i.i12.i.i, label %bb.dh, label %Vec_IntGrow.exit.i.i13.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.abo = sext i32 %i.abm to i64
  %i.abp = shl nsw i64 %i.abo, 2
  %i.abq = tail call noalias ptr @malloc(i64 noundef %i.abp) #21 ; 2 uses
  store ptr %i.abq, ptr %i.sn, align 8, !tbaa !87
  store i32 %i.abm, ptr %i.so, align 8, !tbaa !86
  br label %Vec_IntGrow.exit.i.i13.i.i

Vec_IntGrow.exit.i.i13.i.i:                       ; preds = %bb.dh, %bb.dg
  %i.abr = phi ptr [ %i.abq, %bb.dh ], [ null, %bb.dg ]
  %i.abs = icmp sgt i32 %.val.val.i11.i.i, -500
  br i1 %i.abs, label %.lr.ph.i.i15.i.i, label %Vec_IntFill.exit.i14.i.i

.lr.ph.i.i15.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i13.i.i
  %i.abt = zext nneg i32 %i.abm to i64
  %i.abu = shl nuw nsw i64 %i.abt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abr, i8 0, i64 %i.abu, i1 false), !tbaa !58
  br label %Vec_IntFill.exit.i14.i.i

Vec_IntFill.exit.i14.i.i:                         ; preds = %.lr.ph.i.i15.i.i, %Vec_IntGrow.exit.i.i13.i.i
  store i32 %i.abm, ptr %i.sp, align 4, !tbaa !85
  br label %Emap_ObjPairHasTfiRelation.exit.i

Emap_ObjPairHasTfiRelation.exit.i:                ; preds = %Vec_IntFill.exit.i14.i.i, %bb.df
  %i.abv = load i32, ptr %i.sq, align 8, !tbaa !112
  %i.abw = add nsw i32 %i.abv, 1
  store i32 %i.abw, ptr %i.sq, align 8, !tbaa !112
  %i.abx = getelementptr i8, ptr %.val.pre.i.i, i64 8
  %.val.val.i.i = load ptr, ptr %i.abx, align 8, !tbaa !56
  %i.aby = getelementptr inbounds [8 x i8], ptr %.val.val.i.i, i64 %i.wt
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !57
  %i.aca = tail call fastcc i32 @Emap_ObjIsInTfi_rec(ptr noundef %i.abz, i32 noundef %i.wn)
  %.not217.i = icmp eq i32 %i.aca, 0
  br i1 %.not217.i, label %bb.di, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i

bb.di:                                            ; preds = %Emap_ObjPairHasTfiRelation.exit.i, %Emap_ObjPairHasMffcDanglingRelation.exit.i
  %i.acb = load i32, ptr %i.tc, align 8, !tbaa !88 ; 4 uses
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.acc ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !58 ; 2 uses
  %i.acf = icmp eq i32 %i.ace, -1
  %i.acg = load i32, ptr %i.vn, align 8, !tbaa !88 ; 4 uses
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.ach ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !58 ; 2 uses
  br i1 %i.acf, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.ack = icmp eq i32 %i.acj, -1
  br i1 %i.ack, label %bb.dk, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i

bb.dk:                                            ; preds = %bb.dj
  %i.acl = add nsw i32 %.3301.i, 1
  store i32 %.3301.i, ptr %i.aci, align 4, !tbaa !58
  store i32 %.3301.i, ptr %i.acd, align 4, !tbaa !58
  br label %bb.dm

bb.dl:                                            ; preds = %bb.di
  %.not219.not.i = icmp eq i32 %i.ace, %i.acj
  br i1 %.not219.not.i, label %bb.dm, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.4.i = phi i32 [ %i.acl, %bb.dk ], [ %.3301.i, %bb.dl ]
  %i.acm = load <2 x i32>, ptr %i.to, align 4, !tbaa !58
  %i.acn = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.aco = load <2 x i32>, ptr %i.acn, align 4, !tbaa !58
  %i.acp = load i32, ptr %i.sr, align 8, !tbaa !113 ; 5 uses
  %i.acq = load i32, ptr %i.ss, align 4, !tbaa !114
  %i.acr = icmp eq i32 %i.acp, %i.acq
  br i1 %i.acr, label %bb.dn, label %Emap_TuplesAdd.exit.i

bb.dn:                                            ; preds = %bb.dm
  %.not.i246.i = icmp eq i32 %i.acp, 0
  %i.acs = shl nsw i32 %i.acp, 1
  %spec.select.i.i557 = select i1 %.not.i246.i, i32 1024, i32 %i.acs ; 2 uses
  store i32 %spec.select.i.i557, ptr %i.ss, align 4, !tbaa !114
  %.not44.i.i = icmp eq ptr %i.vm, null
  %i.act = sext i32 %spec.select.i.i557 to i64
  %i.acu = mul nsw i64 %i.act, 40                 ; 2 uses
  br i1 %.not44.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.acv = tail call ptr @realloc(ptr noundef nonnull %i.vm, i64 noundef %i.acu) #22
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.acw = tail call noalias ptr @malloc(i64 noundef %i.acu) #21
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.acx = phi ptr [ %i.acv, %bb.do ], [ %i.acw, %bb.dp ] ; 2 uses
  store ptr %i.acx, ptr %9, align 8, !tbaa !115
  br label %Emap_TuplesAdd.exit.i

Emap_TuplesAdd.exit.i:                            ; preds = %bb.dq, %bb.dm
  %i.acy = phi ptr [ %i.acx, %bb.dq ], [ %i.vm, %bb.dm ] ; 2 uses
  %i.acz = tail call noundef i32 @llvm.smin.i32(i32 %i.acb, i32 %i.acg)
  %i.ada = tail call noundef i32 @llvm.smax.i32(i32 %i.acb, i32 %i.acg)
  %i.adb = sext i32 %i.acp to i64
  %i.adc = getelementptr inbounds [40 x i8], ptr %i.acy, i64 %i.adb ; 8 uses
  store i32 %i.acb, ptr %i.adc, align 4, !tbaa !116
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 4
  store <2 x i32> %i.acm, ptr %i.add, align 4, !tbaa !58
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 12
  store i32 %i.acg, ptr %i.ade, align 4, !tbaa !118
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store <2 x i32> %i.aco, ptr %i.adf, align 4, !tbaa !58
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  store i32 %i.tw, ptr %i.adg, align 4, !tbaa !119
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 28
  store i32 %.0177312.i, ptr %i.adh, align 4, !tbaa !120
  %i.adi = sext i32 %i.ada to i64
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.adi ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !58
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adc, i64 32
  store i32 %i.adk, ptr %i.adl, align 4, !tbaa !121
  %i.adm = sext i32 %i.acz to i64
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.adm ; 2 uses
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !58
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adc, i64 36
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !122
  store i32 %i.acp, ptr %i.adj, align 4, !tbaa !58
  %i.adq = load i32, ptr %i.sr, align 8, !tbaa !113 ; 2 uses
  %i.adr = add nsw i32 %i.adq, 1
  store i32 %i.adr, ptr %i.sr, align 8, !tbaa !113
  store i32 %i.adq, ptr %i.adn, align 4, !tbaa !58
  br label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i

Emap_ObjPairHasDirectDanglingRelation.exit.thread.i: ; preds = %Emap_TuplesAdd.exit.i, %bb.dl, %bb.dj, %Emap_ObjPairHasTfiRelation.exit.i, %Abc_NtkIncrementTravId.exit.i.i, %Emap_ObjPairHasMffcDanglingRelation.exit.i, %bb.cv, %bb.cq, %bb.cl, %._crit_edge299.thread.i
  %i.ads = phi ptr [ %i.vm, %Abc_NtkIncrementTravId.exit.i.i ], [ %i.vm, %bb.cv ], [ %i.vm, %bb.cq ], [ %i.vm, %bb.dl ], [ %i.vm, %Emap_ObjPairHasTfiRelation.exit.i ], [ %i.vm, %Emap_ObjPairHasMffcDanglingRelation.exit.i ], [ %i.acy, %Emap_TuplesAdd.exit.i ], [ %i.vm, %._crit_edge299.thread.i ], [ %i.vm, %bb.cl ], [ %i.vm, %bb.dj ]
  %.5.ph.i = phi i32 [ %.3301.i, %Abc_NtkIncrementTravId.exit.i.i ], [ %.3301.i, %bb.cv ], [ %.3301.i, %bb.cq ], [ %.3301.i, %bb.dl ], [ %.3301.i, %Emap_ObjPairHasTfiRelation.exit.i ], [ %.3301.i, %Emap_ObjPairHasMffcDanglingRelation.exit.i ], [ %.4.i, %Emap_TuplesAdd.exit.i ], [ %.3301.i, %._crit_edge299.thread.i ], [ %.3301.i, %bb.cl ], [ %.3301.i, %bb.dj ] ; 2 uses
  %indvars.iv.next360.i = add nuw nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %i.adt = trunc nuw i64 %indvars.iv.next360.i to i32
  %i.adu = icmp sgt i32 %.4186.i, %i.adt
  br i1 %i.adu, label %.lr.ph303.i, label %.critedge2.i, !llvm.loop !123

.critedge2.i:                                     ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, %._crit_edge299.i, %bb.cg, %.lr.ph303.i, %Emap_PackEntryFindFirst.exit.i, %Emap_PackEntryFindFirst.exit.thread.i, %bb.bu
  %.7.i = phi i32 [ %.2311.i, %Emap_PackEntryFindFirst.exit.i ], [ %.2311.i, %bb.bu ], [ %.2311.i, %Emap_PackEntryFindFirst.exit.thread.i ], [ %.3301.i, %bb.cg ], [ %.5.ph.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ], [ %.3301.i, %.lr.ph303.i ], [ %.3301.i, %._crit_edge299.i ] ; 2 uses
  br i1 %.not212.i, label %bb.bu, label %.loopexit.loopexit.i, !llvm.loop !124

.loopexit.loopexit.i:                             ; preds = %.critedge2.i
  %.pre373.i = load i32, ptr %i.pe, align 8, !tbaa !79
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bt
  %i.adv = phi i32 [ %i.tp, %bb.bt ], [ %.pre373.i, %.loopexit.loopexit.i ] ; 4 uses
  %.8.i = phi i32 [ %.1181315.i, %bb.bt ], [ %.7.i, %.loopexit.loopexit.i ] ; 2 uses
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1 ; 2 uses
  %i.adw = sext i32 %i.adv to i64
  %i.adx = icmp slt i64 %indvars.iv.next363.i, %i.adw
  br i1 %i.adx, label %bb.bt, label %.loopexit265.i, !llvm.loop !125

._crit_edge323.i:                                 ; preds = %.loopexit265.i, %.lr.ph322.i, %.critedge.i, %.critedge.thread.i
  %.0180.lcssa.i = phi i32 [ 0, %.critedge.i ], [ 0, %.lr.ph322.i ], [ 0, %.critedge.thread.i ], [ %.1181.lcssa.i, %.loopexit265.i ]
  %i.ady = tail call ptr @getenv(ptr noundef nonnull @.str.2) #19
  %.not205.i = icmp eq ptr %i.ady, null
  br i1 %.not205.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %._crit_edge323.i
  %i.adz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aea = load i32, ptr %i.adz, align 8, !tbaa !113
  %i.aeb = select i1 %.not.i549, ptr @.str.24, ptr @.str.23
  %i.aec = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.aea, i32 noundef %.0180.lcssa.i, ptr noundef nonnull %i.aeb) ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge323.i
  %.not206.i = icmp eq ptr %.0194.i, null
  br i1 %.not206.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @free(ptr noundef nonnull %.0194.i) #19
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.not207.i = icmp eq ptr %.0195.i, null
  br i1 %.not207.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @free(ptr noundef nonnull %.0195.i) #19
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.not208.i = icmp eq ptr %.0196.i, null
  br i1 %.not208.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aed = getelementptr inbounds nuw i8, ptr %.0196.i, i64 8
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !87 ; 2 uses
  %.not.i247.i = icmp eq ptr %i.aee, null
  br i1 %.not.i247.i, label %Vec_IntFree.exit.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @free(ptr noundef nonnull %i.aee) #19
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.dy, %bb.dx
  tail call void @free(ptr noundef nonnull %.0196.i) #19
  br label %bb.dz

bb.dz:                                            ; preds = %Vec_IntFree.exit.i, %bb.dw
  %.not209.i = icmp eq ptr %i.px, null
  br i1 %.not209.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @free(ptr noundef nonnull %i.px) #19
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.not210.i = icmp eq ptr %i.pw, null
  br i1 %.not210.i, label %Emap_ManComputeMogTuples.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @free(ptr noundef nonnull %i.pw) #19
  br label %Emap_ManComputeMogTuples.exit

Emap_ManComputeMogTuples.exit:                    ; preds = %bb.ec, %bb.eb, %bb.bl, %.critedge2.thread
  %.val476 = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.aef = getelementptr i8, ptr %.val476, i64 4
  %.val476.val = load i32, ptr %i.aef, align 4, !tbaa !37 ; 3 uses
  %i.aeg = shl nsw i32 %.val476.val, 1            ; 3 uses
  %i.aeh = sext i32 %i.aeg to i64                 ; 3 uses
  %i.aei = shl nsw i64 %i.aeh, 3
  %i.aej = tail call noalias ptr @malloc(i64 noundef %i.aei) #21 ; 36 uses
  %i.aek = shl nsw i64 %i.aeh, 2
  %i.ael = tail call noalias ptr @malloc(i64 noundef %i.aek) #21 ; 26 uses
  %i.aem = mul nsw i64 %i.aeh, 96                 ; 3 uses
  %i.aen = tail call noalias ptr @malloc(i64 noundef %i.aem) #21 ; 44 uses
  %i.aeo = tail call noalias ptr @malloc(i64 noundef %i.aem) #21 ; 25 uses
  %i.aep = tail call noalias ptr @malloc(i64 noundef %i.aem) #21 ; 12 uses
  %i.aeq = icmp sgt i32 %.val476.val, 0           ; 2 uses
  br i1 %i.aeq, label %.lr.ph.preheader.i, label %.preheader.i572

.lr.ph.preheader.i:                               ; preds = %Emap_ManComputeMogTuples.exit
  %wide.trip.count.i575 = zext nneg i32 %i.aeg to i64 ; 3 uses
  %min.iters.check1280 = icmp ult i32 %i.aeg, 4
  br i1 %min.iters.check1280, label %.lr.ph.i576.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1282 = and i64 %wide.trip.count.i575, 2147483644 ; 3 uses
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1283 ] ; 2 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.aej, i64 %index1284 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  store <2 x double> splat (double 1.000000e+20), ptr %i.aer, align 8, !tbaa !126
  store <2 x double> splat (double 1.000000e+20), ptr %i.aes, align 8, !tbaa !126
  %index.next1285 = add nuw i64 %index1284, 4     ; 2 uses
  %i.aet = icmp eq i64 %index.next1285, %n.vec1282
  br i1 %i.aet, label %middle.block1286, label %vector.body1283, !llvm.loop !127

middle.block1286:                                 ; preds = %vector.body1283
  %cmp.n1287 = icmp eq i64 %n.vec1282, %wide.trip.count.i575
  br i1 %cmp.n1287, label %.preheader.i572, label %.lr.ph.i576.preheader

.lr.ph.i576.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1286
  %indvars.iv.i577.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec1282, %middle.block1286 ]
  br label %.lr.ph.i576

.preheader.i572:                                  ; preds = %.lr.ph.i576, %middle.block1286, %Emap_ManComputeMogTuples.exit
  %i.aeu = getelementptr i8, ptr %0, i64 48       ; 3 uses
  %.val59.i = load ptr, ptr %i.aeu, align 8, !tbaa !128 ; 2 uses
  %i.aev = getelementptr i8, ptr %.val59.i, i64 4
  %.val59.val.i = load i32, ptr %i.aev, align 4, !tbaa !37 ; 2 uses
  %i.aew = icmp sgt i32 %.val59.val.i, 0
  br i1 %i.aew, label %.lr.ph67.i, label %.critedge2.preheader.i

.lr.ph67.i:                                       ; preds = %.preheader.i572
  %i.aex = getelementptr i8, ptr %.val59.i, i64 8
  %.val61.val.i = load ptr, ptr %i.aex, align 8, !tbaa !56 ; 2 uses
  %wide.trip.count80.i = zext nneg i32 %.val59.val.i to i64 ; 2 uses
  br label %bb.ed

.lr.ph.i576:                                      ; preds = %.lr.ph.i576.preheader, %.lr.ph.i576
  %indvars.iv.i577 = phi i64 [ %indvars.iv.next.i578, %.lr.ph.i576 ], [ %indvars.iv.i577.ph, %.lr.ph.i576.preheader ] ; 2 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aej, i64 %indvars.iv.i577
  store double 1.000000e+20, ptr %i.aey, align 8, !tbaa !126
  %indvars.iv.next.i578 = add nuw nsw i64 %indvars.iv.i577, 1 ; 2 uses
  %exitcond.not.i579 = icmp eq i64 %indvars.iv.next.i578, %wide.trip.count.i575
  br i1 %exitcond.not.i579, label %.preheader.i572, label %.lr.ph.i576, !llvm.loop !129

bb.ed:                                            ; preds = %bb.ed, %.lr.ph67.i
  %indvars.iv77.i = phi i64 [ 0, %.lr.ph67.i ], [ %indvars.iv.next78.i, %bb.ed ] ; 2 uses
  %.04665.i = phi double [ 0.000000e+00, %.lr.ph67.i ], [ %i.afm, %bb.ed ] ; 2 uses
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %.val61.val.i, i64 %indvars.iv77.i
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !57 ; 2 uses
  %i.afb = getelementptr i8, ptr %i.afa, i64 20
  %.val57.i = load i32, ptr %i.afb, align 4
  %i.afc = lshr i32 %.val57.i, 10
  %i.afd = and i32 %i.afc, 1
  %i.afe = getelementptr i8, ptr %i.afa, i64 32
  %.val55.i = load ptr, ptr %i.afe, align 8, !tbaa !61
  %.val55.val.i = load i32, ptr %.val55.i, align 4, !tbaa !58
  %i.aff = sext i32 %.val55.val.i to i64
  %i.afg = getelementptr inbounds [5320 x i8], ptr %i.al, i64 %i.aff
  %i.afh = zext nneg i32 %i.afd to i64
  %i.afi = getelementptr inbounds nuw [96 x i8], ptr %i.afg, i64 %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 5208
  %i.afk = load double, ptr %i.afj, align 8, !tbaa !51 ; 2 uses
  %i.afl = fcmp ogt double %.04665.i, %i.afk
  %i.afm = select i1 %i.afl, double %.04665.i, double %i.afk ; 4 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count80.i
  br i1 %exitcond81.not.i, label %.lr.ph72.i, label %bb.ed, !llvm.loop !130

.critedge2.preheader.i:                           ; preds = %Emap_RequiredUpdate.exit.i, %.preheader.i572
  %.046.lcssa92.i = phi double [ 0.000000e+00, %.preheader.i572 ], [ %i.afm, %Emap_RequiredUpdate.exit.i ] ; 7 uses
  br i1 %i.aeq, label %.lr.ph75.preheader.i, label %Emap_ManComputeRequired.exit

.lr.ph75.preheader.i:                             ; preds = %.critedge2.preheader.i
  %i.afn = zext nneg i32 %.val476.val to i64
  br label %.lr.ph75.i

.lr.ph72.i:                                       ; preds = %bb.ed, %Emap_RequiredUpdate.exit.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %Emap_RequiredUpdate.exit.i ], [ 0, %bb.ed ] ; 2 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %.val61.val.i, i64 %indvars.iv82.i
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !57 ; 2 uses
  %i.afq = getelementptr i8, ptr %i.afp, i64 32
  %.val54.i = load ptr, ptr %i.afq, align 8, !tbaa !61
  %.val54.val.i = load i32, ptr %.val54.i, align 4, !tbaa !58
  %i.afr = getelementptr i8, ptr %i.afp, i64 20
  %.val56.i = load i32, ptr %i.afr, align 4
  %i.afs = lshr i32 %.val56.i, 10
  %i.aft = and i32 %i.afs, 1
  %i.afu = shl nsw i32 %.val54.val.i, 1
  %i.afv = or disjoint i32 %i.aft, %i.afu
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [8 x i8], ptr %i.aej, i64 %i.afw ; 2 uses
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !126
  %i.afz = fcmp olt double %i.afm, %i.afy
  br i1 %i.afz, label %bb.ee, label %Emap_RequiredUpdate.exit.i

bb.ee:                                            ; preds = %.lr.ph72.i
  store double %i.afm, ptr %i.afx, align 8, !tbaa !126
  br label %Emap_RequiredUpdate.exit.i

Emap_RequiredUpdate.exit.i:                       ; preds = %bb.ee, %.lr.ph72.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count80.i
  br i1 %exitcond86.not.i, label %.critedge2.preheader.i, label %.lr.ph72.i, !llvm.loop !131

.lr.ph75.i:                                       ; preds = %.critedge2.i574, %.lr.ph75.preheader.i
  %indvars.iv87.i = phi i64 [ %i.afn, %.lr.ph75.preheader.i ], [ %indvars.iv.next88.i, %.critedge2.i574 ] ; 2 uses
  %indvars.iv.next88.i = add nsw i64 %indvars.iv87.i, -1 ; 2 uses
  %.val52.i = load ptr, ptr %i.ai, align 8, !tbaa !21
end_hunk_2
