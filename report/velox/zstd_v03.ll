inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@HUF_decompress4X4:bb.a
vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.068106.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = or disjoint i64 %index, 1               ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !28
  %wide.load115 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !28
  %i.de = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.df = lshr <4 x i32> %wide.load115, %broadcast.splat
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.db ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !28
  store <4 x i32> %i.df, ptr %i.dh, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph103.i, %middle.block
  %indvars.iv124.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph103.i ], [ %i.cj, %middle.block ] ; 4 uses
  %i.dj = sub nsw i64 %wide.trip.count122.i, %indvars.iv124.i.ph
  %i.dk = sub nsw i64 %i.ch, %indvars.iv124.i.ph
  %xtraiter183 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv124.i.prol = phi i64 [ %indvars.iv.next125.i.prol, %scalar.ph.prol ], [ %indvars.iv124.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i.prol
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !28
  %i.dn = lshr i32 %i.dm, %.068106.i
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv124.i.prol
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !28
  %indvars.iv.next125.i.prol = add nuw nsw i64 %indvars.iv124.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter183
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv124.i.unr = phi i64 [ %indvars.iv124.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next125.i.prol, %scalar.ph.prol ]
  %i.dp = icmp ult i64 %i.dk, 3
  br i1 %i.dp, label %._crit_edge104.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i.3, %scalar.ph ], [ %indvars.iv124.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !28
  %i.ds = lshr i32 %i.dr, %.068106.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv124.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !28
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !28
  %i.dw = lshr i32 %i.dv, %.068106.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next125.i
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !28
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.1
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28
  %i.ea = lshr i32 %i.dz, %.068106.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next125.i.1
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !28
  %indvars.iv.next125.i.2 = add nuw nsw i64 %indvars.iv124.i, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i.2
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !28
  %i.ee = lshr i32 %i.ed, %.068106.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next125.i.2
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !28
  %indvars.iv.next125.i.3 = add nuw nsw i64 %indvars.iv124.i, 4 ; 2 uses
  %exitcond128.not.i.3 = icmp eq i64 %indvars.iv.next125.i.3, %wide.trip.count122.i
  br i1 %exitcond128.not.i.3, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !81

._crit_edge104.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eg = add i32 %.068106.i, 1                   ; 2 uses
  %.not79.i = icmp ugt i32 %i.eg, %i.cg
  br i1 %.not79.i, label %._crit_edge108.split.i, label %.lr.ph103.i, !llvm.loop !82

._crit_edge108.split.i:                           ; preds = %._crit_edge104.i, %.preheader.i, %._crit_edge94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.eh = add nsw i32 %i.n, -11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i.i = icmp eq i32 %.073.lcssa.i, 0
  br i1 %.not56.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge108.split.i
  %wide.trip.count61.i.i = zext i32 %.073.lcssa.i to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph55.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next59.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv58.i.i ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !68
  %i.ek = zext i8 %i.ej to i32                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !70  ; 2 uses
  %i.en = zext i8 %i.em to i32
  %i.eo = sub nsw i32 %i.ca, %i.en                ; 6 uses
  %i.ep = zext i8 %i.em to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !28 ; 5 uses
  %i.es = sub nsw i32 12, %i.eo                   ; 3 uses
  %i.et = shl nuw i32 1, %i.es                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.es, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph55.i.i
  %i.eu = add nsw i32 %i.eh, %i.eo                ; 2 uses
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 1)
  %i.ev = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !28 ; 3 uses
  %i.ey = zext i32 %i.er to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ey ; 4 uses
  %i.fa = zext i32 %i.eo to i64
  %i.fb = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.fa
  %i.fc = zext i32 %i.ex to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.fc
  %i.fe = sub i32 %.073.lcssa.i, %i.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.fb, i64 68, i1 false)
  %i.ff = icmp sgt i32 %i.eu, 1
  br i1 %i.ff, label %bb.d, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !28 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.sroa.6.0.insert.ext42.i.i.i = shl nsw i32 %i.eo, 16
  %.sroa.6.0.insert.shift43.i.i.i = and i32 %.sroa.6.0.insert.ext42.i.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i.i, %i.ek
  %.sroa.0.0.insert.insert40.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fh to i64  ; 3 uses
  %min.iters.check141 = icmp ult i32 %i.fh, 8
  br i1 %min.iters.check141, label %scalar.ph140.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.i.i.i
  %n.vec143 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i.i, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph142
  %index147 = phi i64 [ 0, %vector.ph142 ], [ %index.next148, %vector.body146 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %index147 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <4 x i32> %broadcast.splat145, ptr %i.fi, align 4
  store <4 x i32> %broadcast.splat145, ptr %i.fj, align 4
  %index.next148 = add nuw i64 %index147, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.fk, label %middle.block149, label %vector.body146, !llvm.loop !83

middle.block149:                                  ; preds = %vector.body146
  %cmp.n150 = icmp eq i64 %n.vec143, %wide.trip.count.i.i.i
  br i1 %cmp.n150, label %.loopexit.i.i.i, label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block149
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec143, %middle.block149 ]
  br label %scalar.ph140

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %scalar.ph140
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph140 ], [ %indvars.iv.i.i.i.ph, %scalar.ph140.preheader ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i.i, ptr %i.fl, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph140, !llvm.loop !84

.loopexit.i.i.i:                                  ; preds = %scalar.ph140, %middle.block149, %bb.d, %bb.c
  %.not54.i.i.i = icmp eq i32 %.073.lcssa.i, %i.ex
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.fe to i64
  %invariant.op.i.i = or disjoint i32 %i.ek, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i.a = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i.a, %.loopexit ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv56.i.i.i.a ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !68
  %i.fo = zext i8 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !70  ; 2 uses
  %i.fr = zext i8 %i.fq to i32
  %i.fs = sub nsw i32 %i.ca, %i.fr                ; 2 uses
  %i.ft = sub nsw i32 %i.es, %i.fs
  %i.fu = shl nuw i32 1, %i.ft
  %i.fv = zext i8 %i.fq to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !28 ; 9 uses
  %i.fy = add i32 %i.fu, %i.fx                    ; 4 uses
  %i.fz = shl nuw nsw i32 %i.fo, 8
  %i.ga = add nsw i32 %i.fs, %i.eo
  %.sroa.6.0.insert.ext.i.i.i = shl nsw i32 %i.ga, 16
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 16711680
  %i.gb = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i, %i.fz
  %.sroa.0.0.insert.insert.i.reass.i.i = or disjoint i32 %i.gb, %invariant.op.i.i ; 2 uses
  %i.gc = add i32 %i.fx, 1
  %i.gd = tail call i32 @llvm.umax.i32(i32 %i.fy, i32 %i.gc)
  %9 = sub i32 %i.gd, %i.fx                       ; 3 uses
  %min.iters.check129 = icmp ult i32 %9, 16
  br i1 %min.iters.check129, label %scalar.ph128.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i.i
  %10 = add i32 %i.fx, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.fy, i32 %10)
  %11 = add i32 %umax, -1
  %12 = icmp ult i32 %11, %i.fx
  br i1 %12, label %scalar.ph128.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %vector.scevcheck
  %n.vec131 = and i32 %9, -8                      ; 3 uses
  %13 = add i32 %i.fx, %n.vec131
  %broadcast.splatinsert132 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i.i, i64 0
  %broadcast.splat133 = shufflevector <4 x i32> %broadcast.splatinsert132, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph130
  %index135 = phi i32 [ 0, %vector.ph130 ], [ %index.next136, %vector.body134 ] ; 2 uses
  %14 = add i32 %i.fx, %index135
  %15 = zext i32 %14 to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %15 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <4 x i32> %broadcast.splat133, ptr %i.ge, align 4
  store <4 x i32> %broadcast.splat133, ptr %i.gf, align 4
  %index.next136 = add nuw i32 %index135, 8       ; 2 uses
  %i.gg = icmp eq i32 %index.next136, %n.vec131
  br i1 %i.gg, label %middle.block137, label %vector.body134, !llvm.loop !85

middle.block137:                                  ; preds = %vector.body134
  %cmp.n138 = icmp eq i32 %9, %n.vec131
  br i1 %cmp.n138, label %.loopexit, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %vector.scevcheck, %.lr.ph53.i.i.i, %middle.block137
  %.0.i.i.i.ph = phi i32 [ %i.fx, %vector.scevcheck ], [ %i.fx, %.lr.ph53.i.i.i ], [ %13, %middle.block137 ]
  br label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.preheader, %scalar.ph128
  %.0.i.i.i = phi i32 [ %16, %scalar.ph128 ], [ %.0.i.i.i.ph, %scalar.ph128.preheader ] ; 2 uses
  %16 = add i32 %.0.i.i.i, 1                      ; 2 uses
  %17 = zext i32 %.0.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %17
  store i32 %.sroa.0.0.insert.insert.i.reass.i.i, ptr %i.gh, align 4
  %18 = icmp ult i32 %16, %i.fy
  br i1 %18, label %scalar.ph128, label %.loopexit, !llvm.loop !86

.loopexit:                                        ; preds = %scalar.ph128, %middle.block137
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !28
  %indvars.iv.next57.i.i.i.a = add nuw nsw i64 %indvars.iv56.i.i.i.a, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i.a, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.i.i.i, !llvm.loop !87

HUF_fillDTableX4Level2.exit.i.i:                  ; preds = %.loopexit, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre.i.i = add i32 %i.et, %i.er
  br label %.loopexit.i.i

bb.e:                                             ; preds = %.lr.ph55.i.i
  %i.gi = add i32 %i.et, %i.er                    ; 5 uses
  %i.gj = icmp ult i32 %i.er, %i.gi
  br i1 %i.gj, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.4.0.insert.ext.i.i = shl nsw i32 %i.eo, 16
  %.sroa.4.0.insert.shift.i.i = and i32 %.sroa.4.0.insert.ext.i.i, 16711680
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %i.ek
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, 16777216 ; 2 uses
  %i.gk = zext i32 %i.er to i64                   ; 4 uses
  %wide.trip.count.i.i = zext i32 %i.gi to i64    ; 2 uses
  %i.gl = sub nsw i64 %wide.trip.count.i.i, %i.gk ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.gl, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %.lr.ph.i.i
  %n.vec119 = and i64 %i.gl, -8                   ; 3 uses
  %i.gm = add nsw i64 %n.vec119, %i.gk
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.i, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep.a = getelementptr [4 x i8], ptr %i.k, i64 %i.gk
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph118
  %index123 = phi i64 [ 0, %vector.ph118 ], [ %index.next124, %vector.body122 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %index123 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat121, ptr %gep, align 4
  store <4 x i32> %broadcast.splat121, ptr %i.gn, align 4
  %index.next124 = add nuw i64 %index123, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.go, label %middle.block125, label %vector.body122, !llvm.loop !88

middle.block125:                                  ; preds = %vector.body122
  %cmp.n126 = icmp eq i64 %i.gl, %n.vec119
  br i1 %cmp.n126, label %.loopexit.i.i, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %.lr.ph.i.i, %middle.block125
  %indvars.iv.i.i.ph = phi i64 [ %i.gk, %.lr.ph.i.i ], [ %i.gm, %middle.block125 ]
  br label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.preheader, %scalar.ph116
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph116 ], [ %indvars.iv.i.i.ph, %scalar.ph116.preheader ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.gp, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %scalar.ph116, !llvm.loop !89

.loopexit.i.i:                                    ; preds = %scalar.ph116, %middle.block125, %bb.e, %HUF_fillDTableX4Level2.exit.i.i
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %HUF_fillDTableX4Level2.exit.i.i ], [ %i.gi, %bb.e ], [ %i.gi, %middle.block125 ], [ %i.gi, %scalar.ph116 ]
  store i32 %.pre-phi.i.i, ptr %i.eq, align 4, !tbaa !28
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count61.i.i
  br i1 %exitcond62.not.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.i.i, !llvm.loop !90

HUF_readDTableX4.exit.thread:                     ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.a, %bb.b
  %.0.i.ph = phi i64 [ -44, %bb.b ], [ %i.l, %bb.a ], [ -1, %.lr.ph.i.preheader ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %HUF_decompress4X4_usingDTable.exit

HUF_readDTableX4.exit:                            ; preds = %.loopexit.i.i, %._crit_edge108.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not17 = icmp ult i64 %i.l, %3
  br i1 %.not17, label %bb.f, label %HUF_decompress4X4_usingDTable.exit

bb.f:                                             ; preds = %HUF_readDTableX4.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 10 uses
  %i.gr = sub nuw i64 %3, %i.l                    ; 3 uses
  %i.gs = icmp ult i64 %i.gr, 10
  br i1 %i.gs, label %HUF_decompress4X4_usingDTable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %.val165.i = load i16, ptr %i.gq, align 1       ; 5 uses
  %i.gu = zext i16 %.val165.i to i64              ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %.val164.i = load i16, ptr %i.gv, align 1       ; 5 uses
  %i.gw = zext i16 %.val164.i to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %.val.i = load i16, ptr %i.gx, align 1          ; 5 uses
  %i.gy = zext i16 %.val.i to i64                 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 6 ; 4 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gu  ; 12 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gw  ; 12 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.gy  ; 3 uses
  %i.hd = add i64 %1, 3
  %i.he = lshr i64 %i.hd, 2                       ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %i.he ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.he ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.he ; 5 uses
  %i.hi = add nuw nsw i64 %i.gu, 6
  %i.hj = add nuw nsw i64 %i.hi, %i.gw
  %i.hk = add nuw nsw i64 %i.hj, %i.gy            ; 2 uses
  %i.hl = sub i64 %i.gr, %i.hk
  %i.hm = icmp ugt i64 %i.hk, %i.gr
  br i1 %i.hm, label %BIT_initDStream.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hn = icmp eq i16 %.val165.i, 0
  br i1 %i.hn, label %BIT_initDStream.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ho = icmp ugt i16 %.val165.i, 7
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.gz, ptr %i.hp, align 8, !tbaa !63
  br i1 %i.ho, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hq = getelementptr inbounds i8, ptr %i.ha, i64 -8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !65
  %.val.i.i = load i64, ptr %i.hq, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !66
  %i.hs = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.j
  %i.hu = trunc nuw nsw i64 %i.hs to i32
  %i.hv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hu, i1 true)
  %i.hw = xor i32 %i.hv, 31
  %i.hx = sub nuw nsw i32 8, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.hx, ptr %i.hy, align 8, !tbaa !67
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gz, ptr %i.hz, align 8, !tbaa !65
  %i.ia = load i8, ptr %i.gz, align 1, !tbaa !10
  %i.ib = zext i8 %i.ia to i64                    ; 7 uses
  store i64 %i.ib, ptr %4, align 8, !tbaa !66
  switch i16 %.val165.i, label %bb.r [
    i16 7, label %bb.l
    i16 6, label %bb.m
    i16 5, label %bb.n
    i16 4, label %bb.o
    i16 3, label %bb.p
    i16 2, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !10
  %i.ie = zext i8 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 48
  %i.ig = or disjoint i64 %i.if, %i.ib
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ih = phi i64 [ %i.ig, %bb.l ], [ %i.ib, %bb.k ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gq, i64 11
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !10
  %i.ik = zext i8 %i.ij to i64
  %i.il = shl nuw nsw i64 %i.ik, 40
  %i.im = add nuw nsw i64 %i.il, %i.ih
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.in = phi i64 [ %i.im, %bb.m ], [ %i.ib, %bb.k ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.gq, i64 10
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !10
  %i.iq = zext i8 %i.ip to i64
  %i.ir = shl nuw nsw i64 %i.iq, 32
  %i.is = add nuw nsw i64 %i.ir, %i.in
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.it = phi i64 [ %i.is, %bb.n ], [ %i.ib, %bb.k ]
end_hunk_0
begin_hunk_1_@HUF_decodeStreamX4:bb.a
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !67
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !36
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUF_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !66
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !36
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !35
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !67
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUF_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !35
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fn, %i.fr
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fm, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.a, align 8
  br label %HUF_decodeLastSymbolX4.exit

HUF_decodeLastSymbolX4.exit:                      ; preds = %.sink.split.i, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long long", !6, i64 0}
!13 = !{!14, !15, i64 10264}
!14 = !{!"ZSTDv03_Dctx_s", !6, i64 0, !6, i64 4100, !6, i64 6152, !15, i64 10256, !15, i64 10264, !9, i64 10272, !5, i64 10280, !5, i64 10284, !16, i64 10288, !9, i64 10296, !6, i64 10304}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!14, !9, i64 10272}
!18 = !{!14, !5, i64 10284}
!19 = !{!14, !15, i64 10256}
!20 = !{!14, !5, i64 10280}
!21 = !{!22, !5, i64 0}
!22 = !{!"", !5, i64 0, !5, i64 4}
!23 = !{!22, !5, i64 4}
!24 = !{!15, !15, i64 0}
!25 = distinct !{null, null, null}
!26 = !{!14, !16, i64 10288}
!27 = !{!14, !9, i64 10296}
!28 = !{!5, !5, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"", !31, i64 0, !31, i64 2}
!31 = !{!"short", !6, i64 0}
!32 = !{!30, !31, i64 2}
!33 = !{!34, !31, i64 0}
!34 = !{!"", !31, i64 0, !6, i64 2, !6, i64 3}
!35 = !{!34, !6, i64 2}
!36 = !{!34, !6, i64 3}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!31, !31, i64 0}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !38, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !38, !46}
!49 = distinct !{!49, !38, !46, !47}
!50 = distinct !{!50, !38, !46, !47}
!51 = distinct !{!51, !38, !46}
!52 = distinct !{!52, !38, !46, !47}
!53 = !{!"branch_weights", i32 4, i32 28}
!54 = distinct !{!54, !38, !46, !47}
!55 = distinct !{!55, !38, !46}
!56 = distinct !{!56, !38, !46}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38, !46, !47}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = distinct !{!60, !38, !46, !47}
!61 = distinct !{!61, !38, !47, !46}
!62 = distinct !{!62, !38}
!63 = !{!64, !16, i64 24}
!64 = !{!"", !9, i64 0, !5, i64 8, !16, i64 16, !16, i64 24}
!65 = !{!64, !16, i64 16}
!66 = !{!64, !9, i64 0}
!67 = !{!64, !5, i64 8}
!68 = !{!69, !6, i64 0}
!69 = !{!"", !6, i64 0, !6, i64 1}
!70 = !{!69, !6, i64 1}
!71 = distinct !{!71, !38}
!72 = !{!16, !16, i64 0}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38, !46, !47}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !38, !46}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38, !46, !47}
!84 = distinct !{!84, !38, !47, !46}
!85 = distinct !{!85, !38, !46, !47}
!86 = distinct !{!86, !38, !46}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38, !46, !47}
!89 = distinct !{!89, !38, !47, !46}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = !{!93}
!93 = distinct !{!93, !94}
!94 = distinct !{!94, !"LVerDomain"}
!95 = !{!96}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !38, !46, !47}
!98 = distinct !{!98, !38, !46}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !38}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
end_hunk_1
