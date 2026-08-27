Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauTree?download=true
inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 35
begin_hunk_0_@Dss_ManBooleanAnd:bb.a
  br i1 %i.ax, label %.lr.ph18.i.epil.preheader, label %.lr.ph18.i.preheader.new

.lr.ph18.i.preheader.new:                         ; preds = %.lr.ph18.i.preheader
  %unroll_iter = and i64 %wide.trip.count24.i, 2147483644
  br label %.lr.ph18.i

vector.ph125:                                     ; preds = %.lr.ph18.preheader.i
  %n.vec126 = and i64 %wide.trip.count24.i, 2147483644
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next130, %vector.body127 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %i.ay, align 8, !tbaa !36
  %wide.load129 = load <2 x i64>, ptr %i.az, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %wide.load, ptr %i.ba, align 16, !tbaa !36
  store <2 x i64> %wide.load129, ptr %i.bb, align 16, !tbaa !36
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next130, %n.vec126
  br i1 %i.bc, label %Abc_TtCopy.exit, label %vector.body127, !llvm.loop !172

.lr.ph18.i:                                       ; preds = %.lr.ph18.i, %.lr.ph18.i.preheader.new
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph18.i.preheader.new ], [ %indvars.iv.next22.i.3, %.lr.ph18.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.i.preheader.new ], [ %niter.next.3, %.lr.ph18.i ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv21.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i
  store i64 %i.be, ptr %i.bf, align 16, !tbaa !36
  %indvars.iv.next22.i = or disjoint i64 %indvars.iv21.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next22.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !36
  %indvars.iv.next22.i.1 = or disjoint i64 %indvars.iv21.i, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next22.i.1
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.1
  store i64 %i.bk, ptr %i.bl, align 16, !tbaa !36
  %indvars.iv.next22.i.2 = or disjoint i64 %indvars.iv21.i, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next22.i.2
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.2
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !36
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph18.i, !llvm.loop !173

Abc_TtCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph18.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TtCopy.exit, label %.lr.ph18.i.epil.preheader

.lr.ph18.i.epil.preheader:                        ; preds = %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.preheader
  %indvars.iv21.i.epil.init = phi i64 [ 0, %.lr.ph18.i.preheader ], [ %indvars.iv.next22.i.3, %Abc_TtCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph18.i.epil

.lr.ph18.i.epil:                                  ; preds = %.lr.ph18.i.epil, %.lr.ph18.i.epil.preheader
  %indvars.iv21.i.epil = phi i64 [ %indvars.iv.next22.i.epil, %.lr.ph18.i.epil ], [ %indvars.iv21.i.epil.init, %.lr.ph18.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph18.i.epil ], [ 0, %.lr.ph18.i.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv21.i.epil
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i.epil
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !36
  %indvars.iv.next22.i.epil = add nuw nsw i64 %indvars.iv21.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph18.i.epil, !llvm.loop !174

Abc_TtCopy.exit:                                  ; preds = %vector.body127, %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.epil, %._crit_edge
  %.not89 = icmp eq i32 %i.ab, 0                  ; 2 uses
  br i1 %.not89, label %.preheader73, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %Abc_TtCopy.exit
  %i.bs = shl nuw nsw i32 %i.aa, 2
  %i.bt = and i32 %i.bs, 1020
  %i.bu = zext nneg i32 %i.bt to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 -1, i64 %i.bu, i1 false), !tbaa !28
  br label %.preheader73

.preheader73:                                     ; preds = %.lr.ph77.preheader, %Abc_TtCopy.exit
  %i.bv = load i64, ptr %i.i, align 8             ; 3 uses
  %i.bw = lshr i64 %i.bv, 59                      ; 3 uses
  %.not90 = icmp eq i64 %i.bw, 0
  br i1 %.not90, label %.preheader, label %.lr.ph79

.lr.ph79:                                         ; preds = %.preheader73
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %xtraiter155 = and i64 %i.bw, 3                 ; 3 uses
  %i.by = icmp ult i64 %i.bv, 2305843009213693952
  br i1 %i.by, label %.epil.preheader, label %.lr.ph79.new

.lr.ph79.new:                                     ; preds = %.lr.ph79
  %unroll_iter159 = and i64 %i.bw, 28
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod157.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph79
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next100.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.epil.preheader ], [ %indvars.iv.next100.epil, %bb.b ] ; 2 uses
  %epil.iter156 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter156.next, %bb.b ]
  %i.bz = shl nuw nsw i64 %indvars.iv99.epil, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !40
  %i.cd = zext i8 %i.cc to i32
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !40
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cf
  store i32 %i.cd, ptr %i.cg, align 4, !tbaa !28
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %.preheader, label %bb.b, !llvm.loop !175

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.preheader73
  br i1 %.not89, label %._crit_edge84, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %.preheader
  %wide.trip.count107 = zext nneg i32 %i.ab to i64 ; 2 uses
  %xtraiter161 = and i64 %wide.trip.count107, 1
  %i.ch = icmp eq i32 %i.ab, 1
  br i1 %i.ch, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter166 = and i64 %wide.trip.count107, 254
  br label %.lr.ph83

bb.c:                                             ; preds = %bb.c, %.lr.ph79.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph79.new ], [ %indvars.iv.next100.3, %bb.c ] ; 5 uses
  %niter160 = phi i64 [ 0, %.lr.ph79.new ], [ %niter160.next.3, %bb.c ]
  %i.ci = shl nuw nsw i64 %indvars.iv99, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !40
  %i.cm = zext i8 %i.cl to i32
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !40
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.co
  store i32 %i.cm, ptr %i.cp, align 4, !tbaa !28
  %indvars.iv.next100 = shl nuw i64 %indvars.iv99, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next100 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !40
  %i.cu = zext i8 %i.ct to i32
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !40
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cw
  store i32 %i.cu, ptr %i.cx, align 4, !tbaa !28
  %indvars.iv.next100.1 = shl nuw i64 %indvars.iv99, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next100.1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 5
  %i.db = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dc = zext i8 %i.db to i32
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !40
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.de
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !28
  %indvars.iv.next100.2 = shl nuw i64 %indvars.iv99, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next100.2 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !40
  %i.dk = zext i8 %i.dj to i32
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !40
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dm
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !28
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99, 4 ; 2 uses
  %niter160.next.3 = add i64 %niter160, 4         ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, %unroll_iter159
  br i1 %niter160.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !176

.lr.ph83:                                         ; preds = %bb.f, %.lr.ph83.preheader.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %indvars.iv.next105.1, %bb.f ] ; 4 uses
  %.182 = phi i32 [ %i.u, %.lr.ph83.preheader.new ], [ %.2.1, %bb.f ] ; 4 uses
  %niter167 = phi i64 [ 0, %.lr.ph83.preheader.new ], [ %niter167.next.1, %bb.f ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv104 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !28
  %i.dq = icmp eq i32 %i.dp, -1
  br i1 %i.dq, label %bb.d, label %.lr.ph83.1

bb.d:                                             ; preds = %.lr.ph83
  %i.dr = sext i32 %.182 to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dr
  %i.dt = trunc i64 %indvars.iv104 to i32
  %i.du = add nsw i32 %i.u, %i.dt
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !28
  %i.dv = add nsw i32 %.182, 1
  %i.dw = shl nsw i32 %.182, 1
  store i32 %i.dw, ptr %i.do, align 8, !tbaa !28
  br label %.lr.ph83.1

.lr.ph83.1:                                       ; preds = %.lr.ph83, %bb.d
  %.2 = phi i32 [ %i.dv, %bb.d ], [ %.182, %.lr.ph83 ] ; 4 uses
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next105 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !28
  %i.dz = icmp eq i32 %i.dy, -1
  br i1 %i.dz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph83.1
  %i.ea = sext i32 %.2 to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ea
  %i.ec = trunc i64 %indvars.iv.next105 to i32
  %i.ed = add nsw i32 %i.u, %i.ec
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !28
  %i.ee = add nsw i32 %.2, 1
  %i.ef = shl nsw i32 %.2, 1
  store i32 %i.ef, ptr %i.dx, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph83.1
  %.2.1 = phi i32 [ %i.ee, %bb.e ], [ %.2, %.lr.ph83.1 ] ; 3 uses
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 2 uses
  %niter167.next.1 = add i64 %niter167, 2         ; 2 uses
  %niter167.ncmp.1 = icmp eq i64 %niter167.next.1, %unroll_iter166
  br i1 %niter167.ncmp.1, label %._crit_edge84.loopexit.unr-lcssa, label %.lr.ph83, !llvm.loop !177

._crit_edge84.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %._crit_edge84, label %.lr.ph83.epil.preheader

.lr.ph83.epil.preheader:                          ; preds = %._crit_edge84.loopexit.unr-lcssa, %.lr.ph83.preheader
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph83.preheader ], [ %indvars.iv.next105.1, %._crit_edge84.loopexit.unr-lcssa ] ; 2 uses
  %.182.epil.init = phi i32 [ %i.u, %.lr.ph83.preheader ], [ %.2.1, %._crit_edge84.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod165 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod165)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv104.epil.init ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !28
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %bb.g, label %._crit_edge84

bb.g:                                             ; preds = %.lr.ph83.epil.preheader
  %i.ej = sext i32 %.182.epil.init to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ej
  %i.el = trunc i64 %indvars.iv104.epil.init to i32
  %i.em = add i32 %i.u, %i.el
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !28
  %i.en = add nsw i32 %.182.epil.init, 1
  %i.eo = shl nsw i32 %.182.epil.init, 1
  store i32 %i.eo, ptr %i.eg, align 4, !tbaa !28
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit.unr-lcssa, %bb.g, %.lr.ph83.epil.preheader, %.preheader
  %.1.lcssa = phi i32 [ %i.u, %.preheader ], [ %.2.1, %._crit_edge84.loopexit.unr-lcssa ], [ %i.en, %bb.g ], [ %.182.epil.init, %.lr.ph83.epil.preheader ]
  %i.ep = lshr i64 %i.bv, 32
  %i.eq = trunc nuw i64 %i.ep to i32
  %i.er = and i32 %i.eq, 134217727
  %i.es = call ptr @Dss_ManComputeTruth(ptr noundef nonnull %0, i32 noundef %i.er, i32 noundef %i.ap, ptr noundef nonnull %i.e) ; 8 uses
  %i.et = load i32, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.eu = icmp slt i32 %i.et, 7
  %i.ev = add nsw i32 %i.et, -6
  %i.ew = shl nuw i32 1, %i.ev
  %i.ex = select i1 %i.eu, i32 1, i32 %i.ew       ; 4 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph.preheader.i, label %Abc_TtAnd.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge84
  %wide.trip.count.i = zext nneg i32 %i.ex to i64 ; 4 uses
  %min.iters.check137 = icmp ult i32 %i.ex, 8
  br i1 %min.iters.check137, label %.lr.ph.i.preheader, label %vector.memcheck134

.lr.ph.i.preheader:                               ; preds = %vector.memcheck134, %.lr.ph.preheader.i
  %xtraiter168 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ez = icmp ult i32 %i.ex, 4
  br i1 %i.ez, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter172 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

vector.memcheck134:                               ; preds = %.lr.ph.preheader.i
  %i.fa = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.fa
  %scevgep135 = getelementptr i8, ptr %i.es, i64 %i.fa
  %bound0 = icmp ult ptr %i.a, %scevgep135
  %bound1 = icmp ult ptr %i.es, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck134
  %n.vec139 = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index141 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load142 = load <2 x i64>, ptr %i.fb, align 16, !tbaa !36, !alias.scope !178, !noalias !181
  %wide.load143 = load <2 x i64>, ptr %i.fc, align 16, !tbaa !36, !alias.scope !178, !noalias !181
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index141 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load144 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !36, !alias.scope !181
  %wide.load145 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !36, !alias.scope !181
  %i.ff = and <2 x i64> %wide.load144, %wide.load142
  %i.fg = and <2 x i64> %wide.load145, %wide.load143
  store <2 x i64> %i.ff, ptr %i.fb, align 16, !tbaa !36, !alias.scope !178, !noalias !181
  store <2 x i64> %i.fg, ptr %i.fc, align 16, !tbaa !36, !alias.scope !178, !noalias !181
  %index.next146 = add nuw i64 %index141, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.fh, label %Abc_TtAnd.exit, label %vector.body140, !llvm.loop !183

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter173 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter173.next.3, %.lr.ph.i ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 16, !tbaa !36
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !36
  %i.fm = and i64 %i.fl, %i.fj
  store i64 %i.fm, ptr %i.fi, align 16, !tbaa !36
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !36
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next.i
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !36
  %i.fr = and i64 %i.fq, %i.fo
  store i64 %i.fr, ptr %i.fn, align 8, !tbaa !36
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 16, !tbaa !36
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next.i.1
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !36
  %i.fw = and i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fs, align 16, !tbaa !36
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !36
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next.i.2
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !36
  %i.gb = and i64 %i.ga, %i.fy
  store i64 %i.gb, ptr %i.fx, align 8, !tbaa !36
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter173.next.3 = add i64 %niter173, 4         ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %Abc_TtAnd.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !184

Abc_TtAnd.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %Abc_TtAnd.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Abc_TtAnd.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %Abc_TtAnd.exit.loopexit.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.epil ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !36
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.i.epil
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !36
  %i.gg = and i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.gc, align 8, !tbaa !36
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %Abc_TtAnd.exit, label %.lr.ph.i.epil, !llvm.loop !185

Abc_TtAnd.exit:                                   ; preds = %vector.body140, %Abc_TtAnd.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge84
  %i.gh = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.a, i32 noundef %.1.lcssa, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #32 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !102 ; 2 uses
  %.not = icmp ne i32 %i.gj, 0
  %i.gk = icmp sgt i32 %i.gh, %i.gj
  %or.cond = select i1 %.not, i1 %i.gk, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %Abc_TtAnd.exit
  %i.gl = load i32, ptr %0, align 8, !tbaa !101
  %.not70 = icmp eq i32 %i.gh, 0
  %i.gm = select i1 %.not70, ptr null, ptr %i.a
  %i.gn = call ptr @Dss_NtkCreate(ptr noundef nonnull %i.c, i32 noundef %i.gl, ptr noundef %i.gm) ; 6 uses
  call void @Dss_NtkTransform(ptr noundef %i.gn, ptr noundef nonnull %i.f)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !42 ; 2 uses
  %i.gq = ptrtoint ptr %i.gp to i64               ; 3 uses
  %i.gr = and i64 %i.gq, -2
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4            ; 2 uses
  %i.gv = and i32 %i.gu, 7
  switch i32 %i.gv, label %bb.k [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.gw = trunc i64 %i.gq to i32
  %i.gx = and i32 %i.gw, 1
  br label %Dss_NtkRebuild.exit

bb.j:                                             ; preds = %bb.h
  %i.gy = trunc i64 %i.gq to i32
  %i.gz = and i32 %i.gy, 1
  %i.ha = lshr i32 %i.gu, 10
  %i.hb = and i32 %i.ha, 510
  %i.hc = add nuw nsw i32 %i.hb, 2
  %i.hd = or disjoint i32 %i.hc, %i.gz
  br label %Dss_NtkRebuild.exit

bb.k:                                             ; preds = %bb.h
  %i.he = call i32 @Dss_NtkRebuild_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.gn, ptr noundef %i.gp)
end_hunk_0
begin_hunk_1_@Dss_ManBooleanAnd:bb.a
  %i.hi = or disjoint i32 %i.hh, %i.hg
  store i32 %i.hi, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !15 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.l

bb.l:                                             ; preds = %Dss_NtkRebuild.exit
  call void @free(ptr noundef nonnull %i.hm) #32
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.l, %Dss_NtkRebuild.exit
  call void @free(ptr noundef nonnull %i.hk) #32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !8  ; 2 uses
  %.not.i = icmp eq ptr %i.ho, null
  br i1 %.not.i, label %Dss_NtkFree.exit, label %bb.m

bb.m:                                             ; preds = %Vec_PtrFree.exit.i
  call void @free(ptr noundef nonnull %i.ho) #32
  br label %Dss_NtkFree.exit

Dss_NtkFree.exit:                                 ; preds = %Vec_PtrFree.exit.i, %bb.m
  call void @free(ptr noundef nonnull %i.gn) #32
  %i.hp = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.hq = load i32, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.hr = and i32 %i.hq, 67108863                 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hp, i64 8
  %.val = load ptr, ptr %i.hs, align 8, !tbaa !22
  %i.ht = lshr i32 %i.hr, 1
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !23
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = shl i32 %i.hy, 23                       ; 2 uses
  %i.ia = and i32 %i.hz, -67108864
  %i.ib = or disjoint i32 %i.ia, %i.hr
  store i32 %i.ib, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.ic = lshr i32 %i.hz, 26                      ; 4 uses
  %.not92 = icmp eq i32 %i.ic, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %Dss_NtkFree.exit
  %wide.trip.count112 = zext nneg i32 %i.ic to i64 ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count112, 1
  %i.id = icmp eq i32 %i.ic, 1
  br i1 %i.id, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter178 = and i64 %wide.trip.count112, 62
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv109 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %indvars.iv.next110.1, %.lr.ph87 ] ; 4 uses
  %niter179 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter179.next.1, %.lr.ph87 ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv109
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !28 ; 2 uses
  %i.ig = ashr i32 %i.if, 1
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !28
  %i.ik = and i32 %i.if, 1
  %i.il = shl nsw i32 %i.ij, 1
  %i.im = or disjoint i32 %i.il, %i.ik
  %i.in = trunc i32 %i.im to i8
  %i.io = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109
  store i8 %i.in, ptr %i.io, align 2, !tbaa !40
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next110
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !28 ; 2 uses
  %i.ir = ashr i32 %i.iq, 1
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !28
  %i.iv = and i32 %i.iq, 1
  %i.iw = shl nsw i32 %i.iu, 1
  %i.ix = or disjoint i32 %i.iw, %i.iv
  %i.iy = trunc i32 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv.next110
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !40
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %niter179.next.1 = add i64 %niter179, 2         ; 2 uses
  %niter179.ncmp.1 = icmp eq i64 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph87, !llvm.loop !186

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph87
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %.loopexit, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next110.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod177 = trunc i32 %i.ic to i1
  call void @llvm.assume(i1 %lcmp.mod177)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv109.epil.init
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !28 ; 2 uses
  %i.jc = ashr i32 %i.jb, 1
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !28
  %i.jg = and i32 %i.jb, 1
  %i.jh = shl nsw i32 %i.jf, 1
  %i.ji = or disjoint i32 %i.jh, %i.jg
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109.epil.init
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph87.epil.preheader, %.loopexit.loopexit.unr-lcssa, %Dss_NtkFree.exit, %Abc_TtAnd.exit
  %.066 = phi ptr [ null, %Abc_TtAnd.exit ], [ @Dss_ManBooleanAnd.Buffer, %Dss_NtkFree.exit ], [ @Dss_ManBooleanAnd.Buffer, %.loopexit.loopexit.unr-lcssa ], [ @Dss_ManBooleanAnd.Buffer, %.lr.ph87.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret ptr %.066
}

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @Dss_ManSharedMap(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !28
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.d = and i32 %i.b, 134217727
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i64 %i.c, -134217728
  %i.g = or disjoint i64 %i.f, %i.e               ; 2 uses
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
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
  %i.o = load i32, ptr %2, align 4, !tbaa !28     ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.q = load ptr, ptr %3, align 8, !tbaa !187    ; 3 uses
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
  %lcmp.mod46 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 2 uses
  %i.u = and i32 %i.t, 1
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil.init to i32
  %i.v = shl i32 %indvars.iv.tr.epil, 1
  %i.w = or disjoint i32 %i.u, %i.v
  %i.x = ashr i32 %i.t, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.y
  store i32 %i.w, ptr %i.z, align 4, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph37, label %._crit_edge

.lr.ph37:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = and i32 %i.af, 1
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ah = shl nsw i32 %indvars.iv.tr, 1
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = ashr i32 %i.af, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !28
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28 ; 2 uses
  %i.ao = and i32 %i.an, 1
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.ap = shl nsw i32 %indvars.iv.tr.1, 1
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = ashr i32 %i.an, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !188

bb.d:                                             ; preds = %.lr.ph37, %bb.f
  %i.au = phi i32 [ %i.ab, %.lr.ph37 ], [ %i.bu, %bb.f ]
  %i.av = phi i64 [ %i.n, %.lr.ph37 ], [ %i.bv, %bb.f ] ; 4 uses
  %indvars.iv39 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next40, %bb.f ] ; 4 uses
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !187
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv39
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
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
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !40
  %i.bf = sext i32 %i.az to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !28
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !187
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv39
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !28
  %i.bl = and i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, %i.bh
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = or i64 %sh.diff, 1
  %i.bp = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 24), i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !40
  %i.bq = and i64 %i.av, -576460752303423488
  %i.br = add i64 %i.bq, 576460752303423488
  %i.bs = and i64 %i.av, 576460752303423487
  %i.bt = or disjoint i64 %i.br, %i.bs            ; 2 uses
  store i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bu = phi i32 [ %i.au, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.bv = phi i64 [ %i.av, %bb.d ], [ %i.bt, %bb.e ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bw = sext i32 %i.bu to i64
  %i.bx = icmp slt i64 %indvars.iv.next40, %i.bw
  br i1 %i.bx, label %bb.d, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %Dss_ManSharedMap.Buffer.val42 = phi i64 [ %i.n, %.preheader ], [ %i.bv, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  %Dss_ManSharedMap.Buffer.val = phi i64 [ %Dss_ManSharedMap.Buffer.val42, %._crit_edge ], [ %i.n, %bb.a ] ; 3 uses
  %i.by = lshr i64 %Dss_ManSharedMap.Buffer.val, 61
  %i.bz = add nuw nsw i64 %i.by, 3
  %i.ca = and i64 %Dss_ManSharedMap.Buffer.val, 1729382256910270464
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bz, %i.cc
  %i.ce = shl nuw nsw i64 %i.cd, 27
  %i.cf = and i64 %Dss_ManSharedMap.Buffer.val, -4160749569
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
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
  %i.b = load i32, ptr @Dss_ManMerge.Counter, align 4, !tbaa !28
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @Dss_ManMerge.Counter, align 4, !tbaa !28
  %i.d = icmp sgt i32 %5, 12
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef 12, i32 noundef %5) ; 0 uses
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !28     ; 3 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.ah
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28   ; 2 uses
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
  %i.m = load i64, ptr %16, align 8, !tbaa !121
  %.neg145 = mul i64 %i.m, -1000000
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !123
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
  %i.s = load i64, ptr %15, align 8, !tbaa !121
  %i.t = mul nsw i64 %i.s, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !123
  %i.w = sdiv i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, %i.t
  br label %Abc_Clock.exit125

Abc_Clock.exit125:                                ; preds = %Abc_Clock.exit, %bb.i
  %.0.i124 = phi i64 [ %i.x, %bb.i ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.y = add i64 %.0.i124, %.0.i.neg
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !108
  %i.ab = add nsw i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %Abc_Clock.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %14) #32
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %Abc_Clock.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %14, align 8, !tbaa !121
  %.neg154 = mul i64 %i.ah, -1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !123
  %.neg153 = sdiv i64 %i.aj, -1000
  %.neg155 = add i64 %.neg153, %.neg154
  br label %Abc_Clock.exit127

Abc_Clock.exit127:                                ; preds = %bb.j, %bb.k
  %.0.i126.neg = phi i64 [ %.neg155, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ak = icmp eq i32 %4, 0
  br i1 %i.ak, label %.thread, label %bb.l

.thread:                                          ; preds = %Abc_Clock.exit127
  %i.al = load i32, ptr %2, align 4, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = add nsw i32 %i.an, %i.al
  %i.ap = call i32 @Dss_ManOperation(ptr noundef nonnull readonly %0, i32 noundef 3, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Dss_ManOperationFun.Buffer, i64 4), ptr noundef null)
  %i.aq = and i32 %i.ap, 67108863
end_hunk_1
