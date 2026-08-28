Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSpeedup?download=true
inline.NumInlined: 337
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Gia_ManSpeedupObj:bb.a
  %i.fb = shl nsw i32 %i.fa, 1
  %i.fc = or disjoint i32 %i.fb, %i.et
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv191
  %i.fd = load i32, ptr %gep, align 4, !tbaa !8
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv191 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !8
  %i.fg = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.ff) #16
  store i32 %i.fg, ptr %i.fe, align 8, !tbaa !8
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, %i.ev ; 2 uses
  %i.fh = icmp slt i64 %indvars.iv.next192, %i.ej
  br i1 %i.fh, label %bb.k, label %._crit_edge163.us, !llvm.loop !119

._crit_edge163.us:                                ; preds = %bb.k
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %.val125.us = load i32, ptr %i.x, align 4, !tbaa !88
  %i.fi = sext i32 %.val125.us to i64
  %i.fj = icmp slt i64 %indvars.iv.next195, %i.fi
  br i1 %i.fj, label %.lr.ph166.split.us, label %.critedge8, !llvm.loop !120

.critedge8:                                       ; preds = %.lr.ph166.split.us, %._crit_edge163.us, %Vec_IntFree.exit140
  %.val123 = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.fk = ptrtoint ptr %2 to i64
  %i.fl = ptrtoint ptr %.val123 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 12                ; 2 uses
  %i.fo = trunc i64 %i.fn to i32                  ; 2 uses
  %i.fp = load i32, ptr %i.a, align 16, !tbaa !8
  %i.fq = ashr i32 %i.fp, 1                       ; 3 uses
  %.not110 = icmp sgt i32 %i.fq, %i.fo
  br i1 %.not110, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge8
  %i.fr = getelementptr i8, ptr %0, i64 192
  %.val133 = load ptr, ptr %i.fr, align 8, !tbaa !121
  %i.fs = sext i32 %i.fq to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %.val133, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = and i32 %i.fo, 268435455
  %i.fw = and i32 %i.fu, -268435456
  %i.fx = or disjoint i32 %i.fw, %i.fv
  store i32 %i.fx, ptr %i.ft, align 4
  %i.fy = getelementptr i8, ptr %0, i64 200
  %.val134 = load ptr, ptr %i.fy, align 8, !tbaa !122 ; 2 uses
  %sext = shl i64 %i.fn, 32
  %i.fz = ashr exact i64 %sext, 30
  %i.ga = getelementptr inbounds i8, ptr %.val134, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = getelementptr inbounds [4 x i8], ptr %.val134, i64 %i.fs
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !8
  store i32 %i.fq, ptr %i.ga, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %.critedge8, %bb.l, %Vec_IntFree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #5

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Gia_ManHashMux(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @Gia_ManSpeedup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq ptr %i.b, null                  ; 4 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 3 uses
  %.not262 = icmp eq ptr %i.d, null
  br i1 %.not262, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.d, i32 noundef 1) #16
  store ptr %i.e, ptr %i.c, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.f = tail call float @Gia_ManDelayTraceLut(ptr noundef nonnull %0) ; 2 uses
  %i.g = sitofp i32 %1 to float
  %i.h = fmul float %i.f, %i.g
  %i.i = fdiv float %i.h, 1.000000e+02
  %i.j = select i1 %.not, float 1.000000e+00, float %i.i ; 5 uses
  %.not263 = icmp eq i32 %3, 0                    ; 3 uses
  br i1 %.not263, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fpext float %i.f to double
  %i.l = fpext float %i.j to double
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %i.k, double noundef %i.l) ; 0 uses
  %i.n = select i1 %.not, ptr @.str.3, ptr @.str.2
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %i.n) ; 0 uses
  br i1 %.not, label %.thread585, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %1) ; 0 uses
  br label %.thread585

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val286 = load i32, ptr %i.q, align 8, !tbaa !35 ; 3 uses
  %i.r = sext i32 %.val286 to i64
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 4) #19 ; 2 uses
  %i.t = icmp sgt i32 %.val286, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

.thread585:                                       ; preds = %bb.e, %bb.f
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.u = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val286586 = load i32, ptr %i.u, align 8, !tbaa !35 ; 3 uses
  %i.v = sext i32 %.val286586 to i64
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 4) #19 ; 2 uses
  %i.x = icmp sgt i32 %.val286586, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge408

.lr.ph:                                           ; preds = %.thread585, %bb.g
  %i.y = phi ptr [ %i.w, %.thread585 ], [ %i.s, %bb.g ] ; 4 uses
  %.val286587 = phi i32 [ %.val286586, %.thread585 ], [ %.val286, %bb.g ] ; 2 uses
  %i.z = phi ptr [ %i.u, %.thread585 ], [ %i.q, %bb.g ] ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 264
  %.val295.a = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr i8, ptr %.val295.a, i64 8
  %.val295.val.a = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr i8, ptr %0, i64 744
  %wide.trip.count = zext nneg i32 %.val286587 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val295.val.a, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %.not390 = icmp eq i32 %i.ae, 0
  br i1 %.not390, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val342.a = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.af = getelementptr i8, ptr %.val342.a, i64 8
  %.val342.val.a = load ptr, ptr %i.af, align 8, !tbaa !47
  %.idx = mul i64 %indvars.iv, 12
  %i.ag = getelementptr i8, ptr %.val342.val.a, i64 %.idx
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !50
  %i.aj = fcmp ult float %i.ai, %i.j
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = tail call i32 @Gia_LutDelayTraceTCEdges(ptr noundef nonnull %0, i32 noundef %i.ak, float noundef %i.j)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.k
  br i1 %.not263, label %._crit_edge.thread, label %.lr.ph407

.lr.ph407:                                        ; preds = %._crit_edge
  %i.an = getelementptr i8, ptr %0, i64 264
  %.val294.a = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr i8, ptr %.val294.a, i64 8
  %.val294.val.a = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = getelementptr i8, ptr %0, i64 744
  %wide.trip.count463 = zext nneg i32 %.val286587 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph407, %bb.p
  %indvars.iv460 = phi i64 [ 1, %.lr.ph407 ], [ %indvars.iv.next461, %bb.p ] ; 3 uses
  %.0239406 = phi i32 [ 0, %.lr.ph407 ], [ %.1240, %bb.p ] ; 2 uses
  %.0241405 = phi i32 [ 0, %.lr.ph407 ], [ %.3244, %bb.p ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val294.val.a, i64 %indvars.iv460
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8  ; 2 uses
  %.not385 = icmp eq i32 %i.as, 0
  br i1 %.not385, label %bb.p, label %.preheader395.a

.preheader395.a:                                  ; preds = %bb.l
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val294.val.a, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph403, label %.critedge

.lr.ph403:                                        ; preds = %.preheader395.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.val314.a = load ptr, ptr %i.ap, align 8, !tbaa !57
  %wide.trip.count458 = zext nneg i32 %i.av to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph403, %bb.o
  %indvars.iv455 = phi i64 [ 0, %.lr.ph403 ], [ %indvars.iv.next456, %bb.o ] ; 2 uses
  %.1242402 = phi i32 [ %.0241405, %.lr.ph403 ], [ %.2243, %bb.o ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv455
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8  ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %.val314.a, i64 %i.ba
  %.val318.a = load i64, ptr %i.bb, align 4
  %i.bc = and i64 %.val318.a, 2684354559
  %narrow.i.not = icmp eq i64 %i.bc, 2684354559
  br i1 %narrow.i.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val341.a = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.bd = getelementptr i8, ptr %.val341.a, i64 8
  %.val341.val.a = load ptr, ptr %i.bd, align 8, !tbaa !47
  %i.be = mul nsw i32 %i.az, 3
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [4 x i8], ptr %.val341.val.a, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !50
  %i.bj = fcmp olt float %i.bi, %i.j
  %5 = zext i1 %i.bj to i32
  %spec.select = add nsw i32 %.1242402, %5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2243 = phi i32 [ %.1242402, %bb.m ], [ %spec.select, %bb.n ] ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.critedge, label %bb.m, !llvm.loop !124

.critedge:                                        ; preds = %bb.o, %.preheader395.a
  %.1242.lcssa = phi i32 [ %.0241405, %.preheader395.a ], [ %.2243, %bb.o ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv460
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bl)
  %i.bn = add nsw i32 %i.bm, %.0239406
  %i.bo = freeze i32 %.1242.lcssa
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.l
  %.3244 = phi i32 [ %i.bo, %.critedge ], [ %.0241405, %bb.l ] ; 2 uses
  %.1240 = phi i32 [ %i.bn, %.critedge ], [ %.0239406, %bb.l ] ; 2 uses
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count463
  br i1 %exitcond464.not, label %._crit_edge408, label %bb.l, !llvm.loop !125

._crit_edge408:                                   ; preds = %bb.p, %.thread585
  %i.bp = phi ptr [ %i.w, %.thread585 ], [ %i.y, %bb.p ]
  %i.bq = phi ptr [ %i.u, %.thread585 ], [ %i.z, %bb.p ]
  %.0241.lcssa = phi i32 [ 0, %.thread585 ], [ %.3244, %bb.p ] ; 3 uses
  %.0239.lcssa = phi i32 [ 0, %.thread585 ], [ %.1240, %bb.p ] ; 2 uses
  %i.br = tail call i32 @Gia_ManLutFaninCount(ptr noundef nonnull %0) #16
  %.not264 = icmp eq i32 %.0241.lcssa, 0
  %i.bs = sitofp i32 %.0239.lcssa to double
  %i.bt = sitofp i32 %.0241.lcssa to double
  %i.bu = fdiv double %i.bs, %i.bt
  %i.bv = select i1 %.not264, double 0.000000e+00, double %i.bu
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.br, i32 noundef %.0241.lcssa, i32 noundef %.0239.lcssa, double noundef %i.bv) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge408, %._crit_edge
  %i.bx = phi ptr [ %i.y, %._crit_edge ], [ %i.bp, %._crit_edge408 ], [ %i.s, %bb.g ] ; 6 uses
  %i.by = phi ptr [ %i.z, %._crit_edge ], [ %i.bq, %._crit_edge408 ], [ %i.q, %bb.g ] ; 2 uses
  %i.bz = tail call ptr @Gia_ManDup(ptr noundef nonnull %0) #16 ; 7 uses
  tail call void @Gia_ManHashStart(ptr noundef %i.bz) #16
  %i.ca = getelementptr i8, ptr %i.bz, i64 24     ; 2 uses
  %.val283.a = load i32, ptr %i.ca, align 8, !tbaa !35 ; 3 uses
  %i.cb = mul nsw i32 %.val283.a, 3               ; 2 uses
  %i.cc = add nsw i32 %i.cb, 1000                 ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = tail call noalias ptr @calloc(i64 noundef %i.cd, i64 noundef 4) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !122
  %i.cg = tail call noalias ptr @calloc(i64 noundef %i.cd, i64 noundef 4) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 192 ; 6 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !121
  %i.ci = icmp sgt i32 %.val283.a, -334
  br i1 %i.ci, label %.lr.ph413.preheader, label %._crit_edge414

.lr.ph413.preheader:                              ; preds = %._crit_edge.thread
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %wide.trip.count468 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count468, 3      ; 3 uses
  %i.cj = icmp eq i32 %.val283.a, -333
  br i1 %i.cj, label %.lr.ph413.epil.preheader, label %.lr.ph413.preheader.new

.lr.ph413.preheader.new:                          ; preds = %.lr.ph413.preheader
  %unroll_iter = and i64 %wide.trip.count468, 2147483644
  br label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413, %.lr.ph413.preheader.new
  %indvars.iv465 = phi i64 [ 0, %.lr.ph413.preheader.new ], [ %indvars.iv.next466.3, %.lr.ph413 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph413.preheader.new ], [ %niter.next.3, %.lr.ph413 ]
  %.val343 = load ptr, ptr %i.ch, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val343, i64 %indvars.iv465 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = or i32 %i.cl, 268435455
  store i32 %i.cm, ptr %i.ck, align 4
  %.val343.1 = load ptr, ptr %i.ch, align 8, !tbaa !121
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val343.1, i64 %indvars.iv465
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = or i32 %i.cp, 268435455
  store i32 %i.cq, ptr %i.co, align 4
  %.val343.2 = load ptr, ptr %i.ch, align 8, !tbaa !121
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val343.2, i64 %indvars.iv465
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = or i32 %i.ct, 268435455
  store i32 %i.cu, ptr %i.cs, align 4
  %.val343.3 = load ptr, ptr %i.ch, align 8, !tbaa !121
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val343.3, i64 %indvars.iv465
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = or i32 %i.cx, 268435455
  store i32 %i.cy, ptr %i.cw, align 4
  %indvars.iv.next466.3 = add nuw nsw i64 %indvars.iv465, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge414.loopexit.unr-lcssa, label %.lr.ph413, !llvm.loop !126

._crit_edge414.loopexit.unr-lcssa:                ; preds = %.lr.ph413
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge414, label %.lr.ph413.epil.preheader

.lr.ph413.epil.preheader:                         ; preds = %._crit_edge414.loopexit.unr-lcssa, %.lr.ph413.preheader
  %indvars.iv465.epil.init = phi i64 [ 0, %.lr.ph413.preheader ], [ %indvars.iv.next466.3, %._crit_edge414.loopexit.unr-lcssa ]
  %lcmp.mod627 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod627)
  br label %.lr.ph413.epil

.lr.ph413.epil:                                   ; preds = %.lr.ph413.epil, %.lr.ph413.epil.preheader
  %indvars.iv465.epil = phi i64 [ %indvars.iv465.epil.init, %.lr.ph413.epil.preheader ], [ %indvars.iv.next466.epil, %.lr.ph413.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph413.epil.preheader ], [ %epil.iter.next, %.lr.ph413.epil ]
  %.val343.epil = load ptr, ptr %i.ch, align 8, !tbaa !121
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val343.epil, i64 %indvars.iv465.epil ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = or i32 %i.da, 268435455
  store i32 %i.db, ptr %i.cz, align 4
  %indvars.iv.next466.epil = add nuw nsw i64 %indvars.iv465.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge414, label %.lr.ph413.epil, !llvm.loop !127

._crit_edge414:                                   ; preds = %._crit_edge414.loopexit.unr-lcssa, %.lr.ph413.epil, %._crit_edge.thread
  %i.dc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 3 uses
  store i32 0, ptr %i.dd, align 4, !tbaa !88
  store i32 16, ptr %i.dc, align 8, !tbaa !89
  %i.de = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !37
  %i.dg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 4 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !88
  store i32 16, ptr %i.dg, align 8, !tbaa !89
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 12 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !37
  %.val282442 = load i32, ptr %i.by, align 8, !tbaa !35
  %i.dk = icmp sgt i32 %.val282442, 1
  br i1 %i.dk, label %.lr.ph449, label %.loopexit

.lr.ph449:                                        ; preds = %._crit_edge414
  %i.dl = getelementptr i8, ptr %0, i64 264       ; 6 uses
  %i.dm = getelementptr i8, ptr %0, i64 744       ; 3 uses
  %i.dn = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.do = icmp eq i32 %4, 0                       ; 2 uses
  %i.dp = add nsw i32 %i.cb, 900
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph449, %.critedge5.thread
  %.val290534 = phi ptr [ %i.de, %.lr.ph449 ], [ %.val290533, %.critedge5.thread ] ; 6 uses
  %.val292524 = phi ptr [ %i.de, %.lr.ph449 ], [ %.val292525, %.critedge5.thread ] ; 6 uses
  %i.dq = phi ptr [ %i.de, %.lr.ph449 ], [ %i.ov, %.critedge5.thread ] ; 6 uses
  %i.dr = phi i32 [ 16, %.lr.ph449 ], [ %i.ow, %.critedge5.thread ] ; 6 uses
  %i.ds = phi ptr [ %i.de, %.lr.ph449 ], [ %i.ox, %.critedge5.thread ] ; 6 uses
  %indvars.iv490 = phi i64 [ 1, %.lr.ph449 ], [ %indvars.iv.next491, %.critedge5.thread ] ; 12 uses
  %.2447 = phi i32 [ 0, %.lr.ph449 ], [ %.3, %.critedge5.thread ] ; 7 uses
  %.4245446 = phi i32 [ 0, %.lr.ph449 ], [ %.5, %.critedge5.thread ] ; 4 uses
  %.val293 = load ptr, ptr %i.dl, align 8, !tbaa !36 ; 3 uses
  %i.dt = getelementptr i8, ptr %.val293, i64 8
  %.val293.val = load ptr, ptr %i.dt, align 8, !tbaa !37 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val293.val, i64 %indvars.iv490
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8  ; 2 uses
  %.not386 = icmp eq i32 %i.dv, 0
  br i1 %.not386, label %.critedge5.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val340.a = load ptr, ptr %i.dm, align 8, !tbaa !46
  %i.dw = getelementptr i8, ptr %.val340.a, i64 8
  %.val340.val.a = load ptr, ptr %i.dw, align 8, !tbaa !47
  %.idx576 = mul i64 %indvars.iv490, 12
  %i.dx = getelementptr i8, ptr %.val340.val.a, i64 %.idx576
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !50
  %i.ea = fcmp ult float %i.dz, %i.j
  br i1 %i.ea, label %.preheader394.a, label %.critedge5.thread

.preheader394.a:                                  ; preds = %bb.r
  %i.eb = sext i32 %i.dv to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %.val293.val, i64 %i.eb ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8  ; 4 uses
  %i.ee = icmp sgt i32 %i.ed, 0                   ; 2 uses
  br i1 %i.ee, label %.lr.ph417, label %.critedge2

.lr.ph417:                                        ; preds = %.preheader394.a
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 3 uses
  %.val313.a = load ptr, ptr %i.dn, align 8, !tbaa !57 ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv490 ; 3 uses
  %wide.trip.count473 = zext nneg i32 %i.ed to i64 ; 2 uses
  %xtraiter628 = and i64 %wide.trip.count473, 1
  %i.eh = icmp eq i32 %i.ed, 1
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph417.new

.lr.ph417.new:                                    ; preds = %.lr.ph417
  %unroll_iter633 = and i64 %wide.trip.count473, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph417.new
  %indvars.iv470 = phi i64 [ 0, %.lr.ph417.new ], [ %indvars.iv.next471.1, %bb.w ] ; 4 uses
  %.0238416 = phi i32 [ 0, %.lr.ph417.new ], [ %.1.1, %bb.w ] ; 2 uses
  %niter634 = phi i64 [ 0, %.lr.ph417.new ], [ %niter634.next.1, %bb.w ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv470
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = sext i32 %i.ej to i64
end_hunk_0
