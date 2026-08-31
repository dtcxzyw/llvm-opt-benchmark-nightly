Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/make_map?download=true
inline.NumInlined: 102
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@make_map_internal:.preheader573

bb.c:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.0420 = phi i32 [ %spec.select, %bb.c ], [ %i.bv, %bb.b ], [ %1, %._crit_edge ] ; 4 uses
  %i.bw = fcmp olt double %9, 0.000000e+00
  br i1 %i.bw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bx = sitofp i32 %1 to double
  %i.by = fdiv double %i.br, %i.bx
  %i.bz = tail call double @sqrt(double noundef %i.by) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0424 = phi double [ %i.bz, %bb.e ], [ %9, %bb.d ] ; 6 uses
  %i.ca = load i8, ptr @Verbose, align 1, !tbaa !47
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !17
  tail call void @flockfile(ptr noundef %i.cb) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  %i.cc = tail call i64 @time(ptr noundef null) #19
  store i64 %i.cc, ptr %i.q, align 8, !tbaa !48
  %i.cd = call ptr @localtime(ptr noundef nonnull %i.q) #19 ; 6 uses
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !49
  %i.ch = add nsw i32 %i.cg, 1900
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !52
  %i.ck = add nsw i32 %i.cj, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !54
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !55
  %i.cr = load i32, ptr %i.cd, align 8, !tbaa !56
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 997, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cr) #20 ; 0 uses
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.40, i32 noundef %.0420, double noundef %.0424) #20 ; 0 uses
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc = call i32 @fputc(i32 10, ptr %i.cv)     ; 0 uses
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !17
  call void @funlockfile(ptr noundef %i.cw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cx = icmp ne ptr %5, null
  %i.cy = icmp ne i32 %8, 0
  %or.cond = and i1 %i.cx, %i.cy
  br i1 %or.cond, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.da = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.41, i32 noundef %8) #20 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !87
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %i.de = mul nsw i32 %2, %1                      ; 3 uses
  %i.df = mul i32 %8, %2
  %i.dg = mul i32 %i.df, %i.dd
  %i.dh = add nsw i32 %i.dg, %i.de                ; 3 uses
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.dj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit

bb.j:                                             ; preds = %bb.i
  %mul.ov.i = icmp slt i32 %i.dh, 0
  br i1 %mul.ov.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.28, i64 noundef %i.di, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dm = call noalias ptr @calloc(i64 noundef %i.di, i64 noundef 8) #22 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.m, label %gv_calloc.exit

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.dp = shl nuw nsw i64 %i.di, 3
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.29, i64 noundef %i.dp) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.l
  %i.dr = phi ptr [ %i.dj, %.thread.i ], [ %i.dm, %bb.l ] ; 4 uses
  %i.ds = icmp sgt i32 %i.de, 0
  br i1 %i.ds, label %.lr.ph.preheader, label %._crit_edge596

.lr.ph.preheader:                                 ; preds = %gv_calloc.exit
  %i.dt = zext nneg i32 %i.de to i64
  %i.du = shl nuw nsw i64 %i.dt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dr, ptr nonnull align 8 %3, i64 %i.du, i1 false), !tbaa !22
  br label %._crit_edge596

._crit_edge596:                                   ; preds = %.lr.ph.preheader, %gv_calloc.exit
  %i.dv = mul nsw i32 %8, %i.dd
  %i.dw = add nsw i32 %i.dv, %1                   ; 3 uses
  %i.dx = sext i32 %i.dw to i64                   ; 3 uses
  %.not.i496 = icmp eq i32 %i.dw, 0
  br i1 %.not.i496, label %.thread.i499, label %bb.n

.thread.i499:                                     ; preds = %._crit_edge596
  %i.dy = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit500

bb.n:                                             ; preds = %._crit_edge596
  %mul.ov.i498 = icmp slt i32 %i.dw, 0
  br i1 %mul.ov.i498, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.28, i64 noundef %i.dx, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.eb = call noalias ptr @calloc(i64 noundef %i.dx, i64 noundef 4) #22 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.q, label %gv_calloc.exit500

bb.q:                                             ; preds = %bb.p
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ee = shl nuw nsw i64 %i.dx, 2
  %i.ef = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.29, i64 noundef %i.ee) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit500:                                ; preds = %.thread.i499, %bb.p
  %i.eg = phi ptr [ %i.dy, %.thread.i499 ], [ %i.eb, %bb.p ] ; 12 uses
  br i1 %i.s, label %.lr.ph598.preheader, label %.preheader571

.lr.ph598.preheader:                              ; preds = %gv_calloc.exit500
  %i.eh = zext nneg i32 %1 to i64
  %i.ei = shl nuw nsw i64 %i.eh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eg, ptr align 4 %4, i64 %i.ei, i1 false), !tbaa !21
  br label %.preheader571

.preheader571:                                    ; preds = %.lr.ph598.preheader, %gv_calloc.exit500
  %i.ej = load i32, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %.preheader571
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !42 ; 2 uses
  %.not492 = icmp eq i32 %17, 0
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.eo = icmp sgt i32 %8, 0
  %i.ep = icmp sgt i32 %2, 0
  %i.eq = sitofp i32 %8 to double                 ; 4 uses
  %i.er = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count740 = zext nneg i32 %i.ej to i64
  %.pre = load i32, ptr %i.em, align 4, !tbaa !21
  %wide.trip.count726 = zext i32 %2 to i64        ; 3 uses
  %xtraiter = and i32 %8, 1
  %i.es = icmp eq i32 %8, 1
  %unroll_iter = and i32 %8, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1379 = trunc i32 %8 to i1
  %min.iters.check1124 = icmp ult i32 %2, 4
  %n.vec1126 = and i64 %wide.trip.count726, 2147483644 ; 3 uses
  %cmp.n1139 = icmp eq i64 %n.vec1126, %wide.trip.count726
  br label %bb.r

.loopexit570:                                     ; preds = %..loopexit569_crit_edge.us, %.lr.ph608, %bb.r
  %.1428.lcssa = phi i32 [ %.0427631, %bb.r ], [ %.0427631, %.lr.ph608 ], [ %.3430.us, %..loopexit569_crit_edge.us ] ; 2 uses
  %exitcond741.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count740
  br i1 %exitcond741.not, label %._crit_edge633, label %bb.r, !llvm.loop !88

bb.r:                                             ; preds = %.lr.ph632, %.loopexit570
  %i.et = phi i32 [ %.pre, %.lr.ph632 ], [ %i.ev, %.loopexit570 ] ; 2 uses
  %indvars.iv737 = phi i64 [ 0, %.lr.ph632 ], [ %indvars.iv.next738, %.loopexit570 ] ; 3 uses
  %.0427631 = phi i32 [ %1, %.lr.ph632 ], [ %.1428.lcssa, %.loopexit570 ] ; 3 uses
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next738
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !21 ; 3 uses
  %i.ew = icmp slt i32 %i.et, %i.ev
  br i1 %i.ew, label %.lr.ph608, label %.loopexit570

.lr.ph608:                                        ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv737 ; 5 uses
  br i1 %i.eo, label %.lr.ph608.split.us.preheader, label %.loopexit570

.lr.ph608.split.us.preheader:                     ; preds = %.lr.ph608
  %i.ey = mul nuw nsw i64 %indvars.iv737, %i.er
  %i.ez = sext i32 %i.et to i64
  %wide.trip.count735 = sext i32 %i.ev to i64
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.ey ; 2 uses
  br label %.lr.ph608.split.us

.lr.ph608.split.us:                               ; preds = %.lr.ph608.split.us.preheader, %..loopexit569_crit_edge.us
  %indvars.iv732 = phi i64 [ %i.ez, %.lr.ph608.split.us.preheader ], [ %indvars.iv.next733, %..loopexit569_crit_edge.us ] ; 6 uses
  %.1428606.us = phi i32 [ %.0427631, %.lr.ph608.split.us.preheader ], [ %.3430.us, %..loopexit569_crit_edge.us ] ; 3 uses
  br i1 %.not492, label %.preheader568.lr.ph.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph608.split.us
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !21 ; 2 uses
  %i.fb = load ptr, ptr %i.en, align 8, !tbaa !43
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv732
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !21
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !21
  %i.fh = icmp eq i32 %i.fa, %i.fg
  %i.fi = icmp eq i32 %i.fa, %17
  %or.cond493.us = and i1 %i.fi, %i.fh
  br i1 %or.cond493.us, label %.preheader568.lr.ph.us, label %..loopexit569_crit_edge.us

.preheader568.lr.ph.us:                           ; preds = %bb.s, %.lr.ph608.split.us
  br i1 %i.ep, label %.preheader568.lr.ph.split.us.us, label %.preheader568.us611.preheader

.preheader568.us611.preheader:                    ; preds = %.preheader568.lr.ph.us
  %i.fj = sext i32 %.1428606.us to i64            ; 2 uses
  br i1 %i.es, label %.preheader568.us611.epil.preheader, label %.preheader568.us611

bb.t:                                             ; preds = %.preheader568.us611
  %i.fk = load ptr, ptr %i.en, align 8, !tbaa !43
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %indvars.iv732
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !21
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fn
  br label %.preheader568.us611.1

.preheader568.us611.1:                            ; preds = %.preheader568.us611, %bb.t
  %.sink.in = phi ptr [ %i.fo, %bb.t ], [ %i.ex, %.preheader568.us611 ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !21
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv719
  store i32 %.sink, ptr %i.fp, align 4, !tbaa !21
  %i.fq = or disjoint i32 %.0425603.us612, 1
  %i.fr = uitofp nneg i32 %i.fq to double
  %i.fs = fdiv double %i.fr, %i.eq
  %i.ft = fcmp ogt double %i.fs, 5.000000e-01
  br i1 %i.ft, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader568.us611.1
  %i.fu = load ptr, ptr %i.en, align 8, !tbaa !43
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %indvars.iv732
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !21
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader568.us611.1
  %.sink.in.1 = phi ptr [ %i.fy, %bb.u ], [ %i.ex, %.preheader568.us611.1 ]
  %.sink.1 = load i32, ptr %.sink.in.1, align 4, !tbaa !21
  %i.fz = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv719
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  store i32 %.sink.1, ptr %i.ga, align 4, !tbaa !21
  %indvars.iv.next720.1 = add nsw i64 %indvars.iv719, 2 ; 3 uses
  %i.gb = add nuw nsw i32 %.0425603.us612, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit569_crit_edge.us.loopexit685.unr-lcssa, label %.preheader568.us611, !llvm.loop !89

..loopexit569_crit_edge.us.loopexit:              ; preds = %._crit_edge601.us.us
  %i.gc = trunc nsw i64 %indvars.iv.next729 to i32
  br label %..loopexit569_crit_edge.us

..loopexit569_crit_edge.us.loopexit685.unr-lcssa: ; preds = %bb.v
  br i1 %lcmp.mod.not, label %..loopexit569_crit_edge.us.loopexit685, label %.preheader568.us611.epil.preheader

.preheader568.us611.epil.preheader:               ; preds = %..loopexit569_crit_edge.us.loopexit685.unr-lcssa, %.preheader568.us611.preheader
  %indvars.iv719.epil.init = phi i64 [ %i.fj, %.preheader568.us611.preheader ], [ %indvars.iv.next720.1, %..loopexit569_crit_edge.us.loopexit685.unr-lcssa ] ; 2 uses
  %.0425603.us612.epil.init = phi i32 [ 0, %.preheader568.us611.preheader ], [ %i.gb, %..loopexit569_crit_edge.us.loopexit685.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1379)
  %i.gd = uitofp nneg i32 %.0425603.us612.epil.init to double
  %i.ge = fdiv double %i.gd, %i.eq
  %i.gf = fcmp ogt double %i.ge, 5.000000e-01
  br i1 %i.gf, label %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa, label %bb.w

bb.w:                                             ; preds = %.preheader568.us611.epil.preheader
  %i.gg = load ptr, ptr %i.en, align 8, !tbaa !43
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %indvars.iv732
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !21
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.gj
  br label %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa

..loopexit569_crit_edge.us.loopexit685.epilog-lcssa: ; preds = %bb.w, %.preheader568.us611.epil.preheader
  %.sink.in.epil = phi ptr [ %i.gk, %bb.w ], [ %i.ex, %.preheader568.us611.epil.preheader ]
  %.sink.epil = load i32, ptr %.sink.in.epil, align 4, !tbaa !21
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv719.epil.init
  store i32 %.sink.epil, ptr %i.gl, align 4, !tbaa !21
  %indvars.iv.next720.epil = add nsw i64 %indvars.iv719.epil.init, 1
  br label %..loopexit569_crit_edge.us.loopexit685

..loopexit569_crit_edge.us.loopexit685:           ; preds = %..loopexit569_crit_edge.us.loopexit685.unr-lcssa, %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa
  %indvars.iv.next720.lcssa = phi i64 [ %indvars.iv.next720.1, %..loopexit569_crit_edge.us.loopexit685.unr-lcssa ], [ %indvars.iv.next720.epil, %..loopexit569_crit_edge.us.loopexit685.epilog-lcssa ]
  %i.gm = trunc nsw i64 %indvars.iv.next720.lcssa to i32
  br label %..loopexit569_crit_edge.us

..loopexit569_crit_edge.us:                       ; preds = %..loopexit569_crit_edge.us.loopexit685, %..loopexit569_crit_edge.us.loopexit, %bb.s
  %.3430.us = phi i32 [ %.1428606.us, %bb.s ], [ %i.gc, %..loopexit569_crit_edge.us.loopexit ], [ %i.gm, %..loopexit569_crit_edge.us.loopexit685 ] ; 2 uses
  %indvars.iv.next733 = add nsw i64 %indvars.iv732, 1 ; 2 uses
  %exitcond736.not = icmp eq i64 %indvars.iv.next733, %wide.trip.count735
  br i1 %exitcond736.not, label %.loopexit570, label %.lr.ph608.split.us, !llvm.loop !90

.preheader568.us611:                              ; preds = %.preheader568.us611.preheader, %bb.v
  %indvars.iv719 = phi i64 [ %indvars.iv.next720.1, %bb.v ], [ %i.fj, %.preheader568.us611.preheader ] ; 3 uses
  %.0425603.us612 = phi i32 [ %i.gb, %bb.v ], [ 0, %.preheader568.us611.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.v ], [ 0, %.preheader568.us611.preheader ]
  %i.gn = uitofp nneg i32 %.0425603.us612 to double
  %i.go = fdiv double %i.gn, %i.eq
  %i.gp = fcmp ogt double %i.go, 5.000000e-01
  br i1 %i.gp, label %.preheader568.us611.1, label %bb.t

.preheader568.lr.ph.split.us.us:                  ; preds = %.preheader568.lr.ph.us
  %i.gq = load ptr, ptr %i.en, align 8, !tbaa !43
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %indvars.iv732
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !21 ; 2 uses
  %i.gt = mul nsw i32 %i.gs, %2
  %i.gu = sext i32 %i.gt to i64
  %i.gv = sext i32 %.1428606.us to i64
  %invariant.gep1068 = getelementptr [8 x i8], ptr %3, i64 %i.gu ; 2 uses
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.gw
  br label %.preheader568.us.us

.preheader568.us.us:                              ; preds = %._crit_edge601.us.us, %.preheader568.lr.ph.split.us.us
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %._crit_edge601.us.us ], [ %i.gv, %.preheader568.lr.ph.split.us.us ] ; 3 uses
  %.0425603.us.us = phi i32 [ %i.ht, %._crit_edge601.us.us ], [ 0, %.preheader568.lr.ph.split.us.us ] ; 2 uses
  %i.gy = uitofp nneg i32 %.0425603.us.us to double
  %i.gz = fdiv double %i.gy, %i.eq                ; 4 uses
  %i.ha = fsub double 1.000000e+00, %i.gz         ; 2 uses
  %i.hb = mul nsw i64 %indvars.iv728, %i.er
  %invariant.gep1070 = getelementptr [8 x i8], ptr %i.dr, i64 %i.hb ; 2 uses
  br i1 %min.iters.check1124, label %scalar.ph1123.preheader, label %vector.ph1125

vector.ph1125:                                    ; preds = %.preheader568.us.us
  %broadcast.splatinsert1127 = insertelement <2 x double> poison, double %i.gz, i64 0
  %broadcast.splat1128 = shufflevector <2 x double> %broadcast.splatinsert1127, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1129 = insertelement <2 x double> poison, double %i.ha, i64 0
  %broadcast.splat1130 = shufflevector <2 x double> %broadcast.splatinsert1129, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %vector.ph1125
  %index1132 = phi i64 [ 0, %vector.ph1125 ], [ %index.next1137, %vector.body1131 ] ; 4 uses
  %i.hc = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1132 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  %wide.load1133 = load <2 x double>, ptr %i.hc, align 8, !tbaa !22
  %wide.load1134 = load <2 x double>, ptr %i.hd, align 8, !tbaa !22
  %i.he = getelementptr [8 x i8], ptr %invariant.gep1068, i64 %index1132 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  %wide.load1135 = load <2 x double>, ptr %i.he, align 8, !tbaa !22
  %wide.load1136 = load <2 x double>, ptr %i.hf, align 8, !tbaa !22
  %i.hg = fmul <2 x double> %broadcast.splat1130, %wide.load1135
  %i.hh = fmul <2 x double> %broadcast.splat1130, %wide.load1136
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1128, <2 x double> %wide.load1133, <2 x double> %i.hg)
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1128, <2 x double> %wide.load1134, <2 x double> %i.hh)
  %i.hk = getelementptr [8 x i8], ptr %invariant.gep1070, i64 %index1132 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 16
  store <2 x double> %i.hi, ptr %i.hk, align 8, !tbaa !22
  store <2 x double> %i.hj, ptr %i.hl, align 8, !tbaa !22
  %index.next1137 = add nuw i64 %index1132, 4     ; 2 uses
  %i.hm = icmp eq i64 %index.next1137, %n.vec1126
  br i1 %i.hm, label %middle.block1138, label %vector.body1131, !llvm.loop !91

middle.block1138:                                 ; preds = %vector.body1131
  br i1 %cmp.n1139, label %._crit_edge601.us.us, label %scalar.ph1123.preheader

scalar.ph1123.preheader:                          ; preds = %.preheader568.us.us, %middle.block1138
  %indvars.iv723.ph = phi i64 [ 0, %.preheader568.us.us ], [ %n.vec1126, %middle.block1138 ]
  br label %scalar.ph1123

scalar.ph1123:                                    ; preds = %scalar.ph1123.preheader, %scalar.ph1123
  %indvars.iv723 = phi i64 [ %indvars.iv.next724, %scalar.ph1123 ], [ %indvars.iv723.ph, %scalar.ph1123.preheader ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv723
  %i.hn = load double, ptr %gep, align 8, !tbaa !22
  %gep1069 = getelementptr [8 x i8], ptr %invariant.gep1068, i64 %indvars.iv723
  %i.ho = load double, ptr %gep1069, align 8, !tbaa !22
  %i.hp = fmul double %i.ha, %i.ho
  %i.hq = call double @llvm.fmuladd.f64(double %i.gz, double %i.hn, double %i.hp)
  %gep1071 = getelementptr [8 x i8], ptr %invariant.gep1070, i64 %indvars.iv723
  store double %i.hq, ptr %gep1071, align 8, !tbaa !22
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge601.us.us, label %scalar.ph1123, !llvm.loop !92

._crit_edge601.us.us:                             ; preds = %scalar.ph1123, %middle.block1138
  %i.hr = fcmp ogt double %i.gz, 5.000000e-01
  %.sink887.in = select i1 %i.hr, ptr %i.ex, ptr %i.gx
  %.sink887 = load i32, ptr %.sink887.in, align 4, !tbaa !21
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv728
  store i32 %.sink887, ptr %i.hs, align 4, !tbaa !21
  %indvars.iv.next729 = add nsw i64 %indvars.iv728, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@make_map_internal:.preheader573

vector.ph1286:                                    ; preds = %.lr.ph.preheader.i.i
  %n.vec1287 = and i64 %wide.trip.count.i146.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %i.bcj, i64 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1286
  %index1291 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1298, %vector.body1290 ] ; 2 uses
  %vec.phi1292 = phi <4 x i32> [ %broadcast.splat1289, %vector.ph1286 ], [ %i.bcm, %vector.body1290 ]
  %vec.phi1293 = phi <4 x i32> [ %broadcast.splat1289, %vector.ph1286 ], [ %i.bcn, %vector.body1290 ]
  %vec.phi1294 = phi <4 x i32> [ %broadcast.splat1289, %vector.ph1286 ], [ %i.bco, %vector.body1290 ]
  %vec.phi1295 = phi <4 x i32> [ %broadcast.splat1289, %vector.ph1286 ], [ %i.bcp, %vector.body1290 ]
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %index1291 ; 2 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 16
  %wide.load1296 = load <4 x i32>, ptr %i.bck, align 4, !tbaa !21 ; 2 uses
  %wide.load1297 = load <4 x i32>, ptr %i.bcl, align 4, !tbaa !21 ; 2 uses
  %i.bcm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1296, <4 x i32> %vec.phi1292) ; 2 uses
  %i.bcn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1297, <4 x i32> %vec.phi1293) ; 2 uses
  %i.bco = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load1296, <4 x i32> %vec.phi1294) ; 2 uses
  %i.bcp = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load1297, <4 x i32> %vec.phi1295) ; 2 uses
  %index.next1298 = add nuw i64 %index1291, 8     ; 2 uses
  %i.bcq = icmp eq i64 %index.next1298, %n.vec1287
  br i1 %i.bcq, label %middle.block1299, label %vector.body1290, !llvm.loop !157

middle.block1299:                                 ; preds = %vector.body1290
  %rdx.minmax1300 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bcm, <4 x i32> %i.bcn)
  %i.bcr = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax1300) ; 2 uses
  %rdx.minmax1301 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bco, <4 x i32> %i.bcp)
  %i.bcs = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax1301) ; 2 uses
  %cmp.n1302 = icmp eq i64 %n.vec1287, %wide.trip.count.i146.i
  br i1 %cmp.n1302, label %._crit_edge.i141.i, label %.lr.ph.i147.i.preheader

.lr.ph.i147.i.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block1299
  %indvars.iv.i148.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec1287, %middle.block1299 ]
  %.075.i.i.ph = phi i32 [ %i.bcj, %.lr.ph.preheader.i.i ], [ %i.bcr, %middle.block1299 ]
  %.05974.i.i.ph = phi i32 [ %i.bcj, %.lr.ph.preheader.i.i ], [ %i.bcs, %middle.block1299 ]
  br label %.lr.ph.i147.i

.lr.ph.i147.i:                                    ; preds = %.lr.ph.i147.i.preheader, %.lr.ph.i147.i
  %indvars.iv.i148.i = phi i64 [ %indvars.iv.next.i149.i, %.lr.ph.i147.i ], [ %indvars.iv.i148.i.ph, %.lr.ph.i147.i.preheader ] ; 2 uses
  %.075.i.i = phi i32 [ %..0.i.i, %.lr.ph.i147.i ], [ %.075.i.i.ph, %.lr.ph.i147.i.preheader ]
  %.05974.i.i = phi i32 [ %i.bcv, %.lr.ph.i147.i ], [ %.05974.i.i.ph, %.lr.ph.i147.i.preheader ]
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv.i148.i
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !21 ; 2 uses
  %..0.i.i = call i32 @llvm.smax.i32(i32 %i.bcu, i32 %.075.i.i) ; 2 uses
  %i.bcv = call i32 @llvm.smin.i32(i32 %i.bcu, i32 %.05974.i.i) ; 2 uses
  %indvars.iv.next.i149.i = add nuw nsw i64 %indvars.iv.i148.i, 1 ; 2 uses
  %exitcond.not.i150.i = icmp eq i64 %indvars.iv.next.i149.i, %wide.trip.count.i146.i
  br i1 %exitcond.not.i150.i, label %._crit_edge.i141.i, label %.lr.ph.i147.i, !llvm.loop !158

._crit_edge.i141.i:                               ; preds = %.lr.ph.i147.i, %middle.block1299, %get_polygon_solids.exit.i
  %.059.lcssa.i.i = phi i32 [ %i.bcj, %get_polygon_solids.exit.i ], [ %i.bcs, %middle.block1299 ], [ %i.bcv, %.lr.ph.i147.i ]
  %.0.lcssa.i.i = phi i32 [ %i.bcj, %get_polygon_solids.exit.i ], [ %i.bcr, %middle.block1299 ], [ %..0.i.i, %.lr.ph.i147.i ] ; 2 uses
  %i.bcw = icmp slt i32 %.059.lcssa.i.i, 1
  br i1 %i.bcw, label %get_polygons.exit, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i141.i
  %i.bcx = call ptr @SparseMatrix_new(i32 noundef %.0.lcssa.i.i, i32 noundef %.0.lcssa.i.i, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 4 uses
  %i.bcy = load ptr, ptr %i.acp, align 8, !tbaa !42 ; 2 uses
  %i.bcz = load ptr, ptr %i.acr, align 8, !tbaa !43
  br i1 %i.abo, label %.lr.ph83.preheader.i.i, label %._crit_edge84.i.i

.lr.ph83.preheader.i.i:                           ; preds = %bb.fa
  %wide.trip.count92.i.i = zext nneg i32 %.2417 to i64
  br label %.lr.ph83.i.i

.loopexit.i142.i:                                 ; preds = %bb.fd, %.lr.ph83.i.i
  %exitcond93.not.i.i = icmp eq i64 %indvars.iv.next90.i.i, %wide.trip.count92.i.i
  br i1 %exitcond93.not.i.i, label %._crit_edge84.i.i, label %.lr.ph83.i.i, !llvm.loop !159

.lr.ph83.i.i:                                     ; preds = %.loopexit.i142.i, %.lr.ph83.preheader.i.i
  %indvars.iv89.i.i = phi i64 [ 0, %.lr.ph83.preheader.i.i ], [ %indvars.iv.next90.i.i, %.loopexit.i142.i ] ; 4 uses
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv89.i.i ; 2 uses
  %i.bdb = load i32, ptr %i.bda, align 4, !tbaa !21
  %i.bdc = add nsw i32 %i.bdb, -1                 ; 2 uses
  %i.bdd = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bcx, i32 noundef %i.bdc, i32 noundef %i.bdc, ptr noundef nonnull %i.a, i32 noundef 4) #19 ; 0 uses
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.bcy, i64 %indvars.iv89.i.i
  %i.bdf = load i32, ptr %i.bde, align 4, !tbaa !21 ; 2 uses
  %indvars.iv.next90.i.i = add nuw nsw i64 %indvars.iv89.i.i, 1 ; 3 uses
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bcy, i64 %indvars.iv.next90.i.i ; 2 uses
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !21 ; 2 uses
  %i.bdi = icmp slt i32 %i.bdf, %i.bdh
  br i1 %i.bdi, label %.lr.ph79.preheader.i.i, label %.loopexit.i142.i

.lr.ph79.preheader.i.i:                           ; preds = %.lr.ph83.i.i
  %i.bdj = sext i32 %i.bdf to i64
  br label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %bb.fd, %.lr.ph79.preheader.i.i
  %i.bdk = phi i32 [ %i.bdh, %.lr.ph79.preheader.i.i ], [ %i.bdv, %bb.fd ] ; 2 uses
  %indvars.iv86.i.i = phi i64 [ %i.bdj, %.lr.ph79.preheader.i.i ], [ %indvars.iv.next87.i.i, %bb.fd ] ; 2 uses
  %i.bdl = getelementptr inbounds [4 x i8], ptr %i.bcz, i64 %indvars.iv86.i.i
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !21 ; 2 uses
  %i.bdn = zext i32 %i.bdm to i64
  %.not.i143.i = icmp eq i64 %indvars.iv89.i.i, %i.bdn
  br i1 %.not.i143.i, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph79.i.i
  %i.bdo = load i32, ptr %i.bda, align 4, !tbaa !21 ; 2 uses
  %i.bdp = sext i32 %i.bdm to i64
  %i.bdq = getelementptr inbounds [4 x i8], ptr %i.abm, i64 %i.bdp
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !21 ; 4 uses
  %.not69.i.i = icmp eq i32 %i.bdo, %i.bdr
  %.not70.i.i = icmp eq i32 %i.bdr, %i.abz
  %or.cond.i144.i = or i1 %.not69.i.i, %.not70.i.i
  %.not71.i.i = icmp eq i32 %i.bdr, %i.aca
  %or.cond72.i.i = or i1 %.not71.i.i, %or.cond.i144.i
  br i1 %or.cond72.i.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bds = add nsw i32 %i.bdo, -1
  %i.bdt = add nsw i32 %i.bdr, -1
  %i.bdu = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bcx, i32 noundef %i.bds, i32 noundef %i.bdt, ptr noundef nonnull %i.a, i32 noundef 4) #19 ; 0 uses
  %.pre.i145.i = load i32, ptr %i.bdg, align 4, !tbaa !21
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.lr.ph79.i.i
  %i.bdv = phi i32 [ %i.bdk, %.lr.ph79.i.i ], [ %i.bdk, %bb.fb ], [ %.pre.i145.i, %bb.fc ] ; 2 uses
  %indvars.iv.next87.i.i = add nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %i.bdw = sext i32 %i.bdv to i64
  %i.bdx = icmp slt i64 %indvars.iv.next87.i.i, %i.bdw
  br i1 %i.bdx, label %.lr.ph79.i.i, label %.loopexit.i142.i, !llvm.loop !160

._crit_edge84.i.i:                                ; preds = %.loopexit.i142.i, %bb.fa
  %i.bdy = call ptr @SparseMatrix_from_coordinate_format(ptr noundef %i.bcx) #19
  call void @SparseMatrix_delete(ptr noundef %i.bcx) #19
  br label %get_polygons.exit

get_polygons.exit:                                ; preds = %._crit_edge.i141.i, %._crit_edge84.i.i
  %.062.i.i = phi ptr [ %i.bdy, %._crit_edge84.i.i ], [ null, %._crit_edge.i141.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %.062.i.i, ptr %16, align 8, !tbaa !134
  call void @free(ptr noundef %i.abm) #19
  call void @SparseMatrix_delete(ptr noundef nonnull %i.abb) #19
  call void @free(ptr noundef %i.yr) #19
  br label %bb.fe

bb.fe:                                            ; preds = %get_tri.exit, %get_polygons.exit
  %.0 = phi i32 [ 0, %get_polygons.exit ], [ -1, %get_tri.exit ]
  call void @free(ptr noundef %.0414) #19
  call void @free(ptr noundef %.0435) #19
  %.not489 = icmp eq ptr %.2434, %4
  br i1 %.not489, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef %.2434) #19
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  call void @QuadTree_delete(ptr noundef %.0444) #19
  %.not490 = icmp eq ptr %.0431, %3
  br i1 %.not490, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @free(ptr noundef %.0431) #19
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @add_point(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, double %.0.val, double %.8.val, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !21     ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !21     ; 3 uses
  %.not = icmp slt i32 %i.a, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre1 = load ptr, ptr %4, align 8, !tbaa !31
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, 20                     ; 3 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !21
  %i.d = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.e = shl nsw i32 %i.c, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %mul.ov.i = icmp slt i32 %i.a, -20
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.28, i64 noundef %i.f, i64 noundef 8) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = shl nsw i32 %i.b, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3                      ; 3 uses
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 4 uses
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.d) #19
  br label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.l) #23 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.29, i64 noundef %i.l) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %i.l, %i.k
  br i1 %i.r, label %bb.i, label %gv_recalloc.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.t = sub nuw nsw i64 %i.l, %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.e, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  store ptr %.0.i.i, ptr %2, align 8, !tbaa !9
  %i.u = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !21     ; 3 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %mul.ov.i24 = icmp slt i32 %i.v, 0
  br i1 %mul.ov.i24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gv_recalloc.exit
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.28, i64 noundef %i.w, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.k:                                             ; preds = %gv_recalloc.exit
  %i.z = sext i32 %i.b to i64
  %i.aa = shl nsw i64 %i.z, 2                     ; 3 uses
  %i.ab = shl nuw nsw i64 %i.w, 2                 ; 4 uses
  %i.ac = icmp eq i32 %i.v, 0
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.u) #19
  br label %gv_recalloc.exit26

bb.m:                                             ; preds = %bb.k
  %i.ad = tail call ptr @realloc(ptr noundef %i.u, i64 noundef %i.ab) #23 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.29, i64 noundef %i.ab) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ah = icmp ugt i64 %i.ab, %i.aa
  br i1 %i.ah, label %bb.p, label %gv_recalloc.exit26

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.aj = sub nuw nsw i64 %i.ab, %i.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.aj, i1 false)
  br label %gv_recalloc.exit26

gv_recalloc.exit26:                               ; preds = %bb.l, %bb.o, %bb.p
  %.0.i.i25 = phi ptr [ null, %bb.l ], [ %i.ad, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  store ptr %.0.i.i25, ptr %4, align 8, !tbaa !31
  %.pre = load i32, ptr %0, align 4, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %gv_recalloc.exit26
  %i.ak = phi ptr [ %.0.i.i25, %gv_recalloc.exit26 ], [ %.pre1, %._crit_edge ]
  %i.al = phi i32 [ %.pre, %gv_recalloc.exit26 ], [ %i.a, %._crit_edge ] ; 2 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !9
  %i.an = shl nsw i32 %i.al, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  store double %.0.val, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store double %.8.val, ptr %i.aq, align 8, !tbaa !22
  %i.ar = sext i32 %i.al to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ar
  store i32 %1, ptr %i.as, align 4, !tbaa !21
  %i.at = load i32, ptr %0, align 4, !tbaa !21
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %0, align 4, !tbaa !21
  ret void
}

declare double @drand() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare void @rgb2hex(float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dot_polygon(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly byval(%struct.doubles_t) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.doubles_t) align 8 captures(none) %2, double noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load i64, ptr %i.a, align 8, !tbaa !61 ; 5 uses
  %i.b = icmp eq i64 %.val24, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24 ; 2 uses
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %i.c, ptr noundef nonnull %5, i64 noundef %i.c, ptr noundef nonnull %5, i64 noundef %.val24)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = fcmp ogt double %3, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.33, double noundef %3) #19
  %i.f = sext i32 %i.e to i64
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24
  %i.h = add nsw i64 %i.f, 14
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %i.g, ptr noundef nonnull %5, i64 noundef %i.h, double noundef %3, i64 noundef %.val24)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #24
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %i.i, ptr noundef nonnull %5, i64 noundef %.val24)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !47
  %i.k = load ptr, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.025 = phi i64 [ 0, %bb.g ], [ %i.r, %bb.h ]   ; 3 uses
  %i.l = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.025) #19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.025) #19
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef %0, ptr noundef nonnull @.str.36, double noundef %i.n, double noundef %i.q)
  %i.r = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %.val24
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !63

.loopexit:                                        ; preds = %bb.h, %bb.a
  ret void
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #13 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
end_hunk_1
