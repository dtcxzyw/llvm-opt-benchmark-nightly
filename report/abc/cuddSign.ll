Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddSign?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"out-of-memory, couldn't measure DD cofactors.\0A\00", align 1
@size = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define noundef ptr @Cudd_CofMinterm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #7 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  store i32 %i.d, ptr @size, align 4, !tbaa !27
  %i.e = tail call fastcc ptr @ddCofMintermAux(ptr noundef %0, ptr noundef %1, ptr noundef %i.a) ; 7 uses
  %.not61 = icmp eq ptr %i.e, null
  br i1 %.not61, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @size, align 4, !tbaa !27
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #8 ; 12 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %1 to i64
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 3 uses
  %i.o = icmp eq i32 %i.n, 2147483647
  br i1 %i.o, label %bb.e, label %.thread84

bb.e:                                             ; preds = %bb.d
  %2 = load i32, ptr @size, align 4, !tbaa !27    ; 7 uses
  %i.p = icmp sgt i32 %2, 0
  br i1 %i.p, label %.lr.ph.split.us, label %.._crit_edge_crit_edge

.thread84:                                        ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %3 = load i32, ptr %i.t, align 4, !tbaa !27     ; 3 uses
  %i.u = load i32, ptr @size, align 4, !tbaa !27  ; 8 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.split, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %.thread84, %bb.e
  %4 = phi i32 [ %i.u, %.thread84 ], [ %2, %bb.e ] ; 2 uses
  %.087 = phi i32 [ %3, %.thread84 ], [ 1, %bb.e ]
  %.pre74 = sub nsw i32 %4, %.087
  %.pre76 = sext i32 %.pre74 to i64
  br label %._crit_edge

.lr.ph.split.us:                                  ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = add nsw i32 %2, -1
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !30 ; 5 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !31  ; 5 uses
  %wide.trip.count68 = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter103 = and i64 %wide.trip.count68, 3    ; 3 uses
  %i.ac = icmp ult i32 %2, 4
  br i1 %i.ac, label %.critedge.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter106 = and i64 %wide.trip.count68, 2147483644
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us, %.lr.ph.split.us.new
  %indvars.iv65 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next66.3, %.critedge.us ] ; 5 uses
  %niter107 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter107.next.3, %.critedge.us ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv65
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.af
  store double %i.aa, ptr %i.ag, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv65
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ak
  store double %i.aa, ptr %i.al, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv65
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ap
  store double %i.aa, ptr %i.aq, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv65
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.au
  store double %i.aa, ptr %i.av, align 8, !tbaa !30
  %indvars.iv.next66.3 = add nuw nsw i64 %indvars.iv65, 4 ; 2 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.critedge.us, !llvm.loop !32

.lr.ph.split:                                     ; preds = %.thread84
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ax = sub nsw i32 %i.u, %3
  %i.ay = sext i32 %i.ax to i64                   ; 5 uses
  %i.az = zext i32 %i.n to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = sext i32 %3 to i64                      ; 3 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bg = icmp eq i32 %i.u, 1
  br i1 %i.bg, label %.critedge.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %.critedge ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %.critedge ]
  %i.bi = icmp slt i64 %indvars.iv, %i.be
  %i.bj = sub nsw i64 %indvars.iv, %i.bf
  %.pn = select i1 %i.bi, i64 %i.ay, i64 %i.bj
  %.sink.in = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pn
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bm
  store double %.sink, ptr %i.bn, align 8, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bo = icmp slt i64 %indvars.iv.next, %i.be
  %i.bp = sub nsw i64 %indvars.iv.next, %i.bf
  %.pn.1 = select i1 %i.bo, i64 %i.ay, i64 %i.bp
  %.sink.in.1 = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pn.1
  %.sink.1 = load double, ptr %.sink.in.1, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !27
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bs
  store double %.sink.1, ptr %i.bt, align 8, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit101.unr-lcssa, label %.critedge, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.critedge.us
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %._crit_edge, label %.critedge.us.epil.preheader

.critedge.us.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %indvars.iv65.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next66.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod105 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %.critedge.us.epil

.critedge.us.epil:                                ; preds = %.critedge.us.epil, %.critedge.us.epil.preheader
  %indvars.iv65.epil = phi i64 [ %indvars.iv.next66.epil, %.critedge.us.epil ], [ %indvars.iv65.epil.init, %.critedge.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.critedge.us.epil ], [ 0, %.critedge.us.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv65.epil
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bw
  store double %i.aa, ptr %i.bx, align 8, !tbaa !30
  %indvars.iv.next66.epil = add nuw nsw i64 %indvars.iv65.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.critedge.us.epil, !llvm.loop !34

._crit_edge.loopexit101.unr-lcssa:                ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %._crit_edge.loopexit101.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.1, %._crit_edge.loopexit101.unr-lcssa ] ; 3 uses
  %lcmp.mod102 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.by = icmp slt i64 %indvars.iv.epil.init, %i.be
  %i.bz = sub nsw i64 %indvars.iv.epil.init, %i.bf
  %.pn.epil = select i1 %i.by, i64 %i.ay, i64 %i.bz
  %.sink.in.epil = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pn.epil
  %.sink.epil = load double, ptr %.sink.in.epil, align 8, !tbaa !30
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.epil.init
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !27
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cd
  store double %.sink.epil, ptr %i.ce, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge.epil.preheader, %._crit_edge.loopexit101.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %.critedge.us.epil, %.._crit_edge_crit_edge
  %5 = phi i32 [ %4, %.._crit_edge_crit_edge ], [ %2, %._crit_edge.loopexit.unr-lcssa ], [ %2, %.critedge.us.epil ], [ %i.u, %._crit_edge.loopexit101.unr-lcssa ], [ %i.u, %.critedge.epil.preheader ]
  %.pre-phi77 = phi i64 [ %.pre76, %.._crit_edge_crit_edge ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ], [ %i.y, %.critedge.us.epil ], [ %i.ay, %._crit_edge.loopexit101.unr-lcssa ], [ %i.ay, %.critedge.epil.preheader ]
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pre-phi77
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !30
  %i.ch = sext i32 %5 to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ch
  store double %i.cg, ptr %i.ci, align 8, !tbaa !30
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.cj, align 8, !tbaa !36
  %.pre = ptrtoint ptr %1 to i64
  %.pre70 = and i64 %.pre, -2
  %.pre72 = inttoptr i64 %.pre70 to ptr
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi73 = phi ptr [ %i.m, %._crit_edge ], [ %.pre72, %bb.f ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre-phi73, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !37
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.e) #7
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.h, %bb.g
  %.04760 = phi ptr [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ null, %bb.b ] ; 2 uses
  %i.cn = tail call i32 @st__foreach(ptr noundef nonnull %i.a, ptr noundef nonnull @cuddStCountfree, ptr noundef null) #7 ; 0 uses
  tail call void @st__free_table(ptr noundef nonnull %i.a) #7
  %i.co = icmp eq ptr %.04760, null
  br i1 %i.co, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %.thread, %bb.a
  %.sink99 = phi i64 [ 624, %bb.a ], [ 616, %.thread ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink99
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38
  %i.cr = tail call i64 @fwrite(ptr nonnull @.str, i64 46, i64 1, ptr %i.cq) ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.cs, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.thread
  %.048 = phi ptr [ %.04760, %.thread ], [ null, %.sink.split ]
  ret ptr %.048
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @st__init_table(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @st__ptrcmp(ptr noundef, ptr noundef) #2

declare i32 @st__ptrhash(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ddCofMintermAux(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @st__lookup(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp eq i32 %i.g, 2147483647             ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @size, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = zext i32 %i.g to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = add i32 %i.i, 1
  %i.p = sub i32 %i.o, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0104 = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]  ; 3 uses
  %i.q = sext i32 %.0104 to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = call noalias ptr @malloc(i64 noundef %i.r) #8 ; 4 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !39
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.u, align 8, !tbaa !36
  br label %bb.au

bb.g:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = icmp eq ptr %1, %i.w
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = xor i64 %i.aa, 1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !30
  br label %bb.aq

bb.k:                                             ; preds = %bb.i
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !30
  br label %bb.aq

bb.l:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = icmp ne ptr %1, %i.f
  %i.ai = zext i1 %i.ah to i64                    ; 2 uses
  %i.aj = xor i64 %i.ag, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = call fastcc ptr @ddCofMintermAux(ptr noundef %0, ptr noundef %i.ak, ptr noundef %2) ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.au, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = xor i64 %i.an, %i.ai
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = call fastcc ptr @ddCofMintermAux(ptr noundef %0, ptr noundef %i.ar, ptr noundef %2) ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.au, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = and i64 %i.ag, -2
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !28 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 2147483647           ; 3 uses
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load i32, ptr @size, align 4, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = zext i32 %i.aw to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = sub nsw i32 %i.ay, %i.bd
  %i.bf = sext i32 %i.be to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0103 = phi i64 [ %i.bf, %bb.o ], [ 0, %bb.n ]
  %i.bg = and i64 %i.an, -2
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !28 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 2147483647           ; 3 uses
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr @size, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bn = zext i32 %i.bi to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !27
  %i.bq = sub nsw i32 %i.bk, %i.bp
  %i.br = sext i32 %i.bq to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0102 = phi i64 [ %i.br, %bb.q ], [ 0, %bb.p ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.0103 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  store double %i.bt, ptr %i.bu, align 8, !tbaa !30
  %i.bv = icmp sgt i32 %.0104, 1
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 8 uses
  %i.bx = zext i32 %i.aw to i64                   ; 2 uses
  %i.by = load i32, ptr %i.f, align 8, !tbaa !28  ; 2 uses
  %i.bz = icmp eq i32 %i.by, 2147483647           ; 4 uses
  %i.ca = zext i32 %i.by to i64                   ; 4 uses
  %i.cb = zext i32 %i.bi to i64                   ; 2 uses
end_hunk_0
