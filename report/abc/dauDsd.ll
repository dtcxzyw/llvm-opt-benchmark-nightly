Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauDsd?download=true
inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 97
begin_hunk_0_@Dau_DsdTruth6Compose_rec:bb.a
  %or.cond = or i1 %min.iters.check92, %diff.check94
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.preheader.i33
  %n.vec96 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next101, %vector.body97 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index98 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load99 = load <2 x i64>, ptr %i.o, align 8, !tbaa !45
  %wide.load100 = load <2 x i64>, ptr %i.p, align 8, !tbaa !45
  %i.q = xor <2 x i64> %wide.load99, splat (i64 -1)
  %i.r = xor <2 x i64> %wide.load100, splat (i64 -1)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index98 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %i.q, ptr %i.s, align 8, !tbaa !45
  store <2 x i64> %i.r, ptr %i.t, align 8, !tbaa !45
  %index.next101 = add nuw i64 %index98, 4        ; 2 uses
  %i.u = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.u, label %middle.block102, label %vector.body97, !llvm.loop !88

middle.block102:                                  ; preds = %vector.body97
  %cmp.n103 = icmp eq i64 %n.vec96, %wide.trip.count.i
  br i1 %cmp.n103, label %Abc_TtConst0.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i33, %middle.block102
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i33 ], [ %n.vec96, %middle.block102 ] ; 3 uses
  %xtraiter116 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = xor i64 %i.w, -1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.prol
  store i64 %i.x, ptr %i.y, align 8, !tbaa !45
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !89

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %Abc_TtConst0.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %tailrecurse._crit_edge
  br i1 %i.m, label %.lr.ph18.preheader.i, label %Abc_TtConst0.exit

.lr.ph18.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count24.i = zext nneg i32 %4 to i64  ; 5 uses
  %min.iters.check76 = icmp ult i32 %4, 8
  %i.ab = sub i64 %i.a, %i.b
  %diff.check78 = icmp ugt i64 %i.ab, -32
  %or.cond105 = or i1 %min.iters.check76, %diff.check78
  br i1 %or.cond105, label %.lr.ph18.i.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph18.preheader.i
  %n.vec80 = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next85, %vector.body81 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index82 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load83 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !45
  %wide.load84 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index82 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x i64> %wide.load83, ptr %i.ae, align 8, !tbaa !45
  store <2 x i64> %wide.load84, ptr %i.af, align 8, !tbaa !45
  %index.next85 = add nuw i64 %index82, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next85, %n.vec80
  br i1 %i.ag, label %middle.block86, label %vector.body81, !llvm.loop !90

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %n.vec80, %wide.trip.count24.i
  br i1 %cmp.n87, label %Abc_TtConst0.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i, %middle.block86
  %indvars.iv21.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %n.vec80, %middle.block86 ] ; 3 uses
  %xtraiter114 = and i64 %wide.trip.count24.i, 3  ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol

.lr.ph18.i.prol:                                  ; preds = %.lr.ph18.i.preheader, %.lr.ph18.i.prol
  %indvars.iv21.i.prol = phi i64 [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ], [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.prol ], [ 0, %.lr.ph18.i.preheader ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21.i.prol
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv21.i.prol
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !45
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv21.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter114
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol, !llvm.loop !91

.lr.ph18.i.prol.loopexit:                         ; preds = %.lr.ph18.i.prol, %.lr.ph18.i.preheader
  %indvars.iv21.i.unr = phi i64 [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ], [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ]
  %i.ak = sub nsw i64 %indvars.iv21.i.ph, %wide.trip.count24.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %Abc_TtConst0.exit, label %.lr.ph18.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = xor i64 %i.an, -1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = xor i64 %i.ar, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  store i64 %i.as, ptr %i.at, align 8, !tbaa !45
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.av = load i64, ptr %i.au, align 8, !tbaa !45
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !45
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !45
  %i.ba = xor i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !45
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtConst0.exit, label %.lr.ph.i, !llvm.loop !92

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.3, %.lr.ph18.i ], [ %indvars.iv21.i.unr, %.lr.ph18.i.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21.i
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !45
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv21.i
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next22.i
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !45
  %indvars.iv.next22.i.1 = add nuw nsw i64 %indvars.iv21.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.1
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next22.i.1
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !45
  %indvars.iv.next22.i.2 = add nuw nsw i64 %indvars.iv21.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.2
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next22.i.2
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !45
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %exitcond25.not.i.3 = icmp eq i64 %indvars.iv.next22.i.3, %wide.trip.count24.i
  br i1 %exitcond25.not.i.3, label %Abc_TtConst0.exit, label %.lr.ph18.i, !llvm.loop !93

.lr.ph:                                           ; preds = %tailrecurse.preheader, %tailrecurse
  %indvar = phi i64 [ %indvar.next, %tailrecurse ], [ 0, %tailrecurse.preheader ] ; 2 uses
  %indvars.iv.next67 = phi i64 [ %indvars.iv.next, %tailrecurse ], [ %indvars.iv.next66, %tailrecurse.preheader ] ; 5 uses
  %i.bo = trunc nsw i64 %indvars.iv.next67 to i32 ; 3 uses
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = zext nneg i32 %i.bp to i64              ; 3 uses
  %i.br = lshr i64 %0, %i.bq
  %i.bs = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next67
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !45 ; 2 uses
  %i.bu = xor i64 %i.br, %0
  %i.bv = and i64 %i.bt, %i.bu
  %.not40 = icmp eq i64 %i.bv, 0
  br i1 %.not40, label %tailrecurse, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bw = and i64 %i.bt, %0                       ; 2 uses
  %i.bx = shl i64 %i.bw, %i.bq
  %i.by = or i64 %i.bx, %i.bw
  call void @Dau_DsdTruth6Compose_rec(i64 noundef %i.by, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %i.bo, i32 noundef %4)
  %i.bz = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %indvars.iv.next67
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !45
  %i.cb = and i64 %i.ca, %0                       ; 2 uses
  %i.cc = lshr i64 %i.cb, %i.bq
  %i.cd = or i64 %i.cc, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 5 uses
  call void @Dau_DsdTruth6Compose_rec(i64 noundef %i.cd, ptr noundef %1, ptr noundef nonnull %i.ce, i32 noundef %i.bo, i32 noundef %4)
  %i.cf = getelementptr inbounds [512 x i8], ptr %1, i64 %indvars.iv.next67 ; 4 uses
  %i.cg = icmp sgt i32 %4, 0
  br i1 %i.cg, label %.lr.ph.preheader.i34, label %Abc_TtMux.exit

.lr.ph.preheader.i34:                             ; preds = %bb.d
  %wide.trip.count.i35 = zext nneg i32 %4 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.i36.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i34
  %5 = shl nsw i64 %i.d, 9
  %6 = add i64 %i.b, 512
  %i.ch = add i64 %5, %i.a
  %i.ci = sub i64 %6, %i.ch
  %i.cj = shl i64 %indvar, 9
  %i.ck = add i64 %i.ci, %i.cj
  %i.cl = add i64 %i.ck, -1
  %diff.check = icmp ult i64 %i.cl, 31
  br i1 %diff.check, label %.lr.ph.i36.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i35, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <2 x i64>, ptr %i.cm, align 8, !tbaa !45 ; 2 uses
  %wide.load68 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !45 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load69 = load <2 x i64>, ptr %i.co, align 16, !tbaa !45
  %wide.load70 = load <2 x i64>, ptr %i.cp, align 16, !tbaa !45
  %i.cq = and <2 x i64> %wide.load69, %wide.load
  %i.cr = and <2 x i64> %wide.load70, %wide.load68
  %i.cs = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ct = xor <2 x i64> %wide.load68, splat (i64 -1)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load71 = load <2 x i64>, ptr %i.cu, align 16, !tbaa !45
  %wide.load72 = load <2 x i64>, ptr %i.cv, align 16, !tbaa !45
  %i.cw = and <2 x i64> %wide.load71, %i.cs
  %i.cx = and <2 x i64> %wide.load72, %i.ct
  %i.cy = or <2 x i64> %i.cw, %i.cq
  %i.cz = or <2 x i64> %i.cx, %i.cr
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %i.cy, ptr %i.da, align 8, !tbaa !45
  store <2 x i64> %i.cz, ptr %i.db, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i35
  br i1 %cmp.n, label %Abc_TtMux.exit, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i34, %middle.block
  %indvars.iv.i37.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i34 ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count.i35, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol

.lr.ph.i36.prol:                                  ; preds = %.lr.ph.i36.preheader
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i37.ph
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !45 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i37.ph
  %i.dg = load i64, ptr %i.df, align 16, !tbaa !45
  %i.dh = and i64 %i.dg, %i.de
  %i.di = xor i64 %i.de, -1
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i37.ph
  %i.dk = load i64, ptr %i.dj, align 16, !tbaa !45
  %i.dl = and i64 %i.dk, %i.di
  %i.dm = or i64 %i.dl, %i.dh
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i37.ph
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !45
  %indvars.iv.next.i38.prol = or disjoint i64 %indvars.iv.i37.ph, 1
  br label %.lr.ph.i36.prol.loopexit

.lr.ph.i36.prol.loopexit:                         ; preds = %.lr.ph.i36.prol, %.lr.ph.i36.preheader
  %indvars.iv.i37.unr = phi i64 [ %indvars.iv.i37.ph, %.lr.ph.i36.preheader ], [ %indvars.iv.next.i38.prol, %.lr.ph.i36.prol ]
  %i.do = add nsw i64 %wide.trip.count.i35, -1
  %i.dp = icmp eq i64 %indvars.iv.i37.ph, %i.do
  br i1 %i.dp, label %Abc_TtMux.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38.1, %.lr.ph.i36 ], [ %indvars.iv.i37.unr, %.lr.ph.i36.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i37
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !45 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i37
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !45
  %i.du = and i64 %i.dt, %i.dr
  %i.dv = xor i64 %i.dr, -1
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i37
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !45
  %i.dy = and i64 %i.dx, %i.dv
  %i.dz = or i64 %i.dy, %i.du
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i37
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !45
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1 ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i38
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i38
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !45
  %i.ef = and i64 %i.ee, %i.ec
  %i.eg = xor i64 %i.ec, -1
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i38
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !45
  %i.ej = and i64 %i.ei, %i.eg
  %i.ek = or i64 %i.ej, %i.ef
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i38
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !45
  %indvars.iv.next.i38.1 = add nuw nsw i64 %indvars.iv.i37, 2 ; 2 uses
  %exitcond.not.i39.1 = icmp eq i64 %indvars.iv.next.i38.1, %wide.trip.count.i35
  br i1 %exitcond.not.i39.1, label %Abc_TtMux.exit, label %.lr.ph.i36, !llvm.loop !95

Abc_TtMux.exit:                                   ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %middle.block, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %Abc_TtConst0.exit

Abc_TtConst0.exit:                                ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block86, %middle.block102, %.preheader.i, %.preheader14.i, %.lr.ph.preheader.i32, %bb.c, %.lr.ph.preheader.i, %bb.b, %Abc_TtMux.exit
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Dau_DsdTruthCompose_rec(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca [2 x [64 x i64]], align 16        ; 8 uses
  %i.d = icmp slt i32 %3, 7
  br i1 %i.d, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr68.lcssa = phi i32 [ %3, %bb.a ], [ 6, %tailrecurse ]
  %i.e = load i64, ptr %0, align 8, !tbaa !45
  tail call void @Dau_DsdTruth6Compose_rec(i64 noundef %i.e, ptr noundef %1, ptr noundef %2, i32 noundef %.tr68.lcssa, i32 noundef %4)
  br label %Abc_TtConst0.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %indvar = phi i64 [ %indvar.next, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  %.tr6880 = phi i32 [ %i.r, %tailrecurse ], [ %3, %bb.a ] ; 4 uses
  %i.f = add nsw i32 %.tr6880, -6                 ; 2 uses
  %i.g = shl nuw i32 1, %i.f                      ; 3 uses
  %.not = icmp eq i32 %i.f, 31
  br i1 %.not, label %.loopexit70, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 2 uses
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit70, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %.lr.ph.i42

.loopexit70:                                      ; preds = %.lr.ph, %bb.b
  %i.j = icmp sgt i32 %4, 0
  br i1 %i.j, label %.lr.ph.preheader.i38, label %Abc_TtConst0.exit

.lr.ph.preheader.i38:                             ; preds = %.loopexit70
  %i.k = zext nneg i32 %4 to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.l, i1 false), !tbaa !45
  br label %Abc_TtConst0.exit

bb.c:                                             ; preds = %.lr.ph.i42
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.next.i45, %wide.trip.count.i
  br i1 %exitcond.not.i46, label %bb.d, label %.lr.ph.i42, !llvm.loop !8

.lr.ph.i42:                                       ; preds = %.lr.ph.i, %bb.c
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i45, %bb.c ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i43
  %i.n = load i64, ptr %i.m, align 8, !tbaa !45
  %.not.i44 = icmp eq i64 %i.n, -1
  br i1 %.not.i44, label %bb.c, label %.preheader.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %4, 0
  br i1 %i.o, label %.lr.ph.preheader.i47, label %Abc_TtConst0.exit

.lr.ph.preheader.i47:                             ; preds = %bb.d
  %i.p = zext nneg i32 %4 to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 -1, i64 %i.q, i1 false), !tbaa !45
  br label %Abc_TtConst0.exit

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i42
  %i.r = add nsw i32 %.tr6880, -1                 ; 4 uses
  %i.s = add nsw i32 %.tr6880, -7                 ; 3 uses
  %i.t = sext i32 %i.g to i64
  %.idx.i = shl nsw i64 %i.t, 3
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not47.i = icmp eq i32 %i.s, 31
  %i.v = shl i32 2, %i.s
  %i.w = sext i32 %i.v to i64
  br i1 %.not47.i, label %tailrecurse, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.x = shl nuw i32 1, %i.s                      ; 2 uses
  %i.y = sext i32 %i.x to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count.i49 = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.ac, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.y
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %indvars.iv.next.i51, %wide.trip.count.i49
  br i1 %exitcond.not.i52, label %._crit_edge.us.i, label %bb.f, !llvm.loop !9

bb.f:                                             ; preds = %bb.e, %.preheader.us.i
  %indvars.iv.i50 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i51, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i50
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !45
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i50
  %i.ab = load i64, ptr %gep.i, align 8, !tbaa !45
  %.not.us.i = icmp eq i64 %i.aa, %i.ab
  br i1 %.not.us.i, label %bb.e, label %Abc_TtHasVar.exit

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.ac = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.w ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.u
  br i1 %i.ad, label %.preheader.us.i, label %tailrecurse, !llvm.loop !10

tailrecurse:                                      ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i
  %i.ae = icmp slt i32 %.tr6880, 8
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ae, label %tailrecurse._crit_edge, label %.lr.ph

Abc_TtHasVar.exit:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @Dau_DsdTruthCompose_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %i.r, i32 noundef %4)
  %i.af = sdiv i32 %i.g, 2
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 5 uses
  call void @Dau_DsdTruthCompose_rec(ptr noundef %i.ah, ptr noundef %1, ptr noundef nonnull %i.ai, i32 noundef %i.r, i32 noundef %4)
  %i.aj = zext nneg i32 %i.r to i64
  %i.ak = getelementptr inbounds nuw [512 x i8], ptr %1, i64 %i.aj ; 4 uses
  %i.al = icmp sgt i32 %4, 0
  br i1 %i.al, label %.lr.ph.preheader.i54, label %Abc_TtMux.exit

.lr.ph.preheader.i54:                             ; preds = %Abc_TtHasVar.exit
  %wide.trip.count.i55 = zext nneg i32 %4 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.i56.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i54
  %i.am = add nsw i32 %3, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 9
  %i.ap = add i64 %i.ao, %i.a
  %i.aq = sub i64 %i.b, %i.ap
  %i.ar = shl nuw nsw i64 %indvar, 9
  %i.as = add i64 %i.aq, %i.ar
  %i.at = add i64 %i.as, -1
  %diff.check = icmp ult i64 %i.at, 31
  br i1 %diff.check, label %.lr.ph.i56.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i55, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !45 ; 2 uses
  %wide.load106 = load <2 x i64>, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load107 = load <2 x i64>, ptr %i.aw, align 16, !tbaa !45
  %wide.load108 = load <2 x i64>, ptr %i.ax, align 16, !tbaa !45
  %i.ay = and <2 x i64> %wide.load107, %wide.load
  %i.az = and <2 x i64> %wide.load108, %wide.load106
  %i.ba = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bb = xor <2 x i64> %wide.load106, splat (i64 -1)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load109 = load <2 x i64>, ptr %i.bc, align 16, !tbaa !45
  %wide.load110 = load <2 x i64>, ptr %i.bd, align 16, !tbaa !45
  %i.be = and <2 x i64> %wide.load109, %i.ba
  %i.bf = and <2 x i64> %wide.load110, %i.bb
  %i.bg = or <2 x i64> %i.be, %i.ay
  %i.bh = or <2 x i64> %i.bf, %i.az
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x i64> %i.bg, ptr %i.bi, align 8, !tbaa !45
  store <2 x i64> %i.bh, ptr %i.bj, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i55
  br i1 %cmp.n, label %Abc_TtMux.exit, label %.lr.ph.i56.preheader

.lr.ph.i56.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i54, %middle.block
  %indvars.iv.i57.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i54 ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count.i55, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i56.prol.loopexit, label %.lr.ph.i56.prol

.lr.ph.i56.prol:                                  ; preds = %.lr.ph.i56.preheader
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i57.ph
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i57.ph
  %i.bo = load i64, ptr %i.bn, align 16, !tbaa !45
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = xor i64 %i.bm, -1
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i57.ph
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !45
  %i.bt = and i64 %i.bs, %i.bq
  %i.bu = or i64 %i.bt, %i.bp
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i57.ph
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !45
  %indvars.iv.next.i58.prol = or disjoint i64 %indvars.iv.i57.ph, 1
  br label %.lr.ph.i56.prol.loopexit

.lr.ph.i56.prol.loopexit:                         ; preds = %.lr.ph.i56.prol, %.lr.ph.i56.preheader
  %indvars.iv.i57.unr = phi i64 [ %indvars.iv.i57.ph, %.lr.ph.i56.preheader ], [ %indvars.iv.next.i58.prol, %.lr.ph.i56.prol ]
  %i.bw = add nsw i64 %wide.trip.count.i55, -1
  %i.bx = icmp eq i64 %indvars.iv.i57.ph, %i.bw
  br i1 %i.bx, label %Abc_TtMux.exit, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.prol.loopexit, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ %indvars.iv.next.i58.1, %.lr.ph.i56 ], [ %indvars.iv.i57.unr, %.lr.ph.i56.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i57
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i57
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !45
  %i.cc = and i64 %i.cb, %i.bz
  %i.cd = xor i64 %i.bz, -1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i57
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cg = and i64 %i.cf, %i.cd
  %i.ch = or i64 %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i57
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !45
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i58
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !45 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i58
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !45
  %i.cn = and i64 %i.cm, %i.ck
  %i.co = xor i64 %i.ck, -1
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i58
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !45
  %i.cr = and i64 %i.cq, %i.co
  %i.cs = or i64 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i58
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !45
  %indvars.iv.next.i58.1 = add nuw nsw i64 %indvars.iv.i57, 2 ; 2 uses
  %exitcond.not.i59.1 = icmp eq i64 %indvars.iv.next.i58.1, %wide.trip.count.i55
  br i1 %exitcond.not.i59.1, label %Abc_TtMux.exit, label %.lr.ph.i56, !llvm.loop !97

Abc_TtMux.exit:                                   ; preds = %.lr.ph.i56.prol.loopexit, %.lr.ph.i56, %middle.block, %Abc_TtHasVar.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %Abc_TtConst0.exit

Abc_TtConst0.exit:                                ; preds = %.lr.ph.preheader.i47, %bb.d, %.lr.ph.preheader.i38, %.loopexit70, %Abc_TtMux.exit, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Dau_DsdToTruth_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = alloca [64 x i64], align 16              ; 7 uses
  %i.c = alloca [64 x i64], align 16              ; 7 uses
  %i.d = alloca [3 x [64 x i64]], align 16        ; 13 uses
  %i.e = alloca [12 x [64 x i64]], align 16       ; 4 uses
  %i.f = alloca [64 x i64], align 16              ; 4 uses
  %i.g = icmp slt i32 %5, 7
  %i.h = add nsw i32 %5, -6
  %i.i = shl nuw i32 1, %i.h
  %i.j = select i1 %i.g, i32 1, i32 %i.i          ; 42 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !36    ; 4 uses
  %.not.not.not.not = icmp eq i8 %i.l, 33         ; 5 uses
  br i1 %.not.not.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !43
  %.pre = load i8, ptr %i.m, align 1, !tbaa !36   ; 3 uses
  %i.n = add i8 %.pre, -97
  %or.cond = icmp ult i8 %i.n, 26
  br i1 %or.cond, label %.preheader14.i, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.o = add i8 %i.l, -97
  %or.cond193 = icmp ult i8 %i.o, 26
  br i1 %or.cond193, label %.thread195, label %bb.c

.thread195:                                       ; preds = %.thread
  %i.p = zext nneg i8 %i.l to i64
  %i.q = getelementptr [8 x i8], ptr %3, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -776
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48   ; 7 uses
  %i.t = icmp sgt i32 %i.j, 0
  br i1 %i.t, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.preheader14.i:                                   ; preds = %bb.b
  %i.u = zext nneg i8 %.pre to i64
  %i.v = getelementptr [8 x i8], ptr %3, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -776
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 7 uses
  %i.y = icmp sgt i32 %i.j, 0
  br i1 %i.y, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %.preheader14.i
  %i.z = ptrtoaddr ptr %i.x to i64
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 3 uses
  %min.iters.check295 = icmp ult i32 %i.j, 6
  %i.aa = sub i64 %i.z, %i.a
  %diff.check297 = icmp ugt i64 %i.aa, -32
  %or.cond308 = select i1 %min.iters.check295, i1 true, i1 %diff.check297
  br i1 %or.cond308, label %.lr.ph.i.preheader, label %vector.ph298

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %xtraiter324 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ab = icmp ult i32 %i.j, 4
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter328 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

vector.ph298:                                     ; preds = %.lr.ph.preheader.i
  %n.vec299 = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next304, %vector.body300 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index301 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load302 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !45
  %wide.load303 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !45
  %i.ae = xor <2 x i64> %wide.load302, splat (i64 -1)
  %i.af = xor <2 x i64> %wide.load303, splat (i64 -1)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index301 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> %i.ae, ptr %i.ag, align 8, !tbaa !45
  store <2 x i64> %i.af, ptr %i.ah, align 8, !tbaa !45
  %index.next304 = add nuw i64 %index301, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.ai, label %Abc_TtCopy.exit, label %vector.body300, !llvm.loop !98

.lr.ph18.preheader.i:                             ; preds = %.thread195
  %i.aj = ptrtoaddr ptr %i.s to i64
  %wide.trip.count24.i = zext nneg i32 %i.j to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.j, 8
  %i.ak = sub i64 %i.aj, %i.a
  %diff.check = icmp ugt i64 %i.ak, -32
end_hunk_0
