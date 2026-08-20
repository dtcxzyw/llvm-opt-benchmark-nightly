inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@HUFv06_readDTableX4:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = or disjoint i64 %index, 1               ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load = load <4 x i32>, ptr %i.di, align 4, !tbaa !8
  %wide.load135 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !8
  %i.dk = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dl = lshr <4 x i32> %wide.load135, %broadcast.splat
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dh ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !8
  store <4 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge92, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph91, %middle.block
  %indvars.iv111.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph91 ], [ %i.db, %middle.block ] ; 4 uses
  %i.dp = sub nsw i64 %wide.trip.count109, %indvars.iv111.ph
  %xtraiter186 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv111.prol = phi i64 [ %indvars.iv.next112.prol, %scalar.ph.prol ], [ %indvars.iv111.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv111.prol
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !8
  %i.ds = lshr i32 %i.dr, %i.dd
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv111.prol
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !8
  %indvars.iv.next112.prol = add nuw nsw i64 %indvars.iv111.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter186
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv111.unr = phi i64 [ %indvars.iv111.ph, %scalar.ph.preheader ], [ %indvars.iv.next112.prol, %scalar.ph.prol ]
  %i.du = sub nsw i64 %indvars.iv111.ph, %wide.trip.count109
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %._crit_edge92, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.3, %scalar.ph ], [ %indvars.iv111.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv111
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !8
  %i.dy = lshr i32 %i.dx, %i.dd
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv111
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !8
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next112
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !8
  %i.ec = lshr i32 %i.eb, %i.dd
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next112
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !8
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next112.1
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = lshr i32 %i.ef, %i.dd
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next112.1
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !8
  %indvars.iv.next112.2 = add nuw nsw i64 %indvars.iv111, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next112.2
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = lshr i32 %i.ej, %i.dd
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next112.2
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !8
  %indvars.iv.next112.3 = add nuw nsw i64 %indvars.iv111, 4 ; 2 uses
  %exitcond116.not.3 = icmp eq i64 %indvars.iv.next112.3, %wide.trip.count115
  br i1 %exitcond116.not.3, label %._crit_edge92, label %scalar.ph, !llvm.loop !77

._crit_edge92:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next120 to i32
  %exitcond124.not = icmp eq i32 %indvars.iv122, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond124.not, label %._crit_edge96.split, label %.lr.ph91, !llvm.loop !78

._crit_edge96.split:                              ; preds = %._crit_edge92, %._crit_edge88.thread, %._crit_edge88
  %i.em = phi i32 [ %i.cd, %._crit_edge88.thread ], [ %i.cv, %._crit_edge88 ], [ %i.cv, %._crit_edge92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.en = sub nsw i32 %i.q, %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i = icmp eq i32 %.071.lcssa, 0
  br i1 %.not56.i, label %HUFv06_fillDTableX4.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %._crit_edge96.split
  %wide.trip.count61.i = zext i32 %.071.lcssa to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.loopexit.i, %.lr.ph55.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next59.i, %.loopexit.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv58.i ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 2, !tbaa !55
  %i.eq = zext i8 %i.ep to i32                    ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !57  ; 2 uses
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nsw i32 %i.q, %i.et                 ; 6 uses
  %i.ev = zext i8 %i.es to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8  ; 5 uses
  %i.ey = sub nsw i32 %i.j, %i.eu                 ; 3 uses
  %i.ez = shl nuw i32 1, %i.ey                    ; 2 uses
  %.not.i = icmp ult i32 %i.ey, %i.em
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph55.i
  %i.fa = add nsw i32 %i.eu, %i.en                ; 2 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fa, i32 1)
  %i.fb = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !8  ; 3 uses
  %i.fe = zext i32 %i.ex to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.fe ; 4 uses
  %i.fg = zext i32 %i.eu to i64
  %i.fh = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.fg
  %i.fi = zext i32 %i.fd to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fi
  %i.fk = sub i32 %.071.lcssa, %i.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.fh, i64 68, i1 false)
  %i.fl = icmp sgt i32 %i.fa, 1
  br i1 %i.fl, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fb
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !8  ; 3 uses
  %.not.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.6.0.insert.ext42.i.i = shl nsw i32 %i.eu, 16
  %.sroa.6.0.insert.shift43.i.i = and i32 %.sroa.6.0.insert.ext42.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i, %i.eq
  %.sroa.0.0.insert.insert40.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.fn to i64    ; 3 uses
  %min.iters.check161 = icmp ult i32 %i.fn, 8
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i
  %n.vec163 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert164 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i, i64 0
  %broadcast.splat165 = shufflevector <4 x i32> %broadcast.splatinsert164, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph162
  %index167 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body166 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index167 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <4 x i32> %broadcast.splat165, ptr %i.fo, align 2
  store <4 x i32> %broadcast.splat165, ptr %i.fp, align 2
  %index.next168 = add nuw i64 %index167, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.fq, label %middle.block169, label %vector.body166, !llvm.loop !79

middle.block169:                                  ; preds = %vector.body166
  %cmp.n170 = icmp eq i64 %n.vec163, %wide.trip.count.i.i
  br i1 %cmp.n170, label %.loopexit.i.i, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %.lr.ph.i.i, %middle.block169
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec163, %middle.block169 ]
  br label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph160 ], [ %indvars.iv.i.i.ph, %scalar.ph160.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i, ptr %i.fr, align 2
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %scalar.ph160, !llvm.loop !80

.loopexit.i.i:                                    ; preds = %scalar.ph160, %middle.block169, %bb.e, %bb.d
  %.not54.i.i = icmp eq i32 %.071.lcssa, %i.fd
  br i1 %.not54.i.i, label %HUFv06_fillDTableX4Level2.exit.i, label %.lr.ph53.preheader.i.i

.lr.ph53.preheader.i.i:                           ; preds = %.loopexit.i.i
  %wide.trip.count59.i.i = zext i32 %i.fk to i64
  %invariant.op.i = or disjoint i32 %i.eq, 33554432
  br label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %.loopexit, %.lr.ph53.preheader.i.i
  %indvars.iv56.i.i.a = phi i64 [ 0, %.lr.ph53.preheader.i.i ], [ %indvars.iv.next57.i.i.a, %.loopexit ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv56.i.i.a ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !55
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !57  ; 2 uses
  %i.fx = zext i8 %i.fw to i32
  %i.fy = sub nsw i32 %i.q, %i.fx                 ; 2 uses
  %i.fz = sub nsw i32 %i.ey, %i.fy
  %i.ga = shl nuw i32 1, %i.fz
  %i.gb = zext i8 %i.fw to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !8  ; 9 uses
  %i.ge = add i32 %i.ga, %i.gd                    ; 4 uses
  %i.gf = shl nuw nsw i32 %i.fu, 8
  %i.gg = add nsw i32 %i.fy, %i.eu
  %.sroa.6.0.insert.ext.i.i = shl nsw i32 %i.gg, 16
  %.sroa.6.0.insert.shift.i.i = and i32 %.sroa.6.0.insert.ext.i.i, 16711680
  %i.gh = or disjoint i32 %.sroa.6.0.insert.shift.i.i, %i.gf
  %.sroa.0.0.insert.insert.i.reass.i = or disjoint i32 %i.gh, %invariant.op.i ; 2 uses
  %i.gi = add i32 %i.gd, 1
  %i.gj = call i32 @llvm.umax.i32(i32 %i.ge, i32 %i.gi)
  %4 = sub i32 %i.gj, %i.gd                       ; 3 uses
  %min.iters.check149 = icmp ult i32 %4, 16
  br i1 %min.iters.check149, label %scalar.ph148.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i
  %5 = add i32 %i.gd, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.ge, i32 %5)
  %6 = add i32 %umax, -1
  %7 = icmp ult i32 %6, %i.gd
  br i1 %7, label %scalar.ph148.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %vector.scevcheck
  %n.vec151 = and i32 %4, -8                      ; 3 uses
  %8 = add i32 %i.gd, %n.vec151
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i32 [ 0, %vector.ph150 ], [ %index.next156, %vector.body154 ] ; 2 uses
  %9 = add i32 %i.gd, %index155
  %10 = zext i32 %9 to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %10 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x i32> %broadcast.splat153, ptr %i.gk, align 2
  store <4 x i32> %broadcast.splat153, ptr %i.gl, align 2
  %index.next156 = add nuw i32 %index155, 8       ; 2 uses
  %i.gm = icmp eq i32 %index.next156, %n.vec151
  br i1 %i.gm, label %middle.block157, label %vector.body154, !llvm.loop !81

middle.block157:                                  ; preds = %vector.body154
  %cmp.n158 = icmp eq i32 %4, %n.vec151
  br i1 %cmp.n158, label %.loopexit, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %vector.scevcheck, %.lr.ph53.i.i, %middle.block157
  %.0.i.i.ph = phi i32 [ %i.gd, %vector.scevcheck ], [ %i.gd, %.lr.ph53.i.i ], [ %8, %middle.block157 ]
  br label %scalar.ph148

scalar.ph148:                                     ; preds = %scalar.ph148.preheader, %scalar.ph148
  %.0.i.i = phi i32 [ %11, %scalar.ph148 ], [ %.0.i.i.ph, %scalar.ph148.preheader ] ; 2 uses
  %11 = add i32 %.0.i.i, 1                        ; 2 uses
  %12 = zext i32 %.0.i.i to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %12
  store i32 %.sroa.0.0.insert.insert.i.reass.i, ptr %i.gn, align 2
  %13 = icmp ult i32 %11, %i.ge
  br i1 %13, label %scalar.ph148, label %.loopexit, !llvm.loop !82

.loopexit:                                        ; preds = %scalar.ph148, %middle.block157
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !8
  %indvars.iv.next57.i.i.a = add nuw nsw i64 %indvars.iv56.i.i.a, 1 ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next57.i.i.a, %wide.trip.count59.i.i
  br i1 %exitcond60.not.i.i, label %HUFv06_fillDTableX4Level2.exit.i, label %.lr.ph53.i.i, !llvm.loop !83

HUFv06_fillDTableX4Level2.exit.i:                 ; preds = %.loopexit, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre.i = add i32 %i.ez, %i.ex
  br label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph55.i
  %i.go = add i32 %i.ez, %i.ex                    ; 5 uses
  %i.gp = icmp ult i32 %i.ex, %i.go
  br i1 %i.gp, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.f
  %.sroa.4.0.insert.ext.i = shl nsw i32 %i.eu, 16
  %.sroa.4.0.insert.shift.i = and i32 %.sroa.4.0.insert.ext.i, 16711680
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %i.eq
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, 16777216 ; 2 uses
  %i.gq = zext i32 %i.ex to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %i.go to i64      ; 2 uses
  %i.gr = sub nsw i64 %wide.trip.count.i, %i.gq   ; 3 uses
  %min.iters.check137 = icmp ult i64 %i.gr, 8
  br i1 %min.iters.check137, label %scalar.ph136.preheader, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph.i
  %n.vec139 = and i64 %i.gr, -8                   ; 3 uses
  %i.gs = add nsw i64 %n.vec139, %i.gq
  %broadcast.splatinsert140 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i, i64 0
  %broadcast.splat141 = shufflevector <4 x i32> %broadcast.splatinsert140, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep.a = getelementptr [4 x i8], ptr %i.k, i64 %i.gq
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph138
  %index143 = phi i64 [ 0, %vector.ph138 ], [ %index.next144, %vector.body142 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep.a, i64 %index143 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat141, ptr %gep, align 2
  store <4 x i32> %broadcast.splat141, ptr %i.gt, align 2
  %index.next144 = add nuw i64 %index143, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next144, %n.vec139
  br i1 %i.gu, label %middle.block145, label %vector.body142, !llvm.loop !84

middle.block145:                                  ; preds = %vector.body142
  %cmp.n146 = icmp eq i64 %i.gr, %n.vec139
  br i1 %cmp.n146, label %.loopexit.i, label %scalar.ph136.preheader

scalar.ph136.preheader:                           ; preds = %.lr.ph.i, %middle.block145
  %indvars.iv.i.ph = phi i64 [ %i.gq, %.lr.ph.i ], [ %i.gs, %middle.block145 ]
  br label %scalar.ph136

scalar.ph136:                                     ; preds = %scalar.ph136.preheader, %scalar.ph136
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph136 ], [ %indvars.iv.i.ph, %scalar.ph136.preheader ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.gv, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph136, !llvm.loop !85

.loopexit.i:                                      ; preds = %scalar.ph136, %middle.block145, %bb.f, %HUFv06_fillDTableX4Level2.exit.i
  %.pre-phi.i = phi i32 [ %.pre.i, %HUFv06_fillDTableX4Level2.exit.i ], [ %i.go, %bb.f ], [ %i.go, %middle.block145 ], [ %i.go, %scalar.ph136 ]
  store i32 %.pre-phi.i, ptr %i.ew, align 4, !tbaa !8
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %HUFv06_fillDTableX4.exit, label %.lr.ph55.i, !llvm.loop !86

HUFv06_fillDTableX4.exit:                         ; preds = %.loopexit.i, %._crit_edge96.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a, %HUFv06_fillDTableX4.exit
  %.066 = phi i64 [ %i.m, %HUFv06_fillDTableX4.exit ], [ -44, %bb.a ], [ %i.m, %bb.b ], [ -44, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret i64 %.066
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress1X4_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv06_DStream_t, align 8   ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = load i32, ptr %4, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %BITv06_initDStream.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %3, 7
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !47
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !52
  %.val.i = load i64, ptr %i.h, align 1           ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !53
  %i.j = lshr i64 %.val.i, 56                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %BITv06_initDStream.exit.thread, label %BITv06_initDStream.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.l, align 8, !tbaa !52
  %i.m = load i8, ptr %2, align 1, !tbaa !29
  %i.n = zext i8 %i.m to i64                      ; 7 uses
  store i64 %i.n, ptr %5, align 8, !tbaa !53
  switch i64 %3, label %bb.k [
    i64 7, label %bb.e
    i64 6, label %bb.f
    i64 5, label %bb.g
    i64 4, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 48
  %i.s = or disjoint i64 %i.r, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i64 [ %i.s, %bb.e ], [ %i.n, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 40
  %i.y = add nuw nsw i64 %i.x, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.z = phi i64 [ %i.y, %bb.f ], [ %i.n, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !29
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 32
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.af = phi i64 [ %i.ae, %bb.g ], [ %i.n, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.aj, %i.af
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.al = phi i64 [ %i.ak, %bb.h ], [ %i.n, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 16
  %i.aq = add nuw nsw i64 %i.ap, %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.ar = phi i64 [ %i.aq, %bb.i ], [ %i.n, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = add nuw nsw i64 %i.av, %i.ar
  store i64 %i.aw, ptr %5, align 8, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %i.ax = getelementptr i8, ptr %2, i64 %3
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !29  ; 2 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %BITv06_initDStream.exit.thread, label %BITv06_initDStream.exit.thread21

BITv06_initDStream.exit.thread21:                 ; preds = %bb.k
  %i.bb = zext i8 %i.az to i32
  %i.bc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bb, i1 true)
  %i.bd = trunc nuw nsw i64 %3 to i32
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = shl nuw nsw i32 %i.bd, 3
  %reass.sub = sub nsw i32 %i.bc, %i.bf
  %i.bg = add nsw i32 %reass.sub, 41
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !54
  br label %bb.l

end_hunk_0
begin_hunk_1_@ZSTDv06_buildSeqTable:bb.a
  br i1 %exitcond97.not.i39, label %._crit_edge89.i40, label %.preheader77.i33, !llvm.loop !21

._crit_edge89.i40:                                ; preds = %._crit_edge85.i36
  %.not.i41 = icmp eq i32 %.167.lcssa.i37, 0
  br i1 %.not.i41, label %.preheader.preheader.i43, label %FSEv06_buildDTable.exit56

.preheader.preheader.i43:                         ; preds = %._crit_edge89.i40
  %wide.trip.count101.i44 = zext nneg i32 %i.cq to i64
  br label %.preheader.i45

.preheader.i45:                                   ; preds = %.preheader.i45, %.preheader.preheader.i43
  %indvars.iv98.i46 = phi i64 [ 0, %.preheader.preheader.i43 ], [ %indvars.iv.next99.i47, %.preheader.i45 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv98.i46 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !16
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !12 ; 2 uses
  %i.fe = add i16 %i.fd, 1
  store i16 %i.fe, ptr %i.fc, align 2, !tbaa !12
  %i.ff = zext i16 %i.fd to i32                   ; 2 uses
  %i.fg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true)
  %i.fh = xor i32 %i.fg, 31
  %i.fi = sub nsw i32 %i.cm, %i.fh                ; 2 uses
  %i.fj = trunc nsw i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !22
  %i.fl = and i32 %i.fi, 255
  %i.fm = shl i32 %i.ff, %i.fl
  %i.fn = sub i32 %i.fm, %i.cq
  %i.fo = trunc i32 %i.fn to i16
  store i16 %i.fo, ptr %i.ey, align 2, !tbaa !23
  %indvars.iv.next99.i47 = add nuw nsw i64 %indvars.iv98.i46, 1 ; 2 uses
  %exitcond102.not.i48 = icmp eq i64 %indvars.iv.next99.i47, %wide.trip.count101.i44
  br i1 %exitcond102.not.i48, label %FSEv06_buildDTable.exit56, label %.preheader.i45, !llvm.loop !24

FSEv06_buildDTable.exit56:                        ; preds = %.preheader.i45, %bb.w, %._crit_edge89.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.am

bb.am:                                            ; preds = %bb.v, %bb.u, %FSEv06_buildDTable.exit56
  %.0 = phi i64 [ %i.ck, %FSEv06_buildDTable.exit56 ], [ -20, %bb.u ], [ -20, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.an

bb.an:                                            ; preds = %bb.t, %bb.c, %bb.b, %bb.am, %FSEv06_buildDTable.exit, %bb.d
  %.1 = phi i64 [ %.0, %bb.am ], [ -72, %bb.b ], [ 1, %bb.d ], [ %., %bb.t ], [ 0, %FSEv06_buildDTable.exit ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }

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
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{!17, !6, i64 2}
!17 = !{!"", !13, i64 0, !6, i64 2, !6, i64 3}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!17, !6, i64 3}
!23 = !{!17, !13, i64 0}
!24 = distinct !{!24, !10}
!25 = !{!26, !13, i64 0}
!26 = !{!"", !13, i64 0, !13, i64 2}
!27 = !{!26, !13, i64 2}
!28 = distinct !{!28, !10}
!29 = !{!6, !6, i64 0}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"branch_weights", i32 4, i32 12}
!36 = distinct !{!36, !10, !33, !34}
!37 = distinct !{!37, !10, !34, !33}
!38 = distinct !{!38, !10}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !10, !33, !34}
!45 = distinct !{!45, !10, !33}
!46 = distinct !{!46, !10}
!47 = !{!48, !50, i64 24}
!48 = !{!"", !49, i64 0, !5, i64 8, !50, i64 16, !50, i64 24}
!49 = !{!"long", !6, i64 0}
!50 = !{!"p1 omnipotent char", !51, i64 0}
!51 = !{!"any pointer", !6, i64 0}
!52 = !{!48, !50, i64 16}
!53 = !{!48, !49, i64 0}
!54 = !{!48, !5, i64 8}
!55 = !{!56, !6, i64 0}
!56 = !{!"", !6, i64 0, !6, i64 1}
!57 = !{!56, !6, i64 1}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10, !33, !34}
!62 = distinct !{!62, !10, !33, !34}
!63 = distinct !{!63, !10, !34, !33}
!64 = distinct !{!64, !10}
!65 = !{!50, !50, i64 0}
!66 = distinct !{!66, !10, !33, !34}
!67 = distinct !{!67, !10, !33, !34}
!68 = distinct !{!68, !10, !34, !33}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10, !33, !34}
!76 = distinct !{!76, !72}
!77 = distinct !{!77, !10, !33}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10, !33, !34}
!80 = distinct !{!80, !10, !34, !33}
!81 = distinct !{!81, !10, !33, !34}
!82 = distinct !{!82, !10, !33}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10, !33, !34}
!85 = distinct !{!85, !10, !34, !33}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = !{!92, !5, i64 0}
!92 = !{!"", !5, i64 0, !5, i64 4}
!93 = !{!92, !5, i64 4}
!94 = !{!51, !51, i64 0}
!95 = !{!96, !49, i64 21552}
!96 = !{!"ZSTDv06_DCtx_s", !6, i64 0, !6, i64 2052, !6, i64 3080, !6, i64 5132, !51, i64 21520, !51, i64 21528, !51, i64 21536, !51, i64 21544, !49, i64 21552, !49, i64 21560, !97, i64 21568, !5, i64 21584, !5, i64 21588, !5, i64 21592, !50, i64 21600, !49, i64 21608, !6, i64 21616, !6, i64 152696}
!97 = !{!"ZSTDv06_frameParams_s", !98, i64 0, !5, i64 8}
!98 = !{!"long long", !6, i64 0}
!99 = !{!96, !5, i64 21588}
!100 = !{!96, !5, i64 21592}
!101 = !{!49, !49, i64 0}
!102 = !{!97, !5, i64 8}
!103 = !{!97, !98, i64 0}
!104 = !{!96, !51, i64 21520}
!105 = !{!96, !51, i64 21544}
!106 = !{!96, !51, i64 21528}
!107 = !{!96, !51, i64 21536}
!108 = !{!96, !50, i64 21600}
!109 = !{!96, !49, i64 21608}
!110 = !{!111, !49, i64 0}
!111 = !{!"", !49, i64 0, !51, i64 8}
!112 = !{!111, !51, i64 8}
!113 = distinct !{!113, !10, !33, !34}
!114 = distinct !{!114, !10, !33}
!115 = distinct !{!115, !10, !33, !34}
!116 = !{!"branch_weights", i32 4, i32 28}
!117 = distinct !{!117, !10, !33, !34}
!118 = distinct !{!118, !10, !33}
!119 = distinct !{!119, !10, !33, !34}
!120 = distinct !{!120, !10, !33}
!121 = distinct !{!121, !10, !33, !34}
!122 = distinct !{!122, !10, !33, !34}
!123 = distinct !{!123, !10, !33}
!124 = distinct !{!124, !10, !33, !34}
!125 = distinct !{!125, !10, !33}
!126 = distinct !{!126, !10}
!127 = !{!98, !98, i64 0}
!128 = !{!96, !49, i64 21560}
!129 = !{!96, !5, i64 21584}
!130 = !{!131, !132, i64 0}
!131 = !{!"ZBUFFv06_DCtx_s", !132, i64 0, !97, i64 8, !5, i64 24, !50, i64 32, !49, i64 40, !49, i64 48, !50, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !6, i64 96, !49, i64 112}
!132 = !{!"p1 _ZTS14ZSTDv06_DCtx_s", !51, i64 0}
!133 = !{!131, !5, i64 24}
!134 = !{!131, !50, i64 32}
!135 = !{!131, !50, i64 56}
!136 = !{!131, !49, i64 48}
!137 = !{!131, !49, i64 112}
!138 = !{!131, !49, i64 80}
!139 = !{!131, !49, i64 72}
!140 = !{!131, !5, i64 16}
!141 = !{!131, !49, i64 88}
!142 = !{!131, !49, i64 40}
!143 = !{!131, !49, i64 64}
!144 = distinct !{!144, !10}
end_hunk_1
