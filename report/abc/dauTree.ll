Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauTree?download=true
inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Dss_ManBooleanAnd:bb.a

.lr.ph.preheader150:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader150, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader150 ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = shl nuw nsw i32 %indvars.iv.tr, 1
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !36
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.am = load i32, ptr %0, align 8, !tbaa !70
  %i.an = call ptr @Dss_ManComputeTruth(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.am, ptr noundef nonnull %i.d) ; 4 uses
  %i.ao = load i32, ptr %0, align 8, !tbaa !70    ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 7
  %i.aq = add nsw i32 %i.ao, -6
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = select i1 %i.ap, i32 1, i32 %i.ar       ; 5 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %._crit_edge
  %min.iters.check124 = icmp ult i32 %i.as, 4
  br i1 %min.iters.check124, label %.lr.ph18.i, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph18.preheader.i
  %i.au = and i32 %i.as, 2147483644
  %n.vec126 = zext nneg i32 %i.au to i64
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next130, %vector.body127 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index128 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !41
  %wide.load129 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index128 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load, ptr %i.ax, align 16, !tbaa !41
  store <2 x i64> %wide.load129, ptr %i.ay, align 16, !tbaa !41
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next130, %n.vec126
  br i1 %i.az, label %Abc_TtCopy.exit, label %vector.body127, !llvm.loop !175

.lr.ph18.i:                                       ; preds = %.lr.ph18.preheader.i
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !41
  store i64 %i.ba, ptr %i.a, align 16, !tbaa !41
  %exitcond25.not.i = icmp eq i32 %i.as, 1
  br i1 %exitcond25.not.i, label %Abc_TtCopy.exit, label %.lr.ph18.i.1

.lr.ph18.i.1:                                     ; preds = %.lr.ph18.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !41
  %exitcond25.not.i.1 = icmp eq i32 %i.as, 2
  br i1 %exitcond25.not.i.1, label %Abc_TtCopy.exit, label %.lr.ph18.i.2

.lr.ph18.i.2:                                     ; preds = %.lr.ph18.i.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bf, ptr %i.bg, align 16, !tbaa !41
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %vector.body127, %.lr.ph18.i, %.lr.ph18.i.1, %.lr.ph18.i.2, %._crit_edge
  %.not89 = icmp eq i32 %i.aa, 0                  ; 2 uses
  br i1 %.not89, label %.preheader73, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %Abc_TtCopy.exit
  %i.bh = shl nuw nsw i32 %i.z, 2
  %i.bi = and i32 %i.bh, 1020
  %i.bj = zext nneg i32 %i.bi to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.bj, i1 false), !tbaa !36
  br label %.preheader73

.preheader73:                                     ; preds = %.lr.ph77.preheader, %Abc_TtCopy.exit
  %i.bk = load i64, ptr %i.h, align 8             ; 3 uses
  %i.bl = lshr i64 %i.bk, 59                      ; 3 uses
  %.not90 = icmp eq i64 %i.bl, 0
  br i1 %.not90, label %.preheader, label %.lr.ph79

.lr.ph79:                                         ; preds = %.preheader73
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %xtraiter = and i64 %i.bl, 3                    ; 3 uses
  %i.bn = icmp ult i64 %i.bk, 2305843009213693952
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph79.new

.lr.ph79.new:                                     ; preds = %.lr.ph79
  %unroll_iter = and i64 %i.bl, 28
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph79
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next100.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod151)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.epil.preheader ], [ %indvars.iv.next100.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bo = shl nuw nsw i64 %indvars.iv99.epil, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !42
  %i.bs = zext i8 %i.br to i32
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !42
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !36
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !176

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.preheader73
  br i1 %.not89, label %._crit_edge84, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %.preheader
  %wide.trip.count107 = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter152 = and i64 %wide.trip.count107, 1
  %i.bw = icmp eq i32 %i.aa, 1
  br i1 %i.bw, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter157 = and i64 %wide.trip.count107, 254
  br label %.lr.ph83

bb.c:                                             ; preds = %bb.c, %.lr.ph79.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph79.new ], [ %indvars.iv.next100.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph79.new ], [ %niter.next.3, %bb.c ]
  %i.bx = shl nuw nsw i64 %indvars.iv99, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !42
  %i.cb = zext i8 %i.ca to i32
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !42
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !36
  %indvars.iv.next100 = shl nuw i64 %indvars.iv99, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next100 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !42
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !42
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !36
  %indvars.iv.next100.1 = shl nuw i64 %indvars.iv99, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next100.1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 5
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !42
  %i.cr = zext i8 %i.cq to i32
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !42
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ct
  store i32 %i.cr, ptr %i.cu, align 4, !tbaa !36
  %indvars.iv.next100.2 = shl nuw i64 %indvars.iv99, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next100.2 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 7
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !42
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.db
  store i32 %i.cz, ptr %i.dc, align 4, !tbaa !36
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !177

.lr.ph83:                                         ; preds = %bb.f, %.lr.ph83.preheader.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %indvars.iv.next105.1, %bb.f ] ; 4 uses
  %.182 = phi i32 [ %i.t, %.lr.ph83.preheader.new ], [ %.2.1, %bb.f ] ; 4 uses
  %niter158 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %niter158.next.1, %bb.f ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv104 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !36
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %bb.d, label %.lr.ph83.1

bb.d:                                             ; preds = %.lr.ph83
  %i.dg = sext i32 %.182 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dg
  %i.di = trunc i64 %indvars.iv104 to i32
  %i.dj = add nsw i32 %i.t, %i.di
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !36
  %i.dk = add nsw i32 %.182, 1
  %i.dl = shl nsw i32 %.182, 1
  store i32 %i.dl, ptr %i.dd, align 8, !tbaa !36
  br label %.lr.ph83.1

.lr.ph83.1:                                       ; preds = %.lr.ph83, %bb.d
  %.2 = phi i32 [ %i.dk, %bb.d ], [ %.182, %.lr.ph83 ] ; 4 uses
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next105 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !36
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph83.1
  %i.dp = sext i32 %.2 to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dp
  %i.dr = trunc i64 %indvars.iv.next105 to i32
  %i.ds = add nsw i32 %i.t, %i.dr
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !36
  %i.dt = add nsw i32 %.2, 1
  %i.du = shl nsw i32 %.2, 1
  store i32 %i.du, ptr %i.dm, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph83.1
  %.2.1 = phi i32 [ %i.dt, %bb.e ], [ %.2, %.lr.ph83.1 ] ; 3 uses
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 2 uses
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge84.loopexit.unr-lcssa, label %.lr.ph83, !llvm.loop !178

._crit_edge84.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %._crit_edge84, label %.lr.ph83.epil.preheader

.lr.ph83.epil.preheader:                          ; preds = %._crit_edge84.loopexit.unr-lcssa, %.lr.ph83.preheader
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph83.preheader ], [ %indvars.iv.next105.1, %._crit_edge84.loopexit.unr-lcssa ] ; 2 uses
  %.182.epil.init = phi i32 [ %i.t, %.lr.ph83.preheader ], [ %.2.1, %._crit_edge84.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod156 = trunc i32 %i.z to i1
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv104.epil.init ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !36
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %bb.g, label %._crit_edge84

bb.g:                                             ; preds = %.lr.ph83.epil.preheader
  %i.dy = sext i32 %.182.epil.init to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dy
  %i.ea = trunc i64 %indvars.iv104.epil.init to i32
  %i.eb = add i32 %i.t, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !36
  %i.ec = add nsw i32 %.182.epil.init, 1
  %i.ed = shl nsw i32 %.182.epil.init, 1
  store i32 %i.ed, ptr %i.dv, align 4, !tbaa !36
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit.unr-lcssa, %bb.g, %.lr.ph83.epil.preheader, %.preheader
  %.1.lcssa = phi i32 [ %i.t, %.preheader ], [ %.2.1, %._crit_edge84.loopexit.unr-lcssa ], [ %i.ec, %bb.g ], [ %.182.epil.init, %.lr.ph83.epil.preheader ]
  %i.ee = lshr i64 %i.bk, 32
  %i.ef = trunc nuw i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 134217727
  %i.eh = call ptr @Dss_ManComputeTruth(ptr noundef nonnull %0, i32 noundef %i.eg, i32 noundef %i.ao, ptr noundef nonnull %i.d) ; 4 uses
  %i.ei = load i32, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 7
  %i.ek = add nsw i32 %i.ei, -6
  %i.el = shl nuw i32 1, %i.ek
  %i.em = select i1 %i.ej, i32 1, i32 %i.el       ; 5 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.preheader.i, label %Abc_TtAnd.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge84
  %min.iters.check135 = icmp ult i32 %i.em, 4
  br i1 %min.iters.check135, label %.lr.ph.i, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.preheader.i
  %i.eo = and i32 %i.em, 2147483644
  %n.vec137 = zext nneg i32 %i.eo to i64
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body138 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index139 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load140 = load <2 x i64>, ptr %i.ep, align 16, !tbaa !41
  %wide.load141 = load <2 x i64>, ptr %i.eq, align 16, !tbaa !41
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index139 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load142 = load <2 x i64>, ptr %i.er, align 8, !tbaa !41
  %wide.load143 = load <2 x i64>, ptr %i.es, align 8, !tbaa !41
  %i.et = and <2 x i64> %wide.load142, %wide.load140
  %i.eu = and <2 x i64> %wide.load143, %wide.load141
  store <2 x i64> %i.et, ptr %i.ep, align 16, !tbaa !41
  store <2 x i64> %i.eu, ptr %i.eq, align 16, !tbaa !41
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next144, %n.vec137
  br i1 %i.ev, label %Abc_TtAnd.exit, label %vector.body138, !llvm.loop !179

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.ew = load i64, ptr %i.a, align 16, !tbaa !41
  %i.ex = load i64, ptr %i.eh, align 8, !tbaa !41
  %i.ey = and i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %i.a, align 16, !tbaa !41
  %exitcond.not.i = icmp eq i32 %i.em, 1
  br i1 %exitcond.not.i, label %Abc_TtAnd.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !41
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !41
  %i.fd = and i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.ez, align 8, !tbaa !41
  %exitcond.not.i.1 = icmp eq i32 %i.em, 2
  br i1 %exitcond.not.i.1, label %Abc_TtAnd.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 16, !tbaa !41
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !41
  %i.fi = and i64 %i.fh, %i.ff
  store i64 %i.fi, ptr %i.fe, align 16, !tbaa !41
  br label %Abc_TtAnd.exit

Abc_TtAnd.exit:                                   ; preds = %vector.body138, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %._crit_edge84
  %i.fj = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.a, i32 noundef %.1.lcssa, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !71 ; 2 uses
  %.not = icmp ne i32 %i.fl, 0
  %i.fm = icmp sgt i32 %i.fj, %i.fl
  %or.cond = select i1 %.not, i1 %i.fm, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %Abc_TtAnd.exit
  %i.fn = load i32, ptr %0, align 8, !tbaa !70
  %.not70 = icmp eq i32 %i.fj, 0
  %i.fo = select i1 %.not70, ptr null, ptr %i.a
  %i.fp = call ptr @Dss_NtkCreate(ptr noundef nonnull %i.b, i32 noundef %i.fn, ptr noundef %i.fo) ; 6 uses
  call void @Dss_NtkTransform(ptr noundef %i.fp, ptr noundef nonnull %i.e)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !43 ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64               ; 3 uses
  %i.ft = and i64 %i.fs, -2
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4            ; 2 uses
  %i.fx = and i32 %i.fw, 7
  switch i32 %i.fx, label %bb.k [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.fy = trunc i64 %i.fs to i32
  %i.fz = and i32 %i.fy, 1
  br label %Dss_NtkRebuild.exit

bb.j:                                             ; preds = %bb.h
  %i.ga = trunc i64 %i.fs to i32
  %i.gb = and i32 %i.ga, 1
  %i.gc = lshr i32 %i.fw, 10
  %i.gd = and i32 %i.gc, 510
  %i.ge = add nuw nsw i32 %i.gd, 2
  %i.gf = or disjoint i32 %i.ge, %i.gb
  br label %Dss_NtkRebuild.exit

bb.k:                                             ; preds = %bb.h
  %i.gg = call i32 @Dss_NtkRebuild_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.fp, ptr noundef %i.fr)
  br label %Dss_NtkRebuild.exit

Dss_NtkRebuild.exit:                              ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.fz, %bb.i ], [ %i.gf, %bb.j ], [ %i.gg, %bb.k ]
  %i.gh = load i32, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.gi = and i32 %.0.i, 67108863
  %i.gj = and i32 %i.gh, -67108864
  %i.gk = or disjoint i32 %i.gj, %i.gi
  store i32 %i.gk, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !23 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.l

bb.l:                                             ; preds = %Dss_NtkRebuild.exit
  call void @free(ptr noundef nonnull %i.go) #32
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.l, %Dss_NtkRebuild.exit
  call void @free(ptr noundef nonnull %i.gm) #32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.gq, null
  br i1 %.not.i, label %Dss_NtkFree.exit, label %bb.m

bb.m:                                             ; preds = %Vec_PtrFree.exit.i
  call void @free(ptr noundef nonnull %i.gq) #32
  br label %Dss_NtkFree.exit

Dss_NtkFree.exit:                                 ; preds = %Vec_PtrFree.exit.i, %bb.m
  call void @free(ptr noundef nonnull %i.fp) #32
  %i.gr = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.gs = load i32, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.gt = and i32 %i.gs, 67108863                 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gr, i64 8
  %.val = load ptr, ptr %i.gu, align 8, !tbaa !30
  %i.gv = lshr i32 %i.gt, 1
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = shl i32 %i.ha, 23                       ; 2 uses
  %i.hc = and i32 %i.hb, -67108864
  %i.hd = or disjoint i32 %i.hc, %i.gt
  store i32 %i.hd, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.he = lshr i32 %i.hb, 26                      ; 4 uses
  %.not92 = icmp eq i32 %i.he, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %Dss_NtkFree.exit
  %wide.trip.count112 = zext nneg i32 %i.he to i64 ; 2 uses
  %xtraiter159 = and i64 %wide.trip.count112, 1
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter163 = and i64 %wide.trip.count112, 62
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv109 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %indvars.iv.next110.1, %.lr.ph87 ] ; 4 uses
  %niter164 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter164.next.1, %.lr.ph87 ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv109
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.hi = ashr i32 %i.hh, 1
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !36
  %i.hm = and i32 %i.hh, 1
  %i.hn = shl nsw i32 %i.hl, 1
  %i.ho = or disjoint i32 %i.hn, %i.hm
  %i.hp = trunc i32 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109
  store i8 %i.hp, ptr %i.hq, align 2, !tbaa !42
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next110
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !36 ; 2 uses
  %i.ht = ashr i32 %i.hs, 1
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !36
  %i.hx = and i32 %i.hs, 1
  %i.hy = shl nsw i32 %i.hw, 1
  %i.hz = or disjoint i32 %i.hy, %i.hx
  %i.ia = trunc i32 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv.next110
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !42
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %niter164.next.1 = add i64 %niter164, 2         ; 2 uses
  %niter164.ncmp.1 = icmp eq i64 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph87, !llvm.loop !180

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph87
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %.loopexit, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next110.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod162 = trunc i32 %i.he to i1
  call void @llvm.assume(i1 %lcmp.mod162)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv109.epil.init
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !36 ; 2 uses
  %i.ie = ashr i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !36
  %i.ii = and i32 %i.id, 1
  %i.ij = shl nsw i32 %i.ih, 1
  %i.ik = or disjoint i32 %i.ij, %i.ii
  %i.il = trunc i32 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109.epil.init
  store i8 %i.il, ptr %i.im, align 1, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph87.epil.preheader, %.loopexit.loopexit.unr-lcssa, %Dss_NtkFree.exit, %Abc_TtAnd.exit
  %.066 = phi ptr [ null, %Abc_TtAnd.exit ], [ @Dss_ManBooleanAnd.Buffer, %Dss_NtkFree.exit ], [ @Dss_ManBooleanAnd.Buffer, %.loopexit.loopexit.unr-lcssa ], [ @Dss_ManBooleanAnd.Buffer, %.lr.ph87.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret ptr %.066
}

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @Dss_ManSharedMap(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !36
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.d = and i32 %i.b, 134217727
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i64 %i.c, -134217728
  %i.g = or disjoint i64 %i.f, %i.e               ; 2 uses
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = and i32 %i.i, 134217727
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = and i64 %i.g, 4294967295
  %i.n = or disjoint i64 %i.l, %i.m               ; 4 uses
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.a, align 16
  %i.o = load i32, ptr %2, align 4, !tbaa !36     ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.q = load ptr, ptr %3, align 8, !tbaa !82     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36   ; 2 uses
  %i.u = and i32 %i.t, 1
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.v = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.w = or disjoint i32 %i.u, %i.v
  %i.x = ashr i32 %i.t, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.y
  store i32 %i.w, ptr %i.z, align 4, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !36 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph37, label %._crit_edge

.lr.ph37:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.pre42 = load ptr, ptr %i.ad, align 8, !tbaa !82
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36 ; 2 uses
  %i.ag = and i32 %i.af, 1
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ah = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = ashr i32 %i.af, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36 ; 2 uses
  %i.ao = and i32 %i.an, 1
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.ap = shl nuw nsw i32 %indvars.iv.tr.1, 1
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = ashr i32 %i.an, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !181

bb.d:                                             ; preds = %.lr.ph37, %bb.f
  %i.au = phi i32 [ %i.ab, %.lr.ph37 ], [ %i.bu, %bb.f ]
  %i.av = phi i64 [ %i.n, %.lr.ph37 ], [ %i.bv, %bb.f ] ; 4 uses
  %i.aw = phi ptr [ %.pre42, %.lr.ph37 ], [ %i.bw, %bb.f ] ; 2 uses
  %indvars.iv39 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next40, %bb.f ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv39
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.az = ashr i32 %i.ay, 1                       ; 2 uses
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = and i32 %i.ba, %4
  %.not33 = icmp eq i32 %i.bb, 0
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = trunc i64 %indvars.iv39 to i8
  %sh.diff = lshr i64 %i.av, 58                   ; 2 uses
  %i.bd = and i64 %sh.diff, 62
  %i.be = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 24), i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !42
  %i.bf = sext i32 %i.az to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !36
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !82
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv39
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !36
  %i.bl = and i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, %i.bh
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = or i64 %sh.diff, 1
  %i.bp = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 24), i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !42
  %i.bq = and i64 %i.av, -576460752303423488
  %i.br = add i64 %i.bq, 576460752303423488
  %i.bs = and i64 %i.av, 576460752303423487
  %i.bt = or disjoint i64 %i.br, %i.bs            ; 2 uses
  store i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !82
  %.pre43 = load i32, ptr %i.aa, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bu = phi i32 [ %i.au, %bb.d ], [ %.pre43, %bb.e ] ; 2 uses
  %i.bv = phi i64 [ %i.av, %bb.d ], [ %i.bt, %bb.e ] ; 2 uses
  %i.bw = phi ptr [ %i.aw, %bb.d ], [ %.pre, %bb.e ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bx = sext i32 %i.bu to i64
  %i.by = icmp slt i64 %indvars.iv.next40, %i.bx
  br i1 %i.by, label %bb.d, label %._crit_edge, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %Dss_ManSharedMap.Buffer.val44 = phi i64 [ %i.n, %.preheader ], [ %i.bv, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  %Dss_ManSharedMap.Buffer.val = phi i64 [ %Dss_ManSharedMap.Buffer.val44, %._crit_edge ], [ %i.n, %bb.a ] ; 3 uses
  %i.bz = lshr i64 %Dss_ManSharedMap.Buffer.val, 61
  %i.ca = add nuw nsw i64 %i.bz, 3
  %i.cb = and i64 %Dss_ManSharedMap.Buffer.val, 1729382256910270464
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.ca, %i.cd
  %i.cf = shl nuw nsw i64 %i.ce, 27
  %i.cg = and i64 %Dss_ManSharedMap.Buffer.val, -4160749569
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  ret ptr @Dss_ManSharedMap.Buffer
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define i32 @Dss_ManMerge(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree readnone captures(none) %7) local_unnamed_addr #8 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 5 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca [12 x i32], align 16              ; 5 uses
  %i.b = load i32, ptr @Dss_ManMerge.Counter, align 4, !tbaa !36
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @Dss_ManMerge.Counter, align 4, !tbaa !36
  %i.d = icmp sgt i32 %5, 12
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef 12, i32 noundef %5) ; 0 uses
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !36     ; 3 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.ah
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36   ; 2 uses
  switch i32 %i.j, label %bb.g [
    i32 0, label %bb.ah
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.k = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #32
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Abc_Clock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %16, align 8, !tbaa !80
  %.neg145 = mul i64 %i.m, -1000000
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !81
  %.neg = sdiv i64 %i.o, -1000
  %.neg146 = add i64 %.neg, %.neg145
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i.neg = phi i64 [ %.neg146, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.p = call ptr @Dss_ManSharedMap(ptr poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.q = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #32
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %Abc_Clock.exit125, label %bb.i

bb.i:                                             ; preds = %Abc_Clock.exit
  %i.s = load i64, ptr %15, align 8, !tbaa !80
  %i.t = mul nsw i64 %i.s, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81
  %i.w = sdiv i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, %i.t
  br label %Abc_Clock.exit125

Abc_Clock.exit125:                                ; preds = %Abc_Clock.exit, %bb.i
  %.0.i124 = phi i64 [ %i.x, %bb.i ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.y = add i64 %.0.i124, %.0.i.neg
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ab = add nsw i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %Abc_Clock.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %14) #32
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %Abc_Clock.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %14, align 8, !tbaa !80
  %.neg154 = mul i64 %i.ah, -1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !81
  %.neg153 = sdiv i64 %i.aj, -1000
  %.neg155 = add i64 %.neg153, %.neg154
  br label %Abc_Clock.exit127

Abc_Clock.exit127:                                ; preds = %bb.j, %bb.k
  %.0.i126.neg = phi i64 [ %.neg155, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ak = icmp eq i32 %4, 0
  br i1 %i.ak, label %.thread, label %bb.l

.thread:                                          ; preds = %Abc_Clock.exit127
  %i.al = load i32, ptr %2, align 4, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36
  %i.ao = add nsw i32 %i.an, %i.al
end_hunk_0
