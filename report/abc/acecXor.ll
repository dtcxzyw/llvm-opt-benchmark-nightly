inline.NumInlined: 242
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.Gia_Obj_t_ = type <{ i64, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str.3 = private unnamed_addr constant [45 x i8] c"Xor node %d belongs to Tree %d and Tree %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Rank %2d : Lits = %5d    PI = %d  Booth = %5d  Non-Booth = %5d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Detected %d full-adders and %d half-adders.  Found %d XOR-cuts.  \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%2d %2d : %5d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@__const.Vec_WrdStartTruthTables.Masks = private unnamed_addr constant [5 x i32] [i32 -1431655766, i32 -858993460, i32 -252645136, i32 -16711936, i32 -65536], align 16
@str = private unnamed_addr constant [42 x i8] c"*** There no multiple two-input XOR cuts.\00", align 1

; Function Attrs: nounwind uwtable
define void @Acec_CheckXors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.b = add i32 %.val, -1
  %or.cond.i = icmp ult i32 %i.b, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %spec.store.select.i to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #21
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 4
  %.val29 = load i32, ptr %i.g, align 4, !tbaa !30 ; 3 uses
  %i.h = icmp sgt i32 %.val29, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.i = getelementptr i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.i, align 8, !tbaa !31 ; 3 uses
  %2 = add nsw i32 %.val29, -1
  %3 = lshr i32 %2, 2
  %4 = add nuw nsw i32 %3, 1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %5 = icmp ult i32 %.val29, 5
  br i1 %5, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv.a ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.j, align 4, !tbaa !32
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv.a ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.a, 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !33

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv.epil.init ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.epil.preheader
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %Vec_IntAlloc.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.not.i35 = icmp eq ptr %i.f, null
  br i1 %.not.i35, label %Vec_IntFree.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.f) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_OrderTreeRoots(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4
  %.val51 = load i32, ptr %i.a, align 4, !tbaa !30 ; 6 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  %i.c = add i32 %.val51, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val51 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !35
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !31
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4        ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !31
  store i32 %.val51, ptr %i.g, align 4, !tbaa !30
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !31
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4        ; 3 uses
  store i32 %spec.store.select.i, ptr %i.m, align 8, !tbaa !35
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.j) #21 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !31
  store i32 %.val51, ptr %i.n, align 4, !tbaa !30
  %.not.i62 = icmp eq ptr %i.o, null
  br i1 %.not.i62, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.q = sext i32 %.val51 to i64
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 -1, i64 %i.r, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.promoted86 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ %i.k, %Vec_IntAlloc.exit.i ], [ %i.k, %bb.b ]
  %.val54 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.o, %bb.b ] ; 5 uses
  %i.s = phi ptr [ %i.g, %Vec_IntAlloc.exit.thread.i ], [ %i.n, %Vec_IntAlloc.exit.i ], [ %i.n, %bb.b ]
  %i.t = phi ptr [ %i.f, %Vec_IntAlloc.exit.thread.i ], [ %i.m, %Vec_IntAlloc.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.u = phi ptr [ %i.e, %Vec_IntAlloc.exit.thread.i ], [ %i.l, %Vec_IntAlloc.exit.i ], [ %i.l, %bb.b ]
  %i.v = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val4972 = load i32, ptr %i.v, align 4, !tbaa !30 ; 2 uses
  %i.w = icmp sgt i32 %.val4972, 0
  br i1 %i.w, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit
  %i.x = getelementptr i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.x, align 8, !tbaa !31 ; 3 uses
  %i.y = getelementptr i8, ptr %3, i64 8
  %.val59 = load ptr, ptr %i.y, align 8, !tbaa !31 ; 4 uses
  br label %bb.c

.preheader.loopexit:                              ; preds = %.loopexit
  %.val48.pre = load i32, ptr %i.s, align 4, !tbaa !30
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %Vec_IntStartFull.exit
  %.val48 = phi i32 [ %.val48.pre, %.preheader.loopexit ], [ %.val51, %Vec_IntStartFull.exit ] ; 5 uses
  %i.z = icmp sgt i32 %.val48, 0                  ; 2 uses
  br i1 %i.z, label %.lr.ph75.split.preheader, label %.critedge

.lr.ph75.split.preheader:                         ; preds = %.preheader
  %wide.trip.count.i = zext nneg i32 %.val48 to i64 ; 2 uses
  br label %.lr.ph75.split

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.val49114 = phi i32 [ %.val4972, %.lr.ph ], [ %.val49, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ]
  %i.aa = phi i64 [ 0, %.lr.ph ], [ %i.bj, %.loopexit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val59, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %.loopexit, label %.preheader66.preheader

.preheader66.preheader:                           ; preds = %bb.c
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val59, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %.preheader66.1, label %bb.d

bb.d:                                             ; preds = %.preheader66.preheader
  %i.an = sext i32 %i.ag to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val54, i64 %i.an
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !32
  br label %.preheader66.1

.preheader66.1:                                   ; preds = %.preheader66.preheader, %bb.d
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %i.aa
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.val59, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32 ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %.preheader66.2, label %bb.e

bb.e:                                             ; preds = %.preheader66.1
  %i.aw = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val54, i64 %i.ax
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !32
  br label %.preheader66.2

.preheader66.2:                                   ; preds = %bb.e, %.preheader66.1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %i.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val59, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32 ; 2 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %.loopexit.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader66.2
  %i.bg = load i32, ptr %i.af, align 4, !tbaa !32
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val54, i64 %i.bh
  store i32 %i.be, ptr %i.bi, align 4, !tbaa !32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.f, %.preheader66.2
  %.val49.pre = load i32, ptr %i.v, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %.val49 = phi i32 [ %.val49.pre, %.loopexit.loopexit ], [ %.val49114, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = icmp sgt i32 %.val49, %i.bk
  br i1 %i.bl, label %bb.c, label %.preheader.loopexit, !llvm.loop !36

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader, %Vec_IntFind.exit.thread
  %indvars.iv95 = phi i64 [ 0, %.lr.ph75.split.preheader ], [ %indvars.iv.next96, %Vec_IntFind.exit.thread ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv95
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !32
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %.lr.ph.i, label %Vec_IntFind.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph75.split, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.lr.ph75.split ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32
  %i.br = zext i32 %i.bq to i64
end_hunk_0
begin_hunk_1_@Acec_OrderTreeRoots:bb.a

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %storemerge = phi ptr [ %i.ce, %bb.l ], [ %i.cd, %bb.k ], [ %i.ck, %bb.o ], [ %i.cl, %bb.p ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ]
  store ptr %storemerge, ptr %i.u, align 8, !tbaa !31
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.h, %bb.m, %Vec_IntGrow.exit11.sink.split.i
  %storemerge88 = phi ptr [ %storemerge87, %bb.h ], [ %storemerge87, %bb.m ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %spec.select.sink.i84 = phi i32 [ %spec.select.sink.i85, %bb.h ], [ %spec.select.sink.i85, %bb.m ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %storemerge88, i64 %indvars.iv103
  store i32 %i.bz, ptr %i.cm, align 4, !tbaa !32
  br i1 %i.z, label %.lr.ph79, label %.critedge2

.lr.ph79:                                         ; preds = %Vec_IntPush.exit
  %.val52 = load ptr, ptr %i.bv, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph79, %bb.r
  %indvars.iv98 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next99, %bb.r ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv98
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !32
  %i.cp = icmp eq i32 %i.co, %.2
  br i1 %i.cp, label %.critedge2.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.critedge2.thread, label %bb.q, !llvm.loop !39

.critedge2.loopexit:                              ; preds = %bb.q
  %i.cq = trunc nuw nsw i64 %indvars.iv98 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %Vec_IntPush.exit
  %.3.lcssa = phi i32 [ 0, %Vec_IntPush.exit ], [ %i.cq, %.critedge2.loopexit ] ; 2 uses
  %i.cr = icmp eq i32 %.3.lcssa, %.val48
  br i1 %i.cr, label %.critedge2.thread, label %bb.h

.critedge2.thread:                                ; preds = %.critedge2, %bb.r
  %i.cs = trunc nsw i64 %indvars.iv.next104 to i32
  store i32 %i.cs, ptr %i.d, align 4, !tbaa !30
  store i32 %spec.select.sink.i84, ptr %i.b, align 8
  %i.ct = load ptr, ptr %i.bv, align 8, !tbaa !31 ; 2 uses
  %.not.i63 = icmp eq ptr %i.ct, null
  br i1 %.not.i63, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %.critedge2.thread
  tail call void @free(ptr noundef nonnull %i.ct) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2.thread, %bb.s
  tail call void @free(ptr noundef nonnull %i.t) #22
  ret ptr %i.b
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_MapXorOuts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.b = ashr i32 %.val, 5
  %i.c = and i32 %.val, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 3 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.h = shl nsw i32 %i.f, 5                      ; 2 uses
  store i32 %i.h, ptr %i.g, align 8, !tbaa !40
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !42
  store i32 %i.h, ptr %i.m, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.o = getelementptr i8, ptr %1, i64 4
  %.val8 = load i32, ptr %i.o, align 4, !tbaa !30 ; 3 uses
  %i.p = icmp sgt i32 %.val8, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_BitStart.exit
  %i.q = getelementptr i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.q, align 8, !tbaa !31 ; 3 uses
  %i.r = add nsw i32 %.val8, -1
  %i.s = lshr i32 %i.r, 2
  %i.t = add nuw nsw i32 %i.s, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.u = icmp ult i32 %.val8, 5
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32   ; 2 uses
  %i.x = and i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = ashr i32 %i.w, 5
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = or i32 %i.y, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32 ; 2 uses
  %i.ah = and i32 %i.ag, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = ashr i32 %i.ag, 5
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32
  %i.an = or i32 %i.ai, %i.am
  store i32 %i.an, ptr %i.al, align 4, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !44

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv.epil.init
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32 ; 2 uses
  %i.aq = and i32 %i.ap, 31
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = ashr i32 %i.ap, 5
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %i.aw = or i32 %i.ar, %i.av
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %Vec_BitStart.exit
  ret ptr %i.g
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_MapXorOuts2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.b = ashr i32 %.val, 5
  %i.c = and i32 %.val, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 3 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.h = shl nsw i32 %i.f, 5                      ; 2 uses
  store i32 %i.h, ptr %i.g, align 8, !tbaa !40
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !42
  store i32 %i.h, ptr %i.m, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.o = getelementptr i8, ptr %1, i64 4
  %.val11 = load i32, ptr %i.o, align 4, !tbaa !30 ; 2 uses
  %i.p = icmp sgt i32 %.val11, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_BitStart.exit
  %i.q = getelementptr i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr i8, ptr %2, i64 8
  %.val13 = load ptr, ptr %i.r, align 8, !tbaa !31
  %3 = add nsw i32 %.val11, -1
  %4 = lshr i32 %3, 2
  %5 = add nuw nsw i32 %4, 1
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv17 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next18, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val13, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %.not = icmp eq i32 %i.w, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = and i32 %i.t, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = ashr i32 %i.t, 5
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = or i32 %i.ac, %i.y
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.e, %Vec_BitStart.exit
  ret ptr %i.g
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_MapMajOuts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.b = ashr i32 %.val, 5
  %i.c = and i32 %.val, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 3 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.h = shl nsw i32 %i.f, 5                      ; 2 uses
  store i32 %i.h, ptr %i.g, align 8, !tbaa !40
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !42
  store i32 %i.h, ptr %i.m, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.o = getelementptr i8, ptr %1, i64 4
  %.val8 = load i32, ptr %i.o, align 4, !tbaa !30 ; 3 uses
  %i.p = icmp sgt i32 %.val8, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_BitStart.exit
  %i.q = getelementptr i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.q, align 8, !tbaa !31 ; 3 uses
  %i.r = add nsw i32 %.val8, -1
  %i.s = udiv i32 %i.r, 6
  %i.t = add nuw nsw i32 %i.s, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.u = icmp ult i32 %.val8, 7
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 2 uses
  %i.y = and i32 %i.x, 31
  %i.z = shl nuw i32 1, %i.y
  %i.aa = ashr i32 %i.x, 5
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = or i32 %i.z, %i.ad
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32 ; 2 uses
  %i.ai = and i32 %i.ah, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = ashr i32 %i.ah, 5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %i.ao = or i32 %i.aj, %i.an
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 12 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %indvars.iv.epil.init
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32 ; 2 uses
  %i.as = and i32 %i.ar, 31
  %i.at = shl nuw i32 1, %i.as
  %i.au = ashr i32 %i.ar, 5
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = or i32 %i.at, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %Vec_BitStart.exit
  ret ptr %i.g
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_MapMajOuts2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.c = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !35
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !31
  store i32 %.val, ptr %i.d, align 4, !tbaa !30
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #21 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !31
  store i32 %.val, ptr %i.d, align 4, !tbaa !30
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %.val to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 -1, i64 %i.k, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val16 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.b ]
  %i.l = getelementptr i8, ptr %1, i64 4
  %.val1217 = load i32, ptr %i.l, align 4, !tbaa !30 ; 2 uses
  %i.m = icmp sgt i32 %.val1217, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit
  %i.n = getelementptr i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr i8, ptr %2, i64 8
  %.val14 = load ptr, ptr %i.o, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.e ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %.val14, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds [4 x i8], ptr %.val16, i64 %i.t
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul nuw nsw i64 %indvars.iv.next, 6      ; 2 uses
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = icmp sgt i32 %.val1217, %i.z
  br i1 %i.aa, label %bb.c, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.e, %Vec_IntStartFull.exit
  ret ptr %i.b
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_MapXorIns(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.b = ashr i32 %.val, 5
  %i.c = and i32 %.val, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 3 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.h = shl nsw i32 %i.f, 5                      ; 2 uses
  store i32 %i.h, ptr %i.g, align 8, !tbaa !40
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !42
  store i32 %i.h, ptr %i.m, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.o = getelementptr i8, ptr %1, i64 4
  %.val14 = load i32, ptr %i.o, align 4, !tbaa !30 ; 2 uses
  %i.p = icmp sgt i32 %.val14, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_BitStart.exit
  %i.q = getelementptr i8, ptr %1, i64 8
  %.val17 = load ptr, ptr %i.q, align 8, !tbaa !31
  %2 = add nsw i32 %.val14, -1
  %3 = lshr i32 %2, 2
  %4 = add nuw nsw i32 %3, 1
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv22 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next23, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val17, i64 %indvars.iv ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 2 uses
  %i.u = and i32 %i.t, 31
  %i.v = shl nuw i32 1, %i.u
  %i.w = ashr i32 %i.t, 5
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = or i32 %i.v, %i.z
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32 ; 2 uses
  %i.ad = and i32 %i.ac, 31
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = ashr i32 %i.ac, 5
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %i.aj = or i32 %i.ae, %i.ai
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 2 uses
  %i.am = and i32 %i.al, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = ashr i32 %i.al, 5
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %i.as = or i32 %i.an, %i.ar
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !32
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.c, %Vec_BitStart.exit
  ret ptr %i.g
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_FindXorRoots(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Acec_MapXorIns(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !30
  store i32 100, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val17 = load i32, ptr %i.f, align 4, !tbaa !30 ; 2 uses
  %i.g = icmp sgt i32 %.val17, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %.val15 = load ptr, ptr %i.i, align 8, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPushUniqueOrder.exit
  %.val21 = phi i32 [ %.val17, %.lr.ph ], [ %.val, %Vec_IntPushUniqueOrder.exit ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph ], [ %i.bd, %Vec_IntPushUniqueOrder.exit ] ; 4 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.be, %Vec_IntPushUniqueOrder.exit ] ; 7 uses
  %i.l = phi ptr [ %i.d, %.lr.ph ], [ %i.bf, %Vec_IntPushUniqueOrder.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPushUniqueOrder.exit ]
  %i.m = phi i64 [ 0, %.lr.ph ], [ %i.bg, %Vec_IntPushUniqueOrder.exit ]
  %.val14 = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.n = and i64 %i.m, 4294967292
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32   ; 5 uses
  %i.q = ashr i32 %i.p, 5
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.val15, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32
  %i.u = and i32 %i.p, 31
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.t, %i.v
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.c, label %Vec_IntPushUniqueOrder.exit

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.c, align 4, !tbaa !30   ; 11 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.x to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !49

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  %i.ab = icmp eq i32 %i.aa, %i.p
  br i1 %i.ab, label %Vec_IntPushUniqueOrder.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !35
  %i.ad = icmp eq i32 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %Vec_IntGrow.exit24.i.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.ae = icmp slt i32 %i.x, 16
  br i1 %i.ae, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.k, i64 noundef 64) #23
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.j:                                             ; preds = %bb.f
  %i.ah = icmp samesign ult i32 %i.x, 1073741823
  %i.ai = shl nuw nsw i32 %i.x, 1
  %spec.select.i.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i22.i.i = icmp samesign ult i32 %i.x, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.k, label %Vec_IntGrow.exit24.i.thread.i

Vec_IntGrow.exit24.i.thread.i:                    ; preds = %bb.j
  %i.aj = add nuw nsw i32 %i.x, 1
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !30
  br label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.j
  %.not9.i23.i.i = icmp eq ptr %i.k, null
  %i.ak = zext nneg i32 %spec.select.i.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.al) #23
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #21
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i.i: ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %storemerge = phi ptr [ %i.ag, %bb.i ], [ %i.af, %bb.h ], [ %i.am, %bb.l ], [ %i.an, %bb.m ] ; 2 uses
  %.sink.i.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i.i, %bb.l ], [ %spec.select.i.i, %bb.m ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !31
  store i32 %.sink.i.i, ptr %i.b, align 8, !tbaa !35
  br label %Vec_IntGrow.exit24.i.i

Vec_IntGrow.exit24.i.i:                           ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i, %._crit_edge.i
  %i.ao = phi ptr [ %storemerge, %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i ], [ %i.j, %._crit_edge.i ] ; 4 uses
  %i.ap = add nsw i32 %i.x, 1
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !30
  br i1 %i.y, label %.lr.ph.i.i, label %Vec_IntPushOrder.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit24.i.i, %Vec_IntGrow.exit24.i.thread.i
  %i.aq = phi ptr [ %i.j, %Vec_IntGrow.exit24.i.thread.i ], [ %i.ao, %Vec_IntGrow.exit24.i.i ] ; 2 uses
  %i.ar = phi ptr [ %i.k, %Vec_IntGrow.exit24.i.thread.i ], [ %i.ao, %Vec_IntGrow.exit24.i.i ] ; 4 uses
  %i.as = zext nneg i32 %i.x to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32 ; 2 uses
  %i.av = icmp sgt i32 %i.au, %i.p
  br i1 %i.av, label %bb.o, label %._crit_edge.loopexit.split.loop.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !32
  %i.ax = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ax, label %bb.n, label %Vec_IntPushOrder.exit.i, !llvm.loop !50

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.n
  %i.ay = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %Vec_IntPushOrder.exit.i

Vec_IntPushOrder.exit.i:                          ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit.i.i, %Vec_IntGrow.exit24.i.i
  %i.az = phi ptr [ %i.ao, %Vec_IntGrow.exit24.i.i ], [ %i.aq, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.aq, %bb.o ]
  %i.ba = phi ptr [ %i.ao, %Vec_IntGrow.exit24.i.i ], [ %i.ar, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.ar, %bb.o ] ; 3 uses
  %.0.in.lcssa.i.i = phi i32 [ %i.x, %Vec_IntGrow.exit24.i.i ], [ %i.ay, %._crit_edge.loopexit.split.loop.exit.i.i ], [ 0, %bb.o ]
  %i.bb = sext i32 %.0.in.lcssa.i.i to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  store i32 %i.p, ptr %i.bc, align 4, !tbaa !32
  %.val.pre = load i32, ptr %i.f, align 4, !tbaa !30
  br label %Vec_IntPushUniqueOrder.exit

Vec_IntPushUniqueOrder.exit:                      ; preds = %bb.e, %Vec_IntPushOrder.exit.i, %bb.b
  %.val = phi i32 [ %.val21, %bb.b ], [ %.val.pre, %Vec_IntPushOrder.exit.i ], [ %.val21, %bb.e ] ; 2 uses
  %i.bd = phi ptr [ %i.j, %bb.b ], [ %i.az, %Vec_IntPushOrder.exit.i ], [ %i.j, %bb.e ]
  %i.be = phi ptr [ %i.k, %bb.b ], [ %i.ba, %Vec_IntPushOrder.exit.i ], [ %i.k, %bb.e ]
  %i.bf = phi ptr [ %i.l, %bb.b ], [ %i.ba, %Vec_IntPushOrder.exit.i ], [ %i.l, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = shl nsw i64 %indvars.iv.next, 2         ; 2 uses
  %i.bh = sext i32 %.val to i64
  %i.bi = icmp slt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.b, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %Vec_IntPushUniqueOrder.exit, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.bk) #22
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %._crit_edge, %bb.p
  tail call void @free(ptr noundef nonnull %i.a) #22
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Acec_RankTrees(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.b, align 8, !tbaa !8   ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.d = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
end_hunk_1
begin_hunk_2_@Acec_RankTrees:bb.a
  %i.en = phi ptr [ %i.da, %.thread.1 ], [ %i.dz, %bb.ac ], [ %i.dz, %Vec_IntGrow.exit11.sink.split.i.1 ], [ %i.da, %bb.r ], [ %i.da, %.preheader70.1 ] ; 3 uses
  %i.eo = phi ptr [ %i.db, %.thread.1 ], [ %i.dz, %bb.ac ], [ %i.dz, %Vec_IntGrow.exit11.sink.split.i.1 ], [ %i.db, %bb.r ], [ %i.db, %.preheader70.1 ] ; 3 uses
  %i.ep = phi i32 [ %i.dc, %.thread.1 ], [ %i.ea, %bb.ac ], [ %i.ea, %Vec_IntGrow.exit11.sink.split.i.1 ], [ %i.dc, %bb.r ], [ %i.dc, %.preheader70.1 ] ; 3 uses
  %i.eq = phi i32 [ %i.dd, %.thread.1 ], [ %i.eb, %bb.ac ], [ %i.eb, %Vec_IntGrow.exit11.sink.split.i.1 ], [ %i.dd, %bb.r ], [ %i.dd, %.preheader70.1 ] ; 6 uses
  %.val59.2 = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val59.2, i64 %i.bo
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32 ; 4 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.preheader70.2
  %i.ev = sext i32 %i.et to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !32 ; 3 uses
  %i.ey = icmp eq i32 %i.ex, %i.bm
  br i1 %i.ey, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ez = icmp eq i32 %i.ex, -1
  br i1 %i.ez, label %.thread.2, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fa = icmp eq i32 %i.eq, %i.ek
  br i1 %i.fa, label %bb.ag, label %Vec_IntGrow.exit11.sink.split.i.2

bb.ag:                                            ; preds = %bb.af
  %i.fb = icmp slt i32 %i.ek, 16
  br i1 %i.fb, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = icmp samesign ult i32 %i.ek, 1073741823
  %i.fd = shl nuw nsw i32 %i.ek, 1
  %spec.select.i.2 = select i1 %i.fc, i32 %i.fd, i32 2147483647 ; 4 uses
  %.not.i9.i.2 = icmp samesign ult i32 %i.ek, %spec.select.i.2
  br i1 %.not.i9.i.2, label %bb.ai, label %Vec_IntGrow.exit11.sink.split.i.2

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i.2 = icmp eq ptr %i.el, null
  %i.fe = zext nneg i32 %spec.select.i.2 to i64
  %i.ff = shl nuw nsw i64 %i.fe, 2                ; 2 uses
  br i1 %.not9.i10.i.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = tail call ptr @realloc(ptr noundef nonnull %i.el, i64 noundef %i.ff) #23
  br label %Vec_IntGrow.exit11.sink.split.i.2

bb.ak:                                            ; preds = %bb.ai
  %i.fh = tail call noalias ptr @malloc(i64 noundef %i.ff) #21
  br label %Vec_IntGrow.exit11.sink.split.i.2

bb.al:                                            ; preds = %bb.ag
  %.not9.i.i.2 = icmp eq ptr %i.el, null
  br i1 %.not9.i.i.2, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.el, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.2

bb.an:                                            ; preds = %bb.al
  %i.fj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i.2

Vec_IntGrow.exit11.sink.split.i.2:                ; preds = %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ah, %bb.af
  %i.fk = phi ptr [ %i.ej, %bb.af ], [ %i.ej, %bb.ah ], [ %i.fj, %bb.an ], [ %i.fi, %bb.am ], [ %i.fg, %bb.aj ], [ %i.fh, %bb.ak ] ; 9 uses
  %i.fl = phi i32 [ %i.ek, %bb.af ], [ %i.ek, %bb.ah ], [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i.2, %bb.aj ], [ %spec.select.i.2, %bb.ak ] ; 6 uses
  %i.fm = add nsw i32 %i.eq, 1                    ; 2 uses
  %i.fn = sext i32 %i.eq to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fn
  store i32 %i.et, ptr %i.fo, align 4, !tbaa !32
  %.val63.2 = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.fp = getelementptr inbounds [12 x i8], ptr %.val63.2, i64 %i.ev
  %.val67.2 = load i64, ptr %i.fp, align 4        ; 2 uses
  %i.fq = and i64 %.val67.2, 2147483648
  %.not.i68.2 = icmp ne i64 %i.fq, 0
  %i.fr = and i64 %.val67.2, 536870911
  %i.fs = icmp eq i64 %i.fr, 536870911
  %narrow.i.not.2 = or i1 %.not.i68.2, %i.fs
  br i1 %narrow.i.not.2, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %Vec_IntGrow.exit11.sink.split.i.2
  %i.ft = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.et, i32 noundef %i.ex, i32 noundef %i.bm) ; 0 uses
  br label %.loopexit

.thread.2:                                        ; preds = %bb.ae
  store i32 %i.bm, ptr %i.ew, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader70.2, %bb.ad, %Vec_IntGrow.exit11.sink.split.i.2, %bb.ao, %.thread.2, %bb.e
  %i.fu = phi ptr [ %i.az, %bb.e ], [ %i.ej, %.thread.2 ], [ %i.fk, %bb.ao ], [ %i.fk, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.ej, %bb.ad ], [ %i.ej, %.preheader70.2 ] ; 9 uses
  %i.fv = phi i32 [ %i.ba, %bb.e ], [ %i.ek, %.thread.2 ], [ %i.fl, %bb.ao ], [ %i.fl, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.ek, %bb.ad ], [ %i.ek, %.preheader70.2 ]
  %i.fw = phi ptr [ %i.bb, %bb.e ], [ %i.el, %.thread.2 ], [ %i.fk, %bb.ao ], [ %i.fk, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.el, %bb.ad ], [ %i.el, %.preheader70.2 ]
  %i.fx = phi i32 [ %i.bc, %bb.e ], [ %i.em, %.thread.2 ], [ %i.fl, %bb.ao ], [ %i.fl, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.em, %bb.ad ], [ %i.em, %.preheader70.2 ]
  %i.fy = phi ptr [ %i.bd, %bb.e ], [ %i.en, %.thread.2 ], [ %i.fk, %bb.ao ], [ %i.fk, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.en, %bb.ad ], [ %i.en, %.preheader70.2 ]
  %i.fz = phi ptr [ %i.be, %bb.e ], [ %i.eo, %.thread.2 ], [ %i.fk, %bb.ao ], [ %i.fk, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.eo, %bb.ad ], [ %i.eo, %.preheader70.2 ]
  %i.ga = phi i32 [ %i.bf, %bb.e ], [ %i.ep, %.thread.2 ], [ %i.fl, %bb.ao ], [ %i.fl, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.ep, %bb.ad ], [ %i.ep, %.preheader70.2 ]
  %i.gb = phi i32 [ %i.bg, %bb.e ], [ %i.eq, %.thread.2 ], [ %i.fm, %bb.ao ], [ %i.fm, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.eq, %bb.ad ], [ %i.eq, %.preheader70.2 ] ; 4 uses
  %i.gc = icmp samesign ugt i64 %indvars.iv83, 1
  br i1 %i.gc, label %bb.e, label %.preheader, !llvm.loop !56

bb.ap:                                            ; preds = %bb.ap, %.lr.ph78.new
  %indvars.iv85 = phi i64 [ 0, %.lr.ph78.new ], [ %indvars.iv.next86.3, %bb.ap ] ; 5 uses
  %niter121 = phi i64 [ 0, %.lr.ph78.new ], [ %niter121.next.3, %bb.ap ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv85
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !32
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.gf
  store i32 -1, ptr %i.gg, align 4, !tbaa !32
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv85
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !32
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.gk
  store i32 -1, ptr %i.gl, align 4, !tbaa !32
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv85
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !32
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.gp
  store i32 -1, ptr %i.gq, align 4, !tbaa !32
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv85
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !32
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.gu
  store i32 -1, ptr %i.gv, align 4, !tbaa !32
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter121.next.3 = add i64 %niter121, 4         ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %.critedge2.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !57

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.ap
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.critedge2, label %.epil.preheader115

.epil.preheader115:                               ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph78
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next86.3, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader115
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.epil.preheader115 ], [ %indvars.iv.next86.epil, %bb.aq ] ; 2 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.aq ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv85.epil
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !32
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.gy
  store i32 -1, ptr %i.gz, align 4, !tbaa !32
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.critedge2, label %bb.aq, !llvm.loop !58

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %bb.aq, %.critedge, %.preheader
  %i.ha = phi ptr [ %i.a, %.critedge ], [ %i.fu, %.preheader ], [ %i.fu, %bb.aq ], [ %i.fu, %.critedge2.loopexit.unr-lcssa ] ; 2 uses
  %.not.i69 = icmp eq ptr %i.ha, null
  br i1 %.not.i69, label %Vec_IntFree.exit, label %bb.ar

bb.ar:                                            ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.ha) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.ar
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_FindXorLeaves(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !8 ; 5 uses
  %i.b = ashr i32 %.val.i, 5
  %i.c = and i32 %.val.i, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %Vec_BitStart.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2                      ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #21
  br label %Vec_BitStart.exit.i

Vec_BitStart.exit.i:                              ; preds = %bb.b, %bb.a
  %.pre-phi8.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %.pre-phi8.i.i, i1 false)
  %i.k = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val11.i = load i32, ptr %i.k, align 4, !tbaa !30 ; 3 uses
  %i.l = icmp sgt i32 %.val11.i, 0                ; 2 uses
  br i1 %i.l, label %.lr.ph.i, label %Acec_MapXorOuts2.exit

.lr.ph.i:                                         ; preds = %Vec_BitStart.exit.i
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val14.i = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr i8, ptr %4, i64 8
  %.val13.i = load ptr, ptr %i.n, align 8, !tbaa !31
  %6 = add nsw i32 %.val11.i, -1
  %7 = lshr i32 %6, 2
  %8 = add nuw nsw i32 %7, 1
  %wide.trip.count.i = zext nneg i32 %8 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next18.i, %bb.e ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32   ; 3 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %.val13.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.p, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = ashr i32 %i.p, 5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = or i32 %i.y, %i.u
  store i32 %i.z, ptr %i.x, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Acec_MapXorOuts2.exit, label %bb.c, !llvm.loop !45

Acec_MapXorOuts2.exit:                            ; preds = %bb.e, %Vec_BitStart.exit.i
  %i.aa = add i32 %.val.i, -1
  %or.cond.i.i.i = icmp ult i32 %i.aa, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %.val.i ; 2 uses
  %.not.i.i.i56 = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i56, label %Vec_IntStartFull.exit.i, label %Vec_IntAlloc.exit.i.i

Vec_IntAlloc.exit.i.i:                            ; preds = %Acec_MapXorOuts2.exit
  %i.ab = sext i32 %spec.store.select.i.i.i to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #21 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %Vec_IntStartFull.exit.i, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i.i
  %i.ae = sext i32 %.val.i to i64
  %i.af = shl nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 -1, i64 %i.af, i1 false)
  br label %Vec_IntStartFull.exit.i

Vec_IntStartFull.exit.i:                          ; preds = %Acec_MapXorOuts2.exit, %bb.f, %Vec_IntAlloc.exit.i.i
  %i.ag = phi ptr [ %i.ad, %bb.f ], [ null, %Vec_IntAlloc.exit.i.i ], [ null, %Acec_MapXorOuts2.exit ] ; 6 uses
  %i.ah = getelementptr i8, ptr %2, i64 4
  %.val1217.i = load i32, ptr %i.ah, align 4, !tbaa !30 ; 2 uses
  %i.ai = icmp sgt i32 %.val1217.i, 0
  br i1 %i.ai, label %.lr.ph.i57, label %Acec_MapMajOuts2.exit

.lr.ph.i57:                                       ; preds = %Vec_IntStartFull.exit.i
  %i.aj = getelementptr i8, ptr %2, i64 8
  %.val15.i = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr i8, ptr %4, i64 8
  %.val14.i58 = load ptr, ptr %i.ak, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i57
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i57 ], [ %indvars.iv.next.i61, %bb.i ] ; 2 uses
  %i.al = phi i64 [ 0, %.lr.ph.i57 ], [ %i.au, %bb.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val14.i58, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.not.i60 = icmp eq i32 %i.ar, -1
  br i1 %.not.i60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ap
  %i.at = trunc nuw nsw i64 %indvars.iv.i59 to i32
  store i32 %i.at, ptr %i.as, align 4, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv.next.i61, 6 ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = icmp sgt i32 %.val1217.i, %i.av
  br i1 %i.aw, label %bb.g, label %Acec_MapMajOuts2.exit, !llvm.loop !47

Acec_MapMajOuts2.exit:                            ; preds = %bb.i, %Vec_IntStartFull.exit.i
  %i.ax = getelementptr i8, ptr %3, i64 4
  %.val47 = load i32, ptr %i.ax, align 4, !tbaa !30 ; 4 uses
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  %i.az = add i32 %.val47, -1
  %or.cond.i.i = icmp ult i32 %i.az, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val47 ; 5 uses
  store i32 %spec.store.select.i.i, ptr %i.ay, align 8, !tbaa !59
  %.not.i.i62 = icmp eq i32 %spec.store.select.i.i, 0 ; 2 uses
  br i1 %.not.i.i62, label %Vec_WecStart.exit, label %bb.j

bb.j:                                             ; preds = %Acec_MapMajOuts2.exit
  %i.ba = sext i32 %spec.store.select.i.i to i64
  %i.bb = tail call noalias ptr @calloc(i64 noundef %i.ba, i64 noundef 16) #24
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %Acec_MapMajOuts2.exit, %bb.j
  %i.bc = phi ptr [ %i.bb, %bb.j ], [ null, %Acec_MapMajOuts2.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !61
  store i32 %.val47, ptr %i.bd, align 4, !tbaa !62
  %i.bf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  store i32 %spec.store.select.i.i, ptr %i.bf, align 8, !tbaa !59
  br i1 %.not.i.i62, label %Vec_WecStart.exit66, label %bb.k

bb.k:                                             ; preds = %Vec_WecStart.exit
  %i.bg = sext i32 %spec.store.select.i.i to i64
  %i.bh = tail call noalias ptr @calloc(i64 noundef %i.bg, i64 noundef 16) #24
  br label %Vec_WecStart.exit66

Vec_WecStart.exit66:                              ; preds = %Vec_WecStart.exit, %bb.k
  %i.bi = phi ptr [ %i.bh, %bb.k ], [ null, %Vec_WecStart.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !61
  store i32 %.val47, ptr %i.bj, align 4, !tbaa !62
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WecStart.exit66
  %i.bl = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.bm = getelementptr i8, ptr %4, i64 8         ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %.loopexit
  %.val82 = phi i32 [ %.val11.i, %.lr.ph ], [ %.val, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ]
  %i.bn = phi i64 [ 0, %.lr.ph ], [ %i.dw, %.loopexit ]
  %.val53 = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 2 uses
  %i.bo = and i64 %i.bn, 4294967292               ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32
  %.val52 = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %.val52, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !32 ; 6 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bv = add nsw i32 %i.bt, -1                   ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %i.bo
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32 ; 5 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.ca = ashr i32 %i.by, 5
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !32
  %i.ce = and i32 %i.by, 31
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = and i32 %i.cd, %i.cf
  %.not45 = icmp eq i32 %i.cg, 0
  br i1 %.not45, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ch = sext i32 %i.by to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.ay, i32 noundef %i.bt, i32 noundef %i.by)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cl = icmp sgt i32 %i.bt, 0
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bf, i32 noundef %i.bv, i32 noundef %i.cj)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.m, %.preheader
  %.val51.1 = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val51.1, i64 %i.bo
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !32 ; 5 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = ashr i32 %i.co, 5
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !32
  %i.cu = and i32 %i.co, 31
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = and i32 %i.ct, %i.cv
  %.not45.1 = icmp eq i32 %i.cw, 0
  br i1 %.not45.1, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cx = sext i32 %i.co to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !32 ; 2 uses
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val49.1 = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.db = getelementptr inbounds [4 x i8], ptr %.val49.1, i64 %i.br
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bf, i32 noundef %i.bv, i32 noundef %i.cz)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.ay, i32 noundef %i.bt, i32 noundef %i.co)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
end_hunk_2
