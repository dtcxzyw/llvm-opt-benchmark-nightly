Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb1Sched?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Llb_MtrVerifyColumns:bb.a
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !19   ; 5 uses
  %wide.trip.count = sext i32 %i.n to i64         ; 2 uses
  %i.q = sub nsw i64 %wide.trip.count, %i.h       ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.r = sub nsw i64 %i.h, %wide.trip.count
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.q, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.018 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.t = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv24
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = icmp eq i8 %i.w, 1
  %i.y = zext i1 %i.x to i32
  %spec.select = add nuw nsw i32 %.018, %i.y
  %i.z = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv24
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27
  %i.ae = icmp eq i8 %i.ad, 1
  %i.af = zext i1 %i.ae to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.af
  %i.ag = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv24
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %i.al = icmp eq i8 %i.ak, 1
  %i.am = zext i1 %i.al to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.am
  %i.an = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv24
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !27
  %i.as = icmp eq i8 %i.ar, 1
  %i.at = zext i1 %i.as to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.at ; 3 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !43

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.018.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.018.epil = phi i32 [ %.018.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.au = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv24
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27
  %i.ay = icmp eq i8 %i.ax, 1
  %i.az = zext i1 %i.ay to i32
  %spec.select.epil = add nuw nsw i32 %.018.epil, %i.az ; 2 uses
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !44

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.d ]
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv24
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !22
  %.not = icmp eq i32 %.0.lcssa, %i.bc
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.b
  %i.bd = phi i32 [ %i.i, %._crit_edge ], [ %.pre, %bb.e ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next25, %i.be
  br i1 %i.bf, label %bb.b, label %._crit_edge22, !llvm.loop !46

._crit_edge22:                                    ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Llb_MtrSchedule(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 8 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.not = icmp slt i64 %indvars.iv, %i.i
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.d, align 4, !tbaa !24
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 1, ptr %i.o, align 1, !tbaa !27
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22
  %i.s = add nsw i32 %i.r, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  store i8 0, ptr %i.u, align 1, !tbaa !27
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ %i.s, %bb.d ], [ %i.x, %bb.e ]
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %.sink, ptr %i.z, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !23
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.f, %bb.a
  tail call void @Llb_MtrVerifyMatrix(ptr noundef nonnull %0) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph43, %Llb_MtrSwapColumns.exit
  %indvar = phi i64 [ 0, %.lr.ph43 ], [ %indvar.next, %Llb_MtrSwapColumns.exit ] ; 3 uses
  %indvars.iv46 = phi i64 [ 1, %.lr.ph43 ], [ %indvars.iv.next47, %Llb_MtrSwapColumns.exit ] ; 9 uses
  %i.am = xor i64 %indvar, -1
  %i.an = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph21.i.preheader, label %Llb_MtrVerifyColumns.exit

.lr.ph21.i.preheader:                             ; preds = %bb.g
  %invariant.op = sub i64 -2, %indvar
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader, %bb.k
  %i.ap = phi i32 [ %i.ck, %bb.k ], [ %i.an, %.lr.ph21.i.preheader ] ; 2 uses
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %bb.k ], [ 0, %.lr.ph21.i.preheader ] ; 8 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv24.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !27
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph21.i
  %i.au = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = icmp slt i64 %indvars.iv46, %i.av
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 5 uses
  %i.ay = add i64 %i.am, %i.av                    ; 2 uses
  %.reass = add i64 %i.av, %invariant.op
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i64 %.reass, 3
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ay, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv46, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.h ] ; 5 uses
  %.018.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv24.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !27
  %i.be = icmp eq i8 %i.bd, 1
  %i.bf = zext i1 %i.be to i32
  %spec.select.i = add nuw nsw i32 %.018.i, %i.bf
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv24.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27
  %i.bl = icmp eq i8 %i.bk, 1
  %i.bm = zext i1 %i.bl to i32
  %spec.select.i.1 = add nuw nsw i32 %spec.select.i, %i.bm
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv24.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  %i.bs = icmp eq i8 %i.br, 1
  %i.bt = zext i1 %i.bs to i32
  %spec.select.i.2 = add nuw nsw i32 %spec.select.i.1, %i.bt
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv24.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !27
  %i.bz = icmp eq i8 %i.by, 1
  %i.ca = zext i1 %i.bz to i32
  %spec.select.i.3 = add nuw nsw i32 %spec.select.i.2, %i.ca ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !43

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ %indvars.iv46, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.018.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.i ] ; 2 uses
  %.018.i.epil = phi i32 [ %.018.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.i ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.epil
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv24.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27
  %i.cf = icmp eq i8 %i.ce, 1
  %i.cg = zext i1 %i.cf to i32
  %spec.select.i.epil = add nuw nsw i32 %.018.i.epil, %i.cg ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %spec.select.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %bb.i ]
  %i.ch = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv24.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !22
  %.not.i = icmp eq i32 %.0.lcssa.i, %i.cj
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i, %.lr.ph21.i
  %i.ck = phi i32 [ %i.ap, %._crit_edge.i ], [ %.pre.i, %bb.j ], [ %i.ap, %.lr.ph21.i ] ; 2 uses
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next25.i, %i.cl
  br i1 %i.cm, label %.lr.ph21.i, label %Llb_MtrVerifyColumns.exit, !llvm.loop !46

Llb_MtrVerifyColumns.exit:                        ; preds = %bb.k, %bb.g
  %i.cn = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.co = tail call i32 @Llb_MtrFindBestColumn(ptr noundef nonnull %0, i32 noundef %i.cn) ; 3 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !23
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i36, label %Llb_MtrUseSelectedColumn.exit

.lr.ph.i36:                                       ; preds = %Llb_MtrVerifyColumns.exit
  %i.cr = sext i32 %i.co to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %.lr.ph.i36
  %indvars.iv.i37 = phi i64 [ 0, %.lr.ph.i36 ], [ %indvars.iv.next.i38, %bb.r ] ; 9 uses
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.i37
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !27
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.i37 ; 3 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !27
  switch i8 %i.da, label %..thread_crit_edge.i [
    i8 1, label %bb.n
    i8 0, label %bb.p
  ]

..thread_crit_edge.i:                             ; preds = %bb.m
  %.pre.i39 = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i39, i64 %indvars.iv.i37
  %.pre27.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !22
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.db = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i37
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !22 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.cz, align 1, !tbaa !27
  %i.df = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i37
  store i32 0, ptr %i.dg, align 4, !tbaa !22
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  store i8 1, ptr %i.cz, align 1, !tbaa !27
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i37
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !22 ; 2 uses
  %i.dk = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i37
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !22
  br label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.n, %..thread_crit_edge.i
  %i.dm = phi i32 [ %.pre27.i, %..thread_crit_edge.i ], [ %i.dd, %bb.n ], [ %i.dj, %bb.p ] ; 2 uses
  %i.dn = phi ptr [ %.pre.i39, %..thread_crit_edge.i ], [ %i.db, %bb.n ], [ %i.dk, %bb.p ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i37
  %i.dp = add nsw i32 %i.dm, -1
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !22
  %i.dq = icmp slt i32 %i.dm, 1
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread.i
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread.i, %bb.o, %bb.l
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !23
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next.i38, %i.ds
  br i1 %i.dt, label %bb.l, label %Llb_MtrUseSelectedColumn.exit, !llvm.loop !42

Llb_MtrUseSelectedColumn.exit:                    ; preds = %bb.r, %Llb_MtrVerifyColumns.exit
  %i.du = zext i32 %i.co to i64
  %i.dv = icmp eq i64 %indvars.iv46, %i.du
  br i1 %i.dv, label %Llb_MtrSwapColumns.exit, label %bb.s

bb.s:                                             ; preds = %Llb_MtrUseSelectedColumn.exit
  %i.dw = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv46 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !17
  %i.dz = sext i32 %i.co to i64                   ; 3 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dz ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !17
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !17
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !17
  %i.ec = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv46 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !20
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.dz ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !20
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !20
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !20
  %i.eh = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv46 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !22
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.dz ; 2 uses
end_hunk_0
