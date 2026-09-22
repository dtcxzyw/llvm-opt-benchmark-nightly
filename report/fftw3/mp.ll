Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/mp?download=true
inline.NumInlined: 114
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 68
begin_hunk_0_@bluestein:bb.a
  %i.as = add i32 %i.ar, %i.aq
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %i.as, %bb.j ], [ %i.au, %bb.k ] ; 7 uses
  %i.at = icmp sgt i32 %.1.i, %i.a
  %i.au = sub nuw nsw i32 %.1.i, %i.a
  br i1 %i.at, label %bb.k, label %bb.l, !llvm.loop !106

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ap ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 6 uses
  br i1 %.not.i.i, label %bb.m, label %.preheader47.i.i

.preheader47.i.i:                                 ; preds = %bb.l, %.preheader47.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader47.i.i ], [ 0, %bb.l ] ; 2 uses
  %.049.i.i = phi i32 [ %i.ba, %.preheader47.i.i ], [ 1, %bb.l ] ; 2 uses
  %i.ax = sitofp i32 %.049.i.i to double          ; 2 uses
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr @mcexp.w, i64 %indvars.iv.i.i ; 2 uses
  tail call fastcc void @cos2pi(double noundef %i.ax, double noundef %i.an, ptr noundef nonnull %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  tail call fastcc void @sin2pi(double noundef %i.ax, double noundef %i.an, ptr noundef nonnull %i.az)
  %i.ba = shl nsw i32 %.049.i.i, 1                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.bb = icmp slt i32 %i.ba, %i.a
  br i1 %i.bb, label %.preheader47.i.i, label %._crit_edge.i.loopexit.i, !llvm.loop !7

._crit_edge.i.loopexit.i:                         ; preds = %.preheader47.i.i
  store i32 %i.a, ptr @mcexp.cached_n, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.loopexit.i, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.av, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 22, i1 false), !tbaa.struct !22
  store i16 1, ptr %i.av, align 2, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 1, ptr %i.bc, align 2, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 22
  store i16 1, ptr %i.bd, align 2, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.aw, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 22, i1 false), !tbaa.struct !22
  store i16 1, ptr %i.aw, align 2, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  store i16 1, ptr %i.be, align 2, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 46
  store i16 0, ptr %i.bf, align 2, !tbaa !20
  %i.bg = icmp sgt i32 %.1.i, 0
  br i1 %i.bg, label %.preheader.i.i, label %bb.p

.preheader.i.i:                                   ; preds = %bb.m, %bb.o
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i, %bb.o ], [ 0, %bb.m ] ; 2 uses
  %.03755.i.i = phi i32 [ %i.bk, %bb.o ], [ %.1.i, %bb.m ] ; 2 uses
  %i.bh = and i32 %.03755.i.i, 1
  %.not45.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not45.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr @mcexp.w, i64 %indvars.iv62.i.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  tail call fastcc void @cmul(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader.i.i
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1
  %i.bk = lshr i32 %.03755.i.i, 1                 ; 2 uses
  %.not44.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not44.i.i, label %mcexp.exit.i, label %.preheader.i.i, !llvm.loop !8

bb.p:                                             ; preds = %bb.m
  %.not4250.i.i = icmp eq i32 %.1.i, 0
  br i1 %.not4250.i.i, label %mcexp.exit.i, label %.lr.ph54.preheader.i.i

.lr.ph54.preheader.i.i:                           ; preds = %bb.p
  %i.bl = sub nsw i32 0, %.1.i
  br label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %bb.r, %.lr.ph54.preheader.i.i
  %indvars.iv59.i.i = phi i64 [ 0, %.lr.ph54.preheader.i.i ], [ %indvars.iv.next60.i.i, %bb.r ] ; 2 uses
  %.13851.i.i = phi i32 [ %i.bl, %.lr.ph54.preheader.i.i ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bm = and i32 %.13851.i.i, 1
  %.not43.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not43.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph54.i.i
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr @mcexp.w, i64 %indvars.iv59.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  tail call fastcc void @cmulj(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph54.i.i
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1
  %i.bp = lshr i32 %.13851.i.i, 1                 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not42.i.i, label %mcexp.exit.i, label %.lr.ph54.i.i, !llvm.loop !9

mcexp.exit.i:                                     ; preds = %bb.r, %bb.o, %bb.p
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bluestein_sequence.exit, label %bb.j, !llvm.loop !107

bluestein_sequence.exit:                          ; preds = %mcexp.exit.i, %bb.i
  %i.bq = icmp sgt i32 %.0.i, 0
  br i1 %i.bq, label %.lr.ph.preheader, label %.preheader123

.lr.ph.preheader:                                 ; preds = %bluestein_sequence.exit
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 6         ; 3 uses
  %i.br = icmp ult i32 %i.c, 8
  br i1 %i.br, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.preheader123.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader123, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader123.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.preheader123.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bs, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader123, label %.lr.ph.epil, !llvm.loop !108

.preheader123:                                    ; preds = %.preheader123.loopexit.unr-lcssa, %.lr.ph.epil, %bluestein_sequence.exit
  br i1 %i.am, label %.lr.ph131.preheader, label %._crit_edge

.lr.ph131.preheader:                              ; preds = %.preheader123
  %wide.trip.count157 = zext nneg i32 %0 to i64   ; 3 uses
  %i.bt = add nsw i64 %wide.trip.count157, -1     ; 3 uses
  %xtraiter212 = and i64 %wide.trip.count157, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph131.epil.preheader, label %.lr.ph131.preheader.new

.lr.ph131.preheader.new:                          ; preds = %.lr.ph131.preheader
  %unroll_iter216 = and i64 %wide.trip.count157, 2147483646
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bv, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bx, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bz, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cb, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cd, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cf, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ch, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cj, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader123.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !109

.preheader122.unr-lcssa:                          ; preds = %.lr.ph131
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod214.not, label %.preheader122, label %.lr.ph131.epil.preheader

.lr.ph131.epil.preheader:                         ; preds = %.preheader122.unr-lcssa, %.lr.ph131.preheader
  %indvars.iv154.epil.init = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next155.1, %.preheader122.unr-lcssa ]
  %lcmp.mod215 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.ck = shl nuw nsw i64 %indvars.iv154.epil.init, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cm, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !22
  %i.cn = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cp, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.co, i64 24, i1 false), !tbaa.struct !22
  br label %.preheader122

.preheader122:                                    ; preds = %.preheader122.unr-lcssa, %.lr.ph131.epil.preheader
  %.not200 = icmp eq i32 %0, 1
  br i1 %.not200, label %._crit_edge, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader122
  %3 = zext i32 %.0.i to i64                      ; 5 uses
  %xtraiter218 = and i64 %i.bt, 3                 ; 3 uses
  %i.cq = add nsw i32 %0, -2
  %i.cr = icmp ult i32 %i.cq, 3
  br i1 %i.cr, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter222 = and i64 %i.bt, -4
  br label %.lr.ph133

.lr.ph131:                                        ; preds = %.lr.ph131, %.lr.ph131.preheader.new
  %indvars.iv154 = phi i64 [ 0, %.lr.ph131.preheader.new ], [ %indvars.iv.next155.1, %.lr.ph131 ] ; 3 uses
  %niter217 = phi i64 [ 0, %.lr.ph131.preheader.new ], [ %niter217.next.1, %.lr.ph131 ]
  %i.cs = shl nuw nsw i64 %indvars.iv154, 1       ; 3 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cu, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !22
  %i.cv = or disjoint i64 %i.cs, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cx, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next155 = shl nuw i64 %indvars.iv154, 1 ; 2 uses
  %i.cy = or disjoint i64 %indvars.iv.next155, 2  ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cy
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.da, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.cz, i64 24, i1 false), !tbaa.struct !22
  %i.db = or disjoint i64 %indvars.iv.next155, 3  ; 2 uses
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.db
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dd, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dc, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter217.next.1 = add nuw i64 %niter217, 2     ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %.preheader122.unr-lcssa, label %.lr.ph131, !llvm.loop !110

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %indvars.iv159 = phi i64 [ 1, %.lr.ph133.preheader.new ], [ %indvars.iv.next160.3, %.lr.ph133 ] ; 6 uses
  %niter223 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter223.next.3, %.lr.ph133 ]
  %.idx = mul nuw nsw i64 %indvars.iv159, 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.df = sub nuw nsw i64 %3, %indvars.iv159
  %.idx194 = mul nuw nsw i64 %i.df, 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dg, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.di = getelementptr i8, ptr %i.dg, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.di, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dh, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next160, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.1 ; 2 uses
  %i.dk = sub nuw nsw i64 %3, %indvars.iv.next160
  %.idx194.1 = mul nuw nsw i64 %i.dk, 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dl, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dj, i64 24, i1 false), !tbaa.struct !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dn = getelementptr i8, ptr %i.dl, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dn, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dm, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.1 = add nuw nsw i64 %indvars.iv159, 2 ; 2 uses
  %.idx.2 = mul nuw nsw i64 %indvars.iv.next160.1, 48
  %i.do = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.2 ; 2 uses
  %i.dp = sub nuw nsw i64 %3, %indvars.iv.next160.1
  %.idx194.2 = mul nuw nsw i64 %i.dp, 48
  %i.dq = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dq, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.do, i64 24, i1 false), !tbaa.struct !22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.ds = getelementptr i8, ptr %i.dq, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ds, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dr, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.2 = add nuw nsw i64 %indvars.iv159, 3 ; 2 uses
  %.idx.3 = mul nuw nsw i64 %indvars.iv.next160.2, 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.3 ; 2 uses
  %i.du = sub nuw nsw i64 %3, %indvars.iv.next160.2
  %.idx194.3 = mul nuw nsw i64 %i.du, 48
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dv, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dt, i64 24, i1 false), !tbaa.struct !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dx = getelementptr i8, ptr %i.dv, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.dx, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dw, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.3 = add nuw nsw i64 %indvars.iv159, 4 ; 2 uses
  %niter223.next.3 = add i64 %niter223, 4         ; 2 uses
  %niter223.ncmp.3 = icmp eq i64 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !111

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph133
  %lcmp.mod220.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod220.not, label %._crit_edge, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph133.preheader
  %indvars.iv159.epil.init = phi i64 [ 1, %.lr.ph133.preheader ], [ %indvars.iv.next160.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter218, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %.lr.ph133.epil

.lr.ph133.epil:                                   ; preds = %.lr.ph133.epil, %.lr.ph133.epil.preheader
  %indvars.iv159.epil = phi i64 [ %indvars.iv159.epil.init, %.lr.ph133.epil.preheader ], [ %indvars.iv.next160.epil, %.lr.ph133.epil ] ; 3 uses
  %epil.iter219 = phi i64 [ 0, %.lr.ph133.epil.preheader ], [ %epil.iter219.next, %.lr.ph133.epil ]
  %.idx.epil = mul nuw nsw i64 %indvars.iv159.epil, 48
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.epil ; 2 uses
  %i.dz = sub nuw nsw i64 %3, %indvars.iv159.epil
  %.idx194.epil = mul nuw nsw i64 %i.dz, 48
  %i.ea = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx194.epil ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ea, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.dy, i64 24, i1 false), !tbaa.struct !22
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ec = getelementptr i8, ptr %i.ea, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ec, ptr noundef nonnull readonly align 2 dereferenceable(24) %i.eb, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next160.epil = add nuw nsw i64 %indvars.iv159.epil, 1
  %epil.iter219.next = add i64 %epil.iter219, 1   ; 2 uses
  %epil.iter219.cmp.not = icmp eq i64 %epil.iter219.next, %xtraiter218
  br i1 %epil.iter219.cmp.not, label %._crit_edge, label %.lr.ph133.epil, !llvm.loop !112

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph133.epil, %.preheader123, %.preheader122
  tail call fastcc void @fft0(i32 noundef %.0.i, ptr noundef %i.al, i32 noundef -1)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %fromreal.exit
  %.0109 = phi ptr [ %i.ak, %._crit_edge ], [ %i.g, %fromreal.exit ] ; 4 uses
  %.0108 = phi ptr [ %i.al, %._crit_edge ], [ %i.h, %fromreal.exit ] ; 2 uses
  %i.ed = icmp sgt i32 %.0.i, 0                   ; 2 uses
  br i1 %i.ed, label %.lr.ph136.preheader, label %.preheader

.lr.ph136.preheader:                              ; preds = %bb.s
  %wide.trip.count168 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter224 = and i64 %wide.trip.count168, 6   ; 3 uses
  %i.ee = icmp ult i32 %i.c, 8
  br i1 %i.ee, label %.lr.ph136.epil.preheader, label %.lr.ph136.preheader.new

.lr.ph136.preheader.new:                          ; preds = %.lr.ph136.preheader
  %unroll_iter228 = and i64 %wide.trip.count168, 2147483640
  br label %.lr.ph136

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph136
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod226.not, label %.preheader, label %.lr.ph136.epil.preheader

.lr.ph136.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph136.preheader
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next165.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod227 = icmp ne i64 %xtraiter224, 0
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %.lr.ph136.epil

.lr.ph136.epil:                                   ; preds = %.lr.ph136.epil, %.lr.ph136.epil.preheader
  %indvars.iv164.epil = phi i64 [ %indvars.iv164.epil.init, %.lr.ph136.epil.preheader ], [ %indvars.iv.next165.epil, %.lr.ph136.epil ] ; 2 uses
  %epil.iter225 = phi i64 [ 0, %.lr.ph136.epil.preheader ], [ %epil.iter225.next, %.lr.ph136.epil ]
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ef, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next165.epil = add nuw nsw i64 %indvars.iv164.epil, 1
  %epil.iter225.next = add i64 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i64 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.preheader, label %.lr.ph136.epil, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph136.epil, %bb.s
  %i.eg = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.eg, label %.lr.ph138.preheader, label %._crit_edge139

.lr.ph138.preheader:                              ; preds = %.preheader
  %wide.trip.count173 = zext nneg i32 %0 to i64
  br label %.lr.ph138

.lr.ph136:                                        ; preds = %.lr.ph136, %.lr.ph136.preheader.new
  %indvars.iv164 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %indvars.iv.next165.7, %.lr.ph136 ] ; 9 uses
  %niter229 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %niter229.next.7, %.lr.ph136 ]
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eh, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ej, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.el, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.en, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ep, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.er, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.et, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv164
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ev, ptr noundef nonnull align 16 dereferenceable(24) @zero, i64 24, i1 false), !tbaa.struct !22
  %indvars.iv.next165.7 = add nuw nsw i64 %indvars.iv164, 8 ; 2 uses
  %niter229.next.7 = add i64 %niter229, 8         ; 2 uses
  %niter229.ncmp.7 = icmp eq i64 %niter229.next.7, %unroll_iter228
  br i1 %niter229.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph136, !llvm.loop !114

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv170 = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next171, %.lr.ph138 ] ; 2 uses
  %i.ew = shl nuw nsw i64 %indvars.iv170, 1       ; 4 uses
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.ew
  %i.ey = or disjoint i64 %i.ew, 1                ; 3 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ew
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ey
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.ew
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.ey
  tail call fastcc void @cmulj(ptr noundef %i.ex, ptr noundef nonnull %i.ez, ptr noundef %i.fa, ptr noundef nonnull %i.fb, ptr noundef %i.fc, ptr noundef nonnull %i.fd)
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge139, label %.lr.ph138, !llvm.loop !115

._crit_edge139:                                   ; preds = %.lr.ph138, %.preheader
  tail call fastcc void @fft0(i32 noundef %.0.i, ptr noundef %i.f, i32 noundef -1)
  br i1 %i.ed, label %.lr.ph142.preheader, label %._crit_edge143

.lr.ph142.preheader:                              ; preds = %._crit_edge139
  %wide.trip.count179 = zext nneg i32 %.0.i to i64
  br label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %indvars.iv175 = phi i64 [ 0, %.lr.ph142.preheader ], [ %indvars.iv.next176, %.lr.ph142 ] ; 2 uses
  %i.fe = shl nuw nsw i64 %indvars.iv175, 1       ; 3 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.fe ; 2 uses
  %i.fg = or disjoint i64 %i.fe, 1                ; 2 uses
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.0108, i64 %i.fe
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %.0108, i64 %i.fg
  tail call fastcc void @cmul(ptr noundef %i.ff, ptr noundef nonnull %i.fh, ptr noundef %i.fi, ptr noundef nonnull %i.fj, ptr noundef %i.ff, ptr noundef nonnull %i.fh)
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge143, label %.lr.ph142, !llvm.loop !116

._crit_edge143:                                   ; preds = %.lr.ph142, %._crit_edge139
  tail call fastcc void @fft0(i32 noundef %.0.i, ptr noundef %i.f, i32 noundef 1)
  br i1 %i.eg, label %.lr.ph146.preheader, label %._crit_edge147

.lr.ph146.preheader:                              ; preds = %._crit_edge143
  %wide.trip.count184 = zext nneg i32 %0 to i64
  br label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.lr.ph146
  %indvars.iv181 = phi i64 [ 0, %.lr.ph146.preheader ], [ %indvars.iv.next182, %.lr.ph146 ] ; 2 uses
  %i.fk = shl nuw nsw i64 %indvars.iv181, 1       ; 4 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.fk
  %i.fm = or disjoint i64 %i.fk, 1                ; 3 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %.0109, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.fk
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.fm
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.fk ; 3 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.fm ; 3 uses
  tail call fastcc void @cmulj(ptr noundef %i.fl, ptr noundef nonnull %i.fn, ptr noundef %i.fo, ptr noundef nonnull %i.fp, ptr noundef %i.fq, ptr noundef nonnull %i.fr)
  call fastcc void @mul(ptr noundef nonnull %2, ptr noundef %i.fq, ptr noundef %i.fq)
  call fastcc void @mul(ptr noundef nonnull %2, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.fr)
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !117

._crit_edge147:                                   ; preds = %.lr.ph146, %._crit_edge143
  tail call void @bench_free(ptr noundef %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cos2pi(double noundef %0, double noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.anon], align 16        ; 4 uses
  %4 = alloca [1 x %struct.anon], align 16        ; 21 uses
  %5 = alloca [1 x %struct.anon], align 16        ; 22 uses
  %6 = alloca [1 x %struct.anon], align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fneg double %0
  tail call fastcc void @cos2pi(double noundef %i.b, double noundef %1, ptr noundef %2)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.c = fmul double %1, 5.000000e-01
  %i.d = fcmp ogt double %0, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = fsub double %1, %0
  tail call fastcc void @cos2pi(double noundef %i.e, double noundef %1, ptr noundef %2)
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  %i.f = fmul double %1, 2.500000e-01
  %i.g = fcmp ogt double %0, %i.f
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = fneg double %1
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double 2.500000e-01, double %0)
  tail call fastcc void @sin2pi(double noundef %i.i, double noundef %1, ptr noundef %2)
  %i.j = load i16, ptr %2, align 2, !tbaa !24
  %i.k = sub i16 0, %i.j
  store i16 %i.k, ptr %2, align 2, !tbaa !24
  br label %bb.aj

bb.g:                                             ; preds = %bb.e
  %i.l = fmul double %1, 1.250000e-01
  %i.m = fcmp ogt double %0, %i.l
end_hunk_0
