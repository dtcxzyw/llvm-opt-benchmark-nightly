Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bblif?download=true
inline.NumInlined: 111
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Bbl_ManTruthToSop:bb.a

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph93

vector.ph93:                                      ; preds = %vector.main.loop.iter.check
  %i.bx = getelementptr i8, ptr %.14556.us, i64 %n.vec94 ; 3 uses
  %broadcast.splatinsert95 = insertelement <16 x i32> poison, i32 %.14257.us, i64 0
  %broadcast.splat96 = shufflevector <16 x i32> %broadcast.splatinsert95, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body97

vector.body97:                                    ; preds = %vector.ph93, %vector.body97
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body97 ] ; 2 uses
  %vec.ind99 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph93 ], [ %vec.ind.next101, %vector.body97 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.14556.us, i64 %index98
  %i.by = shl nuw <16 x i32> splat (i32 1), %vec.ind99
  %i.bz = and <16 x i32> %i.by, %broadcast.splat96
  %i.ca = icmp eq <16 x i32> %i.bz, zeroinitializer
  %i.cb = select <16 x i1> %i.ca, <16 x i8> splat (i8 48), <16 x i8> splat (i8 49)
  store <16 x i8> %i.cb, ptr %next.gep, align 1, !tbaa !42
  %index.next100 = add nuw i64 %index98, 16       ; 2 uses
  %vec.ind.next101 = add nuw nsw <16 x i32> %vec.ind99, splat (i32 16)
  %i.cc = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.cc, label %middle.block102, label %vector.body97, !llvm.loop !61

middle.block102:                                  ; preds = %vector.body97
  %ind.escape = getelementptr i8, ptr %i.bx, i64 -1
  br i1 %cmp.n103, label %._crit_edge54.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block102
  br i1 %min.epilog.iters.check.not.not, label %.preheader.us.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec94, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val104 = phi i32 [ %i.bn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cd = getelementptr i8, ptr %.14556.us, i64 %n.vec106 ; 3 uses
  %broadcast.splatinsert107 = insertelement <8 x i32> poison, i32 %.14257.us, i64 0
  %broadcast.splat108 = shufflevector <8 x i32> %broadcast.splatinsert107, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <8 x i32> poison, i32 %bc.resume.val104, i64 0
  %broadcast.splat110 = shufflevector <8 x i32> %broadcast.splatinsert109, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i32> %broadcast.splat110, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind112 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next115, %vec.epilog.vector.body ] ; 2 uses
  %next.gep113 = getelementptr i8, ptr %.14556.us, i64 %index111
  %i.ce = shl nuw <8 x i32> splat (i32 1), %vec.ind112
  %i.cf = and <8 x i32> %i.ce, %broadcast.splat108
  %i.cg = icmp eq <8 x i32> %i.cf, zeroinitializer
  %i.ch = select <8 x i1> %i.cg, <8 x i8> splat (i8 48), <8 x i8> splat (i8 49)
  store <8 x i8> %i.ch, ptr %next.gep113, align 1, !tbaa !42
  %index.next114 = add nuw i64 %index111, 8       ; 2 uses
  %vec.ind.next115 = add nuw nsw <8 x i32> %vec.ind112, splat (i32 8)
  %i.ci = icmp eq i64 %index.next114, %n.vec106
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape116 = getelementptr i8, ptr %i.cd, i64 -1
  br i1 %cmp.n117, label %._crit_edge54.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.152.us.ph = phi i32 [ 0, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  %.251.us.ph = phi ptr [ %.14556.us, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %.152.us = phi i32 [ %i.cn, %.preheader.us ], [ %.152.us.ph, %.preheader.us.preheader ] ; 2 uses
  %.251.us = phi ptr [ %i.cm, %.preheader.us ], [ %.251.us.ph, %.preheader.us.preheader ] ; 3 uses
  %i.cj = shl nuw i32 1, %.152.us
  %i.ck = and i32 %i.cj, %.14257.us
  %.not.us = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not.us, i8 48, i8 49
  %i.cm = getelementptr inbounds nuw i8, ptr %.251.us, i64 1 ; 2 uses
  store i8 %i.cl, ptr %.251.us, align 1, !tbaa !42
  %i.cn = add nuw nsw i32 %.152.us, 1             ; 2 uses
  %exitcond75.not = icmp eq i32 %i.cn, %1
  br i1 %exitcond75.not, label %._crit_edge54.us, label %.preheader.us, !llvm.loop !63

bb.b:                                             ; preds = %._crit_edge54.us, %.lr.ph60.split.us
  %.3.us = phi ptr [ %.14556.us, %.lr.ph60.split.us ], [ %i.cr, %._crit_edge54.us ] ; 2 uses
  %i.co = add nuw nsw i32 %.14257.us, 1           ; 2 uses
  %exitcond77.not = icmp eq i32 %i.co, %smax76
  br i1 %exitcond77.not, label %._crit_edge61, label %.lr.ph60.split.us, !llvm.loop !64

._crit_edge54.us:                                 ; preds = %.preheader.us, %vec.epilog.middle.block, %middle.block102
  %.251.us.lcssa = phi ptr [ %ind.escape116, %vec.epilog.middle.block ], [ %ind.escape, %middle.block102 ], [ %.251.us, %.preheader.us ] ; 3 uses
  %.lcssa = phi ptr [ %i.cd, %vec.epilog.middle.block ], [ %i.bx, %middle.block102 ], [ %i.cm, %.preheader.us ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.251.us.lcssa, i64 2
  store i8 32, ptr %.lcssa, align 1, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %.251.us.lcssa, i64 3
  store i8 49, ptr %i.cp, align 1, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %.251.us.lcssa, i64 4
  store i8 10, ptr %i.cq, align 1, !tbaa !42
  br label %bb.b

.lr.ph60.split:                                   ; preds = %bb.c, %.lr.ph60.split.preheader.new
  %.14257 = phi i32 [ 0, %.lr.ph60.split.preheader.new ], [ %i.do, %bb.c ] ; 5 uses
  %.14556 = phi ptr [ %i.bi, %.lr.ph60.split.preheader.new ], [ %.3.1, %bb.c ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph60.split.preheader.new ], [ %niter.next.1, %bb.c ]
  %i.cs = lshr i32 %.14257, 5
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !20
  %i.cw = and i32 %.14257, 30
  %i.cx = shl nuw nsw i32 1, %i.cw
  %i.cy = and i32 %i.cv, %i.cx
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph60.split.1, label %.preheader

.preheader:                                       ; preds = %.lr.ph60.split
  %i.da = getelementptr inbounds nuw i8, ptr %.14556, i64 1
  store i8 32, ptr %.14556, align 1, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %.14556, i64 2
  store i8 49, ptr %i.da, align 1, !tbaa !42
  %i.dc = getelementptr inbounds nuw i8, ptr %.14556, i64 3
  store i8 10, ptr %i.db, align 1, !tbaa !42
  br label %.lr.ph60.split.1

.lr.ph60.split.1:                                 ; preds = %.lr.ph60.split, %.preheader
  %.3 = phi ptr [ %.14556, %.lr.ph60.split ], [ %i.dc, %.preheader ] ; 5 uses
  %i.dd = lshr i32 %.14257, 5
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !20
  %i.dh = and i32 %.14257, 30
  %i.di = shl nuw i32 2, %i.dh
  %i.dj = and i32 %i.dg, %i.di
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.c, label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph60.split.1
  %i.dl = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 32, ptr %.3, align 1, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %.3, i64 2
  store i8 49, ptr %i.dl, align 1, !tbaa !42
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 3
  store i8 10, ptr %i.dm, align 1, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %.preheader.1, %.lr.ph60.split.1
  %.3.1 = phi ptr [ %.3, %.lr.ph60.split.1 ], [ %i.dn, %.preheader.1 ] ; 3 uses
  %i.do = add nuw nsw i32 %.14257, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge61.loopexit122.unr-lcssa, label %.lr.ph60.split, !llvm.loop !64

._crit_edge61.loopexit122.unr-lcssa:              ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.lr.ph60.split.epil.preheader

.lr.ph60.split.epil.preheader:                    ; preds = %._crit_edge61.loopexit122.unr-lcssa, %.lr.ph60.split.preheader
  %.14257.epil.init = phi i32 [ 0, %.lr.ph60.split.preheader ], [ %i.do, %._crit_edge61.loopexit122.unr-lcssa ] ; 2 uses
  %.14556.epil.init = phi ptr [ %i.bi, %.lr.ph60.split.preheader ], [ %.3.1, %._crit_edge61.loopexit122.unr-lcssa ] ; 5 uses
  %lcmp.mod128 = trunc i32 %smax76 to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.dp = lshr i32 %.14257.epil.init, 5
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !20
  %i.dt = and i32 %.14257.epil.init, 31
  %i.du = shl nuw i32 1, %i.dt
  %i.dv = and i32 %i.ds, %i.du
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %._crit_edge61, label %.preheader.epil

.preheader.epil:                                  ; preds = %.lr.ph60.split.epil.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %.14556.epil.init, i64 1
  store i8 32, ptr %.14556.epil.init, align 1, !tbaa !42
  %i.dy = getelementptr inbounds nuw i8, ptr %.14556.epil.init, i64 2
  store i8 49, ptr %i.dx, align 1, !tbaa !42
  %i.dz = getelementptr inbounds nuw i8, ptr %.14556.epil.init, i64 3
  store i8 10, ptr %i.dy, align 1, !tbaa !42
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit122.unr-lcssa, %.preheader.epil, %.lr.ph60.split.epil.preheader, %bb.b
  %.145.lcssa = phi ptr [ %.3.us, %bb.b ], [ %.3.1, %._crit_edge61.loopexit122.unr-lcssa ], [ %.14556.epil.init, %.lr.ph60.split.epil.preheader ], [ %i.dz, %.preheader.epil ]
  store i8 0, ptr %.145.lcssa, align 1, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge61, %._crit_edge67
  %.046 = phi ptr [ %i.aw, %._crit_edge67 ], [ %i.bi, %._crit_edge61 ]
  ret ptr %.046
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Bbl_ManSopToTruth(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = icmp slt i32 %1, 6                       ; 2 uses
  %i.c = add nsw i32 %1, -5                       ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %.fr.i = freeze i32 %i.d
  %i.e = select i1 %i.b, i32 1, i32 %.fr.i        ; 15 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %i.h = add nsw i32 %1, 3
  %i.i = sext i32 %i.h to i64                     ; 9 uses
  %i.j = urem i64 %i.g, %i.i
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = sext i32 %i.e to i64                     ; 12 uses
  %i.l = shl nsw i64 %i.k, 2                      ; 13 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #25 ; 10 uses
  %i.n = add nsw i32 %1, 1                        ; 2 uses
  %i.o = select i1 %i.b, i32 0, i32 %i.c
  %i.p = shl i32 %i.n, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #25 ; 3 uses
  store ptr %i.s, ptr %i.a, align 16, !tbaa !93
  %i.t = icmp sgt i32 %1, 1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %1 to i64
  %load_initial = load ptr, ptr %i.a, align 16    ; 2 uses
  %i.u = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.u, 7                     ; 3 uses
  %i.v = add nsw i32 %1, -2
  %i.w = icmp ult i32 %i.v, 7
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.u, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded = phi ptr [ %load_initial, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.x = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = getelementptr inbounds [4 x i8], ptr %store_forwarded, i64 %i.k ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !93
  %i.z = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.k ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.k ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !93
  %i.af = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.k ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !93
  %i.ai = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.k ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !93
  %i.al = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.k ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !93
  %i.ao = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.k ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !93
  %i.ar = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.as = getelementptr i8, ptr %i.ar, i64 56
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.k ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !93
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !66

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi ptr [ %load_initial, %.lr.ph.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod278 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi ptr [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.av, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.au = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.av = getelementptr inbounds [4 x i8], ptr %store_forwarded.epil, i64 %i.k ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !93
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !67

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %i.aw = zext nneg i32 %1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit
  %.069.lcssa = phi i64 [ %i.aw, %._crit_edge.loopexit ], [ 1, %bb.d ]
  %i.ax = getelementptr [8 x i8], ptr %i.a, i64 %.069.lcssa
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93 ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %i.k ; 27 uses
  %i.bb = icmp sgt i32 %1, 0                      ; 2 uses
  %i.bc = icmp sgt i32 %i.e, 0                    ; 4 uses
  %or.cond.i = and i1 %i.bb, %i.bc
  br i1 %or.cond.i, label %.lr.ph31.split.us.split.us.preheader.i, label %Bbl_ManSopToTruthElem.exit

.lr.ph31.split.us.split.us.preheader.i:           ; preds = %._crit_edge
  %wide.trip.count75.i = zext nneg i32 %1 to i64
  %wide.trip.count65.i = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check187 = icmp ult i32 %i.e, 8
  %n.vec189 = and i64 %wide.trip.count65.i, 2147483640 ; 3 uses
  %cmp.n196 = icmp eq i64 %n.vec189, %wide.trip.count65.i
  %min.iters.check = icmp ult i32 %i.e, 8
  %n.vec = and i64 %wide.trip.count65.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65.i
  br label %.lr.ph31.split.us.split.us.i

.lr.ph31.split.us.split.us.i:                     ; preds = %..loopexit25_crit_edge.us.us.i, %.lr.ph31.split.us.split.us.preheader.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph31.split.us.split.us.preheader.i ], [ %indvars.iv.next73.i, %..loopexit25_crit_edge.us.us.i ] ; 6 uses
  %i.bd = icmp samesign ult i64 %indvars.iv72.i, 5
  br i1 %i.bd, label %.preheader.us.us.i, label %.preheader24.us.us.i

.preheader24.us.us.i:                             ; preds = %.lr.ph31.split.us.split.us.i
  %i.be = trunc i64 %indvars.iv72.i to i32
  %i.bf = add i32 %i.be, -5
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv72.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93 ; 2 uses
  br i1 %min.iters.check187, label %scalar.ph186.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %.preheader24.us.us.i
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph188
  %index193 = phi i64 [ 0, %vector.ph188 ], [ %index.next194, %vector.body192 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph188 ], [ %vec.ind.next, %vector.body192 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bj = and <4 x i32> %broadcast.splat191, %vec.ind
  %i.bk = and <4 x i32> %broadcast.splat191, %step.add
  %i.bl = icmp ne <4 x i32> %i.bj, zeroinitializer
  %i.bm = icmp ne <4 x i32> %i.bk, zeroinitializer
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index193 ; 2 uses
  %i.bo = sext <4 x i1> %i.bl to <4 x i32>
  %i.bp = sext <4 x i1> %i.bm to <4 x i32>
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !20
  store <4 x i32> %i.bp, ptr %i.bq, align 4, !tbaa !20
  %index.next194 = add nuw i64 %index193, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.br = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.br, label %middle.block195, label %vector.body192, !llvm.loop !68

middle.block195:                                  ; preds = %vector.body192
  br i1 %cmp.n196, label %..loopexit25_crit_edge.us.us.i, label %scalar.ph186.preheader

scalar.ph186.preheader:                           ; preds = %.preheader24.us.us.i, %middle.block195
  %indvars.iv62.i.ph = phi i64 [ 0, %.preheader24.us.us.i ], [ %n.vec189, %middle.block195 ]
  br label %scalar.ph186

scalar.ph186:                                     ; preds = %scalar.ph186.preheader, %scalar.ph186
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %scalar.ph186 ], [ %indvars.iv62.i.ph, %scalar.ph186.preheader ] ; 3 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv62.i to i32
  %i.bt = and i32 %i.bg, %i.bs
  %.not.us.us.i = icmp ne i32 %i.bt, 0
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv62.i
  %..i = sext i1 %.not.us.us.i to i32
  store i32 %..i, ptr %i.bu, align 4, !tbaa !20
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count65.i
  br i1 %exitcond66.not.i, label %..loopexit25_crit_edge.us.us.i, label %scalar.ph186, !llvm.loop !69

.preheader.us.us.i:                               ; preds = %.lr.ph31.split.us.split.us.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @__const.Bbl_ManSopToTruthElem.Masks, i64 %indvars.iv72.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv72.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !93 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bz, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat, ptr %i.ca, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
end_hunk_0
begin_hunk_1_@Bbl_ManSopToTruth:bb.a
  store <4 x i32> %i.cz, ptr %i.cx, align 4, !tbaa !20, !alias.scope !95, !noalias !94
  %index.next255 = add nuw i64 %index250, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next255, %n.vec248
  br i1 %i.da, label %middle.block256, label %vector.body249, !llvm.loop !76

middle.block256:                                  ; preds = %vector.body249
  br i1 %cmp.n257, label %..loopexit82_crit_edge.us.us, label %scalar.ph245.preheader

scalar.ph245.preheader:                           ; preds = %vector.memcheck240, %.preheader81.us.us, %middle.block256
  %indvars.iv141.ph = phi i64 [ 0, %vector.memcheck240 ], [ 0, %.preheader81.us.us ], [ %n.vec248, %middle.block256 ] ; 5 uses
  br i1 %lcmp.mod287.not, label %scalar.ph245.prol.loopexit, label %scalar.ph245.prol

scalar.ph245.prol:                                ; preds = %scalar.ph245.preheader
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv141.ph
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !20
  %i.dd = xor i32 %i.dc, -1
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv141.ph ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !20
  %i.dg = and i32 %i.df, %i.dd
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !20
  %indvars.iv.next142.prol = or disjoint i64 %indvars.iv141.ph, 1
  br label %scalar.ph245.prol.loopexit

scalar.ph245.prol.loopexit:                       ; preds = %scalar.ph245.prol, %scalar.ph245.preheader
  %indvars.iv141.unr = phi i64 [ %indvars.iv141.ph, %scalar.ph245.preheader ], [ %indvars.iv.next142.prol, %scalar.ph245.prol ]
  %i.dh = icmp eq i64 %indvars.iv141.ph, %i.cl
  br i1 %i.dh, label %..loopexit82_crit_edge.us.us, label %scalar.ph245

scalar.ph245:                                     ; preds = %scalar.ph245.prol.loopexit, %scalar.ph245
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.1, %scalar.ph245 ], [ %indvars.iv141.unr, %scalar.ph245.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv141
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !20
  %i.dk = xor i32 %i.dj, -1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv141 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !20
  %i.dn = and i32 %i.dm, %i.dk
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !20
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next142
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !20
  %i.dq = xor i32 %i.dp, -1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next142 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !20
  %i.dt = and i32 %i.ds, %i.dq
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !20
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %exitcond145.not.1 = icmp eq i64 %indvars.iv.next142.1, %wide.trip.count144
  br i1 %exitcond145.not.1, label %..loopexit82_crit_edge.us.us, label %scalar.ph245, !llvm.loop !77

.lr.ph89.us.us:                                   ; preds = %.lr.ph92.split.us.us
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv151
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !93 ; 8 uses
  br i1 %min.iters.check227, label %scalar.ph226.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89.us.us
  %scevgep225 = getelementptr i8, ptr %i.dv, i64 %i.ci
  %bound0 = icmp ult ptr %i.ba, %scevgep225
  %bound1 = icmp ult ptr %i.dv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph226.preheader, label %vector.body230

vector.body230:                                   ; preds = %vector.memcheck, %vector.body230
  %index231 = phi i64 [ %index.next236, %vector.body230 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index231 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load232 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !20, !alias.scope !96
  %wide.load233 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !20, !alias.scope !96
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index231 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %wide.load234 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !20, !alias.scope !97, !noalias !96
  %wide.load235 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !20, !alias.scope !97, !noalias !96
  %i.ea = and <4 x i32> %wide.load234, %wide.load232
  %i.eb = and <4 x i32> %wide.load235, %wide.load233
  store <4 x i32> %i.ea, ptr %i.dy, align 4, !tbaa !20, !alias.scope !97, !noalias !96
  store <4 x i32> %i.eb, ptr %i.dz, align 4, !tbaa !20, !alias.scope !97, !noalias !96
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.ec, label %middle.block237, label %vector.body230, !llvm.loop !81

middle.block237:                                  ; preds = %vector.body230
  br i1 %cmp.n238, label %..loopexit82_crit_edge.us.us, label %scalar.ph226.preheader

scalar.ph226.preheader:                           ; preds = %vector.memcheck, %.lr.ph89.us.us, %middle.block237
  %indvars.iv146.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89.us.us ], [ %n.vec229, %middle.block237 ] ; 3 uses
  br i1 %lcmp.mod289.not, label %scalar.ph226.prol.loopexit, label %scalar.ph226.prol

scalar.ph226.prol:                                ; preds = %scalar.ph226.preheader, %scalar.ph226.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %scalar.ph226.prol ], [ %indvars.iv146.ph, %scalar.ph226.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph226.prol ], [ 0, %scalar.ph226.preheader ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv146.prol
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !20
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv146.prol ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !20
  %i.eh = and i32 %i.eg, %i.ee
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !20
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter288
  br i1 %prol.iter.cmp.not, label %scalar.ph226.prol.loopexit, label %scalar.ph226.prol, !llvm.loop !82

scalar.ph226.prol.loopexit:                       ; preds = %scalar.ph226.prol, %scalar.ph226.preheader
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %scalar.ph226.preheader ], [ %indvars.iv.next147.prol, %scalar.ph226.prol ]
  %i.ei = sub nsw i64 %indvars.iv146.ph, %wide.trip.count144
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %..loopexit82_crit_edge.us.us, label %scalar.ph226

scalar.ph226:                                     ; preds = %scalar.ph226.prol.loopexit, %scalar.ph226
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %scalar.ph226 ], [ %indvars.iv146.unr, %scalar.ph226.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv146
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !20
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv146 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !20
  %i.eo = and i32 %i.en, %i.el
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !20
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next147
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !20
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next147 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !20
  %i.et = and i32 %i.es, %i.eq
  store i32 %i.et, ptr %i.er, align 4, !tbaa !20
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next147.1
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !20
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next147.1 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !20
  %i.ey = and i32 %i.ex, %i.ev
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !20
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next147.2
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !20
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next147.2 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !20
  %i.fd = and i32 %i.fc, %i.fa
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !20
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond150.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count149
  br i1 %exitcond150.not.3, label %..loopexit82_crit_edge.us.us, label %scalar.ph226, !llvm.loop !83

..loopexit82_crit_edge.us.us:                     ; preds = %scalar.ph245.prol.loopexit, %scalar.ph245, %scalar.ph226.prol.loopexit, %scalar.ph226, %middle.block256, %middle.block237, %.lr.ph92.split.us.us
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %..preheader83_crit_edge.us, label %.lr.ph92.split.us.us, !llvm.loop !84

..preheader83_crit_edge.us:                       ; preds = %..loopexit82_crit_edge.us.us
  br i1 %min.iters.check212, label %.lr.ph101.us.preheader, label %vector.body215

vector.body215:                                   ; preds = %..preheader83_crit_edge.us, %vector.body215
  %index216 = phi i64 [ %index.next221, %vector.body215 ], [ 0, %..preheader83_crit_edge.us ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index216 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load217 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !20
  %wide.load218 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !20
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index216 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %wide.load219 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !20
  %wide.load220 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !20
  %i.fi = or <4 x i32> %wide.load219, %wide.load217
  %i.fj = or <4 x i32> %wide.load220, %wide.load218
  store <4 x i32> %i.fi, ptr %i.fg, align 4, !tbaa !20
  store <4 x i32> %i.fj, ptr %i.fh, align 4, !tbaa !20
  %index.next221 = add nuw i64 %index216, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next221, %n.vec214
  br i1 %i.fk, label %middle.block222, label %vector.body215, !llvm.loop !85

middle.block222:                                  ; preds = %vector.body215
  br i1 %cmp.n223, label %._crit_edge102.us, label %.lr.ph101.us.preheader

.lr.ph101.us.preheader:                           ; preds = %..preheader83_crit_edge.us, %middle.block222
  %indvars.iv156.ph = phi i64 [ 0, %..preheader83_crit_edge.us ], [ %n.vec214, %middle.block222 ]
  br label %.lr.ph101.us

.lr.ph101.us:                                     ; preds = %.lr.ph101.us.preheader, %.lr.ph101.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %.lr.ph101.us ], [ %indvars.iv156.ph, %.lr.ph101.us.preheader ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv156
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !20
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv156 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !20
  %i.fp = or i32 %i.fo, %i.fm
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !20
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge102.us, label %.lr.ph101.us, !llvm.loop !86

._crit_edge102.us:                                ; preds = %.lr.ph101.us, %middle.block222, %.lr.ph92.us
  %i.fq = getelementptr inbounds nuw i8, ptr %.072103.us, i64 %i.i
  %i.fr = add nuw nsw i32 %.068106.us, 1          ; 2 uses
  %i.fs = icmp slt i32 %i.fr, %i.cf
  br i1 %i.fs, label %.lr.ph92.us, label %._crit_edge108, !llvm.loop !87

.lr.ph107.split:                                  ; preds = %.lr.ph107
  br i1 %i.bc, label %.preheader83.us117.preheader, label %.preheader83.preheader

.preheader83.preheader:                           ; preds = %.lr.ph107.split
  %xtraiter279 = and i32 %i.cf, 7                 ; 3 uses
  %i.ft = icmp ult i32 %i.cf, 8
  br i1 %i.ft, label %.preheader83.epil.preheader, label %.preheader83.preheader.new

.preheader83.preheader.new:                       ; preds = %.preheader83.preheader
  %unroll_iter284 = and i32 %i.cf, 2147483640
  %2 = shl nsw i64 %i.i, 2
  %3 = shl nsw i64 %i.i, 1
  br label %.preheader83

.preheader83.us117.preheader:                     ; preds = %.lr.ph107.split
  %wide.trip.count139 = zext nneg i32 %i.e to i64 ; 3 uses
  %min.iters.check199 = icmp ult i32 %i.e, 8
  %n.vec201 = and i64 %wide.trip.count139, 2147483640 ; 3 uses
  %cmp.n209 = icmp eq i64 %n.vec201, %wide.trip.count139
  br label %.preheader83.us117

.preheader83.us117:                               ; preds = %.preheader83.us117.preheader, %._crit_edge102.us122
  %.068106.us118 = phi i32 [ %i.gj, %._crit_edge102.us122 ], [ 0, %.preheader83.us117.preheader ]
  %.072103.us119 = phi ptr [ %i.gi, %._crit_edge102.us122 ], [ %0, %.preheader83.us117.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.072103.us119, i64 %i.ch
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  br i1 %min.iters.check199, label %scalar.ph198.preheader, label %vector.body202

vector.body202:                                   ; preds = %.preheader83.us117, %vector.body202
  %index203 = phi i64 [ %index.next207, %vector.body202 ], [ 0, %.preheader83.us117 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index203 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load = load <4 x i32>, ptr %i.fw, align 4, !tbaa !20
  %wide.load204 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !20
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index203 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load205 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !20
  %wide.load206 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !20
  %i.ga = or <4 x i32> %wide.load205, %wide.load
  %i.gb = or <4 x i32> %wide.load206, %wide.load204
  store <4 x i32> %i.ga, ptr %i.fy, align 4, !tbaa !20
  store <4 x i32> %i.gb, ptr %i.fz, align 4, !tbaa !20
  %index.next207 = add nuw i64 %index203, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.gc, label %middle.block208, label %vector.body202, !llvm.loop !88

middle.block208:                                  ; preds = %vector.body202
  br i1 %cmp.n209, label %._crit_edge102.us122, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %.preheader83.us117, %middle.block208
  %indvars.iv136.ph = phi i64 [ 0, %.preheader83.us117 ], [ %n.vec201, %middle.block208 ]
  br label %scalar.ph198

scalar.ph198:                                     ; preds = %scalar.ph198.preheader, %scalar.ph198
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %scalar.ph198 ], [ %indvars.iv136.ph, %scalar.ph198.preheader ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv136
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !20
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv136 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !20
  %i.gh = or i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !20
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %._crit_edge102.us122, label %scalar.ph198, !llvm.loop !89

._crit_edge102.us122:                             ; preds = %scalar.ph198, %middle.block208
  %i.gi = getelementptr inbounds i8, ptr %.072103.us119, i64 %i.i
  %i.gj = add nuw nsw i32 %.068106.us118, 1       ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %i.cf
  br i1 %i.gk, label %.preheader83.us117, label %._crit_edge108, !llvm.loop !87

.preheader83:                                     ; preds = %.preheader83, %.preheader83.preheader.new
  %.072103 = phi ptr [ %0, %.preheader83.preheader.new ], [ %i.gq, %.preheader83 ]
  %niter285 = phi i32 [ 0, %.preheader83.preheader.new ], [ %niter285.next.7, %.preheader83 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  %i.gl = getelementptr inbounds i8, ptr %.072103, i64 %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.i ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.ch
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  %i.gq = getelementptr inbounds i8, ptr %i.gn, i64 %i.i ; 2 uses
  %niter285.next.7 = add i32 %niter285, 8         ; 2 uses
  %niter285.ncmp.7.not = icmp eq i32 %niter285.next.7, %unroll_iter284
  br i1 %niter285.ncmp.7.not, label %._crit_edge108.loopexit275.unr-lcssa, label %.preheader83, !llvm.loop !87

._crit_edge108.loopexit275.unr-lcssa:             ; preds = %.preheader83
  %lcmp.mod281.not = icmp eq i32 %xtraiter279, 0
  br i1 %lcmp.mod281.not, label %._crit_edge108, label %.preheader83.epil.preheader

.preheader83.epil.preheader:                      ; preds = %._crit_edge108.loopexit275.unr-lcssa, %.preheader83.preheader
  %.072103.epil.init = phi ptr [ %0, %.preheader83.preheader ], [ %i.gq, %._crit_edge108.loopexit275.unr-lcssa ]
  %lcmp.mod283 = icmp ne i32 %xtraiter279, 0
  tail call void @llvm.assume(i1 %lcmp.mod283)
  br label %.preheader83.epil

.preheader83.epil:                                ; preds = %.preheader83.epil, %.preheader83.epil.preheader
  %.072103.epil = phi ptr [ %i.gt, %.preheader83.epil ], [ %.072103.epil.init, %.preheader83.epil.preheader ] ; 2 uses
  %epil.iter280 = phi i32 [ %epil.iter280.next, %.preheader83.epil ], [ 0, %.preheader83.epil.preheader ]
  %i.gr = getelementptr inbounds i8, ptr %.072103.epil, i64 %i.ch
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %i.l, i1 false)
  %i.gt = getelementptr inbounds i8, ptr %.072103.epil, i64 %i.i
  %epil.iter280.next = add i32 %epil.iter280, 1   ; 2 uses
  %epil.iter280.cmp.not = icmp eq i32 %epil.iter280.next, %xtraiter279
  br i1 %epil.iter280.cmp.not, label %._crit_edge108, label %.preheader83.epil, !llvm.loop !90

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit275.unr-lcssa, %.preheader83.epil, %._crit_edge102.us122, %._crit_edge102.us
  %.us-phi = phi i8 [ %i.cn, %._crit_edge102.us ], [ %i.fv, %._crit_edge102.us122 ], [ %i.gp, %._crit_edge108.loopexit275.unr-lcssa ], [ %i.gs, %.preheader83.epil ]
  %i.gu = icmp eq i8 %.us-phi, 48
  %i.gv = and i1 %i.gu, %i.bc
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge108, %Bbl_ManSopToTruthElem.exit
  %.0.lcssa = phi i1 [ %i.gv, %._crit_edge108 ], [ false, %Bbl_ManSopToTruthElem.exit ]
  %.not77 = icmp eq ptr %i.s, null
  br i1 %.not77, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.s) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  br i1 %.0.lcssa, label %.lr.ph126.preheader, label %.loopexit

.lr.ph126.preheader:                              ; preds = %bb.g
  %wide.trip.count164 = zext nneg i32 %i.e to i64 ; 3 uses
  %min.iters.check260 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check260, label %.lr.ph126.preheader271, label %vector.ph261

vector.ph261:                                     ; preds = %.lr.ph126.preheader
  %n.vec262 = and i64 %wide.trip.count164, 2147483640 ; 3 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next267, %vector.body263 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index264 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load265 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !20
  %wide.load266 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !20
  %i.gy = xor <4 x i32> %wide.load265, splat (i32 -1)
  %i.gz = xor <4 x i32> %wide.load266, splat (i32 -1)
  store <4 x i32> %i.gy, ptr %i.gw, align 4, !tbaa !20
  store <4 x i32> %i.gz, ptr %i.gx, align 4, !tbaa !20
  %index.next267 = add nuw i64 %index264, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next267, %n.vec262
  br i1 %i.ha, label %middle.block268, label %vector.body263, !llvm.loop !91

middle.block268:                                  ; preds = %vector.body263
  %cmp.n269 = icmp eq i64 %n.vec262, %wide.trip.count164
  br i1 %cmp.n269, label %.loopexit, label %.lr.ph126.preheader271

.lr.ph126.preheader271:                           ; preds = %.lr.ph126.preheader, %middle.block268
  %indvars.iv161.ph = phi i64 [ 0, %.lr.ph126.preheader ], [ %n.vec262, %middle.block268 ]
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader271, %.lr.ph126
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph126 ], [ %indvars.iv161.ph, %.lr.ph126.preheader271 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv161 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !20
  %i.hd = xor i32 %i.hc, -1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !20
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit, label %.lr.ph126, !llvm.loop !92

.loopexit:                                        ; preds = %.lr.ph126, %middle.block268, %bb.g, %bb.a, %bb.c
  %.071 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.m, %bb.g ], [ %i.m, %middle.block268 ], [ %i.m, %.lr.ph126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.071
}

; Function Attrs: nounwind uwtable
define void @Bbl_ManTestTruth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @Bbl_ManSopToTruth(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = tail call ptr @Bbl_ManTruthToSop(ptr noundef %i.a, i32 noundef %1) ; 3 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %0) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %i.b) ; 0 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @Bbl_ManSimpleDemo() local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @Bbl_ManStart(ptr noundef nonnull @.str.31) ; 21 uses
  tail call void @Bbl_ManCreateObject(ptr noundef %i.a, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef null)
  tail call void @Bbl_ManCreateObject(ptr noundef %i.a, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef null)
  tail call void @Bbl_ManCreateObject(ptr noundef %i.a, i32 noundef 1, i32 noundef 3, i32 noundef 0, ptr noundef null)
  tail call void @Bbl_ManCreateObject(ptr noundef %i.a, i32 noundef 2, i32 noundef 4, i32 noundef 1, ptr noundef null)
  tail call void @Bbl_ManCreateObject(ptr noundef %i.a, i32 noundef 2, i32 noundef 5, i32 noundef 1, ptr noundef null)
  tail call void @Bbl_ManCreateObject(ptr noundef %i.a, i32 noundef 3, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.32)
  tail call void @Bbl_ManCreateObject(ptr noundef %i.a, i32 noundef 3, i32 noundef 7, i32 noundef 3, ptr noundef nonnull @.str.33)
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val25.i = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val26.i = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr i8, ptr %.val25.i, i64 8   ; 8 uses
  %.val25.val.i = load ptr, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %i.e = getelementptr i8, ptr %.val26.i, i64 8   ; 8 uses
  %.val26.val.i = load ptr, ptr %i.e, align 8, !tbaa !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val26.val.i, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %.val25.val.i, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val27.i = load i32, ptr %i.j, align 4         ; 2 uses
  %i.k = and i32 %.val27.i, 1
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 6) ; 0 uses
  br label %Bbl_ManAddFanin.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val26.val.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %.val25.val.i, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val28.i = load i32, ptr %i.q, align 4
  %i.r = and i32 %.val28.i, 2
  %.not21.i = icmp eq i32 %i.r, 0
  br i1 %.not21.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef 1) ; 0 uses
  br label %Bbl_ManAddFanin.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val29.i = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %.val29.i, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !20   ; 3 uses
  %i.y = lshr i32 %.val27.i, 4                    ; 2 uses
  %.not22.i = icmp slt i32 %i.x, %i.y
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 6, i32 noundef %i.y) ; 0 uses
  br label %Bbl_ManAddFanin.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !20
  %gepdiff.i = sub i32 %i.g, %i.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ac = sext i32 %i.x to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  store i32 %gepdiff.i, ptr %i.ad, align 4, !tbaa !20
  br label %Bbl_ManAddFanin.exit

Bbl_ManAddFanin.exit:                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.val25.val.i21 = load ptr, ptr %i.d, align 8, !tbaa !17 ; 2 uses
  %.val26.val.i22 = load ptr, ptr %i.e, align 8, !tbaa !32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val26.val.i22, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !20 ; 2 uses
end_hunk_1
