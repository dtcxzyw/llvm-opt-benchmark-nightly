Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFxu?download=true
inline.NumInlined: 41
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@str = private unnamed_addr constant [53 x i8] c"Abc_NtkFastExtract(): Converting to SOPs has failed.\00", align 1
@str.1 = private unnamed_addr constant [88 x i8] c"Abc_NtkFastExtract: Nodes have duplicated or complemented fanins. FXU is not performed.\00", align 1
@str.2 = private unnamed_addr constant [51 x i8] c"Warning: The network has not been changed by \22fx\22.\00", align 1
@str.3 = private unnamed_addr constant [50 x i8] c"Abc_NtkFastExtract: The network check has failed.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Abc_NtkSetDefaultFxParams(ptr nofree noundef writeonly captures(none) initializes((0, 96)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20000, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 30000, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1000000, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.e, align 8, !tbaa !29
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkFastExtract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
Abc_NtkIsSopLogic.exit:
  %i.a = tail call i32 @Abc_NtkToSop(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1000000000) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.sink.split, label %bb.a

bb.a:                                             ; preds = %Abc_NtkIsSopLogic.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i = load i32, ptr %i.d, align 4, !tbaa !18 ; 2 uses
  %i.e = icmp sgt i32 %.val.i, 0
  br i1 %i.e, label %.lr.ph.i, label %Abc_NtkFxuCheck.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val33.val.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %wide.trip.count58.i = zext nneg i32 %.val.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next56.i, %.critedge2.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i, i64 %indvars.iv55.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge2.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 20
  %.val34.i = load i32, ptr %i.j, align 4         ; 2 uses
  %i.k = and i32 %.val34.i, 15
  %.not.i = icmp eq i32 %i.k, 7
  br i1 %.not.i, label %.preheader.i, label %.critedge2.i

.preheader.i:                                     ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 28
  %.val36.i = load i32, ptr %i.l, align 4, !tbaa !60 ; 2 uses
  %i.m = icmp sgt i32 %.val36.i, 0
  br i1 %i.m, label %.lr.ph45.i, label %.critedge2.i

.lr.ph45.i:                                       ; preds = %.preheader.i
  %.val39.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.n = getelementptr i8, ptr %i.h, i64 32
  %.val40.i = load ptr, ptr %i.n, align 8, !tbaa !62 ; 2 uses
  %i.o = getelementptr i8, ptr %.val39.i, i64 32
  %.val39.val.i = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.p = getelementptr i8, ptr %.val39.val.i, i64 8
  %.val39.val.val.i = load ptr, ptr %i.p, align 8, !tbaa !19 ; 2 uses
  %wide.trip.count53.i = zext nneg i32 %.val36.i to i64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %..critedge4_crit_edge.us.i, %.lr.ph45.i
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %..critedge4_crit_edge.us.i ], [ 0, %.lr.ph45.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val40.i, i64 %indvars.iv50.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.val39.val.val.i, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = icmp samesign ult i64 %indvars.iv50.i, 2
  br i1 %i.v, label %bb.e, label %.lr.ph.us.i.preheader

bb.e:                                             ; preds = %bb.d
  %2 = trunc nuw nsw i64 %indvars.iv50.i to i32
  %3 = shl nuw nsw i32 1024, %2
  %i.w = and i32 %3, %.val34.i
  %.not32.us.i = icmp eq i32 %i.w, 0
  br i1 %.not32.us.i, label %.lr.ph.us.i.preheader, label %.sink.split

.lr.ph.us.i.preheader:                            ; preds = %bb.e, %bb.d
  br label %.lr.ph.us.i

bb.f:                                             ; preds = %.lr.ph.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count53.i
  br i1 %exitcond.not.i, label %..critedge4_crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !30

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val40.i, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !13
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val39.val.val.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = icmp ne i64 %indvars.iv50.i, %indvars.iv.i
  %i.ad = icmp eq ptr %i.u, %i.ab
  %or.cond.us.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.us.i, label %.sink.split, label %bb.f

..critedge4_crit_edge.us.i:                       ; preds = %bb.f
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %.critedge2.i, label %bb.d, !llvm.loop !31

.critedge2.i:                                     ; preds = %..critedge4_crit_edge.us.i, %.preheader.i, %bb.c, %bb.b
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %Abc_NtkFxuCheck.exit, label %bb.b, !llvm.loop !32

Abc_NtkFxuCheck.exit:                             ; preds = %.critedge2.i, %bb.a
  %i.ae = tail call i32 @Abc_NtkCleanup(ptr noundef nonnull %0, i32 noundef 0) #11 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !64
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %calloc.i.i, ptr %i.ai, align 8, !tbaa !22
  %calloc.i40.i = tail call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  store ptr %calloc.i40.i, ptr %i.aj, align 8, !tbaa !23
  %calloc.i41.i = tail call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  store ptr %calloc.i41.i, ptr %i.ak, align 8, !tbaa !24
  %calloc.i42.i = tail call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  store ptr %calloc.i42.i, ptr %i.al, align 8, !tbaa !25
  %.val39.i15 = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %i.am = getelementptr i8, ptr %.val39.i15, i64 4
  %.val39.val.i16 = load i32, ptr %i.am, align 4, !tbaa !18 ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.val39.val.i16, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %Vec_PtrFill.exit.i

.lr.ph.i.i:                                       ; preds = %Abc_NtkFxuCheck.exit
  %i.an = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8 ; 6 uses
  %i.ao = zext nneg i32 %.val39.val.i16 to i64    ; 3 uses
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #12
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !19
  store i32 %.val39.val.i16, ptr %calloc.i.i, align 8, !tbaa !65
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.ar = icmp ult i32 %.val39.val.i16, 4
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.ao, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.g ]
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.i
  store ptr null, ptr %i.at, align 8, !tbaa !20
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !20
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr null, ptr %i.az, align 8, !tbaa !20
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr null, ptr %i.bc, align 8, !tbaa !20
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_PtrFill.exit.loopexit.i.unr-lcssa, label %bb.g, !llvm.loop !33

Vec_PtrFill.exit.loopexit.i.unr-lcssa:            ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_PtrFill.exit.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_PtrFill.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %Vec_PtrFill.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i.epil
  store ptr null, ptr %i.be, align 8, !tbaa !20
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_PtrFill.exit.loopexit.i, label %bb.h, !llvm.loop !34

Vec_PtrFill.exit.loopexit.i:                      ; preds = %bb.h, %Vec_PtrFill.exit.loopexit.i.unr-lcssa
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.val38.pre.i = load ptr, ptr %i.b, align 8, !tbaa !57
  %.pre75.i = load i32, ptr %.pre.i, align 8, !tbaa !65
  br label %Vec_PtrFill.exit.i

Vec_PtrFill.exit.i:                               ; preds = %Vec_PtrFill.exit.loopexit.i, %Abc_NtkFxuCheck.exit
  %i.bf = phi i32 [ %.pre75.i, %Vec_PtrFill.exit.loopexit.i ], [ 0, %Abc_NtkFxuCheck.exit ]
  %.val38.i = phi ptr [ %.val38.pre.i, %Vec_PtrFill.exit.loopexit.i ], [ %.val39.i15, %Abc_NtkFxuCheck.exit ]
  %i.bg = phi ptr [ %.pre.i, %Vec_PtrFill.exit.loopexit.i ], [ %calloc.i40.i, %Abc_NtkFxuCheck.exit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 4
  store i32 %.val39.val.i16, ptr %i.bh, align 4, !tbaa !18
  %i.bi = getelementptr i8, ptr %.val38.i, i64 4
  %.val38.val.i = load i32, ptr %i.bi, align 4, !tbaa !18 ; 7 uses
  %.not.i.i43.i = icmp slt i32 %i.bf, %.val38.val.i
  br i1 %.not.i.i43.i, label %bb.i, label %Vec_PtrGrow.exit.i44.i

bb.i:                                             ; preds = %Vec_PtrFill.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19 ; 2 uses
  %.not9.i.i50.i = icmp eq ptr %i.bk, null
  %i.bl = sext i32 %.val38.val.i to i64
  %i.bm = shl nsw i64 %i.bl, 3                    ; 2 uses
  br i1 %.not9.i.i50.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %i.bm) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = phi ptr [ %i.bn, %bb.j ], [ %i.bo, %bb.k ]
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !19
  store i32 %.val38.val.i, ptr %i.bg, align 8, !tbaa !65
  br label %Vec_PtrGrow.exit.i44.i

Vec_PtrGrow.exit.i44.i:                           ; preds = %bb.l, %Vec_PtrFill.exit.i
  %i.bq = icmp sgt i32 %.val38.val.i, 0
  br i1 %i.bq, label %.lr.ph.i45.i, label %Vec_PtrFill.exit51.i

.lr.ph.i45.i:                                     ; preds = %Vec_PtrGrow.exit.i44.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %wide.trip.count.i46.i = zext nneg i32 %.val38.val.i to i64 ; 2 uses
  %xtraiter65 = and i64 %wide.trip.count.i46.i, 3 ; 3 uses
  %i.bs = icmp ult i32 %.val38.val.i, 4
  br i1 %i.bs, label %.epil.preheader64, label %.lr.ph.i45.i.new

.lr.ph.i45.i.new:                                 ; preds = %.lr.ph.i45.i
  %unroll_iter69 = and i64 %wide.trip.count.i46.i, 2147483644
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i45.i.new
  %indvars.iv.i47.i = phi i64 [ 0, %.lr.ph.i45.i.new ], [ %indvars.iv.next.i48.i.3, %bb.m ] ; 5 uses
  %niter70 = phi i64 [ 0, %.lr.ph.i45.i.new ], [ %niter70.next.3, %bb.m ]
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i47.i
  store ptr null, ptr %i.bu, align 8, !tbaa !20
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i47.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !20
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i47.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr null, ptr %i.ca, align 8, !tbaa !20
  %i.cb = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i47.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr null, ptr %i.cd, align 8, !tbaa !20
  %indvars.iv.next.i48.i.3 = add nuw nsw i64 %indvars.iv.i47.i, 4 ; 2 uses
  %niter70.next.3 = add i64 %niter70, 4           ; 2 uses
  %niter70.ncmp.3 = icmp eq i64 %niter70.next.3, %unroll_iter69
  br i1 %niter70.ncmp.3, label %Vec_PtrFill.exit51.i.loopexit.unr-lcssa, label %bb.m, !llvm.loop !33

Vec_PtrFill.exit51.i.loopexit.unr-lcssa:          ; preds = %bb.m
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod67.not, label %Vec_PtrFill.exit51.i, label %.epil.preheader64

.epil.preheader64:                                ; preds = %Vec_PtrFill.exit51.i.loopexit.unr-lcssa, %.lr.ph.i45.i
  %indvars.iv.i47.i.epil.init = phi i64 [ 0, %.lr.ph.i45.i ], [ %indvars.iv.next.i48.i.3, %Vec_PtrFill.exit51.i.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter65, 0
end_hunk_0
