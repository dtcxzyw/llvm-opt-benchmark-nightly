Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@fonsExpandAtlas:bb.a
  %i.bt = getelementptr inbounds i8, ptr %i.bc, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bt, i64 %i.be, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.be
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bu, i8 0, i64 %i.bh, i1 false)
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !438

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.bv = mul nsw i64 %indvars.iv, %i.bi
  %i.bw = getelementptr inbounds i8, ptr %i.ax, i64 %i.bv
  %i.bx = mul nsw i64 %indvars.iv, %i.be
  %i.by = getelementptr inbounds i8, ptr %i.bc, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr align 1 %i.by, i64 %i.be, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bz = mul nsw i64 %indvars.iv.next, %i.bi
  %i.ca = getelementptr inbounds i8, ptr %i.ax, i64 %i.bz
  %i.cb = mul nsw i64 %indvars.iv.next, %i.be
  %i.cc = getelementptr inbounds i8, ptr %i.bc, i64 %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr align 1 %i.cc, i64 %i.be, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit118.unr-lcssa, label %.lr.ph.split, !llvm.loop !438

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv87.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next88.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i32 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.cd = mul nsw i64 %indvars.iv87.epil.init, %i.bi
  %i.ce = getelementptr inbounds i8, ptr %i.ax, i64 %i.cd ; 2 uses
  %i.cf = mul nsw i64 %indvars.iv87.epil.init, %i.be
  %i.cg = getelementptr inbounds i8, ptr %i.bc, i64 %i.cf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.cg, i64 %i.be, i1 false)
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %i.be
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 0, i64 %i.bh, i1 false)
  br label %._crit_edge

._crit_edge.loopexit118.unr-lcssa:                ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit118.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit118.unr-lcssa ] ; 2 uses
  %lcmp.mod119 = trunc i32 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.ci = mul nsw i64 %indvars.iv.epil.init, %i.bi
  %i.cj = getelementptr inbounds i8, ptr %i.ax, i64 %i.ci
  %i.ck = mul nsw i64 %indvars.iv.epil.init, %i.be
  %i.cl = getelementptr inbounds i8, ptr %i.bc, i64 %i.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.cl, i64 %i.be, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit118.unr-lcssa, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.cm = icmp sgt i32 %i.au, %i.az
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.cn = mul nsw i32 %i.az, %i.g
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.ax, i64 %i.co
  %i.cq = sub nsw i32 %i.au, %i.az
  %i.cr = mul nsw i32 %i.cq, %i.g
  %i.cs = sext i32 %i.cr to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cp, i8 0, i64 %i.cs, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !147
  tail call void @free(ptr noundef %i.cu) #40
  store ptr %i.ax, ptr %i.ct, align 8, !tbaa !147
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !139 ; 6 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !136 ; 3 uses
  %i.cy = icmp sgt i32 %i.g, %i.cx
  br i1 %i.cy, label %bb.p, label %fons__atlasExpand.exit

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !143 ; 5 uses
  %i.db = sub nsw i32 %i.g, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 20 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !140 ; 3 uses
  %.not.i.i = icmp slt i32 %i.da, %i.dd
  br i1 %.not.i.i, label %.._crit_edge_crit_edge.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = shl nsw i32 %i.dd, 1
  %spec.select.i.i = select i1 %i.de, i32 8, i32 %i.df ; 2 uses
  store i32 %spec.select.i.i, ptr %i.dc, align 4, !tbaa !140
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 5 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !138
  %i.di = sext i32 %spec.select.i.i to i64
  %i.dj = mul nsw i64 %i.di, 6
  %i.dk = tail call ptr @realloc(ptr noundef %i.dh, i64 noundef %i.dj) #43 ; 2 uses
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !138
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %fons__atlasExpand.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.pre.i.i = load i32, ptr %i.cz, align 8, !tbaa !143 ; 3 uses
  %i.dm = icmp sgt i32 %.pre.i.i, %i.da
  br i1 %i.dm, label %.lr.ph.i.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.r, %bb.p
  %i.dn = phi i32 [ %.pre.i.i, %bb.r ], [ %i.da, %bb.p ]
  %.pre34.i.i = sext i32 %i.da to i64
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.do = sext i32 %.pre.i.i to i64               ; 5 uses
  %i.dp = sext i32 %i.da to i64                   ; 4 uses
  %i.dq = sub nsw i64 %i.do, %i.dp
  %xtraiter125 = and i64 %i.dq, 1
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %i.dr = load ptr, ptr %i.dg, align 8, !tbaa !138
  %i.ds = getelementptr inbounds [6 x i8], ptr %i.dr, i64 %i.do ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ds, ptr noundef nonnull align 2 dereferenceable(6) %i.dt, i64 6, i1 false), !tbaa.struct !203
  %indvars.iv.next.i.i.prol = add nsw i64 %i.do, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.do, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.du = add nsw i64 %i.do, -1
  %i.dv = icmp eq i64 %i.du, %i.dp
  br i1 %i.dv, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.dw = load ptr, ptr %i.dg, align 8, !tbaa !138
  %i.dx = getelementptr inbounds [6 x i8], ptr %i.dw, i64 %indvars.iv.i.i ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dx, ptr noundef nonnull align 2 dereferenceable(6) %i.dy, i64 6, i1 false), !tbaa.struct !203
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !138
  %i.ea = getelementptr [6 x i8], ptr %i.dz, i64 %indvars.iv.i.i ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -6
  %i.ec = getelementptr i8, ptr %i.ea, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.eb, ptr noundef nonnull align 2 dereferenceable(6) %i.ec, i64 6, i1 false), !tbaa.struct !203
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ed = icmp sgt i64 %indvars.iv.next.i.i.1, %i.dp
  br i1 %i.ed, label %.lr.ph.i.i.new, label %._crit_edge.loopexit.i.i, !llvm.loop !21

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.new, %.prol.loopexit
  %.pre33.i.i = load i32, ptr %i.cz, align 8, !tbaa !143
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.._crit_edge_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre34.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.dp, %._crit_edge.loopexit.i.i ]
  %i.ee = phi i32 [ %i.dn, %.._crit_edge_crit_edge.i.i ], [ %.pre33.i.i, %._crit_edge.loopexit.i.i ]
  %i.ef = trunc i32 %i.cx to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !138
  %i.ei = getelementptr inbounds [6 x i8], ptr %i.eh, i64 %.pre-phi.i.i ; 3 uses
  store i16 %i.ef, ptr %i.ei, align 2, !tbaa !201
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i16 0, ptr %i.ej, align 2, !tbaa !204
  %i.ek = trunc i32 %i.db to i16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !142
  %i.em = add nsw i32 %i.ee, 1
  store i32 %i.em, ptr %i.cz, align 8, !tbaa !143
  br label %fons__atlasExpand.exit

fons__atlasExpand.exit:                           ; preds = %bb.o, %bb.q, %._crit_edge.i.i
  store <2 x i32> %i.f, ptr %i.cw, align 8, !tbaa !70
  %i.en = load ptr, ptr %i.cv, align 8, !tbaa !139 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !143 ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %fons__atlasExpand.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !138 ; 9 uses
  %wide.trip.count95 = zext nneg i32 %i.ep to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ep, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph82
  %i.et = and i64 %wide.trip.count95, 7           ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = select i1 %i.eu, i64 8, i64 %i.et
  %n.vec = sub nsw i64 %wide.trip.count95, %i.ev  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %5, %vector.body ]
  %vec.phi115 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %i.ew = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.ex = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.ey = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.ez = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.fa = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.fb = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.fc = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.fd = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %index
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 38
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 44
  %i.fm = load i16, ptr %i.fe, align 2, !tbaa !204
  %i.fn = load i16, ptr %i.ff, align 2, !tbaa !204
  %i.fo = load i16, ptr %i.fg, align 2, !tbaa !204
  %i.fp = load i16, ptr %i.fh, align 2, !tbaa !204
  %i.fq = insertelement <4 x i16> poison, i16 %i.fm, i64 0
  %i.fr = insertelement <4 x i16> %i.fq, i16 %i.fn, i64 1
  %i.fs = insertelement <4 x i16> %i.fr, i16 %i.fo, i64 2
  %i.ft = insertelement <4 x i16> %i.fs, i16 %i.fp, i64 3
  %i.fu = load i16, ptr %i.fi, align 2, !tbaa !204
  %i.fv = load i16, ptr %i.fj, align 2, !tbaa !204
  %i.fw = load i16, ptr %i.fk, align 2, !tbaa !204
  %i.fx = load i16, ptr %i.fl, align 2, !tbaa !204
  %i.fy = insertelement <4 x i16> poison, i16 %i.fu, i64 0
  %i.fz = insertelement <4 x i16> %i.fy, i16 %i.fv, i64 1
  %i.ga = insertelement <4 x i16> %i.fz, i16 %i.fw, i64 2
  %i.gb = insertelement <4 x i16> %i.ga, i16 %i.fx, i64 3
  %3 = sext <4 x i16> %i.ft to <4 x i32>
  %4 = sext <4 x i16> %i.gb to <4 x i32>
  %5 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %3) ; 2 uses
  %6 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi115, <4 x i32> %4) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !439

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %5, <4 x i32> %6)
  %7 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph82, %middle.block
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph82 ], [ %n.vec, %middle.block ]
  %.081.ph = phi i32 [ 0, %.lr.ph82 ], [ %7, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph ], [ %indvars.iv92.ph, %scalar.ph.preheader ] ; 2 uses
  %.081 = phi i32 [ %i.gh, %scalar.ph ], [ %.081.ph, %scalar.ph.preheader ]
  %i.gd = getelementptr inbounds nuw [6 x i8], ptr %i.es, i64 %indvars.iv92
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !204
  %i.gg = sext i16 %i.gf to i32
  %i.gh = tail call noundef i32 @llvm.smax.i32(i32 %.081, i32 %i.gg) ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %._crit_edge83, label %scalar.ph, !llvm.loop !440

._crit_edge83:                                    ; preds = %scalar.ph, %fons__atlasExpand.exit
  %.0.lcssa = phi i32 [ 0, %fons__atlasExpand.exit ], [ %i.gh, %scalar.ph ]
  store i32 0, ptr %i.l, align 8, !tbaa !70
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.gi, align 4, !tbaa !70
  %i.gj = load i32, ptr %0, align 8, !tbaa !131
  store i32 %i.gj, ptr %i.n, align 8, !tbaa !70
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.0.lcssa, ptr %i.gk, align 4, !tbaa !70
  store <2 x i32> %i.f, ptr %0, align 8, !tbaa !70
  %i.gl = sitofp <2 x i32> %i.f to <2 x float>
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gn = fdiv <2 x float> splat (float 1.000000e+00), %i.gl
  store <2 x float> %i.gn, ptr %i.gm, align 8, !tbaa !81
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.m, %bb.l, %bb.a, %._crit_edge83
  %.071 = phi i32 [ 1, %._crit_edge83 ], [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i32 %.071
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fonsResetAtlas(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147
  tail call void %i.o(ptr noundef %i.q, ptr noundef nonnull %i.d, ptr noundef %i.s) #40, !inline_history !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = load <2 x i32>, ptr %0, align 8, !tbaa !70
  store <2 x i32> %i.t, ptr %i.d, align 8, !tbaa !70
  store i32 0, ptr %i.f, align 8, !tbaa !70
  store i32 0, ptr %i.k, align 4, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20600 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !170  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %fons__flush.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172  ; 2 uses
  %.not26.i = icmp eq ptr %i.y, null
  br i1 %.not26.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8312
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16504
  tail call void %i.y(ptr noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, i32 noundef %i.v) #40, !inline_history !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !170
  br label %fons__flush.exit

fons__flush.exit:                                 ; preds = %bb.g, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %fons__flush.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.ai = tail call i32 %i.af(ptr noundef %i.ah, i32 noundef %1, i32 noundef %2) #40
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %fons__flush.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !139 ; 4 uses
  store i32 %1, ptr %i.al, align 8, !tbaa !136
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %2, ptr %i.am, align 4, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !138 ; 3 uses
  store i16 0, ptr %i.ap, align 2, !tbaa !201
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i16 0, ptr %i.aq, align 2, !tbaa !204
  %i.ar = trunc i32 %1 to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !142
  store i32 1, ptr %i.an, align 8, !tbaa !143
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.av = mul nsw i32 %2, %1
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = tail call ptr @realloc(ptr noundef %i.au, i64 noundef %i.aw) #43 ; 3 uses
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !147
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 0, i64 %i.aw, i1 false)
  store i32 %1, ptr %i.d, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store i32 %2, ptr %i.az, align 4, !tbaa !70
  store i32 0, ptr %i.f, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !146
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !144
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !155 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 268
  store i32 0, ptr %i.bi, align 4, !tbaa !162
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bj, i8 -1, i64 1024, i1 false), !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !146
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.n, label %._crit_edge, !llvm.loop !441

._crit_edge:                                      ; preds = %bb.n, %bb.m
  store i32 %1, ptr %0, align 8, !tbaa !131
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.bn, align 4, !tbaa !132
  %i.bo = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %2, i64 1
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = fdiv <2 x float> splat (float 1.000000e+00), %i.bq
  store <2 x float> %i.bs, ptr %i.br, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !139
  %i.bu = call fastcc i32 @fons__atlasAddRect(ptr noundef %i.bt, i32 noundef 2, i32 noundef 2, ptr noundef %i.a, ptr noundef %i.b)
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %fons__addWhiteRect.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %i.bw = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !70  ; 3 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !70  ; 3 uses
  %i.bz = load i32, ptr %0, align 8, !tbaa !131
  %i.ca = mul nsw i32 %i.bz, %i.by
  %i.cb = add nsw i32 %i.ca, %i.bx
  %i.cc = sext i32 %i.cb to i64
end_hunk_0
begin_hunk_1_@nvg__bevelJoin:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 1.000000e+00, ptr %i.du, align 4, !tbaa !283
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.dl, ptr %i.dv, align 4, !tbaa !81
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %5, ptr %i.dw, align 4, !tbaa !282
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.dx, align 4, !tbaa !283
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dz = and i8 %i.g, 4
  %.not188 = icmp eq i8 %i.dz, 0
  br i1 %.not188, label %bb.l, label %bb.k

bb.k:                                             ; preds = %nvg__chooseBevel.exit192
  %i.ea = extractelement <2 x float> %i.ds, i64 0
  store float %i.ea, ptr %i.dy, align 4, !tbaa !278
  %i.eb = extractelement <2 x float> %i.dk, i64 0
  %i.ec = extractelement <2 x float> %i.dk, i64 1
  %i.ed = extractelement <2 x float> %i.ds, i64 1
  br label %bb.m

bb.l:                                             ; preds = %nvg__chooseBevel.exit192
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ef = load <2 x float>, ptr %i.ee, align 4, !tbaa !81
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.dp, <2 x float> %i.dr) ; 3 uses
  store <2 x float> %i.ds, ptr %i.dy, align 4, !tbaa !81
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %4, ptr %i.eh, align 4, !tbaa !282
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 1.000000e+00, ptr %i.ei, align 4, !tbaa !283
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.cl, ptr %i.ej, align 4, !tbaa !278
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.el = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.em = shufflevector <4 x float> %i.el, <4 x float> <float poison, float 5.000000e-01, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 5, i32 6, i32 3>
  %i.en = insertelement <4 x float> %i.em, float %i.dj, i64 0
  store <4 x float> %i.en, ptr %i.ek, align 4, !tbaa !81
  %i.eo = extractelement <2 x float> %i.eg, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink113 = phi i64 [ 68, %bb.l ], [ 36, %bb.k ]
  %.sink111 = phi float [ %i.eo, %bb.l ], [ %i.ed, %bb.k ]
  %.sink110 = phi i64 [ 72, %bb.l ], [ 40, %bb.k ]
  %.sink108 = phi i64 [ 76, %bb.l ], [ 44, %bb.k ]
  %.sink106 = phi i64 [ 80, %bb.l ], [ 48, %bb.k ]
  %.sink103 = phi i64 [ 84, %bb.l ], [ 52, %bb.k ]
  %.sink100 = phi i64 [ 88, %bb.l ], [ 56, %bb.k ]
  %.sink98 = phi float [ %4, %bb.l ], [ %5, %bb.k ]
  %.sink97 = phi i64 [ 92, %bb.l ], [ 60, %bb.k ]
  %.sink95 = phi i64 [ 96, %bb.l ], [ 64, %bb.k ]
  %.sink92 = phi i64 [ 100, %bb.l ], [ 68, %bb.k ]
  %.sink89 = phi i64 [ 104, %bb.l ], [ 72, %bb.k ]
  %.sink87 = phi i64 [ 108, %bb.l ], [ 76, %bb.k ]
  %.sink85 = phi i64 [ 112, %bb.l ], [ 80, %bb.k ]
  %.sink83 = phi float [ %i.cl, %bb.l ], [ %i.eb, %bb.k ]
  %.sink82 = phi i64 [ 116, %bb.l ], [ 84, %bb.k ]
  %.sink80 = phi float [ %i.dj, %bb.l ], [ %i.ec, %bb.k ]
  %.sink79 = phi i64 [ 120, %bb.l ], [ 88, %bb.k ]
  %.sink77 = phi float [ 5.000000e-01, %bb.l ], [ %5, %bb.k ]
  %.sink76 = phi i64 [ 124, %bb.l ], [ 92, %bb.k ]
  %.sink74 = phi i64 [ 128, %bb.l ], [ 96, %bb.k ]
  %i.ep = phi <2 x float> [ %i.eg, %bb.l ], [ %i.dl, %bb.k ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink113
  store float %.sink111, ptr %i.eq, align 4, !tbaa !281
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %.sink110
  store float %4, ptr %i.er, align 4, !tbaa !282
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %.sink108
  store float 1.000000e+00, ptr %i.es, align 4, !tbaa !283
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %.sink106
  %i.eu = extractelement <2 x float> %i.ep, i64 0
  store float %i.eu, ptr %i.et, align 4, !tbaa !278
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.sink103
  %i.ew = extractelement <2 x float> %i.ep, i64 1
  store float %i.ew, ptr %i.ev, align 4, !tbaa !281
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.sink100
  store float %.sink98, ptr %i.ex, align 4, !tbaa !282
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %.sink97
  store float 1.000000e+00, ptr %i.ey, align 4, !tbaa !283
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %.sink95
  %i.fa = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fb = insertelement <2 x float> %i.fa, float %i.e, i64 1
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.dp, <2 x float> %i.dr) ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  store float %i.fd, ptr %i.ez, align 4, !tbaa !278
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %.sink92
  %i.ff = extractelement <2 x float> %i.fc, i64 1
  store float %i.ff, ptr %i.fe, align 4, !tbaa !281
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink89
  store float %4, ptr %i.fg, align 4, !tbaa !282
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink87
  store float 1.000000e+00, ptr %i.fh, align 4, !tbaa !283
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink85
  store float %.sink83, ptr %i.fi, align 4, !tbaa !278
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %.sink82.sink = phi i64 [ %.sink82, %bb.m ], [ %.sink40, %bb.g ]
  %.sink80.sink = phi float [ %.sink80, %bb.m ], [ %i.cj, %bb.g ]
  %.sink79.sink = phi i64 [ %.sink79, %bb.m ], [ %.sink37, %bb.g ]
  %.sink77.sink = phi float [ %.sink77, %bb.m ], [ %5, %bb.g ]
  %.sink76.sink = phi i64 [ %.sink76, %bb.m ], [ %.sink35, %bb.g ]
  %.sink74.sink = phi i64 [ %.sink74, %bb.m ], [ %.sink, %bb.g ]
  %i.fj = phi <2 x float> [ %i.fc, %bb.m ], [ %i.ag, %bb.g ]
  %i.fk = phi <2 x float> [ %i.dk, %bb.m ], [ %i.ch, %bb.g ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink82.sink
  store float %.sink80.sink, ptr %i.fl, align 4, !tbaa !281
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink79.sink
  store float %.sink77.sink, ptr %i.fm, align 4, !tbaa !282
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink76.sink
  store float 1.000000e+00, ptr %i.fn, align 4, !tbaa !283
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink74.sink ; 7 uses
  store <2 x float> %i.fj, ptr %i.fo, align 4, !tbaa !81
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %4, ptr %i.fp, align 4, !tbaa !282
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store float 1.000000e+00, ptr %i.fq, align 4, !tbaa !283
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x float> %i.fk, ptr %i.fr, align 4, !tbaa !81
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store float %5, ptr %i.fs, align 4, !tbaa !282
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 28
  store float 1.000000e+00, ptr %i.ft, align 4, !tbaa !283
  %.2 = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  ret ptr %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #8

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(1) }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !39}
!1 = distinct !{null}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = distinct !{!7, !39}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39}
!11 = distinct !{!11, !39}
!12 = distinct !{!12, !39}
!13 = distinct !{!13, !39}
!14 = distinct !{!14, !39}
!15 = distinct !{!15, !39}
!16 = distinct !{!16, !39}
!17 = distinct !{!17, !39}
!18 = distinct !{!18, !39}
!19 = distinct !{!19, !39}
!20 = distinct !{null}
!21 = distinct !{!21, !39}
!22 = distinct !{null}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !{!"p1 omnipotent char", !32, i64 0}
!34 = !{!"", !33, i64 0, !29, i64 8, !29, i64 12}
!35 = !{!"stbtt_fontinfo", !32, i64 0, !33, i64 8, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !34, i64 64, !34, i64 80, !34, i64 96, !34, i64 112, !34, i64 128, !34, i64 144}
!36 = !{!35, !33, i64 8}
!37 = !{!35, !29, i64 56}
!38 = !{!28, !28, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!35, !29, i64 76}
!41 = !{!35, !29, i64 20}
!42 = !{!35, !29, i64 60}
!43 = !{!35, !29, i64 32}
!44 = !{!35, !29, i64 24}
!45 = !{!32, !32, i64 0}
!46 = !{!35, !32, i64 0}
!47 = !{!"FONSparams", !29, i64 0, !29, i64 4, !28, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56}
!48 = !{!"float", !28, i64 0}
!49 = !{!"any p2 pointer", !32, i64 0}
!50 = !{!"p2 _ZTS8FONSfont", !49, i64 0}
!51 = !{!"p1 _ZTS9FONSatlas", !32, i64 0}
!52 = !{!"FONScontext", !47, i64 0, !48, i64 64, !48, i64 68, !33, i64 72, !28, i64 80, !50, i64 96, !51, i64 104, !29, i64 112, !29, i64 116, !28, i64 120, !28, i64 8312, !28, i64 16504, !29, i64 20600, !33, i64 20608, !29, i64 20616, !28, i64 20620, !29, i64 21100, !32, i64 21104, !32, i64 21112}
!53 = !{!52, !29, i64 20616}
!54 = !{!52, !32, i64 21104}
!55 = !{!52, !32, i64 21112}
!56 = !{!52, !33, i64 20608}
!57 = !{!"short", !28, i64 0}
!58 = !{!"", !57, i64 0, !57, i64 2, !57, i64 4, !57, i64 6, !57, i64 8, !57, i64 10, !28, i64 12, !28, i64 13}
!59 = !{!58, !28, i64 12}
!60 = !{!58, !57, i64 0}
!61 = !{!58, !57, i64 2}
!62 = !{!58, !57, i64 4}
!63 = !{!58, !57, i64 6}
!64 = !{!57, !57, i64 0}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!"", !29, i64 0, !29, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !32, i64 40, !29, i64 48}
!68 = !{!67, !29, i64 48}
!69 = !{!67, !32, i64 40}
!70 = !{!29, !29, i64 0}
!71 = !{!35, !29, i64 36}
!72 = !{!35, !29, i64 40}
!73 = !{!35, !29, i64 44}
!74 = !{!35, !29, i64 48}
!75 = !{!35, !29, i64 16}
!76 = !{!35, !29, i64 28}
!77 = !{!35, !29, i64 52}
!78 = !{!33, !33, i64 0}
!79 = !{!58, !57, i64 8}
!80 = !{!58, !57, i64 10}
!81 = !{!48, !48, i64 0}
!82 = !{!"", !48, i64 0, !48, i64 4}
!83 = !{!82, !48, i64 4}
!84 = !{!"stbtt__edge", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !29, i64 16}
!85 = !{!84, !48, i64 4}
!86 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 4, !70}
!87 = !{!"", !29, i64 0, !29, i64 4, !29, i64 8, !33, i64 16}
!88 = !{!87, !29, i64 0}
!89 = !{!87, !29, i64 4}
!90 = !{!87, !33, i64 16}
!91 = !{!87, !29, i64 8}
!92 = !{!"", !57, i64 0, !57, i64 2, !57, i64 4, !57, i64 6, !48, i64 8, !48, i64 12, !48, i64 16}
!93 = !{!92, !48, i64 16}
!94 = !{!"stbtt_pack_context", !32, i64 0, !32, i64 8, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !33, i64 48, !32, i64 56}
!95 = !{!94, !32, i64 0}
!96 = !{!94, !33, i64 48}
!97 = !{!94, !32, i64 8}
!98 = !{!94, !29, i64 28}
!99 = !{!94, !29, i64 24}
!100 = !{!94, !29, i64 36}
!101 = !{!94, !29, i64 40}
!102 = !{!94, !29, i64 32}
!103 = !{!"", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16}
!104 = !{!103, !29, i64 0}
!105 = !{!103, !29, i64 4}
!106 = !{!103, !29, i64 8}
!107 = !{!103, !29, i64 12}
!108 = !{!103, !29, i64 16}
!109 = !{!"p1 int", !32, i64 0}
!110 = !{!"", !48, i64 0, !29, i64 4, !109, i64 8, !29, i64 16, !32, i64 24, !28, i64 32, !28, i64 33}
!111 = !{!110, !48, i64 0}
!112 = !{!110, !29, i64 16}
!113 = !{!110, !109, i64 8}
!114 = !{!110, !29, i64 4}
!115 = !{!"stbrp_rect", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20}
!116 = !{!115, !29, i64 16}
!117 = !{!115, !29, i64 12}
!118 = !{!115, !29, i64 20}
!119 = !{!110, !32, i64 24}
!120 = !{!115, !29, i64 0}
!121 = !{!115, !29, i64 4}
!122 = !{!"", !57, i64 0, !57, i64 2, !57, i64 4, !57, i64 6, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24}
!123 = !{!122, !48, i64 24}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = !{i64 0, i64 8, !78, i64 8, i64 4, !70, i64 12, i64 4, !70}
!126 = !{!34, !29, i64 8}
!127 = !{!34, !29, i64 12}
!128 = !{!34, !33, i64 0}
!129 = !{!"FONSttFontImpl", !35, i64 0}
!130 = !{!129, !32, i64 0}
!131 = !{!52, !29, i64 0}
!132 = !{!52, !29, i64 4}
!133 = !{!52, !32, i64 16}
!134 = !{!"p1 _ZTS13FONSatlasNode", !32, i64 0}
!135 = !{!"FONSatlas", !29, i64 0, !29, i64 4, !134, i64 8, !29, i64 16, !29, i64 20}
!136 = !{!135, !29, i64 0}
!137 = !{!135, !29, i64 4}
!138 = !{!135, !134, i64 8}
!139 = !{!52, !51, i64 104}
!140 = !{!135, !29, i64 20}
end_hunk_1
