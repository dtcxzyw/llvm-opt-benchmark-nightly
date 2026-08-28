Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/k-partitioning?download=true
inline.NumInlined: 10
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@tm_kPartitioning:bb.a
  %.06693.i.i = phi i32 [ 0, %bb.b ], [ %i.dk, %eval_cost2.exit.i.i ]
  %.06992.i.i = phi ptr [ null, %bb.b ], [ %..06992.i.i, %eval_cost2.exit.i.i ] ; 2 uses
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.d) #11 ; 14 uses
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 -1, i64 %i.l, i1 false), !tbaa !8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.c
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #12 ; 9 uses
  br i1 %i.i, label %.loopexit.i.i, label %.lr.ph84.preheader.i.i

.lr.ph84.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.r, i64 %i.m ; 3 uses
  br i1 %i.p, label %.lr.ph84.i.i.epil.preheader, label %.lr.ph84.i.i

.lr.ph84.i.i:                                     ; preds = %.lr.ph84.preheader.i.i, %.lr.ph84.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph84.i.i ], [ 0, %.lr.ph84.preheader.i.i ] ; 4 uses
  %niter122 = phi i64 [ %niter122.next.1, %.lr.ph84.i.i ], [ 0, %.lr.ph84.preheader.i.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = sdiv i32 %i.u, %i.g                      ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  store i32 %i.v, ptr %gep.i.i, align 4, !tbaa !8
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = sdiv i32 %i.ab, %i.g                    ; 2 uses
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i.i
  store i32 %i.ac, ptr %gep.i.i.1, align 4, !tbaa !8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter122.next.1 = add i64 %niter122, 2         ; 2 uses
  %niter122.ncmp.1 = icmp eq i64 %niter122.next.1, %unroll_iter121
  br i1 %niter122.ncmp.1, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph84.i.i, !llvm.loop !9

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph84.i.i
  br i1 %lcmp.mod119.not, label %.loopexit.i.i, label %.lr.ph84.i.i.epil.preheader

.lr.ph84.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph84.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph84.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.loopexit.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.i.epil.init
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = sdiv i32 %i.ai, %i.g                    ; 2 uses
  %gep.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil.init
  store i32 %i.aj, ptr %gep.i.i.epil, align 4, !tbaa !8
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph84.i.i.epil.preheader, %.loopexit.i.i.loopexit.unr-lcssa, %._crit_edge.i.i
  br i1 %i.h, label %.lr.ph88.i.i, label %.preheader80.i.i

.preheader80.i.i:                                 ; preds = %bb.e, %.loopexit.i.i
  br i1 %i.e, label %.lr.ph90.i.i, label %._crit_edge91.i.i

.lr.ph88.i.i:                                     ; preds = %.loopexit.i.i, %bb.e
  %indvars.iv98.i.i = phi i64 [ %indvars.iv.next99.i.i, %bb.e ], [ 0, %.loopexit.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv98.i.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8  ; 2 uses
  %.not73.i.i = icmp slt i32 %i.ap, %i.g
  br i1 %.not73.i.i, label %.preheader.i.i, label %bb.e

.preheader.i.i:                                   ; preds = %.lr.ph88.i.i, %.preheader.i.i
  %i.aq = tail call i64 @tm_genrand_int32() #10
  %i.ar = urem i64 %i.aq, %i.c
  %sext.i.i = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext.i.i, 30            ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.r, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %.not74.i.i = icmp eq i32 %i.au, -1
  br i1 %.not74.i.i, label %bb.d, label %.preheader.i.i, !llvm.loop !11

bb.d:                                             ; preds = %.preheader.i.i
  %i.av = getelementptr inbounds i8, ptr %i.r, i64 %i.as
  %i.aw = trunc nuw nsw i64 %indvars.iv98.i.i to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !8
  %i.ax = add nsw i32 %i.ap, 1
  store i32 %i.ax, ptr %i.ao, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph88.i.i
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1 ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %indvars.iv.next99.i.i, %wide.trip.count101.i.i
  br i1 %exitcond102.not.i.i, label %.preheader80.i.i, label %.lr.ph88.i.i, !llvm.loop !12

.lr.ph90.i.i:                                     ; preds = %.preheader80.i.i, %bb.q
  %indvars.iv103.i.i = phi i64 [ %indvars.iv.next104.i.i, %bb.q ], [ 0, %.preheader80.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv103.i.i ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.f, label %bb.q

bb.f:                                             ; preds = %.lr.ph90.i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %allocate_vertex2.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103.i.i ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i, %bb.n
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %bb.n ], [ 0, %.lr.ph.i.i.i ] ; 4 uses
  %.028.i.i.i = phi double [ %.1.i.i.i.1, %bb.n ], [ -1.000000e+00, %.lr.ph.i.i.i ] ; 4 uses
  %.02127.i.i.i = phi i32 [ %.122.i.i.i.1, %bb.n ], [ -1, %.lr.ph.i.i.i ] ; 3 uses
  %niter128 = phi i64 [ %niter128.next.1, %bb.n ], [ 0, %.lr.ph.i.i.i ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.bd, -1
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.new
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = icmp slt i32 %i.bg, %i.g
  br i1 %i.bh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %i.bl = fcmp ogt double %i.bk, %.028.i.i.i
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.i.new
  %.122.i.i.i = phi i32 [ %i.bd, %bb.i ], [ %.02127.i.i.i, %bb.h ], [ %.02127.i.i.i, %bb.g ], [ %.02127.i.i.i, %.lr.ph.i.i.i.new ] ; 3 uses
  %.1.i.i.i = phi double [ %i.bk, %bb.i ], [ %.028.i.i.i, %bb.h ], [ %.028.i.i.i, %bb.g ], [ %.028.i.i.i, %.lr.ph.i.i.i.new ] ; 4 uses
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8  ; 3 uses
  %.not.i.i.i.1 = icmp eq i32 %i.bn, -1
  br i1 %.not.i.i.i.1, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = icmp slt i32 %i.bq, %i.g
  br i1 %i.br, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !16 ; 2 uses
  %i.bv = fcmp ogt double %i.bu, %.1.i.i.i
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.122.i.i.i.1 = phi i32 [ %i.bn, %bb.m ], [ %.122.i.i.i, %bb.l ], [ %.122.i.i.i, %bb.k ], [ %.122.i.i.i, %bb.j ] ; 3 uses
  %.1.i.i.i.1 = phi double [ %i.bu, %bb.m ], [ %.1.i.i.i, %bb.l ], [ %.1.i.i.i, %bb.k ], [ %.1.i.i.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter128.next.1 = add i64 %niter128, 2         ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %allocate_vertex2.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.new, !llvm.loop !18

allocate_vertex2.exit.i.i.loopexit.unr-lcssa:     ; preds = %bb.n
  br i1 %lcmp.mod124.not, label %allocate_vertex2.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %allocate_vertex2.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %allocate_vertex2.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.028.i.i.i.epil.init = phi double [ -1.000000e+00, %.lr.ph.i.i.i ], [ %.1.i.i.i.1, %allocate_vertex2.exit.i.i.loopexit.unr-lcssa ]
  %.02127.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i.i ], [ %.122.i.i.i.1, %allocate_vertex2.exit.i.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.epil.init
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8  ; 3 uses
  %.not.i.i.i.epil = icmp eq i32 %i.bx, -1
  br i1 %.not.i.i.i.epil, label %allocate_vertex2.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.epil.preheader
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = icmp slt i32 %i.ca, %i.g
  br i1 %i.cb, label %bb.p, label %allocate_vertex2.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i.epil.init
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !16
  %i.cf = fcmp ogt double %i.ce, %.028.i.i.i.epil.init
  %spec.select = select i1 %i.cf, i32 %i.bx, i32 %.02127.i.i.i.epil.init
  br label %allocate_vertex2.exit.i.i

allocate_vertex2.exit.i.i:                        ; preds = %bb.p, %allocate_vertex2.exit.i.i.loopexit.unr-lcssa, %bb.o, %.epil.preheader, %bb.f
  %.021.lcssa.i.i.i = phi i32 [ -1, %bb.f ], [ %.122.i.i.i.1, %allocate_vertex2.exit.i.i.loopexit.unr-lcssa ], [ %.02127.i.i.i.epil.init, %.epil.preheader ], [ %spec.select, %bb.p ], [ %.02127.i.i.i.epil.init, %bb.o ] ; 2 uses
  store i32 %.021.lcssa.i.i.i, ptr %i.ay, align 4, !tbaa !8
  %i.cg = sext i32 %.021.lcssa.i.i.i to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %allocate_vertex2.exit.i.i, %.lr.ph90.i.i
  %indvars.iv.next104.i.i = add nuw nsw i64 %indvars.iv103.i.i, 1 ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %indvars.iv.next104.i.i, %i.k
  br i1 %exitcond107.not.i.i, label %._crit_edge91.i.i, label %.lr.ph90.i.i, !llvm.loop !19

._crit_edge91.i.i:                                ; preds = %bb.q, %.preheader80.i.i
  br i1 %i.j, label %.lr.ph22.i.i.i, label %eval_cost2.exit.i.i

.loopexit.i.i.i:                                  ; preds = %.prol.loopexit, %bb.v, %.lr.ph22.i.i.i
  %.1.lcssa.i.i.i = phi double [ %.01620.i.i.i, %.lr.ph22.i.i.i ], [ %.2.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.2.i.i.i.1, %bb.v ] ; 2 uses
  %indvars.iv.next.i76.i.i = add nuw nsw i64 %indvars.iv.i75.i.i, 1
  %exitcond31.not.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond31.not.i.i.i, label %eval_cost2.exit.i.i, label %.lr.ph22.i.i.i, !llvm.loop !20

.lr.ph22.i.i.i:                                   ; preds = %._crit_edge91.i.i, %.loopexit.i.i.i
  %indvars.iv27.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i, %.loopexit.i.i.i ], [ 0, %._crit_edge91.i.i ] ; 5 uses
  %indvars.iv.i75.i.i = phi i64 [ %indvars.iv.next.i76.i.i, %.loopexit.i.i.i ], [ 1, %._crit_edge91.i.i ] ; 5 uses
  %.01620.i.i.i = phi double [ %.1.lcssa.i.i.i, %.loopexit.i.i.i ], [ 0.000000e+00, %._crit_edge91.i.i ] ; 4 uses
  %indvars.iv.next28.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i, 1 ; 3 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next28.i.i.i, %wide.trip.count.i.i.i
  br i1 %i.ck, label %.lr.ph.i77.i.i, label %.loopexit.i.i.i

.lr.ph.i77.i.i:                                   ; preds = %.lr.ph22.i.i.i
  %i.cl = sub i64 %i.n, %indvars.iv27.i.i.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv27.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8  ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv27.i.i.i ; 3 uses
  %xtraiter129 = and i64 %i.cl, 1
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i77.i.i
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i75.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8
  %.not.i78.i.i.prol = icmp eq i32 %i.cn, %i.cq
  br i1 %.not.i78.i.i.prol, label %.prol.loopexit.unr-lcssa, label %bb.r

bb.r:                                             ; preds = %.prol.preheader
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i75.i.i
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !16
  %i.cu = fadd double %.01620.i.i.i, %i.ct
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.r, %.prol.preheader
  %.2.i.i.i.prol = phi double [ %i.cu, %bb.r ], [ %.01620.i.i.i, %.prol.preheader ] ; 2 uses
  %indvars.iv.next25.i.i.i.prol = add nuw nsw i64 %indvars.iv.i75.i.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i77.i.i
  %.2.i.i.i.lcssa.unr = phi double [ poison, %.lr.ph.i77.i.i ], [ %.2.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv24.i.i.i.unr = phi i64 [ %indvars.iv.i75.i.i, %.lr.ph.i77.i.i ], [ %indvars.iv.next25.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.118.i.i.i.unr = phi double [ %.01620.i.i.i, %.lr.ph.i77.i.i ], [ %.2.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.cv = icmp eq i64 %i.o, %indvars.iv27.i.i.i
  br i1 %i.cv, label %.loopexit.i.i.i, label %.lr.ph.i77.i.i.new

.lr.ph.i77.i.i.new:                               ; preds = %.prol.loopexit, %bb.v
  %indvars.iv24.i.i.i = phi i64 [ %indvars.iv.next25.i.i.i.1, %bb.v ], [ %indvars.iv24.i.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.118.i.i.i = phi double [ %.2.i.i.i.1, %bb.v ], [ %.118.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv24.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %.not.i78.i.i = icmp eq i32 %i.cn, %i.cx
  br i1 %.not.i78.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i77.i.i.new
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv24.i.i.i
  %i.da = load double, ptr %i.cz, align 8, !tbaa !16
  %i.db = fadd double %.118.i.i.i, %i.da
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i77.i.i.new
  %.2.i.i.i = phi double [ %i.db, %bb.s ], [ %.118.i.i.i, %.lr.ph.i77.i.i.new ] ; 2 uses
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next25.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %.not.i78.i.i.1 = icmp eq i32 %i.cn, %i.dd
  br i1 %.not.i78.i.i.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next25.i.i.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !16
  %i.dh = fadd double %.2.i.i.i, %i.dg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2.i.i.i.1 = phi double [ %i.dh, %bb.u ], [ %.2.i.i.i, %bb.t ] ; 2 uses
  %indvars.iv.next25.i.i.i.1 = add nuw nsw i64 %indvars.iv24.i.i.i, 2 ; 2 uses
  %exitcond.not.i79.i.i.1 = icmp eq i64 %indvars.iv.next25.i.i.i.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i79.i.i.1, label %.loopexit.i.i.i, label %.lr.ph.i77.i.i.new, !llvm.loop !21

eval_cost2.exit.i.i:                              ; preds = %.loopexit.i.i.i, %._crit_edge91.i.i
  %.016.lcssa.i.i.i = phi double [ 0.000000e+00, %._crit_edge91.i.i ], [ %.1.lcssa.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.di = fcmp olt double %.016.lcssa.i.i.i, %.094.i.i
  %i.dj = fcmp oeq double %.094.i.i, -1.000000e+00
  %or.cond.i.i = or i1 %i.dj, %i.di               ; 3 uses
  %.06992..i.i = select i1 %or.cond.i.i, ptr %.06992.i.i, ptr %i.r
  %..06992.i.i = select i1 %or.cond.i.i, ptr %i.r, ptr %.06992.i.i ; 2 uses
  %.016.lcssa.i..094.i.i = select i1 %or.cond.i.i, double %.016.lcssa.i.i.i, double %.094.i.i
  tail call void @free(ptr noundef %.06992..i.i) #10
  tail call void @free(ptr noundef %i.s) #10
  %i.dk = add nuw nsw i32 %.06693.i.i, 1          ; 2 uses
  %exitcond108.not.i.i = icmp eq i32 %i.dk, %5
  br i1 %exitcond108.not.i.i, label %build_p_vector.exit, label %bb.c, !llvm.loop !22

bb.w:                                             ; preds = %bb.a
  %i.dl = sext i32 %2 to i64                      ; 2 uses
  %i.dm = tail call noalias ptr @calloc(i64 noundef %i.dl, i64 noundef 4) #12 ; 5 uses
  %i.dn = sdiv i32 %1, %2                         ; 4 uses
  %i.do = sext i32 %1 to i64
  %i.dp = shl nsw i64 %i.do, 2
  %i.dq = tail call noalias ptr @malloc(i64 noundef %i.dp) #11 ; 3 uses
  %i.dr = icmp sgt i32 %4, 0
  br i1 %i.dr, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.ds = sext i32 %i.a to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.dq, i64 %i.ds ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.dt = icmp eq i32 %4, 1
  br i1 %i.dt, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod117 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.epil.init
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = sdiv i32 %i.dv, %i.dn                   ; 2 uses
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  store i32 %i.dw, ptr %gep.i.epil, align 4, !tbaa !8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.w
  %i.eb = icmp sgt i32 %i.a, 0
  br i1 %i.eb, label %.lr.ph47.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = sdiv i32 %i.ed, %i.dn                   ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.ee, ptr %gep.i, align 4, !tbaa !8
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = sdiv i32 %i.ek, %i.dn                   ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i32 %i.el, ptr %gep.i.1, align 4, !tbaa !8
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !23

.lr.ph47.i:                                       ; preds = %.preheader.i, %bb.y
  %.04046.i = phi i32 [ %i.ez, %bb.y ], [ 0, %.preheader.i ] ; 3 uses
  %.145.i = phi i32 [ %.2.i, %bb.y ], [ 0, %.preheader.i ] ; 3 uses
  %i.eq = sext i32 %.04046.i to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8  ; 2 uses
  %i.et = icmp slt i32 %i.es, %i.dn
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph47.i
  %i.eu = add nsw i32 %i.es, 1
end_hunk_0
