inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_encode_and_deinterleave_v:bb.a
.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.i = shl nuw nsw i32 %i.h, 2
  %narrow.i = add nuw nsw i32 %i.i, 4
  %i.j = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.k = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.l = trunc i64 %i.k to i32
  %i.m = trunc i64 %i.k to i32
  %i.n = icmp ugt i64 %i.k, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter380 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.o = icmp ult i32 %2, 4
  br i1 %i.o, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 6 uses
  %i.p = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.q = shl i32 %i.p, 3                          ; 7 uses
  %i.r = mul i32 %4, %i.p                         ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.s = trunc i64 %indvars.iv50.i to i32
  %i.t = mul i32 %4, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add i64 %i.v, %i.a
  %i.x = shl i64 %indvars.iv50.i, 5
  %i.y = and i64 %i.x, 17179869152
  %i.z = add i64 %i.y, %i.b
  %i.aa = trunc i64 %indvars.iv50.i to i32
  %i.ab = mul i32 %4, %i.aa
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.ac = shl i32 %indvars.iv50.i.tr, 3
  %i.ad = xor i32 %i.ac, -1
  %i.ae = icmp ult i32 %i.ad, %i.l
  %i.af = xor i32 %i.ab, -1
  %i.ag = icmp ult i32 %i.af, %i.m
  %i.ah = or i1 %i.ag, %i.n
  %i.ai = or i1 %i.ae, %i.ah
  %i.aj = sub i64 %i.w, %i.z
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = select i1 %i.ai, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.ak = phi i32 [ %i.au, %vector.body ], [ 3, %vector.scevcheck ] ; 2 uses
  %i.al = trunc i64 %index to i32                 ; 2 uses
  %i.am = add i32 %i.r, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load373 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add i32 %i.q, %i.al
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %wide.load, ptr %i.as, align 4, !tbaa !3
  store <4 x i32> %wide.load373, ptr %i.at, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = add i32 %i.ak, 8
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %i.aw = add i32 %i.ak, 4
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ax = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.ay = add i32 %i.r, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = add i32 %i.q, %i.ax
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !56

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa379.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa378.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %..preheader31_crit_edge.us.i, label %scalar.ph

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !58

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bh = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bi = add i32 %i.r, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = add i32 %i.q, %i.bh
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !3
  %i.bp = trunc i64 %indvars.iv.i to i32
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  %i.br = add i32 %i.r, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.q, %i.bq
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw
  store i32 %i.bu, ptr %i.bx, align 4, !tbaa !3
  %i.by = trunc i64 %indvars.iv.i to i32
  %i.bz = add i32 %i.by, 2                        ; 2 uses
  %i.ca = add i32 %i.r, %i.bz
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = add i32 %i.q, %i.bz
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  store i32 %i.cd, ptr %i.cg, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ch = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.ci = add i32 %i.r, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add i32 %i.q, %i.ch
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !59

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa379.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa371 = phi i32 [ %i.aw, %middle.block ], [ %.lcssa378.unr, %scalar.ph.prol.loopexit ], [ %i.ch, %scalar.ph ]
  %i.cp = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.cp, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.cq = or disjoint i32 %i.q, 1
  %i.cr = add nuw i32 %i.cq, %.lcssa371
  %i.cs = zext i32 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.ct
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.j, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.a
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter383 = and i64 %wide.trip.count67.i, 1
  %i.cu = icmp eq i32 %2, 1
  br i1 %i.cu, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter387 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter388 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter388.next.1, %.lr.ph.i ]
  %i.cv = trunc nuw i64 %indvars.iv64.i to i32
  %i.cw = shl i64 %indvars.iv64.i, 3
  %i.cx = and i64 %i.cw, 4294967280
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cx
  %i.cz = mul i32 %4, %i.cv
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cy, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.db, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.dc = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.dd = shl i64 %indvars.iv.next65.i, 3
  %i.de = and i64 %i.dd, 4294967288
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = mul i32 %4, %i.dc
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.df, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.di, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.dj = shl i64 %indvars.iv59.i, 5
  %i.dk = and i64 %i.dj, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.dl = and i64 %indvars.iv.next60.i, 17179869056
  %i.dm = getelementptr nuw i8, ptr %1, i64 %i.dl
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.dm, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dn = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.do = getelementptr nuw i8, ptr %1, i64 %i.dn
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.do, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dp = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.dq = getelementptr nuw i8, ptr %1, i64 %i.dp
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.dq, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa, label %.preheader32.i, !llvm.loop !58

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv64.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod386 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod386)
  %i.dr = trunc nuw i64 %indvars.iv64.i.epil.init to i32
  %i.ds = shl i64 %indvars.iv64.i.epil.init, 3
  %i.dt = and i64 %i.ds, 4294967288
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dt
  %i.dv = mul i32 %4, %i.dr
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.du, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dx, i64 32, i1 false)
  br label %opj_dwt_fetch_cols_vertical_pass.exit

opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa: ; preds = %.preheader32.i
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil.preheader

.preheader32.i.epil.preheader:                    ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa, %.preheader32.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.preheader32.preheader.i ], [ %indvars.iv.next60.i.3, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa ]
  %lcmp.mod382 = icmp ne i64 %xtraiter380, 0
  tail call void @llvm.assume(i1 %lcmp.mod382)
  br label %.preheader32.i.epil

.preheader32.i.epil:                              ; preds = %.preheader32.i.epil, %.preheader32.i.epil.preheader
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv59.i.epil.init, %.preheader32.i.epil.preheader ], [ %indvars.iv.next60.i.epil, %.preheader32.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader32.i.epil.preheader ], [ %epil.iter.next, %.preheader32.i.epil ]
  %i.dy = shl i64 %indvars.iv59.i.epil, 5
  %i.dz = and i64 %i.dy, 17179869152
  %scevgep55.i.epil = getelementptr nuw i8, ptr %1, i64 %i.dz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.epil, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter380
  br i1 %epil.iter.cmp.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil, !llvm.loop !61

opj_dwt_fetch_cols_vertical_pass.exit:            ; preds = %._crit_edge.us.i, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa, %.preheader32.i.epil, %.lr.ph.i.epil.preheader, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa
  %i.ea = icmp eq i32 %2, 1
  br i1 %i.ea, label %bb.b, label %opj_dwt_fetch_cols_vertical_pass.exit.thread

bb.b:                                             ; preds = %opj_dwt_fetch_cols_vertical_pass.exit
  br i1 %.not, label %.loopexit, label %.preheader273.preheader

.preheader273.preheader:                          ; preds = %bb.b
  %i.eb = load <4 x i32>, ptr %1, align 4, !tbaa !3
  %i.ec = shl nsw <4 x i32> %i.eb, splat (i32 1)
  store <4 x i32> %i.ec, ptr %1, align 4, !tbaa !3
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ee = load <4 x i32>, ptr %i.ed, align 4, !tbaa !3
  %i.ef = shl nsw <4 x i32> %i.ee, splat (i32 1)
  store <4 x i32> %i.ef, ptr %i.ed, align 4, !tbaa !3
  br label %.loopexit

opj_dwt_fetch_cols_vertical_pass.exit.thread:     ; preds = %.preheader.i, %.preheader33.i, %opj_dwt_fetch_cols_vertical_pass.exit
  br i1 %.not, label %bb.c, label %.preheader272.preheader

.preheader272.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.eh = load <4 x i32>, ptr %i.eg, align 4, !tbaa !3
  %i.ei = load <4 x i32>, ptr %1, align 4, !tbaa !3
  %i.ej = sub nsw <4 x i32> %i.ei, %i.eh
  store <4 x i32> %i.ej, ptr %1, align 4, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.em = load <4 x i32>, ptr %i.el, align 4, !tbaa !3
  %i.en = load <4 x i32>, ptr %i.ek, align 4, !tbaa !3
  %i.eo = sub nsw <4 x i32> %i.en, %i.em
  store <4 x i32> %i.eo, ptr %i.ek, align 4, !tbaa !3
  %i.ep = icmp ugt i32 %i.d, 3
  br i1 %i.ep, label %.lr.ph.preheader, label %bb.i

bb.c:                                             ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.thread
  %i.eq = icmp ugt i32 %i.d, 3
  br i1 %i.eq, label %.lr.ph291.preheader, label %bb.d

.lr.ph291.preheader:                              ; preds = %bb.c
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.es = load <2 x i64>, ptr %i.er, align 16, !tbaa !62
  %i.et = load <2 x i64>, ptr %1, align 16, !tbaa !62
  %umax336 = tail call i32 @llvm.umax.i32(i32 %i.e, i32 2)
  %i.eu = add nsw i32 %umax336, -1
  %wide.trip.count337 = zext nneg i32 %i.eu to i64
  br label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.lr.ph291
  %indvars.iv331 = phi i64 [ 0, %.lr.ph291.preheader ], [ %indvars.iv.next332, %.lr.ph291 ] ; 2 uses
  %indvars.iv329 = phi i64 [ 1, %.lr.ph291.preheader ], [ %indvars.iv.next330, %.lr.ph291 ] ; 3 uses
  %.0215288 = phi <2 x i64> [ %i.et, %.lr.ph291.preheader ], [ %i.ey, %.lr.ph291 ]
  %.0216287 = phi <2 x i64> [ %i.es, %.lr.ph291.preheader ], [ %i.fa, %.lr.ph291 ]
  %i.ev = shl i64 %indvars.iv329, 4
  %i.ew = and i64 %i.ev, 4294967280
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ew ; 2 uses
  %i.ey = load <2 x i64>, ptr %i.ex, align 16, !tbaa !62 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fa = load <2 x i64>, ptr %i.ez, align 16, !tbaa !62 ; 2 uses
  %i.fb = shl i64 %indvars.iv331, 4
  %i.fc = and i64 %i.fb, 4294967280
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 2 uses
  %i.ff = load <4 x i32>, ptr %i.fe, align 16, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 2 uses
  %i.fh = load <4 x i32>, ptr %i.fg, align 16, !tbaa !62
  %i.fi = bitcast <2 x i64> %.0215288 to <4 x i32>
  %i.fj = bitcast <2 x i64> %i.ey to <4 x i32>
  %i.fk = add <4 x i32> %i.fj, %i.fi
  %i.fl = ashr <4 x i32> %i.fk, splat (i32 1)
  %i.fm = sub <4 x i32> %i.ff, %i.fl
  %i.fn = bitcast <2 x i64> %.0216287 to <4 x i32>
  %i.fo = bitcast <2 x i64> %i.fa to <4 x i32>
  %i.fp = add <4 x i32> %i.fo, %i.fn
  %i.fq = ashr <4 x i32> %i.fp, splat (i32 1)
  %i.fr = sub <4 x i32> %i.fh, %i.fq
  store <4 x i32> %i.fm, ptr %i.fe, align 16, !tbaa !62
  store <4 x i32> %i.fr, ptr %i.fg, align 16, !tbaa !62
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count337
  br i1 %exitcond338.not, label %._crit_edge292, label %.lr.ph291, !llvm.loop !63

._crit_edge292:                                   ; preds = %.lr.ph291
  %i.fs = shl i64 %indvars.iv329, 4
  %i.ft = and i64 %i.fs, 4294967280
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge292, %bb.c
  %.1213 = phi i64 [ %i.ft, %._crit_edge292 ], [ 0, %bb.c ] ; 4 uses
  %i.fu = and i32 %2, 1
  %i.fv = icmp eq i32 %i.fu, 0                    ; 2 uses
  br i1 %i.fv, label %.preheader266.preheader, label %.loopexit267

.preheader266.preheader:                          ; preds = %bb.d
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.fz = load <4 x i32>, ptr %i.fw, align 4, !tbaa !3
  %i.ga = load <4 x i32>, ptr %i.fy, align 4, !tbaa !3
  %i.gb = sub nsw <4 x i32> %i.ga, %i.fz
  store <4 x i32> %i.gb, ptr %i.fy, align 4, !tbaa !3
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48 ; 2 uses
  %i.gg = load <4 x i32>, ptr %i.gd, align 4, !tbaa !3
  %i.gh = load <4 x i32>, ptr %i.gf, align 4, !tbaa !3
  %i.gi = sub nsw <4 x i32> %i.gh, %i.gg
  store <4 x i32> %i.gi, ptr %i.gf, align 4, !tbaa !3
  br label %.loopexit267

.loopexit267:                                     ; preds = %.preheader266.preheader, %bb.d
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gk = load <4 x i32>, ptr %i.gj, align 4, !tbaa !3
  %i.gl = shl nsw <4 x i32> %i.gk, splat (i32 1)
  %i.gm = add nsw <4 x i32> %i.gl, splat (i32 2)
  %i.gn = ashr <4 x i32> %i.gm, splat (i32 2)
  %i.go = load <4 x i32>, ptr %1, align 4, !tbaa !3
  %i.gp = add nsw <4 x i32> %i.gn, %i.go
  store <4 x i32> %i.gp, ptr %1, align 4, !tbaa !3
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gs = load <4 x i32>, ptr %i.gr, align 4, !tbaa !3
  %i.gt = shl nsw <4 x i32> %i.gs, splat (i32 1)
  %i.gu = add nsw <4 x i32> %i.gt, splat (i32 2)
  %i.gv = ashr <4 x i32> %i.gu, splat (i32 2)
  %i.gw = load <4 x i32>, ptr %i.gq, align 4, !tbaa !3
  %i.gx = add nsw <4 x i32> %i.gv, %i.gw
  store <4 x i32> %i.gx, ptr %i.gq, align 4, !tbaa !3
  %i.gy = icmp ugt i32 %i.f, 1
  br i1 %i.gy, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.loopexit267
  %i.gz = load <2 x i64>, ptr %i.gj, align 16, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hb = load <2 x i64>, ptr %i.ha, align 16, !tbaa !62
  %wide.trip.count350 = zext i32 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv347 = phi i64 [ 1, %bb.e ], [ %indvars.iv.next348, %bb.f ] ; 2 uses
  %.0219297 = phi <2 x i64> [ %i.gz, %bb.e ], [ %i.hh, %bb.f ]
  %.0220296 = phi <2 x i64> [ %i.hb, %bb.e ], [ %i.hj, %bb.f ]
  %i.hc = trunc nuw i64 %indvars.iv347 to i32
  %i.hd = shl i32 %i.hc, 4                        ; 2 uses
  %i.he = or disjoint i32 %i.hd, 8
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hf ; 2 uses
  %i.hh = load <2 x i64>, ptr %i.hg, align 16, !tbaa !62 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hj = load <2 x i64>, ptr %i.hi, align 16, !tbaa !62 ; 2 uses
  %i.hk = zext i32 %i.hd to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hk ; 3 uses
  %i.hm = load <4 x i32>, ptr %i.hl, align 16, !tbaa !62
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.ho = load <4 x i32>, ptr %i.hn, align 16, !tbaa !62
  %i.hp = bitcast <2 x i64> %.0219297 to <4 x i32>
  %i.hq = bitcast <2 x i64> %i.hh to <4 x i32>
  %i.hr = add <4 x i32> %i.hp, splat (i32 2)
  %i.hs = add <4 x i32> %i.hr, %i.hq
  %i.ht = ashr <4 x i32> %i.hs, splat (i32 2)
  %i.hu = add <4 x i32> %i.ht, %i.hm
  %i.hv = bitcast <2 x i64> %.0220296 to <4 x i32>
  %i.hw = bitcast <2 x i64> %i.hj to <4 x i32>
  %i.hx = add <4 x i32> %i.hv, splat (i32 2)
  %i.hy = add <4 x i32> %i.hx, %i.hw
  %i.hz = ashr <4 x i32> %i.hy, splat (i32 2)
  %i.ia = add <4 x i32> %i.hz, %i.ho
  store <4 x i32> %i.hu, ptr %i.hl, align 16, !tbaa !62
  store <4 x i32> %i.ia, ptr %i.hn, align 16, !tbaa !62
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  br i1 %exitcond351.not, label %bb.g, label %bb.f, !llvm.loop !64

bb.g:                                             ; preds = %bb.f
  %i.ib = shl i32 %i.f, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit267
  %.3 = phi i32 [ %i.ib, %bb.g ], [ 16, %.loopexit267 ] ; 2 uses
  br i1 %i.fv, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ic = add i32 %.3, -8
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = zext i32 %.3 to i64                     ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.id
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ie ; 2 uses
  %i.ih = load <4 x i32>, ptr %i.if, align 4, !tbaa !3
  %i.ii = shl nsw <4 x i32> %i.ih, splat (i32 1)
  %i.ij = add nsw <4 x i32> %i.ii, splat (i32 2)
end_hunk_0
begin_hunk_1_@opj_dwt_encode_and_deinterleave_v_real:bb.a

.preheader33.i:                                   ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.j = shl nuw nsw i32 %i.i, 2
  %narrow.i = add nuw nsw i32 %i.j, 4
  %i.k = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.l = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.m = trunc i64 %i.l to i32
  %i.n = trunc i64 %i.l to i32
  %i.o = icmp ugt i64 %i.l, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter178 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.p = icmp ult i32 %2, 4
  br i1 %i.p, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 6 uses
  %i.q = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.r = shl i32 %i.q, 3                          ; 7 uses
  %i.s = mul i32 %4, %i.q                         ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.t = trunc i64 %indvars.iv50.i to i32
  %i.u = mul i32 %4, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add i64 %i.w, %i.a
  %i.y = shl i64 %indvars.iv50.i, 5
  %i.z = and i64 %i.y, 17179869152
  %i.aa = add i64 %i.z, %i.b
  %i.ab = trunc i64 %indvars.iv50.i to i32
  %i.ac = mul i32 %4, %i.ab
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.ad = shl i32 %indvars.iv50.i.tr, 3
  %i.ae = xor i32 %i.ad, -1
  %i.af = icmp ult i32 %i.ae, %i.m
  %i.ag = xor i32 %i.ac, -1
  %i.ah = icmp ult i32 %i.ag, %i.n
  %i.ai = or i1 %i.ah, %i.o
  %i.aj = or i1 %i.af, %i.ai
  %i.ak = sub i64 %i.x, %i.aa
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %i.aj, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.al = phi i32 [ %i.av, %vector.body ], [ 3, %vector.scevcheck ] ; 2 uses
  %i.am = trunc i64 %index to i32                 ; 2 uses
  %i.an = add i32 %i.s, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load171 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !3
  %i.ar = add i32 %i.r, %i.am
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %wide.load, ptr %i.at, align 4, !tbaa !3
  store <4 x i32> %wide.load171, ptr %i.au, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = add i32 %i.al, 8
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %i.ax = add i32 %i.al, 4
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.az = add i32 %i.s, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = add i32 %i.r, %i.ay
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.be
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !171

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa177.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa176.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %..preheader31_crit_edge.us.i, label %scalar.ph

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !58

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bi = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bj = add i32 %i.s, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = add i32 %i.r, %i.bi
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !3
  %i.bq = trunc i64 %indvars.iv.i to i32
  %i.br = add i32 %i.bq, 1                        ; 2 uses
  %i.bs = add i32 %i.s, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = add i32 %i.r, %i.br
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !3
  %i.bz = trunc i64 %indvars.iv.i to i32
  %i.ca = add i32 %i.bz, 2                        ; 2 uses
  %i.cb = add i32 %i.s, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = add i32 %i.r, %i.ca
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ci = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.cj = add i32 %i.s, %i.ci
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add i32 %i.r, %i.ci
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.co
  store i32 %i.cm, ptr %i.cp, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !172

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa177.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa = phi i32 [ %i.ax, %middle.block ], [ %.lcssa176.unr, %scalar.ph.prol.loopexit ], [ %i.ci, %scalar.ph ]
  %i.cq = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.cq, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.cr = or disjoint i32 %i.r, 1
  %i.cs = add nuw i32 %i.cr, %.lcssa
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.cu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.k, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count67.i, 1
  %unroll_iter185 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter186 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %niter186.next.1, %.lr.ph.i ]
  %i.cv = trunc nuw i64 %indvars.iv64.i to i32
  %i.cw = shl i64 %indvars.iv64.i, 3
  %i.cx = and i64 %i.cw, 4294967280
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cx
  %i.cz = mul i32 %4, %i.cv
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cy, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.db, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.dc = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.dd = shl i64 %indvars.iv.next65.i, 3
  %i.de = and i64 %i.dd, 4294967288
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = mul i32 %4, %i.dc
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.df, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.di, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 3 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.dj = shl i64 %indvars.iv59.i, 5
  %i.dk = and i64 %i.dj, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.dl = and i64 %indvars.iv.next60.i, 17179869056
  %i.dm = getelementptr nuw i8, ptr %1, i64 %i.dl
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.dm, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dn = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.do = getelementptr nuw i8, ptr %1, i64 %i.dn
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.do, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dp = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.dq = getelementptr nuw i8, ptr %1, i64 %i.dp
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.dq, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, label %.preheader32.i, !llvm.loop !58

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa
  %lcmp.mod184 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.dr = trunc nuw i64 %indvars.iv.next65.i.1 to i32
  %i.ds = shl i64 %indvars.iv.next65.i.1, 3
  %i.dt = and i64 %i.ds, 4294967288
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dt
  %i.dv = mul i32 %4, %i.dr
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.du, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dx, i64 32, i1 false)
  br label %opj_dwt_fetch_cols_vertical_pass.exit

opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa: ; preds = %.preheader32.i
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil.preheader

.preheader32.i.epil.preheader:                    ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, %.preheader32.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.preheader32.preheader.i ], [ %indvars.iv.next60.i.3, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa ]
  %lcmp.mod180 = icmp ne i64 %xtraiter178, 0
  tail call void @llvm.assume(i1 %lcmp.mod180)
  br label %.preheader32.i.epil

.preheader32.i.epil:                              ; preds = %.preheader32.i.epil, %.preheader32.i.epil.preheader
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv59.i.epil.init, %.preheader32.i.epil.preheader ], [ %indvars.iv.next60.i.epil, %.preheader32.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader32.i.epil.preheader ], [ %epil.iter.next, %.preheader32.i.epil ]
  %i.dy = shl i64 %indvars.iv59.i.epil, 5
  %i.dz = and i64 %i.dy, 17179869152
  %scevgep55.i.epil = getelementptr nuw i8, ptr %1, i64 %i.dz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.epil, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter178
  br i1 %epil.iter.cmp.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil, !llvm.loop !173

opj_dwt_fetch_cols_vertical_pass.exit:            ; preds = %._crit_edge.us.i, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, %.preheader32.i.epil, %.lr.ph.i.epil.preheader, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, %.preheader33.i, %.preheader.i
  %not..not145 = xor i1 %.not, true
  %..neg = sext i1 %not..not145 to i32
  %.68.neg = sext i1 %.not to i32
  %i.ea = select i1 %.not, i64 0, i64 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea ; 17 uses
  %i.ec = select i1 %.not, i64 8, i64 0
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ec ; 17 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 6 uses
  %i.ef = add nsw i32 %i.e, %.68.neg
  %i.eg = tail call noundef i32 @llvm.smin.i32(i32 %i.f, i32 %i.ef) ; 2 uses
  %i.eh = tail call noundef i32 @llvm.umin.i32(i32 %i.f, i32 %i.eg) ; 5 uses
  %.not.i = icmp eq i32 %i.eh, 0                  ; 2 uses
  br i1 %.not.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %opj_dwt_fetch_cols_vertical_pass.exit
  %i.ei = load <4 x float>, ptr %i.ed, align 16, !tbaa !62
  %i.ej = load <4 x float>, ptr %i.eb, align 16, !tbaa !62
  %i.ek = load <4 x float>, ptr %i.ee, align 16, !tbaa !62
  %i.el = fadd <4 x float> %i.ej, %i.ek
  %i.em = fmul <4 x float> %i.el, splat (float f0x3FCB0673)
  %i.en = fsub <4 x float> %i.ei, %i.em
  store <4 x float> %i.en, ptr %i.ed, align 16, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !tbaa !62
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.er = load <4 x float>, ptr %i.eq, align 16, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.et = load <4 x float>, ptr %i.es, align 16, !tbaa !62
  %i.eu = fadd <4 x float> %i.er, %i.et
  %i.ev = fmul <4 x float> %i.eu, splat (float f0x3FCB0673)
  %i.ew = fsub <4 x float> %i.ep, %i.ev
  store <4 x float> %i.ew, ptr %i.eo, align 16, !tbaa !62
  %.04244.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 96 ; 2 uses
  %.not48.i = icmp eq i32 %i.eh, 1
  br i1 %.not48.i, label %.loopexit.i, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.c, %.lr.ph.i69
  %.04247.i = phi ptr [ %.042.i, %.lr.ph.i69 ], [ %.04244.i, %bb.c ] ; 3 uses
  %.046.i = phi i32 [ %i.fn, %.lr.ph.i69 ], [ 1, %bb.c ]
  %.pn45.i = phi ptr [ %.04247.i, %.lr.ph.i69 ], [ %i.ee, %bb.c ] ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 32 ; 2 uses
  %i.ey = load <4 x float>, ptr %i.ex, align 16, !tbaa !62
  %i.ez = load <4 x float>, ptr %.pn45.i, align 16, !tbaa !62
  %i.fa = load <4 x float>, ptr %.04247.i, align 16, !tbaa !62
  %i.fb = fadd <4 x float> %i.ez, %i.fa
  %i.fc = fmul <4 x float> %i.fb, splat (float f0x3FCB0673)
  %i.fd = fsub <4 x float> %i.ey, %i.fc
  store <4 x float> %i.fd, ptr %i.ex, align 16, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 48 ; 2 uses
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 16
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !62
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 80
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !tbaa !62
  %i.fk = fadd <4 x float> %i.fh, %i.fj
  %i.fl = fmul <4 x float> %i.fk, splat (float f0x3FCB0673)
  %i.fm = fsub <4 x float> %i.ff, %i.fl
  store <4 x float> %i.fm, ptr %i.fe, align 16, !tbaa !62
  %i.fn = add nuw i32 %.046.i, 1                  ; 2 uses
  %.042.i = getelementptr inbounds nuw i8, ptr %.04247.i, i64 64 ; 2 uses
  %exitcond.not.i70 = icmp eq i32 %i.fn, %i.eh
  br i1 %exitcond.not.i70, label %.loopexit.i, label %.lr.ph.i69, !llvm.loop !174

.loopexit.i:                                      ; preds = %.lr.ph.i69, %bb.c, %opj_dwt_fetch_cols_vertical_pass.exit
  %.1.i = phi ptr [ %i.ee, %opj_dwt_fetch_cols_vertical_pass.exit ], [ %.04244.i, %bb.c ], [ %.042.i, %.lr.ph.i69 ] ; 4 uses
  %i.fo = icmp ult i32 %i.eg, %i.f                ; 2 uses
  br i1 %i.fo, label %bb.d, label %opj_v8dwt_encode_step2.exit

bb.d:                                             ; preds = %.loopexit.i
  %i.fp = getelementptr inbounds i8, ptr %.1.i, i64 -32 ; 2 uses
  %i.fq = load <4 x float>, ptr %i.fp, align 16, !tbaa !62
  %i.fr = getelementptr inbounds i8, ptr %.1.i, i64 -64
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !tbaa !62
  %i.ft = fmul <4 x float> %i.fs, splat (float f0x404B0673)
  %i.fu = fsub <4 x float> %i.fq, %i.ft
  store <4 x float> %i.fu, ptr %i.fp, align 16, !tbaa !62
  %i.fv = getelementptr inbounds i8, ptr %.1.i, i64 -16 ; 2 uses
  %i.fw = load <4 x float>, ptr %i.fv, align 16, !tbaa !62
  %i.fx = getelementptr inbounds i8, ptr %.1.i, i64 -48
  %i.fy = load <4 x float>, ptr %i.fx, align 16, !tbaa !62
  %i.fz = fmul <4 x float> %i.fy, splat (float f0x404B0673)
  %i.ga = fsub <4 x float> %i.fw, %i.fz
  store <4 x float> %i.ga, ptr %i.fv, align 16, !tbaa !62
  br label %opj_v8dwt_encode_step2.exit

opj_v8dwt_encode_step2.exit:                      ; preds = %.loopexit.i, %bb.d
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 6 uses
  %i.gc = add i32 %i.f, %..neg
  %i.gd = tail call noundef i32 @llvm.smin.i32(i32 %i.e, i32 %i.gc) ; 2 uses
  %i.ge = tail call noundef i32 @llvm.umin.i32(i32 %i.e, i32 %i.gd) ; 5 uses
  %.not.i71 = icmp eq i32 %i.ge, 0                ; 2 uses
  br i1 %.not.i71, label %.loopexit.i80, label %bb.e

bb.e:                                             ; preds = %opj_v8dwt_encode_step2.exit
  %i.gf = load <4 x float>, ptr %i.eb, align 16, !tbaa !62
  %i.gg = load <4 x float>, ptr %i.ed, align 16, !tbaa !62
  %i.gh = load <4 x float>, ptr %i.gb, align 16, !tbaa !62
  %i.gi = fadd <4 x float> %i.gg, %i.gh
  %i.gj = fmul <4 x float> %i.gi, splat (float f0x3D5901AE)
  %i.gk = fsub <4 x float> %i.gf, %i.gj
  store <4 x float> %i.gk, ptr %i.eb, align 16, !tbaa !62
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.gm = load <4 x float>, ptr %i.gl, align 16, !tbaa !62
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.go = load <4 x float>, ptr %i.gn, align 16, !tbaa !62
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.gq = load <4 x float>, ptr %i.gp, align 16, !tbaa !62
  %i.gr = fadd <4 x float> %i.go, %i.gq
  %i.gs = fmul <4 x float> %i.gr, splat (float f0x3D5901AE)
  %i.gt = fsub <4 x float> %i.gm, %i.gs
  store <4 x float> %i.gt, ptr %i.gl, align 16, !tbaa !62
  %.04244.i72 = getelementptr inbounds nuw i8, ptr %i.eb, i64 96 ; 2 uses
  %.not48.i73 = icmp eq i32 %i.ge, 1
  br i1 %.not48.i73, label %.loopexit.i80, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.e, %.lr.ph.i74
  %.04247.i75 = phi ptr [ %.042.i78, %.lr.ph.i74 ], [ %.04244.i72, %bb.e ] ; 3 uses
  %.046.i76 = phi i32 [ %i.hk, %.lr.ph.i74 ], [ 1, %bb.e ]
  %.pn45.i77 = phi ptr [ %.04247.i75, %.lr.ph.i74 ], [ %i.gb, %bb.e ] ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 32 ; 2 uses
  %i.gv = load <4 x float>, ptr %i.gu, align 16, !tbaa !62
  %i.gw = load <4 x float>, ptr %.pn45.i77, align 16, !tbaa !62
  %i.gx = load <4 x float>, ptr %.04247.i75, align 16, !tbaa !62
  %i.gy = fadd <4 x float> %i.gw, %i.gx
  %i.gz = fmul <4 x float> %i.gy, splat (float f0x3D5901AE)
  %i.ha = fsub <4 x float> %i.gv, %i.gz
  store <4 x float> %i.ha, ptr %i.gu, align 16, !tbaa !62
  %i.hb = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 48 ; 2 uses
  %i.hc = load <4 x float>, ptr %i.hb, align 16, !tbaa !62
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 16
  %i.he = load <4 x float>, ptr %i.hd, align 16, !tbaa !62
  %i.hf = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 80
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !tbaa !62
  %i.hh = fadd <4 x float> %i.he, %i.hg
  %i.hi = fmul <4 x float> %i.hh, splat (float f0x3D5901AE)
  %i.hj = fsub <4 x float> %i.hc, %i.hi
  store <4 x float> %i.hj, ptr %i.hb, align 16, !tbaa !62
  %i.hk = add nuw i32 %.046.i76, 1                ; 2 uses
  %.042.i78 = getelementptr inbounds nuw i8, ptr %.04247.i75, i64 64 ; 2 uses
  %exitcond.not.i79 = icmp eq i32 %i.hk, %i.ge
  br i1 %exitcond.not.i79, label %.loopexit.i80, label %.lr.ph.i74, !llvm.loop !174

.loopexit.i80:                                    ; preds = %.lr.ph.i74, %bb.e, %opj_v8dwt_encode_step2.exit
  %.1.i81 = phi ptr [ %i.gb, %opj_v8dwt_encode_step2.exit ], [ %.04244.i72, %bb.e ], [ %.042.i78, %.lr.ph.i74 ] ; 4 uses
  %i.hl = icmp ult i32 %i.gd, %i.e                ; 2 uses
  br i1 %i.hl, label %bb.f, label %opj_v8dwt_encode_step2.exit82

bb.f:                                             ; preds = %.loopexit.i80
  %i.hm = getelementptr inbounds i8, ptr %.1.i81, i64 -32 ; 2 uses
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !tbaa !62
  %i.ho = getelementptr inbounds i8, ptr %.1.i81, i64 -64
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !tbaa !62
  %i.hq = fmul <4 x float> %i.hp, splat (float f0x3DD901AE)
  %i.hr = fsub <4 x float> %i.hn, %i.hq
  store <4 x float> %i.hr, ptr %i.hm, align 16, !tbaa !62
  %i.hs = getelementptr inbounds i8, ptr %.1.i81, i64 -16 ; 2 uses
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !tbaa !62
  %i.hu = getelementptr inbounds i8, ptr %.1.i81, i64 -48
  %i.hv = load <4 x float>, ptr %i.hu, align 16, !tbaa !62
  %i.hw = fmul <4 x float> %i.hv, splat (float f0x3DD901AE)
  %i.hx = fsub <4 x float> %i.ht, %i.hw
  store <4 x float> %i.hx, ptr %i.hs, align 16, !tbaa !62
  br label %opj_v8dwt_encode_step2.exit82

opj_v8dwt_encode_step2.exit82:                    ; preds = %.loopexit.i80, %bb.f
  br i1 %.not.i, label %.loopexit.i92, label %bb.g

bb.g:                                             ; preds = %opj_v8dwt_encode_step2.exit82
  %i.hy = load <4 x float>, ptr %i.ed, align 16, !tbaa !62
  %i.hz = load <4 x float>, ptr %i.eb, align 16, !tbaa !62
  %i.ia = load <4 x float>, ptr %i.ee, align 16, !tbaa !62
  %i.ib = fadd <4 x float> %i.hz, %i.ia
  %i.ic = fmul <4 x float> %i.ib, splat (float f0x3F620676)
  %i.id = fadd <4 x float> %i.hy, %i.ic
  store <4 x float> %i.id, ptr %i.ed, align 16, !tbaa !62
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.if = load <4 x float>, ptr %i.ie, align 16, !tbaa !62
  %i.ig = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ij = load <4 x float>, ptr %i.ii, align 16, !tbaa !62
  %i.ik = fadd <4 x float> %i.ih, %i.ij
  %i.il = fmul <4 x float> %i.ik, splat (float f0x3F620676)
  %i.im = fadd <4 x float> %i.if, %i.il
  store <4 x float> %i.im, ptr %i.ie, align 16, !tbaa !62
  %.04244.i84 = getelementptr inbounds nuw i8, ptr %i.ed, i64 96 ; 2 uses
  %.not48.i85 = icmp eq i32 %i.eh, 1
  br i1 %.not48.i85, label %.loopexit.i92, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.g, %.lr.ph.i86
  %.04247.i87 = phi ptr [ %.042.i90, %.lr.ph.i86 ], [ %.04244.i84, %bb.g ] ; 3 uses
end_hunk_1
begin_hunk_2_@opj_dwt_decode_real:bb.a
  %i.jz = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !228 ; 15 uses
  %.not267.i = icmp eq ptr %i.jz, null
  br i1 %.not267.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  br label %.critedge.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.ka = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !228 ; 2 uses
  store ptr %i.ka, ptr %i.jz, align 8, !tbaa !278, !noalias !228
  %.not268.i = icmp eq ptr %i.ka, null
  br i1 %.not268.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  tail call void @opj_free(ptr noundef nonnull %i.jz) #15, !noalias !228
  br label %.critedge.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i32 %i.di, ptr %i.kb, align 8, !tbaa !281, !noalias !228
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 %.0225345.i, ptr %i.kc, align 4, !tbaa !282, !noalias !228
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 %i.dj, ptr %i.kd, align 8, !tbaa !283, !noalias !228
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i32 0, ptr %i.ke, align 4, !tbaa !284, !noalias !228
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store i32 %.0225345.i, ptr %i.kf, align 8, !tbaa !285, !noalias !228
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 28
  store i32 0, ptr %i.kg, align 4, !tbaa !286, !noalias !228
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  store i32 %i.di, ptr %i.kh, align 8, !tbaa !287, !noalias !228
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  store i32 %i.dc, ptr %i.ki, align 8, !tbaa !288, !noalias !228
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 44
  store i32 %i.x, ptr %i.kj, align 4, !tbaa !289, !noalias !228
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  store ptr %.1236318.i, ptr %i.kk, align 8, !tbaa !290, !noalias !228
  %i.kl = add nuw nsw i32 %.1230319.i, 1          ; 2 uses
  %i.km = icmp eq i32 %i.kl, %spec.select.i       ; 2 uses
  %i.kn = mul i32 %.1230319.i, %i.jx
  %i.ko = sub i32 %i.jy, %i.kn
  %i.kp = select i1 %i.km, i32 %i.ko, i32 %i.jx   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  store i32 %i.kp, ptr %i.kq, align 8, !tbaa !291, !noalias !228
  %i.kr = mul i32 %i.kp, %i.x
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.1236318.i, i64 %i.ks ; 2 uses
  %i.ku = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_h_func, ptr noundef nonnull %i.jz) #15, !noalias !228 ; 0 uses
  br i1 %i.km, label %bb.l, label %bb.g, !llvm.loop !292

bb.l:                                             ; preds = %bb.k
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  br label %.loopexit311.i

.loopexit311.i:                                   ; preds = %._crit_edge.i, %bb.l, %.preheader310.i
  %.4239.i = phi ptr [ %i.kt, %bb.l ], [ %i.bk, %.preheader310.i ], [ %i.jr, %._crit_edge.i ] ; 2 uses
  %.3232.i = phi i32 [ %i.jy, %bb.l ], [ 0, %.preheader310.i ], [ %i.js, %._crit_edge.i ] ; 2 uses
  %i.kv = icmp ult i32 %.3232.i, %i.dh
  br i1 %i.kv, label %bb.m, label %.loopexit309.i

bb.m:                                             ; preds = %.loopexit311.i
  %i.kw = sub nuw i32 %i.dh, %.3232.i             ; 3 uses
  call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %5, ptr noundef %.4239.i, i32 noundef %i.x, i32 noundef %i.kw), !noalias !228
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %5), !noalias !228
  %.not353.i = icmp eq i32 %i.dc, 0
  br i1 %.not353.i, label %.loopexit309.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m
  %wide.trip.count381.i = zext i32 %i.dc to i64
  %wide.trip.count376.i = zext i32 %i.kw to i64   ; 2 uses
  %xtraiter211 = and i64 %wide.trip.count376.i, 3 ; 3 uses
  %i.kx = add i32 %i.kw, -1
  %i.ky = icmp ult i32 %i.kx, 3
  %unroll_iter214 = and i64 %wide.trip.count376.i, 4294967292
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  %lcmp.mod213 = icmp ne i64 %xtraiter211, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge329.i, %.preheader.preheader.i
  %indvars.iv378.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next379.i, %._crit_edge329.i ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv378.i ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.4239.i, i64 %indvars.iv378.i ; 5 uses
  br i1 %i.ky, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv372.i = phi i64 [ %indvars.iv.next373.i.3, %.preheader.i.new ], [ 0, %.preheader.i ] ; 6 uses
  %niter215 = phi i64 [ %niter215.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv372.i
  %i.lb = load float, ptr %i.la, align 4, !tbaa !62, !noalias !228
  %i.lc = mul nuw i64 %indvars.iv372.i, %i.bu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lc
  store float %i.lb, ptr %gep.i, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i = or disjoint i64 %indvars.iv372.i, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next373.i
  %i.le = load float, ptr %i.ld, align 4, !tbaa !62, !noalias !228
  %i.lf = mul nuw i64 %indvars.iv.next373.i, %i.bu
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lf
  store float %i.le, ptr %gep.i.1, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.1 = or disjoint i64 %indvars.iv372.i, 2 ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next373.i.1
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !62, !noalias !228
  %i.li = mul nuw i64 %indvars.iv.next373.i.1, %i.bu
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.li
  store float %i.lh, ptr %gep.i.2, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.2 = or disjoint i64 %indvars.iv372.i, 3 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next373.i.2
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !62, !noalias !228
  %i.ll = mul nuw i64 %indvars.iv.next373.i.2, %i.bu
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ll
  store float %i.lk, ptr %gep.i.3, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.3 = add nuw nsw i64 %indvars.iv372.i, 4 ; 2 uses
  %niter215.next.3 = add i64 %niter215, 4         ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %._crit_edge329.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !293

._crit_edge329.i.unr-lcssa:                       ; preds = %.preheader.i.new
  br i1 %lcmp.mod212.not, label %._crit_edge329.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge329.i.unr-lcssa, %.preheader.i
  %indvars.iv372.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next373.i.3, %._crit_edge329.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv372.i.epil = phi i64 [ %indvars.iv372.i.epil.init, %.epil.preheader ], [ %indvars.iv.next373.i.epil, %bb.n ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv372.i.epil
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !62, !noalias !228
  %i.lo = mul nuw i64 %indvars.iv372.i.epil, %i.bu
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lo
  store float %i.ln, ptr %gep.i.epil, align 4, !tbaa !188, !noalias !228
  %indvars.iv.next373.i.epil = add nuw nsw i64 %indvars.iv372.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter211
  br i1 %epil.iter.cmp.not, label %._crit_edge329.i, label %bb.n, !llvm.loop !294

._crit_edge329.i:                                 ; preds = %bb.n, %._crit_edge329.i.unr-lcssa
  %indvars.iv.next379.i = add nuw nsw i64 %indvars.iv378.i, 1 ; 2 uses
  %exitcond382.not.i = icmp eq i64 %indvars.iv.next379.i, %wide.trip.count381.i
  br i1 %exitcond382.not.i, label %.loopexit309.i, label %.preheader.i, !llvm.loop !295

.loopexit309.i:                                   ; preds = %._crit_edge329.i, %bb.m, %.loopexit311.i
  %i.lp = sub i32 %i.dh, %.0250343.i              ; 10 uses
  store i32 %i.lp, ptr %i.bx, align 8, !tbaa !237, !noalias !228
  %i.lq = load i32, ptr %i.df, align 4, !tbaa !31, !noalias !228
  %i.lr = srem i32 %i.lq, 2                       ; 4 uses
  store i32 %i.lr, ptr %i.by, align 8, !tbaa !238, !noalias !228
  store i32 0, ptr %i.bz, align 4, !tbaa !239, !noalias !228
  store i32 %.0250343.i, ptr %i.ca, align 8, !tbaa !240, !noalias !228
  store i32 0, ptr %i.cb, align 4, !tbaa !241, !noalias !228
  store i32 %i.lp, ptr %i.cc, align 8, !tbaa !242, !noalias !228
  %i.ls = icmp ult i32 %i.dc, 16
  %or.cond7.i = select i1 %i.bt, i1 true, i1 %i.ls
  br i1 %or.cond7.i, label %.preheader307.i, label %bb.p

.preheader307.i:                                  ; preds = %.loopexit309.i
  %i.lt = icmp ugt i32 %i.dc, 7
  br i1 %i.lt, label %.lr.ph338.i, label %.loopexit308.i

.lr.ph338.i:                                      ; preds = %.preheader307.i
  %i.lu = sext i32 %i.lr to i64                   ; 2 uses
  %i.lv = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.lu ; 3 uses
  %wide.trip.count.i.i = zext i32 %.0250343.i to i64 ; 3 uses
  %i.lw = mul nuw i64 %wide.trip.count.i.i, %i.bu
  %i.lx = sub nsw i64 0, %i.lu
  %i.ly = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.lx ; 3 uses
  %.not305.i = icmp eq i32 %i.dh, %.0250343.i
  %wide.trip.count35.i.i = zext i32 %i.lp to i64  ; 2 uses
  %wide.trip.count388.i = zext i32 %i.dh to i64   ; 2 uses
  %xtraiter216 = and i64 %wide.trip.count.i.i, 1
  %i.lz = icmp eq i32 %.0250343.i, 1              ; 0 uses
  %unroll_iter220 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod219 = trunc i32 %.0250343.i to i1
  %xtraiter222 = and i64 %wide.trip.count35.i.i, 1
  %i.ma = icmp eq i32 %i.lp, 1
  %unroll_iter226 = and i64 %wide.trip.count35.i.i, 4294967294
  %lcmp.mod224.not = icmp eq i64 %xtraiter222, 0
  %lcmp.mod225 = trunc i32 %i.lp to i1
  %xtraiter228 = and i64 %wide.trip.count388.i, 1
  %i.mb = icmp eq i32 %i.dh, 1                    ; 0 uses
  %unroll_iter232 = and i64 %wide.trip.count388.i, 4294967294
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  %lcmp.mod231 = trunc i32 %i.dh to i1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge335.i, %.lr.ph338.i
  %.4233337.i = phi i32 [ %i.dc, %.lr.ph338.i ], [ %i.nr, %._crit_edge335.i ]
  %.5240336.i = phi ptr [ %i.bk, %.lr.ph338.i ], [ %i.nq, %._crit_edge335.i ] ; 8 uses
  switch i32 %.0250343.i, label %.lr.ph.i280.i [
    i32 0, label %._crit_edge.i.i
    i32 1, label %.lr.ph.i280.i.epil.preheader
  ]

.lr.ph.i280.i:                                    ; preds = %bb.o, %.lr.ph.i280.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i280.i ], [ 0, %bb.o ] ; 4 uses
  %niter221 = phi i64 [ %niter221.next.1, %.lr.ph.i280.i ], [ 0, %bb.o ]
  %i.mc = shl nuw i64 %indvars.iv.i.i, 1
  %i.md = and i64 %i.mc, 4294967292
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.lv, i64 %i.md
  %i.mf = mul nuw i64 %indvars.iv.i.i, %i.bu
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.mf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.me, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mg, i64 32, i1 false), !noalias !296
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.mh = shl nuw i64 %indvars.iv.next.i.i, 1
  %i.mi = and i64 %i.mh, 4294967294
  %i.mj = getelementptr inbounds nuw [32 x i8], ptr %i.lv, i64 %i.mi
  %i.mk = mul nuw i64 %indvars.iv.next.i.i, %i.bu
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.mk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mj, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ml, i64 32, i1 false), !noalias !296
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter221.next.1 = add i64 %niter221, 2         ; 2 uses
  %niter221.ncmp.1 = icmp eq i64 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i280.i, !llvm.loop !299

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i280.i
  br i1 %lcmp.mod218.not, label %._crit_edge.i.i, label %.lr.ph.i280.i.epil.preheader

.lr.ph.i280.i.epil.preheader:                     ; preds = %bb.o, %._crit_edge.i.i.loopexit.unr-lcssa
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.mm = shl nuw i64 %indvars.iv.i.i.epil.init, 1
  %i.mn = and i64 %i.mm, 4294967294
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %i.lv, i64 %i.mn
  %i.mp = mul nuw i64 %indvars.iv.i.i.epil.init, %i.bu
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.mp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mo, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mq, i64 32, i1 false), !noalias !296
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i280.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.o
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.lw ; 3 uses
  br i1 %.not305.i, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.preheader

.lr.ph29.i.i.preheader:                           ; preds = %._crit_edge.i.i
  br i1 %i.ma, label %.lr.ph29.i.i.epil.preheader, label %.lr.ph29.i.i

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.preheader, %.lr.ph29.i.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ] ; 4 uses
  %niter227 = phi i64 [ %niter227.next.1, %.lr.ph29.i.i ], [ 0, %.lr.ph29.i.i.preheader ]
  %i.ms = shl nuw i64 %indvars.iv32.i.i, 1
  %i.mt = and i64 %i.ms, 4294967292
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %i.mt
  %i.mv = mul nuw i64 %indvars.iv32.i.i, %i.bu
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.mv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mu, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.mw, i64 32, i1 false), !noalias !296
  %indvars.iv.next33.i.i = or disjoint i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.mx = shl nuw i64 %indvars.iv.next33.i.i, 1
  %i.my = and i64 %i.mx, 4294967294
  %i.mz = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %i.my
  %i.na = mul nuw i64 %indvars.iv.next33.i.i, %i.bu
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.na
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mz, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.nb, i64 32, i1 false), !noalias !296
  %indvars.iv.next33.i.i.1 = add nuw nsw i64 %indvars.iv32.i.i, 2 ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, label %.lr.ph29.i.i, !llvm.loop !300

opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph29.i.i
  br i1 %lcmp.mod224.not, label %opj_v8dwt_interleave_v.exit.i, label %.lr.ph29.i.i.epil.preheader

.lr.ph29.i.i.epil.preheader:                      ; preds = %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %.lr.ph29.i.i.preheader
  %indvars.iv32.i.i.epil.init = phi i64 [ 0, %.lr.ph29.i.i.preheader ], [ %indvars.iv.next33.i.i.1, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.nc = shl nuw i64 %indvars.iv32.i.i.epil.init, 1
  %i.nd = and i64 %i.nc, 4294967294
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %i.nd
  %i.nf = mul nuw i64 %indvars.iv32.i.i.epil.init, %i.bu
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.nf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ne, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ng, i64 32, i1 false), !noalias !296
  br label %opj_v8dwt_interleave_v.exit.i

opj_v8dwt_interleave_v.exit.i:                    ; preds = %.lr.ph29.i.i.epil.preheader, %opj_v8dwt_interleave_v.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %6), !noalias !228
  switch i32 %i.dh, label %.lr.ph334.i [
    i32 0, label %._crit_edge335.i
    i32 1, label %.lr.ph334.i.epil.preheader
  ]

.lr.ph334.i:                                      ; preds = %opj_v8dwt_interleave_v.exit.i, %.lr.ph334.i
  %indvars.iv385.i = phi i64 [ %indvars.iv.next386.i.1, %.lr.ph334.i ], [ 0, %opj_v8dwt_interleave_v.exit.i ] ; 4 uses
  %niter233 = phi i64 [ %niter233.next.1, %.lr.ph334.i ], [ 0, %opj_v8dwt_interleave_v.exit.i ]
  %i.nh = mul nuw i64 %indvars.iv385.i, %i.bu
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.nh
  %i.nj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv385.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ni, ptr noundef nonnull align 4 dereferenceable(32) %i.nj, i64 32, i1 false), !noalias !228
  %indvars.iv.next386.i = or disjoint i64 %indvars.iv385.i, 1 ; 2 uses
  %i.nk = mul nuw i64 %indvars.iv.next386.i, %i.bu
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.nk
  %i.nm = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next386.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.nl, ptr noundef nonnull align 4 dereferenceable(32) %i.nm, i64 32, i1 false), !noalias !228
  %indvars.iv.next386.i.1 = add nuw nsw i64 %indvars.iv385.i, 2 ; 2 uses
  %niter233.next.1 = add i64 %niter233, 2         ; 2 uses
  %niter233.ncmp.1 = icmp eq i64 %niter233.next.1, %unroll_iter232
  br i1 %niter233.ncmp.1, label %._crit_edge335.i.loopexit.unr-lcssa, label %.lr.ph334.i, !llvm.loop !301

._crit_edge335.i.loopexit.unr-lcssa:              ; preds = %.lr.ph334.i
  br i1 %lcmp.mod230.not, label %._crit_edge335.i, label %.lr.ph334.i.epil.preheader

.lr.ph334.i.epil.preheader:                       ; preds = %opj_v8dwt_interleave_v.exit.i, %._crit_edge335.i.loopexit.unr-lcssa
  %indvars.iv385.i.epil.init = phi i64 [ 0, %opj_v8dwt_interleave_v.exit.i ], [ %indvars.iv.next386.i.1, %._crit_edge335.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.nn = mul nuw i64 %indvars.iv385.i.epil.init, %i.bu
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.5240336.i, i64 %i.nn
  %i.np = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv385.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.no, ptr noundef nonnull align 4 dereferenceable(32) %i.np, i64 32, i1 false), !noalias !228
  br label %._crit_edge335.i

._crit_edge335.i:                                 ; preds = %.lr.ph334.i.epil.preheader, %._crit_edge335.i.loopexit.unr-lcssa, %opj_v8dwt_interleave_v.exit.i
  %i.nq = getelementptr inbounds nuw i8, ptr %.5240336.i, i64 32 ; 2 uses
  %i.nr = add i32 %.4233337.i, -8                 ; 2 uses
  %i.ns = icmp ugt i32 %i.nr, 7
  br i1 %i.ns, label %bb.o, label %.loopexit308.i, !llvm.loop !302

bb.p:                                             ; preds = %.loopexit309.i
  %i.nt = lshr i32 %i.dc, 3
  %spec.select279.i = tail call i32 @llvm.umin.i32(i32 %i.nt, i32 %i.ce) ; 2 uses
  %i.nu = udiv i32 %i.dc, %spec.select279.i
  %i.nv = and i32 %i.nu, -8                       ; 2 uses
  %i.nw = and i32 %i.dc, -8
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.5234332.i = phi i32 [ 0, %bb.p ], [ %i.oj, %bb.u ] ; 2 uses
  %.6241331.i = phi ptr [ %i.bk, %bb.p ], [ %i.oq, %bb.u ] ; 2 uses
  %i.nx = tail call ptr @opj_malloc(i64 noundef 64) #15, !noalias !228 ; 15 uses
  %.not270.i = icmp eq ptr %i.nx, null
  br i1 %.not270.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  br label %.critedge.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.ny = tail call ptr @opj_aligned_malloc(i64 noundef %i.bh) #15, !noalias !228 ; 2 uses
  store ptr %i.ny, ptr %i.nx, align 8, !tbaa !278, !noalias !228
  %.not271.i = icmp eq ptr %i.ny, null
  br i1 %.not271.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  tail call void @opj_free(ptr noundef nonnull %i.nx) #15, !noalias !228
  br label %.critedge.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i32 %i.lp, ptr %i.nz, align 8, !tbaa !281, !noalias !228
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 %.0250343.i, ptr %i.oa, align 4, !tbaa !282, !noalias !228
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store i32 %i.lr, ptr %i.ob, align 8, !tbaa !283, !noalias !228
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 20
  store i32 0, ptr %i.oc, align 4, !tbaa !284, !noalias !228
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  store i32 %.0250343.i, ptr %i.od, align 8, !tbaa !285, !noalias !228
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 28
  store i32 0, ptr %i.oe, align 4, !tbaa !286, !noalias !228
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  store i32 %i.lp, ptr %i.of, align 8, !tbaa !287, !noalias !228
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  store i32 %i.dh, ptr %i.og, align 8, !tbaa !288, !noalias !228
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 44
  store i32 %i.x, ptr %i.oh, align 4, !tbaa !289, !noalias !228
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  store ptr %.6241331.i, ptr %i.oi, align 8, !tbaa !290, !noalias !228
  %i.oj = add nuw nsw i32 %.5234332.i, 1          ; 2 uses
  %i.ok = icmp eq i32 %i.oj, %spec.select279.i    ; 2 uses
  %i.ol = mul i32 %.5234332.i, %i.nv
  %i.om = sub i32 %i.nw, %i.ol
  %i.on = select i1 %i.ok, i32 %i.om, i32 %i.nv   ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nx, i64 56
  store i32 %i.on, ptr %i.oo, align 8, !tbaa !291, !noalias !228
  %i.op = zext i32 %i.on to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.6241331.i, i64 %i.op ; 2 uses
  %i.or = tail call i32 @opj_thread_pool_submit_job(ptr noundef %i.d, ptr noundef nonnull @opj_dwt97_decode_v_func, ptr noundef nonnull %i.nx) #15, !noalias !228 ; 0 uses
  br i1 %i.ok, label %bb.v, label %bb.q, !llvm.loop !303

bb.v:                                             ; preds = %bb.u
  tail call void @opj_thread_pool_wait_completion(ptr noundef %i.d, i32 noundef 0) #15, !noalias !228
  br label %.loopexit308.i

.loopexit308.i:                                   ; preds = %._crit_edge335.i, %bb.v, %.preheader307.i
  %.9244.i = phi ptr [ %i.oq, %bb.v ], [ %i.bk, %.preheader307.i ], [ %i.nq, %._crit_edge335.i ] ; 7 uses
  %i.os = and i32 %i.dc, 7                        ; 4 uses
  %.not273.i = icmp eq i32 %i.os, 0
  br i1 %.not273.i, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %.loopexit308.i
  %i.ot = sext i32 %i.lr to i64                   ; 2 uses
  %i.ou = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.ot ; 3 uses
  %.not302.i = icmp eq i32 %.0250343.i, 0
  br i1 %.not302.i, label %._crit_edge.i281.i, label %.lr.ph.i287.i

.lr.ph.i287.i:                                    ; preds = %bb.w
  %i.ov = shl nuw nsw i32 %i.os, 2
  %i.ow = zext nneg i32 %i.ov to i64              ; 3 uses
  %wide.trip.count.i288.i = zext i32 %.0250343.i to i64 ; 3 uses
  %xtraiter235 = and i64 %wide.trip.count.i288.i, 1
  %i.ox = icmp eq i32 %.0250343.i, 1
  br i1 %i.ox, label %.epil.preheader234, label %.lr.ph.i287.i.new

.lr.ph.i287.i.new:                                ; preds = %.lr.ph.i287.i
  %unroll_iter239 = and i64 %wide.trip.count.i288.i, 4294967294
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i287.i.new
  %indvars.iv.i289.i = phi i64 [ 0, %.lr.ph.i287.i.new ], [ %indvars.iv.next.i290.i.1, %bb.x ] ; 4 uses
  %niter240 = phi i64 [ 0, %.lr.ph.i287.i.new ], [ %niter240.next.1, %bb.x ]
  %i.oy = shl nuw i64 %indvars.iv.i289.i, 1
  %i.oz = and i64 %i.oy, 4294967292
  %i.pa = getelementptr inbounds nuw [32 x i8], ptr %i.ou, i64 %i.oz
  %i.pb = mul nuw i64 %indvars.iv.i289.i, %i.bu
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.9244.i, i64 %i.pb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.pa, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.pc, i64 %i.ow, i1 false), !noalias !304
  %indvars.iv.next.i290.i = or disjoint i64 %indvars.iv.i289.i, 1 ; 2 uses
  %i.pd = shl nuw i64 %indvars.iv.next.i290.i, 1
  %i.pe = and i64 %i.pd, 4294967294
  %i.pf = getelementptr inbounds nuw [32 x i8], ptr %i.ou, i64 %i.pe
  %i.pg = mul nuw i64 %indvars.iv.next.i290.i, %i.bu
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.9244.i, i64 %i.pg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.pf, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.ph, i64 %i.ow, i1 false), !noalias !304
  %indvars.iv.next.i290.i.1 = add nuw nsw i64 %indvars.iv.i289.i, 2 ; 2 uses
  %niter240.next.1 = add i64 %niter240, 2         ; 2 uses
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %._crit_edge.i281.loopexit.i.unr-lcssa, label %bb.x, !llvm.loop !299

._crit_edge.i281.loopexit.i.unr-lcssa:            ; preds = %bb.x
  %lcmp.mod237.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod237.not, label %._crit_edge.i281.loopexit.i, label %.epil.preheader234

.epil.preheader234:                               ; preds = %._crit_edge.i281.loopexit.i.unr-lcssa, %.lr.ph.i287.i
  %indvars.iv.i289.i.epil.init = phi i64 [ 0, %.lr.ph.i287.i ], [ %indvars.iv.next.i290.i.1, %._crit_edge.i281.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod238 = trunc i32 %.0250343.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.pi = shl nuw i64 %indvars.iv.i289.i.epil.init, 1
  %i.pj = and i64 %i.pi, 4294967294
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %i.ou, i64 %i.pj
  %i.pl = mul nuw i64 %indvars.iv.i289.i.epil.init, %i.bu
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.9244.i, i64 %i.pl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.pk, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.pm, i64 %i.ow, i1 false), !noalias !304
  br label %._crit_edge.i281.loopexit.i

._crit_edge.i281.loopexit.i:                      ; preds = %._crit_edge.i281.loopexit.i.unr-lcssa, %.epil.preheader234
  %i.pn = mul nuw i64 %wide.trip.count.i288.i, %i.bu
  br label %._crit_edge.i281.i

._crit_edge.i281.i:                               ; preds = %._crit_edge.i281.loopexit.i, %bb.w
  %.pre-phi.i = phi i64 [ %i.pn, %._crit_edge.i281.loopexit.i ], [ 0, %bb.w ]
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.9244.i, i64 %.pre-phi.i ; 3 uses
  %i.pp = sub nsw i64 0, %i.ot
  %i.pq = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.pp ; 3 uses
  %.not303.i = icmp eq i32 %i.dh, %.0250343.i
  br i1 %.not303.i, label %opj_v8dwt_interleave_v.exit292.i, label %.lr.ph29.i282.i

.lr.ph29.i282.i:                                  ; preds = %._crit_edge.i281.i
  %i.pr = shl nuw nsw i32 %i.os, 2
  %i.ps = zext nneg i32 %i.pr to i64              ; 3 uses
  %wide.trip.count35.i283.i = zext i32 %i.lp to i64 ; 2 uses
  %xtraiter242 = and i64 %wide.trip.count35.i283.i, 1
  %i.pt = icmp eq i32 %i.lp, 1
  br i1 %i.pt, label %.epil.preheader241, label %.lr.ph29.i282.i.new

.lr.ph29.i282.i.new:                              ; preds = %.lr.ph29.i282.i
  %unroll_iter246 = and i64 %wide.trip.count35.i283.i, 4294967294
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph29.i282.i.new
  %indvars.iv32.i284.i = phi i64 [ 0, %.lr.ph29.i282.i.new ], [ %indvars.iv.next33.i285.i.1, %bb.y ] ; 4 uses
  %niter247 = phi i64 [ 0, %.lr.ph29.i282.i.new ], [ %niter247.next.1, %bb.y ]
  %i.pu = shl nuw i64 %indvars.iv32.i284.i, 1
  %i.pv = and i64 %i.pu, 4294967292
  %i.pw = getelementptr inbounds nuw [32 x i8], ptr %i.pq, i64 %i.pv
  %i.px = mul nuw i64 %indvars.iv32.i284.i, %i.bu
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.px
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.pw, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.py, i64 %i.ps, i1 false), !noalias !304
  %indvars.iv.next33.i285.i = or disjoint i64 %indvars.iv32.i284.i, 1 ; 2 uses
  %i.pz = shl nuw i64 %indvars.iv.next33.i285.i, 1
  %i.qa = and i64 %i.pz, 4294967294
  %i.qb = getelementptr inbounds nuw [32 x i8], ptr %i.pq, i64 %i.qa
  %i.qc = mul nuw i64 %indvars.iv.next33.i285.i, %i.bu
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.qc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.qb, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.qd, i64 %i.ps, i1 false), !noalias !304
  %indvars.iv.next33.i285.i.1 = add nuw nsw i64 %indvars.iv32.i284.i, 2 ; 2 uses
  %niter247.next.1 = add i64 %niter247, 2         ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !300

opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod244.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %opj_v8dwt_interleave_v.exit292.i, label %.epil.preheader241

.epil.preheader241:                               ; preds = %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa, %.lr.ph29.i282.i
  %indvars.iv32.i284.i.epil.init = phi i64 [ 0, %.lr.ph29.i282.i ], [ %indvars.iv.next33.i285.i.1, %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod245 = trunc i32 %i.lp to i1
  tail call void @llvm.assume(i1 %lcmp.mod245)
  %i.qe = shl nuw i64 %indvars.iv32.i284.i.epil.init, 1
  %i.qf = and i64 %i.qe, 4294967294
  %i.qg = getelementptr inbounds nuw [32 x i8], ptr %i.pq, i64 %i.qf
  %i.qh = mul nuw i64 %indvars.iv32.i284.i.epil.init, %i.bu
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.qh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.qg, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.qi, i64 %i.ps, i1 false), !noalias !304
  br label %opj_v8dwt_interleave_v.exit292.i

opj_v8dwt_interleave_v.exit292.i:                 ; preds = %.epil.preheader241, %opj_v8dwt_interleave_v.exit292.i.loopexit.unr-lcssa, %._crit_edge.i281.i
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %6), !noalias !228
  %.not355.i = icmp eq i32 %i.dh, 0
  br i1 %.not355.i, label %.loopexit.i, label %.lr.ph341.i

.lr.ph341.i:                                      ; preds = %opj_v8dwt_interleave_v.exit292.i
  %i.qj = shl nuw nsw i32 %i.os, 2
  %i.qk = zext nneg i32 %i.qj to i64              ; 3 uses
  %wide.trip.count393.i = zext i32 %i.dh to i64   ; 2 uses
  %xtraiter249 = and i64 %wide.trip.count393.i, 1
  %i.ql = icmp eq i32 %i.dh, 1
  br i1 %i.ql, label %.epil.preheader248, label %.lr.ph341.i.new

.lr.ph341.i.new:                                  ; preds = %.lr.ph341.i
  %unroll_iter253 = and i64 %wide.trip.count393.i, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph341.i.new
  %indvars.iv390.i = phi i64 [ 0, %.lr.ph341.i.new ], [ %indvars.iv.next391.i.1, %bb.z ] ; 4 uses
  %niter254 = phi i64 [ 0, %.lr.ph341.i.new ], [ %niter254.next.1, %bb.z ]
  %i.qm = mul nuw i64 %indvars.iv390.i, %i.bu
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.9244.i, i64 %i.qm
  %i.qo = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv390.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qn, ptr nonnull align 4 %i.qo, i64 %i.qk, i1 false), !noalias !228
  %indvars.iv.next391.i = or disjoint i64 %indvars.iv390.i, 1 ; 2 uses
  %i.qp = mul nuw i64 %indvars.iv.next391.i, %i.bu
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.9244.i, i64 %i.qp
  %i.qr = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.next391.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qq, ptr nonnull align 4 %i.qr, i64 %i.qk, i1 false), !noalias !228
  %indvars.iv.next391.i.1 = add nuw nsw i64 %indvars.iv390.i, 2 ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !307

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.z
  %lcmp.mod251.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod251.not, label %.loopexit.i, label %.epil.preheader248

.epil.preheader248:                               ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph341.i
  %indvars.iv390.i.epil.init = phi i64 [ 0, %.lr.ph341.i ], [ %indvars.iv.next391.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod252 = trunc i32 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %i.qs = mul nuw i64 %indvars.iv390.i.epil.init, %i.bu
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.9244.i, i64 %i.qs
  %i.qu = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv390.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qt, ptr nonnull align 4 %i.qu, i64 %i.qk, i1 false), !noalias !228
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.epil.preheader248, %.loopexit.i.loopexit.unr-lcssa, %opj_v8dwt_interleave_v.exit292.i, %.loopexit308.i
  %i.qv = add i32 %i.cx, -1                       ; 2 uses
  %.not266.i = icmp eq i32 %i.qv, 0
  br i1 %.not266.i, label %.critedge.sink.split.i, label %bb.d, !llvm.loop !308

.critedge.sink.split.i:                           ; preds = %.loopexit.i, %bb.t, %bb.r, %bb.j, %bb.h
  %.10.ph.i = phi i32 [ 0, %bb.t ], [ 0, %bb.r ], [ 0, %bb.h ], [ 0, %bb.j ], [ 1, %.loopexit.i ]
  tail call void @opj_aligned_free(ptr noundef nonnull %i.bi) #15, !noalias !228
  br label %opj_dwt_decode_tile_97.exit

opj_dwt_decode_tile_97.exit:                      ; preds = %bb.b, %opj_dwt_max_resolution.exit.i, %.critedge.sink.split.i
  %.10.i = phi i32 [ 0, %opj_dwt_max_resolution.exit.i ], [ 1, %bb.b ], [ %.10.ph.i, %.critedge.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !228
  br label %bb.ay

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !309
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !23, !alias.scope !309 ; 8 uses
  %i.qy = add i32 %2, -1                          ; 4 uses
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [192 x i8], ptr %i.qx, i64 %i.qz ; 14 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !24, !noalias !309
  %i.rd = load i32, ptr %i.qx, align 8, !tbaa !29, !noalias !309
  %i.re = sub nsw i32 %i.rc, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !30, !noalias !309
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !31, !noalias !309
  %i.rj = sub nsw i32 %i.rg, %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !125, !alias.scope !309 ; 6 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !126, !alias.scope !309 ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !127, !alias.scope !309 ; 6 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !128, !alias.scope !309 ; 6 uses
  %i.rs = load i32, ptr %i.ra, align 8, !tbaa !29, !noalias !309
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !24, !noalias !309
  %i.rv = icmp eq i32 %i.rs, %i.ru
  br i1 %i.rv, label %opj_dwt_decode_partial_97.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ra, i64 4 ; 3 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !31, !noalias !309
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !30, !noalias !309
  %i.sa = icmp eq i32 %i.rx, %i.rz
  br i1 %i.sa, label %opj_dwt_decode_partial_97.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sb = tail call fastcc ptr @opj_dwt_init_sparse_array(ptr noundef nonnull readonly %1, i32 noundef %2) ; 17 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %opj_dwt_decode_partial_97.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sd = icmp eq i32 %2, 1
  br i1 %i.sd, label %bb.ae, label %.lr.ph.i.i6.preheader

.lr.ph.i.i6.preheader:                            ; preds = %bb.ad
  %xtraiter255 = and i32 %i.qy, 1
  %i.se = icmp eq i32 %2, 2
  br i1 %i.se, label %.lr.ph.i.i6.epil.preheader, label %.lr.ph.i.i6.preheader.new

.lr.ph.i.i6.preheader.new:                        ; preds = %.lr.ph.i.i6.preheader
  %unroll_iter260 = and i32 %i.qy, -2
  br label %.lr.ph.i.i6

bb.ae:                                            ; preds = %bb.ad
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ra, i64 176
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !129, !noalias !309 ; 2 uses
  %i.sh = load i32, ptr %i.ra, align 8, !tbaa !29, !noalias !309 ; 2 uses
  %i.si = sub i32 %i.sg, %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ra, i64 180
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !130, !noalias !309
  %i.sl = load i32, ptr %i.rw, align 4, !tbaa !31, !noalias !309 ; 2 uses
  %i.sm = sub i32 %i.sk, %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ra, i64 184
end_hunk_2
begin_hunk_3_@opj_idwt53_h:bb.a
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i32> %i.ek, i64 1 ; 2 uses
  %vector.recur.extract61 = extractelement <2 x i32> %wide.load, i64 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.do
  br i1 %cmp.n, label %._crit_edge.i29, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i32, %middle.block
  %indvars.iv66.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i32 ], [ %i.dz, %middle.block ]
  %indvars.iv.i35.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i32 ], [ %i.eb, %middle.block ]
  %.059.i.ph = phi i32 [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.preheader.i32 ], [ %vector.recur.extract, %middle.block ]
  %.05357.i.ph = phi i32 [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.preheader.i32 ], [ %vector.recur.extract61, %middle.block ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader, %.lr.ph.i34
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %.lr.ph.i34 ], [ %indvars.iv66.i.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %.lr.ph.i34 ], [ %indvars.iv.i35.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %.059.i = phi i32 [ %i.ez, %.lr.ph.i34 ], [ %.059.i.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %.05357.i = phi i32 [ %i.et, %.lr.ph.i34 ], [ %.05357.i.ph, %.lr.ph.i34.preheader ] ; 2 uses
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next67.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv66.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = add i32 %.05357.i, 2
  %i.ex = add i32 %i.ew, %i.et
  %i.ey = ashr i32 %i.ex, 2
  %i.ez = sub nsw i32 %i.ev, %i.ey                ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i35 ; 2 uses
  store i32 %.059.i, ptr %i.fa, align 4, !tbaa !3
  %i.fb = add i32 %i.ez, %.059.i
  %i.fc = ashr i32 %i.fb, 1
  %i.fd = add i32 %i.fc, %.05357.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !3
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 2 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count.i33
  br i1 %exitcond.not.i37, label %._crit_edge.i29, label %.lr.ph.i34, !llvm.loop !343

._crit_edge.i29:                                  ; preds = %.lr.ph.i34, %middle.block, %bb.i
  %.053.lcssa.i = phi i32 [ %i.cw, %bb.i ], [ %vector.recur.extract61, %middle.block ], [ %i.et, %.lr.ph.i34 ] ; 3 uses
  %.052.lcssa.i = phi i64 [ 1, %bb.i ], [ %i.eb, %middle.block ], [ %indvars.iv.next.i36, %.lr.ph.i34 ]
  %.0.lcssa.i30 = phi i32 [ %i.dc, %bb.i ], [ %vector.recur.extract, %middle.block ], [ %i.ez, %.lr.ph.i34 ] ; 3 uses
  %.not.i31 = icmp eq i32 %i.df, 0
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.052.lcssa.i
  store i32 %.0.lcssa.i30, ptr %i.ff, align 4, !tbaa !3
  br i1 %.not.i31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i29
  %i.fg = lshr exact i32 %i.e, 1
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr [4 x i8], ptr %1, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = add nsw i32 %.053.lcssa.i, 1
  %i.fm = ashr i32 %i.fl, 1
  %i.fn = sub nsw i32 %i.fk, %i.fm                ; 2 uses
  %i.fo = add nsw i32 %i.fn, %.0.lcssa.i30
  %i.fp = ashr i32 %i.fo, 1
  %i.fq = add nsw i32 %i.fp, %.053.lcssa.i
  %i.fr = zext nneg i32 %i.de to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.fr
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !3
  br label %opj_idwt53_h_cas1.exit

bb.k:                                             ; preds = %._crit_edge.i29
  %i.ft = add nsw i32 %.0.lcssa.i30, %.053.lcssa.i
  br label %opj_idwt53_h_cas1.exit

opj_idwt53_h_cas1.exit:                           ; preds = %bb.j, %bb.k
  %.sink.i = phi i32 [ %i.ft, %bb.k ], [ %i.fn, %bb.j ]
  %i.fu = zext nneg i32 %i.e to i64               ; 2 uses
  %i.fv = getelementptr [4 x i8], ptr %i.cs, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 -4
  store i32 %.sink.i, ptr %i.fw, align 4, !tbaa !3
  %i.fx = shl nuw nsw i64 %i.fu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %i.cs, i64 %i.fx, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.h, %opj_idwt53_h_cas1.exit, %bb.g, %opj_idwt53_h_cas0.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_decode_h_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !120
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i32 [ %i.b, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.i = load i32, ptr %i.g, align 4, !tbaa !117
  %i.j = mul i32 %i.i, %.010
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k
  tail call fastcc void @opj_idwt53_h(ptr noundef nonnull %0, ptr noundef %i.l)
  %i.m = add nuw i32 %.010, 1                     ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !120
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !344

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !121
  tail call void @opj_aligned_free(ptr noundef %i.p) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_idwt53_v(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 0, 4294967296) %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110
  %i.f = add i32 %i.e, %i.c                       ; 31 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !111
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.f, 1                     ; 2 uses
  %i.k = icmp eq i32 %3, 8
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !108    ; 8 uses
  %i.m = sext i32 %i.c to i64
  %i.n = mul nsw i64 %2, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n ; 3 uses
  %i.p = load <4 x i32>, ptr %1, align 1, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load <4 x i32>, ptr %i.q, align 1, !tbaa !62
  %i.s = load <2 x i64>, ptr %i.o, align 1, !tbaa !62 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load <2 x i64>, ptr %i.t, align 1, !tbaa !62 ; 3 uses
  %i.v = bitcast <2 x i64> %i.s to <4 x i32>
  %i.w = shl <4 x i32> %i.v, splat (i32 1)
  %i.x = add <4 x i32> %i.w, splat (i32 2)
  %i.y = ashr <4 x i32> %i.x, splat (i32 2)
  %i.z = sub <4 x i32> %i.p, %i.y                 ; 2 uses
  %i.aa = bitcast <2 x i64> %i.u to <4 x i32>
  %i.ab = shl <4 x i32> %i.aa, splat (i32 1)
  %i.ac = add <4 x i32> %i.ab, splat (i32 2)
  %i.ad = ashr <4 x i32> %i.ac, splat (i32 2)
  %i.ae = sub <4 x i32> %i.r, %i.ad               ; 2 uses
  %i.af = icmp samesign ugt i32 %i.f, 3
  br i1 %i.af, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ag = add nsw i32 %i.f, -4
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = add nuw nsw i32 %i.ah, 2
  %wide.trip.count.i = zext nneg i32 %i.ai to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.0108117.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bo, %.lr.ph.i ] ; 2 uses
  %.0109.in116.i = phi <4 x i32> [ %i.ae, %.lr.ph.preheader.i ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  %.0110115.i = phi <2 x i64> [ %i.s, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph.i ]
  %.0111114.i = phi <2 x i64> [ %i.u, %.lr.ph.preheader.i ], [ %i.ar, %.lr.ph.i ]
  %.0112.in113.i = phi <4 x i32> [ %i.z, %.lr.ph.preheader.i ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %i.aj = mul nuw nsw i64 %.0108117.i, %2         ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.al = load <4 x i32>, ptr %i.ak, align 1, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x i32>, ptr %i.am, align 1, !tbaa !62
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !62 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load <2 x i64>, ptr %i.aq, align 1, !tbaa !62 ; 3 uses
  %i.as = bitcast <2 x i64> %.0110115.i to <4 x i32> ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.au = add <4 x i32> %i.as, splat (i32 2)
  %i.av = add <4 x i32> %i.au, %i.at
  %i.aw = ashr <4 x i32> %i.av, splat (i32 2)
  %i.ax = sub <4 x i32> %i.al, %i.aw              ; 3 uses
  %i.ay = bitcast <2 x i64> %.0111114.i to <4 x i32> ; 2 uses
  %i.az = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.ba = add <4 x i32> %i.ay, splat (i32 2)
  %i.bb = add <4 x i32> %i.ba, %i.az
  %i.bc = ashr <4 x i32> %i.bb, splat (i32 2)
  %i.bd = sub <4 x i32> %i.an, %i.bc              ; 3 uses
  %.idx.i = shl i64 %indvars.iv.i, 5
  %i.be = getelementptr i8, ptr %i.l, i64 %.idx.i ; 4 uses
  store <4 x i32> %.0112.in113.i, ptr %i.be, align 16, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %.0109.in116.i, ptr %i.bf, align 16, !tbaa !62
  %i.bg = getelementptr i8, ptr %i.be, i64 32
  %i.bh = add <4 x i32> %i.ax, %.0112.in113.i
  %i.bi = ashr <4 x i32> %i.bh, splat (i32 1)
  %i.bj = add <4 x i32> %i.bi, %i.as
  store <4 x i32> %i.bj, ptr %i.bg, align 16, !tbaa !62
  %i.bk = getelementptr i8, ptr %i.be, i64 48
  %i.bl = add <4 x i32> %i.bd, %.0109.in116.i
  %i.bm = ashr <4 x i32> %i.bl, splat (i32 1)
  %i.bn = add <4 x i32> %i.bm, %i.ay
  store <4 x i32> %i.bn, ptr %i.bk, align 16, !tbaa !62
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = add nuw nsw i64 %.0108117.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !345

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bp = shl i64 %indvars.iv.next.i, 3
  %i.bq = and i64 %i.bp, 4294967280
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %.0112.in.lcssa.i = phi <4 x i32> [ %i.z, %bb.c ], [ %i.ax, %._crit_edge.loopexit.i ] ; 3 uses
  %.0111.lcssa.i = phi <2 x i64> [ %i.u, %bb.c ], [ %i.ar, %._crit_edge.loopexit.i ] ; 2 uses
  %.0110.lcssa.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.ap, %._crit_edge.loopexit.i ] ; 2 uses
  %.0109.in.lcssa.i = phi <4 x i32> [ %i.ae, %bb.c ], [ %i.bd, %._crit_edge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.bq, %._crit_edge.loopexit.i ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0.lcssa.i ; 2 uses
  store <4 x i32> %.0112.in.lcssa.i, ptr %i.br, align 16, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> %.0109.in.lcssa.i, ptr %i.bs, align 16, !tbaa !62
  %i.bt = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bu = add nsw i32 %i.f, -1                    ; 2 uses
  %i.bv = lshr exact i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = mul nuw nsw i64 %2, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx ; 2 uses
  %i.bz = load <4 x i32>, ptr %i.by, align 1, !tbaa !62
  %i.ca = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32> ; 2 uses
  %i.cb = shl <4 x i32> %i.ca, splat (i32 1)
  %i.cc = add <4 x i32> %i.cb, splat (i32 2)
  %i.cd = ashr <4 x i32> %i.cc, splat (i32 2)
  %i.ce = sub <4 x i32> %i.bz, %i.cd              ; 2 uses
  %i.cf = shl nsw i32 %i.bu, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cg ; 2 uses
  store <4 x i32> %i.ce, ptr %i.ch, align 16, !tbaa !62
  %i.ci = shl i32 %i.f, 3
  %i.cj = add i32 %i.ci, -16
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ck ; 2 uses
  %i.cm = add <4 x i32> %i.ce, %.0112.in.lcssa.i
  %i.cn = ashr <4 x i32> %i.cm, splat (i32 1)
  %i.co = add <4 x i32> %i.cn, %i.ca
  store <4 x i32> %i.co, ptr %i.cl, align 16, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cq = load <4 x i32>, ptr %i.cp, align 1, !tbaa !62
  %i.cr = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32> ; 2 uses
  %i.cs = shl <4 x i32> %i.cr, splat (i32 1)
  %i.ct = add <4 x i32> %i.cs, splat (i32 2)
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 2)
  %i.cv = sub <4 x i32> %i.cq, %i.cu              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i32> %i.cv, ptr %i.cw, align 16, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = add <4 x i32> %i.cv, %.0109.in.lcssa.i
  %i.cz = ashr <4 x i32> %i.cy, splat (i32 1)
  %i.da = add <4 x i32> %i.cz, %i.cr
  store <4 x i32> %i.da, ptr %i.cx, align 16, !tbaa !62
  br label %.new337

bb.e:                                             ; preds = %._crit_edge.i
  %i.db = shl i32 %i.f, 3
  %i.dc = add i32 %i.db, -8
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.dd ; 2 uses
  %i.df = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32>
  %i.dg = add <4 x i32> %.0112.in.lcssa.i, %i.df
  store <4 x i32> %i.dg, ptr %i.de, align 16, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32>
  %i.dj = add <4 x i32> %.0109.in.lcssa.i, %i.di
  store <4 x i32> %i.dj, ptr %i.dh, align 16, !tbaa !62
  br label %.new337

.new337:                                          ; preds = %bb.e, %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter339 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter342 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new337
  %indvars.iv.i.i = phi i64 [ 0, %.new337 ], [ %indvars.iv.next.i.i.1, %bb.f ] ; 4 uses
  %niter343 = phi i64 [ 0, %.new337 ], [ %niter343.next.1, %bb.f ]
  %i.dk = mul nuw nsw i64 %indvars.iv.i.i, %2
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk ; 2 uses
  %.idx.i.i = shl nsw i64 %indvars.iv.i.i, 5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 16, !tbaa !62
  store <2 x i64> %i.dn, ptr %i.dl, align 1, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load <2 x i64>, ptr %i.dp, align 16, !tbaa !62
  store <2 x i64> %i.dq, ptr %i.do, align 1, !tbaa !62
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv.next.i.i, %2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr ; 2 uses
  %.idx.i.i.1 = shl nsw i64 %indvars.iv.next.i.i, 5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.1 ; 2 uses
  %i.du = load <2 x i64>, ptr %i.dt, align 16, !tbaa !62
  store <2 x i64> %i.du, ptr %i.ds, align 1, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load <2 x i64>, ptr %i.dw, align 16, !tbaa !62
  store <2 x i64> %i.dx, ptr %i.dv, align 1, !tbaa !62
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %niter343.next.1 = add i64 %niter343, 2         ; 2 uses
  %niter343.ncmp.1 = icmp eq i64 %niter343.next.1, %unroll_iter342
  br i1 %niter343.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !346

bb.g:                                             ; preds = %bb.b
  %i.dy = icmp sgt i32 %3, 0
  %or.cond142 = and i1 %i.j, %i.dy
  br i1 %or.cond142, label %.lr.ph141, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph141:                                        ; preds = %bb.g
  %i.dz = load ptr, ptr %0, align 8, !tbaa !108   ; 15 uses
  %i.ea = ptrtoaddr ptr %i.dz to i64
  %i.eb = sext i32 %i.c to i64
  %i.ec = mul nsw i64 %2, %i.eb
  %i.ed = icmp samesign ugt i32 %i.f, 3
  %i.ee = add i32 %i.c, 1                         ; 5 uses
  %i.ef = add nsw i32 %i.f, -4                    ; 4 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = add nuw i32 %i.eg, 1
  %wide.trip.count.i82 = zext i32 %i.eh to i64    ; 3 uses
  %i.ei = and i32 %i.f, 1
  %.not.i80 = icmp eq i32 %i.ei, 0
  %i.ej = add nsw i32 %i.f, -1                    ; 2 uses
  %i.ek = lshr exact i32 %i.ej, 1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %2, %i.el
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.en
  %i.ep = zext nneg i32 %i.f to i64               ; 6 uses
  %i.eq = getelementptr [4 x i8], ptr %i.dz, i64 %i.ep
  %i.er = sub i64 %i.a, %i.ea
  %i.es = lshr i32 %i.ef, 1
  %i.et = lshr i32 %i.ef, 1
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = getelementptr i8, ptr %i.dz, i64 %i.ev
  %scevgep267 = getelementptr i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ex = sext i32 %i.ee to i64
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %scevgep268 = getelementptr i8, ptr %1, i64 %i.ey
  %i.ez = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  %i.fa = add nsw i32 %3, -1
  %i.fb = zext i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2                ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.ez
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ey
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %scevgep269 = getelementptr i8, ptr %i.ff, i64 4
  %scevgep270 = getelementptr i8, ptr %1, i64 4
  %i.fg = getelementptr i8, ptr %1, i64 %i.ez
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fc
  %scevgep271 = getelementptr i8, ptr %i.fh, i64 8
  %min.iters.check280 = icmp ult i32 %i.ef, 10
  %ident.check265 = icmp ne i64 %2, 1
  %i.fi = add i32 %i.ee, %i.es
  %i.fj = icmp slt i32 %i.fi, %i.ee
  %i.fk = or i1 %ident.check265, %i.fj
  %bound0272 = icmp ult ptr %i.dz, %scevgep269
  %bound1273 = icmp ult ptr %scevgep268, %scevgep267
  %found.conflict274 = and i1 %bound0272, %bound1273
  %bound0275 = icmp ult ptr %i.dz, %scevgep271
  %bound1276 = icmp ult ptr %scevgep270, %scevgep267
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %found.conflict274, %found.conflict277
  %n.vec283 = and i64 %wide.trip.count.i82, 4294967294 ; 4 uses
  %i.fl = shl nuw nsw i64 %n.vec283, 1            ; 2 uses
  %cmp.n297 = icmp eq i64 %n.vec283, %wide.trip.count.i82
  %min.iters.check252 = icmp ult i32 %i.f, 8
  %ident.check246.not = icmp ne i64 %2, 1
  %or.cond303.not309 = or i1 %min.iters.check252, %ident.check246.not
  %invariant.op357 = add i64 %i.er, -1
  %n.vec255 = and i64 %i.ep, 2147483640           ; 3 uses
  %cmp.n262 = icmp eq i64 %n.vec255, %i.ep
  %xtraiter334 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph141, %opj_idwt3_v_cas0.exit
  %indvar248 = phi i64 [ 0, %.lr.ph141 ], [ %indvar.next249, %opj_idwt3_v_cas0.exit ] ; 2 uses
  %.070140 = phi ptr [ %1, %.lr.ph141 ], [ %i.io, %opj_idwt3_v_cas0.exit ] ; 14 uses
  %.072139 = phi i32 [ 0, %.lr.ph141 ], [ %i.in, %opj_idwt3_v_cas0.exit ]
  %i.fm = shl nuw nsw i64 %indvar248, 2
  %i.fn = load i32, ptr %.070140, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.ec
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3  ; 6 uses
  %i.fq = add nsw i32 %i.fp, 1
  %i.fr = ashr i32 %i.fq, 1
  %i.fs = sub nsw i32 %i.fn, %i.fr                ; 5 uses
  br i1 %i.ed, label %.lr.ph.i81.preheader, label %._crit_edge.i78

.lr.ph.i81.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check280, label %.lr.ph.i81.preheader313, label %vector.scevcheck264

vector.scevcheck264:                              ; preds = %.lr.ph.i81.preheader
  br i1 %i.fk, label %.lr.ph.i81.preheader313, label %vector.memcheck266

vector.memcheck266:                               ; preds = %vector.scevcheck264
  br i1 %conflict.rdx278, label %.lr.ph.i81.preheader313, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck266
  %vector.recur.init286 = insertelement <2 x i32> poison, i32 %i.fs, i64 1
  %vector.recur.init288 = insertelement <2 x i32> poison, i32 %i.fp, i64 1
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph281
  %index285 = phi i64 [ 0, %vector.ph281 ], [ %index.next293, %vector.body284 ] ; 4 uses
  %vector.recur287 = phi <2 x i32> [ %vector.recur.init286, %vector.ph281 ], [ %i.gd, %vector.body284 ]
  %vector.recur289 = phi <2 x i32> [ %vector.recur.init288, %vector.ph281 ], [ %wide.load291, %vector.body284 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %index285
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %wide.load290 = load <2 x i32>, ptr %i.fu, align 4, !tbaa !3, !alias.scope !347
  %i.fv = trunc nuw nsw i64 %index285 to i32
  %i.fw = add i32 %i.ee, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.fx
  %wide.load291 = load <2 x i32>, ptr %i.fy, align 4, !tbaa !3, !alias.scope !350 ; 4 uses
  %i.fz = shufflevector <2 x i32> %vector.recur289, <2 x i32> %wide.load291, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ga = add <2 x i32> %i.fz, splat (i32 2)
  %i.gb = add <2 x i32> %i.ga, %wide.load291
  %i.gc = ashr <2 x i32> %i.gb, splat (i32 2)
  %i.gd = sub <2 x i32> %wide.load290, %i.gc      ; 4 uses
  %i.ge = shufflevector <2 x i32> %vector.recur287, <2 x i32> %i.gd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx302 = shl i64 %index285, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx302
  %i.gg = add <2 x i32> %i.gd, %i.ge
  %i.gh = ashr <2 x i32> %i.gg, splat (i32 1)
  %i.gi = add <2 x i32> %i.gh, %i.fz
  %interleaved.vec292 = shufflevector <2 x i32> %i.ge, <2 x i32> %i.gi, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec292, ptr %i.gf, align 4, !tbaa !3, !alias.scope !352, !noalias !354
  %index.next293 = add nuw i64 %index285, 2       ; 2 uses
  %i.gj = icmp eq i64 %index.next293, %n.vec283
  br i1 %i.gj, label %middle.block294, label %vector.body284, !llvm.loop !355

middle.block294:                                  ; preds = %vector.body284
  %vector.recur.extract295 = extractelement <2 x i32> %i.gd, i64 1 ; 2 uses
  %vector.recur.extract296 = extractelement <2 x i32> %wide.load291, i64 1 ; 2 uses
  br i1 %cmp.n297, label %._crit_edge.i78, label %.lr.ph.i81.preheader313

.lr.ph.i81.preheader313:                          ; preds = %vector.memcheck266, %vector.scevcheck264, %.lr.ph.i81.preheader, %middle.block294
  %indvars.iv69.i.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %vector.scevcheck264 ], [ 0, %.lr.ph.i81.preheader ], [ %n.vec283, %middle.block294 ]
  %indvars.iv.i83.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %vector.scevcheck264 ], [ 0, %.lr.ph.i81.preheader ], [ %i.fl, %middle.block294 ]
  %.063.i.ph = phi i32 [ %i.fs, %vector.memcheck266 ], [ %i.fs, %vector.scevcheck264 ], [ %i.fs, %.lr.ph.i81.preheader ], [ %vector.recur.extract295, %middle.block294 ]
  %.05861.i.ph = phi i32 [ %i.fp, %vector.memcheck266 ], [ %i.fp, %vector.scevcheck264 ], [ %i.fp, %.lr.ph.i81.preheader ], [ %vector.recur.extract296, %middle.block294 ]
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader313, %.lr.ph.i81
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %.lr.ph.i81 ], [ %indvars.iv69.i.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %.lr.ph.i81 ], [ %indvars.iv.i83.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %.063.i = phi i32 [ %i.gw, %.lr.ph.i81 ], [ %.063.i.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %.05861.i = phi i32 [ %i.gs, %.lr.ph.i81 ], [ %.05861.i.ph, %.lr.ph.i81.preheader313 ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 3 uses
  %i.gk = mul nuw nsw i64 %indvars.iv.next70.i, %2
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.go = add i32 %i.ee, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul nsw i64 %2, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3  ; 3 uses
  %i.gt = add i32 %.05861.i, 2
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = ashr i32 %i.gu, 2
  %i.gw = sub i32 %i.gm, %i.gv                    ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i83 ; 2 uses
  store i32 %.063.i, ptr %i.gx, align 4, !tbaa !3
  %i.gy = add i32 %i.gw, %.063.i
  %i.gz = ashr i32 %i.gy, 1
  %i.ha = add i32 %i.gz, %.05861.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !3
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count.i82
  br i1 %exitcond.not.i85, label %._crit_edge.i78, label %.lr.ph.i81, !llvm.loop !356

._crit_edge.i78:                                  ; preds = %.lr.ph.i81, %middle.block294, %bb.h
  %.058.lcssa.i = phi i32 [ %i.fp, %bb.h ], [ %vector.recur.extract296, %middle.block294 ], [ %i.gs, %.lr.ph.i81 ] ; 2 uses
  %.057.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.fl, %middle.block294 ], [ %indvars.iv.next.i84, %.lr.ph.i81 ]
  %.0.lcssa.i79 = phi i32 [ %i.fs, %bb.h ], [ %vector.recur.extract295, %middle.block294 ], [ %i.gw, %.lr.ph.i81 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.057.lcssa.i
  store i32 %.0.lcssa.i79, ptr %i.hc, align 4, !tbaa !3
  br i1 %.not.i80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i78
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.em
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = add nsw i32 %.058.lcssa.i, 1
  %i.hg = ashr i32 %i.hf, 1
  %i.hh = sub nsw i32 %i.he, %i.hg                ; 2 uses
  store i32 %i.hh, ptr %i.eo, align 4, !tbaa !3
  %i.hi = add nsw i32 %i.hh, %.0.lcssa.i79
  %i.hj = ashr i32 %i.hi, 1
end_hunk_3
begin_hunk_4_@opj_idwt53_v:bb.a
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3
  %i.id = mul nuw nsw i64 %indvars.iv.next75.i, %2
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.id
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !3
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i.1
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = mul nuw nsw i64 %indvars.iv.next75.i.1, %2
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.ih
  store i32 %i.ig, ptr %i.ii, align 4, !tbaa !3
  %indvars.iv.next75.i.2 = add nuw nsw i64 %indvars.iv74.i, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i.2
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3
  %i.il = mul nuw nsw i64 %indvars.iv.next75.i.2, %2
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.070140, i64 %i.il
  store i32 %i.ik, ptr %i.im, align 4, !tbaa !3
  %indvars.iv.next75.i.3 = add nuw nsw i64 %indvars.iv74.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next75.i.3, %i.ep
  br i1 %exitcond78.not.i.3, label %opj_idwt3_v_cas0.exit, label %scalar.ph251, !llvm.loop !359

opj_idwt3_v_cas0.exit:                            ; preds = %scalar.ph251.prol.loopexit, %scalar.ph251, %middle.block261
  %i.in = add nuw nsw i32 %.072139, 1             ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.070140, i64 4
  %exitcond163.not = icmp eq i32 %i.in, %3
  %indvar.next249 = add i64 %indvar248, 1
  br i1 %exitcond163.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.h, !llvm.loop !360

bb.k:                                             ; preds = %bb.a
  switch i32 %i.f, label %bb.n [
    i32 1, label %.preheader116
    i32 2, label %bb.l
  ]

.preheader116:                                    ; preds = %bb.k
  %i.ip = icmp sgt i32 %3, 0
  br i1 %i.ip, label %.lr.ph135.preheader, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph135.preheader:                              ; preds = %.preheader116
  %i.iq = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph135.preheader328, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph135.preheader
  %n.vec = and i64 %i.iq, 2147483640              ; 4 uses
  %i.ir = shl nuw nsw i64 %n.vec, 2
  %i.is = getelementptr i8, ptr %1, i64 %i.ir
  %i.it = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.iu ; 3 uses
  %i.iv = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load201 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !3
  %i.iw = sdiv <4 x i32> %wide.load, splat (i32 2)
  %i.ix = sdiv <4 x i32> %wide.load201, splat (i32 2)
  store <4 x i32> %i.iw, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %i.ix, ptr %i.iv, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iq
  br i1 %cmp.n, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.lr.ph135.preheader328

.lr.ph135.preheader328:                           ; preds = %.lr.ph135.preheader, %middle.block
  %.1134.ph = phi ptr [ %1, %.lr.ph135.preheader ], [ %i.is, %middle.block ]
  %.074133.ph = phi i32 [ 0, %.lr.ph135.preheader ], [ %i.it, %middle.block ]
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader328, %.lr.ph135
  %.1134 = phi ptr [ %i.jc, %.lr.ph135 ], [ %.1134.ph, %.lr.ph135.preheader328 ] ; 3 uses
  %.074133 = phi i32 [ %i.jb, %.lr.ph135 ], [ %.074133.ph, %.lr.ph135.preheader328 ]
  %i.iz = load i32, ptr %.1134, align 4, !tbaa !3
  %i.ja = sdiv i32 %i.iz, 2
  store i32 %i.ja, ptr %.1134, align 4, !tbaa !3
  %i.jb = add nuw nsw i32 %.074133, 1             ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.1134, i64 4
  %exitcond161.not = icmp eq i32 %i.jb, %3
  br i1 %exitcond161.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.lr.ph135, !llvm.loop !362

bb.l:                                             ; preds = %bb.k
  %i.jd = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.je = icmp sgt i32 %3, 0
  br i1 %i.je, label %.lr.ph, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph:                                           ; preds = %bb.l
  %i.jf = sext i32 %i.c to i64
  %i.jg = mul nsw i64 %2, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.2132 = phi ptr [ %1, %.lr.ph ], [ %i.jt, %bb.m ] ; 5 uses
  %.073131 = phi i32 [ 0, %.lr.ph ], [ %i.js, %bb.m ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.2132, i64 %i.jg ; 2 uses
  %i.jj = load i32, ptr %.2132, align 4, !tbaa !3
  %i.jk = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.jl = add nsw i32 %i.jk, 1
  %i.jm = ashr i32 %i.jl, 1
  %i.jn = sub nsw i32 %i.jj, %i.jm                ; 2 uses
  store i32 %i.jn, ptr %i.jh, align 4, !tbaa !3
  %i.jo = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.jp = add nsw i32 %i.jn, %i.jo                ; 2 uses
  store i32 %i.jp, ptr %i.jd, align 4, !tbaa !3
  store i32 %i.jp, ptr %.2132, align 4, !tbaa !3
  %i.jq = load i32, ptr %i.jh, align 4, !tbaa !3
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.2132, i64 %2
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !3
  %i.js = add nuw nsw i32 %.073131, 1             ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.2132, i64 4
  %exitcond.not = icmp eq i32 %i.js, %3
  br i1 %exitcond.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.m, !llvm.loop !363

bb.n:                                             ; preds = %bb.k
  %i.ju = icmp sgt i32 %i.f, 2                    ; 2 uses
  %i.jv = icmp eq i32 %3, 8
  %or.cond3 = and i1 %i.jv, %i.ju
  br i1 %or.cond3, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.jw = load ptr, ptr %0, align 8, !tbaa !108   ; 11 uses
  %i.jx = sext i32 %i.c to i64
  %i.jy = mul nsw i64 %2, %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jy ; 4 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %2 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.ka, align 1, !tbaa !62 ; 3 uses
  %i.kc = load <4 x i32>, ptr %1, align 1, !tbaa !62
  %i.kd = load <4 x i32>, ptr %i.jz, align 1, !tbaa !62 ; 2 uses
  %i.ke = bitcast <2 x i64> %i.kb to <4 x i32>
  %i.kf = add <4 x i32> %i.ke, splat (i32 2)
  %i.kg = add <4 x i32> %i.kf, %i.kd
  %i.kh = ashr <4 x i32> %i.kg, splat (i32 2)
  %i.ki = sub <4 x i32> %i.kc, %i.kh              ; 3 uses
  %i.kj = add <4 x i32> %i.ki, %i.kd
  store <4 x i32> %i.kj, ptr %i.jw, align 16, !tbaa !62
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kl = load <2 x i64>, ptr %i.kk, align 1, !tbaa !62 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kn = load <4 x i32>, ptr %i.km, align 1, !tbaa !62
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kp = load <4 x i32>, ptr %i.ko, align 1, !tbaa !62 ; 2 uses
  %i.kq = bitcast <2 x i64> %i.kl to <4 x i32>
  %i.kr = add <4 x i32> %i.kq, splat (i32 2)
  %i.ks = add <4 x i32> %i.kr, %i.kp
  %i.kt = ashr <4 x i32> %i.ks, splat (i32 2)
  %i.ku = sub <4 x i32> %i.kn, %i.kt              ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kw = add <4 x i32> %i.ku, %i.kp
  store <4 x i32> %i.kw, ptr %i.kv, align 16, !tbaa !62
  %i.kx = add nsw i32 %i.f, -2                    ; 2 uses
  %i.ky = and i32 %i.f, 1                         ; 2 uses
  %i.kz = xor i32 %i.ky, 1                        ; 2 uses
  %i.la = sub nuw nsw i32 %i.kx, %i.kz
  %i.lb = icmp samesign ugt i32 %i.la, 1
  br i1 %i.lb, label %.lr.ph.preheader.i94, label %._crit_edge.i86

.lr.ph.preheader.i94:                             ; preds = %bb.o
  %i.lc = add nsw i32 %i.f, -4
  %i.ld = sub nsw i32 %i.lc, %i.kz
  %i.le = lshr i32 %i.ld, 1
  %i.lf = add nuw i32 %i.le, 2
  %wide.trip.count.i95 = zext i32 %i.lf to i64
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96, %.lr.ph.preheader.i94
  %indvars.iv.i97 = phi i64 [ 1, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i99, %.lr.ph.i96 ] ; 3 uses
  %.0111121.i = phi i64 [ 1, %.lr.ph.preheader.i94 ], [ %i.lg, %.lr.ph.i96 ] ; 2 uses
  %.0112120.i = phi <2 x i64> [ %i.kb, %.lr.ph.preheader.i94 ], [ %i.lj, %.lr.ph.i96 ]
  %.0113.in119.i = phi <4 x i32> [ %i.ku, %.lr.ph.preheader.i94 ], [ %i.mc, %.lr.ph.i96 ] ; 2 uses
  %.0114.in118.i = phi <4 x i32> [ %i.ki, %.lr.ph.preheader.i94 ], [ %i.lu, %.lr.ph.i96 ] ; 2 uses
  %.0115117.i = phi <2 x i64> [ %i.kl, %.lr.ph.preheader.i94 ], [ %i.ll, %.lr.ph.i96 ]
  %i.lg = add nuw nsw i64 %.0111121.i, 1          ; 3 uses
  %i.lh = mul nuw nsw i64 %i.lg, %2
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.lh ; 2 uses
  %i.lj = load <2 x i64>, ptr %i.li, align 1, !tbaa !62 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ll = load <2 x i64>, ptr %i.lk, align 1, !tbaa !62 ; 3 uses
  %i.lm = mul nuw nsw i64 %.0111121.i, %2
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lm ; 2 uses
  %i.lo = load <4 x i32>, ptr %i.ln, align 1, !tbaa !62
  %i.lp = bitcast <2 x i64> %.0112120.i to <4 x i32> ; 2 uses
  %i.lq = bitcast <2 x i64> %i.lj to <4 x i32>
  %i.lr = add <4 x i32> %i.lp, splat (i32 2)
  %i.ls = add <4 x i32> %i.lr, %i.lq
  %i.lt = ashr <4 x i32> %i.ls, splat (i32 2)
  %i.lu = sub <4 x i32> %i.lo, %i.lt              ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lw = load <4 x i32>, ptr %i.lv, align 1, !tbaa !62
  %i.lx = bitcast <2 x i64> %.0115117.i to <4 x i32> ; 2 uses
  %i.ly = bitcast <2 x i64> %i.ll to <4 x i32>
  %i.lz = add <4 x i32> %i.lx, splat (i32 2)
  %i.ma = add <4 x i32> %i.lz, %i.ly
  %i.mb = ashr <4 x i32> %i.ma, splat (i32 2)
  %i.mc = sub <4 x i32> %i.lw, %i.mb              ; 3 uses
  %.idx.i98 = shl nsw i64 %indvars.iv.i97, 5
  %i.md = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i98 ; 2 uses
  store <4 x i32> %.0114.in118.i, ptr %i.md, align 16, !tbaa !62
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x i32> %.0113.in119.i, ptr %i.me, align 16, !tbaa !62
  %i.mf = shl i64 %indvars.iv.i97, 35
  %sext.i = add i64 %i.mf, 34359738368
  %i.mg = ashr exact i64 %sext.i, 30
  %i.mh = getelementptr inbounds i8, ptr %i.jw, i64 %i.mg ; 2 uses
  %i.mi = add <4 x i32> %i.lu, %.0114.in118.i
  %i.mj = ashr <4 x i32> %i.mi, splat (i32 1)
  %i.mk = add <4 x i32> %i.mj, %i.lp
  store <4 x i32> %i.mk, ptr %i.mh, align 16, !tbaa !62
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mm = add <4 x i32> %i.mc, %.0113.in119.i
  %i.mn = ashr <4 x i32> %i.mm, splat (i32 1)
  %i.mo = add <4 x i32> %i.mn, %i.lx
  store <4 x i32> %i.mo, ptr %i.ml, align 16, !tbaa !62
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i97, 2 ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %i.lg, %wide.trip.count.i95
  br i1 %exitcond.not.i100, label %._crit_edge.loopexit.i101, label %.lr.ph.i96, !llvm.loop !364

._crit_edge.loopexit.i101:                        ; preds = %.lr.ph.i96
  %i.mp = shl i64 %indvars.iv.next.i99, 3
  %i.mq = and i64 %i.mp, 4294967288
  br label %._crit_edge.i86

._crit_edge.i86:                                  ; preds = %._crit_edge.loopexit.i101, %bb.o
  %.0115.lcssa.i = phi <2 x i64> [ %i.kl, %bb.o ], [ %i.ll, %._crit_edge.loopexit.i101 ] ; 2 uses
  %.0114.in.lcssa.i = phi <4 x i32> [ %i.ki, %bb.o ], [ %i.lu, %._crit_edge.loopexit.i101 ] ; 3 uses
  %.0113.in.lcssa.i = phi <4 x i32> [ %i.ku, %bb.o ], [ %i.mc, %._crit_edge.loopexit.i101 ] ; 3 uses
  %.0112.lcssa.i = phi <2 x i64> [ %i.kb, %bb.o ], [ %i.lj, %._crit_edge.loopexit.i101 ] ; 2 uses
  %.0.lcssa.i87 = phi i64 [ 8, %bb.o ], [ %i.mq, %._crit_edge.loopexit.i101 ]
  %.not.i88 = icmp eq i32 %i.ky, 0
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.0.lcssa.i87 ; 2 uses
  store <4 x i32> %.0114.in.lcssa.i, ptr %i.mr, align 16, !tbaa !62
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <4 x i32> %.0113.in.lcssa.i, ptr %i.ms, align 16, !tbaa !62
  br i1 %.not.i88, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i86
  %i.mt = lshr exact i32 %i.f, 1
  %i.mu = add nsw i32 %i.mt, -1
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = mul nuw nsw i64 %2, %i.mv
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mw ; 2 uses
  %i.my = load <4 x i32>, ptr %i.mx, align 1, !tbaa !62
  %i.mz = bitcast <2 x i64> %.0112.lcssa.i to <4 x i32> ; 2 uses
  %i.na = shl <4 x i32> %i.mz, splat (i32 1)
  %i.nb = add <4 x i32> %i.na, splat (i32 2)
  %i.nc = ashr <4 x i32> %i.nb, splat (i32 2)
  %i.nd = sub <4 x i32> %i.my, %i.nc              ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.nf = load <4 x i32>, ptr %i.ne, align 1, !tbaa !62
  %i.ng = bitcast <2 x i64> %.0115.lcssa.i to <4 x i32> ; 2 uses
  %i.nh = shl <4 x i32> %i.ng, splat (i32 1)
  %i.ni = add <4 x i32> %i.nh, splat (i32 2)
  %i.nj = ashr <4 x i32> %i.ni, splat (i32 2)
  %i.nk = sub <4 x i32> %i.nf, %i.nj              ; 2 uses
  %i.nl = shl nsw i32 %i.kx, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.nm ; 2 uses
  %i.no = add <4 x i32> %i.nd, %.0114.in.lcssa.i
  %i.np = ashr <4 x i32> %i.no, splat (i32 1)
  %i.nq = add <4 x i32> %i.np, %i.mz
  store <4 x i32> %i.nq, ptr %i.nn, align 16, !tbaa !62
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.ns = add <4 x i32> %i.nk, %.0113.in.lcssa.i
  %i.nt = ashr <4 x i32> %i.ns, splat (i32 1)
  %i.nu = add <4 x i32> %i.nt, %i.ng
  store <4 x i32> %i.nu, ptr %i.nr, align 16, !tbaa !62
  %i.nv = shl i32 %i.f, 3
  %i.nw = add i32 %i.nv, -8
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.nx ; 2 uses
  store <4 x i32> %i.nd, ptr %i.ny, align 16, !tbaa !62
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store <4 x i32> %i.nk, ptr %i.nz, align 16, !tbaa !62
  br label %.new

bb.q:                                             ; preds = %._crit_edge.i86
  %i.oa = shl i32 %i.f, 3
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr [4 x i8], ptr %i.jw, i64 %i.ob ; 2 uses
  %i.od = getelementptr i8, ptr %i.oc, i64 -32
  %i.oe = bitcast <2 x i64> %.0112.lcssa.i to <4 x i32>
  %i.of = add <4 x i32> %.0114.in.lcssa.i, %i.oe
  store <4 x i32> %i.of, ptr %i.od, align 16, !tbaa !62
  %i.og = getelementptr i8, ptr %i.oc, i64 -16
  %i.oh = bitcast <2 x i64> %.0115.lcssa.i to <4 x i32>
  %i.oi = add <4 x i32> %.0113.in.lcssa.i, %i.oh
  store <4 x i32> %i.oi, ptr %i.og, align 16, !tbaa !62
  br label %.new

.new:                                             ; preds = %bb.q, %bb.p
  %wide.trip.count.i.i89 = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter331 = and i64 %wide.trip.count.i.i89, 1
  %unroll_iter = and i64 %wide.trip.count.i.i89, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.new
  %indvars.iv.i.i90 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i92.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.oj = mul nuw nsw i64 %indvars.iv.i.i90, %2
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oj ; 2 uses
  %.idx.i.i91 = shl nsw i64 %indvars.iv.i.i90, 5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i91 ; 2 uses
  %i.om = load <2 x i64>, ptr %i.ol, align 16, !tbaa !62
  store <2 x i64> %i.om, ptr %i.ok, align 1, !tbaa !62
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.op = load <2 x i64>, ptr %i.oo, align 16, !tbaa !62
  store <2 x i64> %i.op, ptr %i.on, align 1, !tbaa !62
  %indvars.iv.next.i.i92 = or disjoint i64 %indvars.iv.i.i90, 1 ; 2 uses
  %i.oq = mul nuw nsw i64 %indvars.iv.next.i.i92, %2
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oq ; 2 uses
  %.idx.i.i91.1 = shl nsw i64 %indvars.iv.next.i.i92, 5
  %i.os = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i91.1 ; 2 uses
  %i.ot = load <2 x i64>, ptr %i.os, align 16, !tbaa !62
  store <2 x i64> %i.ot, ptr %i.or, align 1, !tbaa !62
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ow = load <2 x i64>, ptr %i.ov, align 16, !tbaa !62
  store <2 x i64> %i.ow, ptr %i.ou, align 1, !tbaa !62
  %indvars.iv.next.i.i92.1 = add nuw nsw i64 %indvars.iv.i.i90, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa, label %bb.r, !llvm.loop !346

bb.s:                                             ; preds = %bb.n
  %i.ox = icmp sgt i32 %3, 0
  %or.cond143 = and i1 %i.ju, %i.ox
  br i1 %or.cond143, label %.lr.ph138, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph138:                                        ; preds = %bb.s
  %i.oy = load ptr, ptr %0, align 8, !tbaa !108   ; 15 uses
  %i.oz = ptrtoaddr ptr %i.oy to i64
  %i.pa = sext i32 %i.c to i64                    ; 2 uses
  %i.pb = mul nsw i64 %2, %i.pa
  %i.pc = add nsw i32 %i.f, -2                    ; 2 uses
  %i.pd = and i32 %i.f, 1                         ; 2 uses
  %i.pe = xor i32 %i.pd, 1                        ; 2 uses
  %i.pf = sub nuw nsw i32 %i.pc, %i.pe
  %i.pg = icmp samesign ugt i32 %i.pf, 1
  %i.ph = add nsw i32 %i.f, -4
  %i.pi = sub i32 %i.ph, %i.pe                    ; 4 uses
  %i.pj = lshr i32 %i.pi, 1
  %i.pk = add nuw i32 %i.pj, 2
  %wide.trip.count.i106 = zext i32 %i.pk to i64
  %.not.i104 = icmp eq i32 %i.pd, 0
  %i.pl = lshr exact i32 %i.f, 1
  %i.pm = add nsw i32 %i.pl, -1
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = mul nuw nsw i64 %2, %i.pn
  %i.pp = zext nneg i32 %i.pc to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pp
  %i.pr = zext nneg i32 %i.f to i64               ; 6 uses
  %i.ps = getelementptr [4 x i8], ptr %i.oy, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -4
  %i.pu = sub i64 %i.a, %i.oz
  %scevgep = getelementptr i8, ptr %i.oy, i64 4   ; 2 uses
  %i.pv = lshr i32 %i.pi, 1
  %i.pw = zext nneg i32 %i.pv to i64              ; 2 uses
  %i.px = shl nuw nsw i64 %i.pw, 3
  %i.py = getelementptr i8, ptr %i.oy, i64 %i.px
  %scevgep219 = getelementptr i8, ptr %i.py, i64 12 ; 2 uses
  %scevgep220 = getelementptr i8, ptr %1, i64 4
  %i.pz = shl nuw nsw i64 %i.pw, 2                ; 2 uses
  %i.qa = add nsw i32 %3, -1
  %i.qb = zext i32 %i.qa to i64
  %i.qc = shl nuw nsw i64 %i.qb, 2                ; 2 uses
  %i.qd = getelementptr i8, ptr %1, i64 %i.pz
  %i.qe = getelementptr i8, ptr %i.qd, i64 %i.qc
  %scevgep221 = getelementptr i8, ptr %i.qe, i64 8
  %i.qf = shl nsw i64 %i.pa, 2                    ; 2 uses
  %i.qg = getelementptr i8, ptr %1, i64 %i.qf
  %scevgep222 = getelementptr i8, ptr %i.qg, i64 8
  %i.qh = getelementptr i8, ptr %1, i64 %i.pz
  %i.qi = getelementptr i8, ptr %i.qh, i64 %i.qf
  %i.qj = getelementptr i8, ptr %i.qi, i64 %i.qc
  %scevgep223 = getelementptr i8, ptr %i.qj, i64 12
  %i.qk = lshr i32 %i.pi, 1
  %narrow = add nuw i32 %i.qk, 1
  %i.ql = zext i32 %narrow to i64                 ; 3 uses
  %min.iters.check228 = icmp ugt i32 %i.pi, 5
  %ident.check217.not = icmp eq i64 %2, 1
  %or.cond305 = and i1 %min.iters.check228, %ident.check217.not
  %bound0 = icmp ult ptr %scevgep, %scevgep221
  %bound1 = icmp ult ptr %scevgep220, %scevgep219
  %found.conflict = and i1 %bound0, %bound1
  %bound0224 = icmp ult ptr %scevgep, %scevgep223
  %bound1225 = icmp ult ptr %scevgep222, %scevgep219
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx = or i1 %found.conflict, %found.conflict226
  %n.vec231 = and i64 %i.ql, 4294967294           ; 3 uses
  %i.qm = or i64 %i.ql, 1
  %i.qn = shl nuw nsw i64 %n.vec231, 1
  %i.qo = or disjoint i64 %i.qn, 1                ; 2 uses
  %cmp.n241 = icmp eq i64 %n.vec231, %i.ql
  %min.iters.check204 = icmp ult i32 %i.f, 8
  %ident.check.not = icmp ne i64 %2, 1
  %or.cond306.not308 = or i1 %min.iters.check204, %ident.check.not
  %invariant.op = add i64 %i.pu, -1
  %n.vec207 = and i64 %i.pr, 2147483640           ; 3 uses
  %cmp.n214 = icmp eq i64 %n.vec207, %i.pr
  %xtraiter = and i64 %i.pr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph138, %opj_idwt3_v_cas1.exit
  %indvar = phi i64 [ 0, %.lr.ph138 ], [ %indvar.next, %opj_idwt3_v_cas1.exit ] ; 2 uses
  %.0137 = phi i32 [ 0, %.lr.ph138 ], [ %i.tq, %opj_idwt3_v_cas1.exit ]
  %.3136 = phi ptr [ %1, %.lr.ph138 ], [ %i.tr, %opj_idwt3_v_cas1.exit ] ; 12 uses
  %i.qp = shl nuw nsw i64 %indvar, 2
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.pb ; 4 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %2
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !3  ; 5 uses
  %i.qt = load i32, ptr %.3136, align 4, !tbaa !3
  %i.qu = load i32, ptr %i.qq, align 4, !tbaa !3  ; 2 uses
  %i.qv = add i32 %i.qs, 2
  %i.qw = add i32 %i.qv, %i.qu
  %i.qx = ashr i32 %i.qw, 2
  %i.qy = sub nsw i32 %i.qt, %i.qx                ; 5 uses
  %i.qz = add nsw i32 %i.qy, %i.qu
  store i32 %i.qz, ptr %i.oy, align 4, !tbaa !3
  br i1 %i.pg, label %.lr.ph.i107.preheader, label %._crit_edge.i102

.lr.ph.i107.preheader:                            ; preds = %bb.t
  br i1 %or.cond305, label %vector.memcheck218, label %.lr.ph.i107.preheader323

vector.memcheck218:                               ; preds = %.lr.ph.i107.preheader
  br i1 %conflict.rdx, label %.lr.ph.i107.preheader323, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck218
  %vector.recur.init = insertelement <2 x i32> poison, i32 %i.qy, i64 1
  %vector.recur.init234 = insertelement <2 x i32> poison, i32 %i.qs, i64 1
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph229
  %index233 = phi i64 [ 0, %vector.ph229 ], [ %index.next238, %vector.body232 ] ; 4 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph229 ], [ %i.ri, %vector.body232 ]
  %vector.recur235 = phi <2 x i32> [ %vector.recur.init234, %vector.ph229 ], [ %wide.load236, %vector.body232 ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %index233
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %wide.load236 = load <2 x i32>, ptr %i.rb, align 4, !tbaa !3, !alias.scope !365 ; 4 uses
  %i.rc = shufflevector <2 x i32> %vector.recur235, <2 x i32> %wide.load236, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %index233
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %wide.load237 = load <2 x i32>, ptr %i.re, align 4, !tbaa !3, !alias.scope !368
  %i.rf = add <2 x i32> %i.rc, splat (i32 2)
  %i.rg = add <2 x i32> %i.rf, %wide.load236
  %i.rh = ashr <2 x i32> %i.rg, splat (i32 2)
  %i.ri = sub nsw <2 x i32> %wide.load237, %i.rh  ; 4 uses
  %i.rj = shufflevector <2 x i32> %vector.recur, <2 x i32> %i.ri, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx = shl i64 %index233, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rm = add nsw <2 x i32> %i.ri, %i.rj
  %i.rn = ashr <2 x i32> %i.rm, splat (i32 1)
  %i.ro = add nsw <2 x i32> %i.rn, %i.rc
  %interleaved.vec = shufflevector <2 x i32> %i.rj, <2 x i32> %i.ro, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.rl, align 4, !tbaa !3, !alias.scope !370, !noalias !372
  %index.next238 = add nuw i64 %index233, 2       ; 2 uses
  %i.rp = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.rp, label %middle.block239, label %vector.body232, !llvm.loop !373

middle.block239:                                  ; preds = %vector.body232
  %vector.recur.extract = extractelement <2 x i32> %i.ri, i64 1 ; 2 uses
  %vector.recur.extract240 = extractelement <2 x i32> %wide.load236, i64 1 ; 2 uses
  br i1 %cmp.n241, label %._crit_edge.i102, label %.lr.ph.i107.preheader323

.lr.ph.i107.preheader323:                         ; preds = %vector.memcheck218, %.lr.ph.i107.preheader, %middle.block239
  %indvars.iv77.i.ph = phi i64 [ 1, %vector.memcheck218 ], [ 1, %.lr.ph.i107.preheader ], [ %i.qm, %middle.block239 ]
  %indvars.iv.i108.ph = phi i64 [ 1, %vector.memcheck218 ], [ 1, %.lr.ph.i107.preheader ], [ %i.qo, %middle.block239 ]
  %.06367.i.ph = phi i32 [ %i.qy, %vector.memcheck218 ], [ %i.qy, %.lr.ph.i107.preheader ], [ %vector.recur.extract, %middle.block239 ]
  %.06466.i.ph = phi i32 [ %i.qs, %vector.memcheck218 ], [ %i.qs, %.lr.ph.i107.preheader ], [ %vector.recur.extract240, %middle.block239 ]
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.preheader323, %.lr.ph.i107
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph.i107 ], [ %indvars.iv77.i.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i109, %.lr.ph.i107 ], [ %indvars.iv.i108.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %.06367.i = phi i32 [ %i.rz, %.lr.ph.i107 ], [ %.06367.i.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %.06466.i = phi i32 [ %i.rs, %.lr.ph.i107 ], [ %.06466.i.ph, %.lr.ph.i107.preheader323 ] ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 3 uses
  %i.rq = mul nuw nsw i64 %indvars.iv.next78.i, %2
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !3  ; 3 uses
  %i.rt = mul nuw nsw i64 %indvars.iv77.i, %2
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3
  %i.rw = add i32 %.06466.i, 2
  %i.rx = add i32 %i.rw, %i.rs
  %i.ry = ashr i32 %i.rx, 2
  %i.rz = sub nsw i32 %i.rv, %i.ry                ; 3 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.i108 ; 2 uses
  store i32 %.06367.i, ptr %i.sa, align 4, !tbaa !3
  %i.sb = add nsw i32 %i.rz, %.06367.i
  %i.sc = ashr i32 %i.sb, 1
  %i.sd = add nsw i32 %i.sc, %.06466.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !3
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 2 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i106
  br i1 %exitcond.not.i110, label %._crit_edge.i102, label %.lr.ph.i107, !llvm.loop !374

._crit_edge.i102:                                 ; preds = %.lr.ph.i107, %middle.block239, %bb.t
  %.064.lcssa.i = phi i32 [ %i.qs, %bb.t ], [ %vector.recur.extract240, %middle.block239 ], [ %i.rs, %.lr.ph.i107 ] ; 3 uses
  %.063.lcssa.i = phi i32 [ %i.qy, %bb.t ], [ %vector.recur.extract, %middle.block239 ], [ %i.rz, %.lr.ph.i107 ] ; 3 uses
  %.0.lcssa.i103 = phi i64 [ 1, %bb.t ], [ %i.qo, %middle.block239 ], [ %indvars.iv.next.i109, %.lr.ph.i107 ]
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %.0.lcssa.i103
  store i32 %.063.lcssa.i, ptr %i.sf, align 4, !tbaa !3
  br i1 %.not.i104, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i102
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.po
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  %i.si = add nsw i32 %.064.lcssa.i, 1
  %i.sj = ashr i32 %i.si, 1
  %i.sk = sub nsw i32 %i.sh, %i.sj                ; 2 uses
  %i.sl = add nsw i32 %i.sk, %.063.lcssa.i
  %i.sm = ashr i32 %i.sl, 1
  %i.sn = add nsw i32 %i.sm, %.064.lcssa.i
  store i32 %i.sn, ptr %i.pq, align 4, !tbaa !3
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i102
  %i.so = add nsw i32 %.063.lcssa.i, %.064.lcssa.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ %i.so, %bb.v ], [ %i.sk, %bb.u ]
  store i32 %.sink.i, ptr %i.pt, align 4, !tbaa !3
  %.reass = add i64 %i.qp, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond307 = select i1 %or.cond306.not308, i1 true, i1 %diff.check
  br i1 %or.cond307, label %scalar.ph203.preheader, label %vector.body208

vector.body208:                                   ; preds = %bb.w, %vector.body208
  %index209 = phi i64 [ %index.next212, %vector.body208 ], [ 0, %bb.w ] ; 3 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %index209 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %wide.load210 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !3
  %wide.load211 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !3
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %index209 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  store <4 x i32> %wide.load210, ptr %i.sr, align 4, !tbaa !3
  store <4 x i32> %wide.load211, ptr %i.ss, align 4, !tbaa !3
  %index.next212 = add nuw i64 %index209, 8       ; 2 uses
  %i.st = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.st, label %middle.block213, label %vector.body208, !llvm.loop !375

middle.block213:                                  ; preds = %vector.body208
  br i1 %cmp.n214, label %opj_idwt3_v_cas1.exit, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %bb.w, %middle.block213
  %indvars.iv82.i.ph = phi i64 [ 0, %bb.w ], [ %n.vec207, %middle.block213 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv82.i.prol = phi i64 [ %indvars.iv.next83.i.prol, %scalar.ph203.prol ], [ %indvars.iv82.i.ph, %scalar.ph203.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv82.i.prol
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !3
  %i.sw = mul nuw nsw i64 %indvars.iv82.i.prol, %2
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.sw
  store i32 %i.sv, ptr %i.sx, align 4, !tbaa !3
  %indvars.iv.next83.i.prol = add nuw nsw i64 %indvars.iv82.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !376

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv82.i.unr = phi i64 [ %indvars.iv82.i.ph, %scalar.ph203.preheader ], [ %indvars.iv.next83.i.prol, %scalar.ph203.prol ]
  %i.sy = sub nsw i64 %indvars.iv82.i.ph, %i.pr
  %i.sz = icmp ugt i64 %i.sy, -4
  br i1 %i.sz, label %opj_idwt3_v_cas1.exit, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i.3, %scalar.ph203 ], [ %indvars.iv82.i.unr, %scalar.ph203.prol.loopexit ] ; 6 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv82.i
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !3
  %i.tc = mul nuw nsw i64 %indvars.iv82.i, %2
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.tc
  store i32 %i.tb, ptr %i.td, align 4, !tbaa !3
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next83.i
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !3
  %i.tg = mul nuw nsw i64 %indvars.iv.next83.i, %2
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.tg
  store i32 %i.tf, ptr %i.th, align 4, !tbaa !3
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i, 2 ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next83.i.1
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.tk = mul nuw nsw i64 %indvars.iv.next83.i.1, %2
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.tk
  store i32 %i.tj, ptr %i.tl, align 4, !tbaa !3
  %indvars.iv.next83.i.2 = add nuw nsw i64 %indvars.iv82.i, 3 ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next83.i.2
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !3
  %i.to = mul nuw nsw i64 %indvars.iv.next83.i.2, %2
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %.3136, i64 %i.to
  store i32 %i.tn, ptr %i.tp, align 4, !tbaa !3
  %indvars.iv.next83.i.3 = add nuw nsw i64 %indvars.iv82.i, 4 ; 2 uses
  %exitcond86.not.i.3 = icmp eq i64 %indvars.iv.next83.i.3, %i.pr
  br i1 %exitcond86.not.i.3, label %opj_idwt3_v_cas1.exit, label %scalar.ph203, !llvm.loop !377

opj_idwt3_v_cas1.exit:                            ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203, %middle.block213
  %i.tq = add nuw nsw i32 %.0137, 1               ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.3136, i64 4
  %exitcond162.not = icmp eq i32 %i.tq, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond162.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.t, !llvm.loop !378

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.epil.preheader338

.epil.preheader338:                               ; preds = %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa
  %lcmp.mod341 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod341)
  %i.ts = mul nuw nsw i64 %indvars.iv.next.i.i.1, %2
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ts ; 2 uses
  %.idx.i.i.epil = shl nsw i64 %indvars.iv.next.i.i.1, 5
  %i.tu = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.epil ; 2 uses
  %i.tv = load <2 x i64>, ptr %i.tu, align 16, !tbaa !62
  store <2 x i64> %i.tv, ptr %i.tt, align 1, !tbaa !62
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.ty = load <2 x i64>, ptr %i.tx, align 16, !tbaa !62
  store <2 x i64> %i.ty, ptr %i.tw, align 1, !tbaa !62
  br label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa: ; preds = %bb.r
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa
  %lcmp.mod333 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod333)
  %i.tz = mul nuw nsw i64 %indvars.iv.next.i.i92.1, %2
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tz ; 2 uses
  %.idx.i.i91.epil = shl nsw i64 %indvars.iv.next.i.i92.1, 5
  %i.ub = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i91.epil ; 2 uses
  %i.uc = load <2 x i64>, ptr %i.ub, align 16, !tbaa !62
  store <2 x i64> %i.uc, ptr %i.ua, align 1, !tbaa !62
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.uf = load <2 x i64>, ptr %i.ue, align 16, !tbaa !62
  store <2 x i64> %i.uf, ptr %i.ud, align 1, !tbaa !62
  br label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit:        ; preds = %bb.m, %.lr.ph135, %opj_idwt3_v_cas1.exit, %.epil.preheader, %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit318.unr-lcssa, %opj_idwt3_v_cas0.exit, %.epil.preheader338, %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa, %middle.block, %bb.l, %.preheader116, %bb.g, %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_decode_v_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = add i32 %i.b, 8                          ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !120  ; 2 uses
  %.not20 = icmp ugt i32 %i.d, %i.e
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ %i.d, %.lr.ph ], [ %i.n, %bb.b ] ; 3 uses
  %.021 = phi i32 [ %i.b, %.lr.ph ], [ %i.h, %bb.b ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.j = zext i32 %.021 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.g, align 4, !tbaa !117
  %i.m = zext i32 %i.l to i64
  tail call fastcc void @opj_idwt53_v(ptr noundef nonnull %0, ptr noundef %i.k, i64 noundef %i.m, i32 noundef 8)
  %i.n = add i32 %i.h, 8                          ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !120  ; 2 uses
  %.not = icmp ugt i32 %i.n, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !379

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = icmp ult i32 %.0.lcssa, %.lcssa
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.s = zext i32 %.0.lcssa to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = zext i32 %i.v to i64
  %i.x = sub nuw i32 %.lcssa, %.0.lcssa
  tail call fastcc void @opj_idwt53_v(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %i.w, i32 noundef %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.y = load ptr, ptr %0, align 8, !tbaa !121
  tail call void @opj_aligned_free(ptr noundef %i.y) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @opj_dwt_init_sparse_array(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [192 x i8], ptr %i.b, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %i.h = load i32, ptr %i.e, align 8, !tbaa !29
  %i.i = sub nsw i32 %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = sub nsw i32 %i.k, %i.m                   ; 2 uses
  %i.o = tail call noundef i32 @llvm.umin.i32(i32 %i.i, i32 64)
  %i.p = tail call noundef i32 @llvm.umin.i32(i32 %i.n, i32 64)
  %i.q = tail call ptr @opj_sparse_array_int32_create(i32 noundef %i.i, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p) #15 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not112 = icmp eq i32 %1, 0
  br i1 %.not112, label %.loopexit, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.critedge99
  %indvars.iv120 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvars.iv.next121, %.critedge99 ] ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.s, i64 %indvars.iv120 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !380  ; 2 uses
  %.not91107.not = icmp eq i32 %i.v, 0
  br i1 %.not91107.not, label %.critedge99, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph111
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.z = add nuw i64 %indvars.iv120, 4294967295
  %i.aa = and i64 %i.z, 4294967295                ; 2 uses
  %.pre = load i32, ptr %i.x, align 8, !tbaa !381 ; 2 uses
  %.pre123 = load i32, ptr %i.y, align 4, !tbaa !382 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph109, %.critedge97
  %i.ab = phi i32 [ %i.v, %.lr.ph109 ], [ %i.cs, %.critedge97 ]
  %i.ac = phi i32 [ %.pre123, %.lr.ph109 ], [ %i.ct, %.critedge97 ] ; 2 uses
  %i.ad = phi i32 [ %.pre, %.lr.ph109 ], [ %i.cu, %.critedge97 ] ; 2 uses
  %i.ae = phi i32 [ %.pre123, %.lr.ph109 ], [ %i.cv, %.critedge97 ] ; 2 uses
  %i.af = phi i32 [ %.pre, %.lr.ph109 ], [ %i.cw, %.critedge97 ] ; 2 uses
  %indvars.iv117 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next118, %.critedge97 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv117 ; 4 uses
  %i.ah = mul i32 %i.ae, %i.af
  %.not90104.not = icmp eq i32 %i.ah, 0
  br i1 %.not90104.not, label %.critedge97, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph106, %.critedge95
  %i.al = phi i32 [ %i.ac, %.lr.ph106 ], [ %i.co, %.critedge95 ]
  %i.am = phi i32 [ %i.ad, %.lr.ph106 ], [ %i.cp, %.critedge95 ]
  %indvars.iv114 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next115, %.critedge95 ] ; 2 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !383
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %indvars.iv114 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !384 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !387 ; 2 uses
  %i.at = mul i32 %i.as, %i.ar
  %.not89102.not = icmp eq i32 %i.at, 0
  br i1 %.not89102.not, label %.critedge95, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge93
  %i.av = phi i32 [ %i.as, %.lr.ph ], [ %i.ck, %.critedge93 ]
  %i.aw = phi i32 [ %i.ar, %.lr.ph ], [ %i.cl, %.critedge93 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge93 ] ; 2 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.ax, i64 %indvars.iv ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !388 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %.critedge93, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !392 ; 2 uses
  %i.bd = load i32, ptr %i.ag, align 8, !tbaa !137
  %i.be = sub nsw i32 %i.bc, %i.bd                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !393 ; 2 uses
  %i.bh = load i32, ptr %i.aj, align 4, !tbaa !141
  %i.bi = sub nsw i32 %i.bg, %i.bh                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !394
  %i.bl = sub nsw i32 %i.bk, %i.bc                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !395
  %i.bo = sub i32 %i.bn, %i.bg
  %i.bp = load i32, ptr %i.ak, align 8, !tbaa !396 ; 2 uses
  %i.bq = and i32 %i.bp, 1
  %.not86 = icmp eq i32 %i.bq, 0
  br i1 %.not86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw [192 x i8], ptr %i.br, i64 %i.aa ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !24
  %i.bv = load i32, ptr %i.bs, align 8, !tbaa !29
  %i.bw = add i32 %i.bu, %i.be
  %i.bx = sub i32 %i.bw, %i.bv
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.078 = phi i32 [ %i.bx, %bb.f ], [ %i.be, %bb.e ] ; 2 uses
  %i.by = and i32 %i.bp, 2
  %.not87 = icmp eq i32 %i.by, 0
  br i1 %.not87, label %bb.i, label %bb.h
end_hunk_4
