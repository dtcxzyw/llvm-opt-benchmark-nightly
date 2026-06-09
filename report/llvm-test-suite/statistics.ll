inline.NumInlined: 16
begin_hunk_0_@Stats_calculate:bb.a
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !24
  %.not41 = icmp eq ptr %i.f, null
  br i1 %.not41, label %._crit_edge52.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = load i32, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge52.thread

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %i.l = zext nneg i32 %i.h to i64                ; 5 uses
  %i.m = add nsw i64 %i.l, -1                     ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %.03544 = phi double [ undef, %.lr.ph.new ], [ %.136.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = uitofp nneg i32 %i.p to double
  %i.s = fadd double %.03544, %i.r
  %i.t = zext nneg i32 %i.p to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.136 = phi double [ %i.s, %bb.e ], [ %.03544, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = uitofp nneg i32 %i.z to double
  %i.ac = fadd double %.136, %i.ab
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.136.1 = phi double [ %i.ac, %bb.g ], [ %.136, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.d, !llvm.loop !32

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03544.epil.init = phi double [ undef, %.lr.ph ], [ %.136.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod75 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.epil.init
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4  ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %._crit_edge.epilog-lcssa

bb.i:                                             ; preds = %.epil.preheader
  %i.ak = uitofp nneg i32 %i.ai to double
  %i.al = fadd double %.03544.epil.init, %i.ak
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.i, %.epil.preheader
  %.136.epil = phi double [ %i.al, %bb.i ], [ %.03544.epil.init, %.epil.preheader ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.136.lcssa = phi double [ %.136.1, %._crit_edge.unr-lcssa ], [ %.136.epil, %._crit_edge.epilog-lcssa ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ], [ %indvars.iv.next.epil, %._crit_edge.epilog-lcssa ]
  %i.aq = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  %i.ar = uitofp nneg i32 %i.aq to double
  %i.as = fdiv double %.136.lcssa, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.as, ptr %i.at, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %xtraiter77 = and i64 %i.l, 1
  %i.ax = icmp eq i64 %i.m, 0
  br i1 %i.ax, label %.epil.preheader76, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter81 = and i64 %i.l, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %._crit_edge.new
  %indvars.iv59 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next60.1, %bb.n ] ; 3 uses
  %.248 = phi double [ 0.000000e+00, %._crit_edge.new ], [ %.3.1, %bb.n ] ; 2 uses
  %niter82 = phi i64 [ 0, %._crit_edge.new ], [ %niter82.next.1, %bb.n ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv59
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = uitofp nneg i32 %i.az to double
  %i.bc = load double, ptr %i.aw, align 8, !tbaa !33
  %i.bd = fsub double %i.bb, %i.bc                ; 2 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %.248)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.3 = phi double [ %i.be, %bb.k ], [ %.248, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv59
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4  ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = uitofp nneg i32 %i.bh to double
  %i.bk = load double, ptr %i.aw, align 8, !tbaa !33
  %i.bl = fsub double %i.bj, %i.bk                ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %.3)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3.1 = phi double [ %i.bm, %bb.m ], [ %.3, %bb.l ] ; 3 uses
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter82.next.1 = add i64 %niter82, 2           ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %._crit_edge52.unr-lcssa, label %bb.j, !llvm.loop !34

._crit_edge52.unr-lcssa:                          ; preds = %bb.n
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %._crit_edge52, label %.epil.preheader76

.epil.preheader76:                                ; preds = %._crit_edge52.unr-lcssa, %._crit_edge
  %indvars.iv59.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next60.1, %._crit_edge52.unr-lcssa ]
  %.248.epil.init = phi double [ 0.000000e+00, %._crit_edge ], [ %.3.1, %._crit_edge52.unr-lcssa ] ; 2 uses
  %lcmp.mod80 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv59.epil.init
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %._crit_edge52

bb.o:                                             ; preds = %.epil.preheader76
  %i.bq = uitofp nneg i32 %i.bo to double
  %i.br = load double, ptr %i.aw, align 8, !tbaa !33
  %i.bs = fsub double %i.bq, %i.br                ; 2 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %.248.epil.init)
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %.epil.preheader76, %bb.o, %._crit_edge52.unr-lcssa
  %.3.lcssa = phi double [ %.3.1, %._crit_edge52.unr-lcssa ], [ %i.bt, %bb.o ], [ %.248.epil.init, %.epil.preheader76 ]
  %i.bu = uitofp nneg i32 %i.h to double
  %i.bv = fdiv double %.3.lcssa, %i.bu
  %i.bw = tail call double @sqrt(double noundef %i.bv) #15, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.bw, ptr %i.bx, align 8, !tbaa !35
  br label %._crit_edge52.thread

._crit_edge52.thread:                             ; preds = %.preheader, %._crit_edge52, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @testStats() local_unnamed_addr #3 {
Stats_new.exit.split:
  %i.a = tail call noalias nonnull dereferenceable(40) dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14 ; 33 uses
  %i.b = tail call nonnull ptr @IntVector_new(i32 noundef 16) #15
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 39 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 41 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Stats_calculate.exit, label %Stats_new.exit.split.split.preheader

Stats_new.exit.split.split.preheader:             ; preds = %Stats_new.exit.split
  %i.k = load i32, ptr %i.g, align 8, !tbaa !22
  %i.l = icmp sgt i32 %i.k, 2
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %Stats_new.exit.split.split.preheader
  store i32 2, ptr %i.g, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Stats_new.exit.split.split.preheader
  %i.m = load i32, ptr %i.h, align 4, !tbaa !23
  %i.n = icmp slt i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %Stats_logPath.exit

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit

Stats_logPath.exit:                               ; preds = %bb.b, %bb.c
  %i.o = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %i.i, i32 noundef 2) #15 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %.not138.1 = icmp eq ptr %.pre, null
  br i1 %.not138.1, label %Stats_calculate.exit, label %bb.d

bb.d:                                             ; preds = %Stats_logPath.exit
  %i.p = load i32, ptr %i.g, align 8, !tbaa !22
  %i.q = icmp sgt i32 %i.p, 3
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 3, ptr %i.g, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load i32, ptr %i.h, align 4, !tbaa !23
  %i.s = icmp slt i32 %i.r, 3
  br i1 %i.s, label %bb.g, label %Stats_logPath.exit.1

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit.1

Stats_logPath.exit.1:                             ; preds = %bb.f, %bb.g
  %i.t = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %.pre, i32 noundef 3) #15 ; 0 uses
  %.pre146 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.not138.2 = icmp eq ptr %.pre146, null
  br i1 %.not138.2, label %Stats_calculate.exit, label %bb.h

bb.h:                                             ; preds = %Stats_logPath.exit.1
  %i.u = load i32, ptr %i.g, align 8, !tbaa !22
  %i.v = icmp sgt i32 %i.u, 4
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 4, ptr %i.g, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = load i32, ptr %i.h, align 4, !tbaa !23
  %i.x = icmp slt i32 %i.w, 4
  br i1 %i.x, label %bb.k, label %Stats_logPath.exit.2

bb.k:                                             ; preds = %bb.j
  store i32 4, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit.2

Stats_logPath.exit.2:                             ; preds = %bb.j, %bb.k
  %i.y = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %.pre146, i32 noundef 4) #15 ; 0 uses
  %.pre147 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.not138.3 = icmp eq ptr %.pre147, null
  br i1 %.not138.3, label %Stats_calculate.exit, label %bb.l

bb.l:                                             ; preds = %Stats_logPath.exit.2
  %i.z = load i32, ptr %i.g, align 8, !tbaa !22
  %i.aa = icmp sgt i32 %i.z, 5
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 5, ptr %i.g, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !23
  %i.ac = icmp slt i32 %i.ab, 5
  br i1 %i.ac, label %bb.o, label %Stats_logPath.exit.3

bb.o:                                             ; preds = %bb.n
  store i32 5, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit.3

Stats_logPath.exit.3:                             ; preds = %bb.n, %bb.o
  %i.ad = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %.pre147, i32 noundef 5) #15 ; 0 uses
  %.pre148 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.not138.4 = icmp eq ptr %.pre148, null
  br i1 %.not138.4, label %Stats_calculate.exit, label %bb.p

bb.p:                                             ; preds = %Stats_logPath.exit.3
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !22
  %i.af = icmp sgt i32 %i.ae, 6
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 6, ptr %i.g, align 8, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !23
  %i.ah = icmp slt i32 %i.ag, 6
  br i1 %i.ah, label %bb.s, label %Stats_logPath.exit.4

bb.s:                                             ; preds = %bb.r
  store i32 6, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit.4

Stats_logPath.exit.4:                             ; preds = %bb.r, %bb.s
  %i.ai = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %.pre148, i32 noundef 6) #15 ; 0 uses
  %.pre149 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.not138.5 = icmp eq ptr %.pre149, null
  br i1 %.not138.5, label %Stats_calculate.exit, label %bb.t

bb.t:                                             ; preds = %Stats_logPath.exit.4
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !22
  %i.ak = icmp sgt i32 %i.aj, 7
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 7, ptr %i.g, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.al = load i32, ptr %i.h, align 4, !tbaa !23
  %i.am = icmp slt i32 %i.al, 7
  br i1 %i.am, label %bb.w, label %Stats_logPath.exit.5

bb.w:                                             ; preds = %bb.v
  store i32 7, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit.5

Stats_logPath.exit.5:                             ; preds = %bb.v, %bb.w
  %i.an = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %.pre149, i32 noundef 7) #15 ; 0 uses
  %.pre150 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.not138.6 = icmp eq ptr %.pre150, null
  br i1 %.not138.6, label %Stats_calculate.exit, label %bb.x

bb.x:                                             ; preds = %Stats_logPath.exit.5
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !22
  %i.ap = icmp sgt i32 %i.ao, 8
  br i1 %i.ap, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 8, ptr %i.g, align 8, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.aq = load i32, ptr %i.h, align 4, !tbaa !23
  %i.ar = icmp slt i32 %i.aq, 8
  br i1 %i.ar, label %bb.aa, label %Stats_logPath.exit.6

bb.aa:                                            ; preds = %bb.z
  store i32 8, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit.6

Stats_logPath.exit.6:                             ; preds = %bb.z, %bb.aa
  %i.as = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %.pre150, i32 noundef 8) #15 ; 0 uses
  %.pre151 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.not138.7 = icmp eq ptr %.pre151, null
  br i1 %.not138.7, label %Stats_calculate.exit, label %bb.ab

bb.ab:                                            ; preds = %Stats_logPath.exit.6
  %i.at = load i32, ptr %i.g, align 8, !tbaa !22
  %i.au = icmp sgt i32 %i.at, 9
  br i1 %i.au, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 9, ptr %i.g, align 8, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.av = load i32, ptr %i.h, align 4, !tbaa !23
  %i.aw = icmp slt i32 %i.av, 9
  br i1 %i.aw, label %bb.ae, label %Stats_logPath.exit.6.thread

bb.ae:                                            ; preds = %bb.ad
  store i32 9, ptr %i.h, align 4, !tbaa !23
  br label %Stats_logPath.exit.6.thread

Stats_logPath.exit.6.thread:                      ; preds = %bb.ad, %bb.ae
  %i.ax = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %.pre151, i32 noundef 9) #15 ; 0 uses
  %.pr182.pr = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %.not = icmp eq ptr %.pr182.pr, null
  br i1 %.not, label %Stats_calculate.exit, label %bb.af

bb.af:                                            ; preds = %Stats_logPath.exit.6.thread
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !22
end_hunk_0
