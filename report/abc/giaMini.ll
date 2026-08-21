inline.NumInlined: 625
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Gia_ManToMiniLut:bb.a
  store i32 %i.db, ptr %i.g, align 4, !tbaa !36
  %i.dc = sext i32 %i.cz to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dc
  store i32 %i.cl, ptr %i.dd, align 4, !tbaa !12
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.de = getelementptr i8, ptr %.val166, i64 8
  %.val166.val = load ptr, ptr %i.de, align 8, !tbaa !13 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.val166.val, i64 %indvars.iv250
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.val166.val, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next234, %i.dk
  br i1 %i.dl, label %.lr.ph209, label %.critedge2, !llvm.loop !96

.critedge2:                                       ; preds = %Vec_IntPush.exit
  %.val148.pre = load i32, ptr %i.g, align 4, !tbaa !36 ; 3 uses
  %i.dm = icmp sgt i32 %.val148.pre, 6
  br i1 %i.dm, label %.lr.ph211.preheader, label %.loopexit

.lr.ph211.preheader:                              ; preds = %.critedge2
  %i.dn = add nsw i32 %.val148.pre, -7            ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %.val143.pre = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %.lr.ph211

.lr.ph213.preheader:                              ; preds = %Vec_IntPush.exit180
  %i.dp = zext nneg i32 %i.dn to i64
  %.pre264 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %.lr.ph213

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %Vec_IntPush.exit180
  %i.dq = phi ptr [ %.val143.pre, %.lr.ph211.preheader ], [ %i.ed, %Vec_IntPush.exit180 ] ; 4 uses
  %indvars.iv236 = phi i64 [ %i.do, %.lr.ph211.preheader ], [ %indvars.iv.next237, %Vec_IntPush.exit180 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv236
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !12
  %i.dt = load i32, ptr %i.g, align 4, !tbaa !36  ; 7 uses
  %i.du = load i32, ptr %i.f, align 8, !tbaa !35
  %i.dv = icmp eq i32 %i.dt, %i.du
  br i1 %i.dv, label %bb.o, label %Vec_IntPush.exit180

bb.o:                                             ; preds = %.lr.ph211
  %i.dw = icmp slt i32 %i.dt, 16
  br i1 %i.dw, label %Vec_IntGrow.exit11.sink.split.i176, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = icmp samesign ult i32 %i.dt, 1073741823
  %i.dy = shl nuw nsw i32 %i.dt, 1
  %spec.select.i173 = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 3 uses
  %.not.i9.i174 = icmp samesign ult i32 %i.dt, %spec.select.i173
  br i1 %.not.i9.i174, label %bb.q, label %Vec_IntPush.exit180

bb.q:                                             ; preds = %bb.p
  %i.dz = zext nneg i32 %spec.select.i173 to i64
  %i.ea = shl nuw nsw i64 %i.dz, 2
  br label %Vec_IntGrow.exit11.sink.split.i176

Vec_IntGrow.exit11.sink.split.i176:               ; preds = %bb.o, %bb.q
  %.sink = phi i64 [ %i.ea, %bb.q ], [ 64, %bb.o ]
  %spec.select.sink.i177 = phi i32 [ %spec.select.i173, %bb.q ], [ 16, %bb.o ]
  %i.eb = tail call ptr @realloc(ptr noundef nonnull %i.dq, i64 noundef %.sink) #29 ; 2 uses
  store ptr %i.eb, ptr %i.i, align 8, !tbaa !13
  store i32 %spec.select.sink.i177, ptr %i.f, align 8, !tbaa !35
  %.pre263 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %Vec_IntPush.exit180

Vec_IntPush.exit180:                              ; preds = %.lr.ph211, %bb.p, %Vec_IntGrow.exit11.sink.split.i176
  %i.ec = phi i32 [ %i.dt, %.lr.ph211 ], [ %i.dt, %bb.p ], [ %.pre263, %Vec_IntGrow.exit11.sink.split.i176 ] ; 2 uses
  %i.ed = phi ptr [ %i.dq, %.lr.ph211 ], [ %i.dq, %bb.p ], [ %i.eb, %Vec_IntGrow.exit11.sink.split.i176 ] ; 2 uses
  %i.ee = add nsw i32 %i.ec, 1
  store i32 %i.ee, ptr %i.g, align 4, !tbaa !36
  %i.ef = sext i32 %i.ec to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ef
  store i32 %i.ds, ptr %i.eg, align 4, !tbaa !12
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, -1
  %i.eh = icmp sgt i64 %indvars.iv236, 0
  br i1 %i.eh, label %.lr.ph211, label %.lr.ph213.preheader, !llvm.loop !97

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %Vec_IntDrop.exit
  %i.ei = phi i32 [ %.pre264, %.lr.ph213.preheader ], [ %i.et, %Vec_IntDrop.exit ]
  %indvars.iv239 = phi i64 [ %i.dp, %.lr.ph213.preheader ], [ %indvars.iv.next240, %Vec_IntDrop.exit ] ; 3 uses
  %i.ej = add nsw i32 %i.ei, -1                   ; 3 uses
  store i32 %i.ej, ptr %i.g, align 4, !tbaa !36
  %i.ek = trunc nuw i64 %indvars.iv239 to i32     ; 2 uses
  %i.el = icmp sgt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph.i, label %Vec_IntDrop.exit

.lr.ph.i:                                         ; preds = %.lr.ph213
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !13  ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv239, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !12
  %i.eq = load i32, ptr %i.g, align 4, !tbaa !36  ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next.i, %i.er
  br i1 %i.es, label %bb.r, label %Vec_IntDrop.exit, !llvm.loop !98

Vec_IntDrop.exit:                                 ; preds = %bb.r, %.lr.ph213
  %i.et = phi i32 [ %i.ej, %.lr.ph213 ], [ %i.eq, %bb.r ] ; 2 uses
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, -1
  %i.eu = icmp sgt i32 %i.ek, 0
  br i1 %i.eu, label %.lr.ph213, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %Vec_IntDrop.exit, %.critedge2
  %.val146 = phi i32 [ %.val148.pre, %.critedge2 ], [ %i.et, %Vec_IntDrop.exit ] ; 3 uses
  %i.ev = icmp sgt i32 %.val146, 0
  %.val150.pre = load ptr, ptr %i.ay, align 8, !tbaa !43 ; 9 uses
  br i1 %i.ev, label %.lr.ph215, label %.critedge4

.lr.ph215:                                        ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val150.pre) ]
  %.val142 = load ptr, ptr %i.i, align 8, !tbaa !13 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val146 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ew = icmp ult i32 %.val146, 4
  br i1 %i.ew, label %.epil.preheader, label %.lr.ph215.new

.lr.ph215.new:                                    ; preds = %.lr.ph215
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph215.new
  %indvars.iv242 = phi i64 [ 0, %.lr.ph215.new ], [ %indvars.iv.next243.3, %bb.s ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph215.new ], [ %niter.next.3, %bb.s ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val142, i64 %indvars.iv242
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !12
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [12 x i8], ptr %.val150.pre, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !47
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv242
  store i32 %i.fc, ptr %i.fd, align 16, !tbaa !12
  %indvars.iv.next243 = or disjoint i64 %indvars.iv242, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val142, i64 %indvars.iv.next243
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !12
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [12 x i8], ptr %.val150.pre, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !47
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next243
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !12
  %indvars.iv.next243.1 = or disjoint i64 %indvars.iv242, 2 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val142, i64 %indvars.iv.next243.1
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !12
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [12 x i8], ptr %.val150.pre, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !47
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next243.1
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !12
  %indvars.iv.next243.2 = or disjoint i64 %indvars.iv242, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val142, i64 %indvars.iv.next243.2
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !12
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [12 x i8], ptr %.val150.pre, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !47
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next243.2
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !12
  %indvars.iv.next243.3 = add nuw nsw i64 %indvars.iv242, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge4.loopexit.unr-lcssa, label %bb.s, !llvm.loop !100

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge4, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph215
  %indvars.iv242.epil.init = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next243.3, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod333 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod333)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv242.epil = phi i64 [ %indvars.iv242.epil.init, %.epil.preheader ], [ %indvars.iv.next243.epil, %bb.t ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val142, i64 %indvars.iv242.epil
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !12
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [12 x i8], ptr %.val150.pre, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !47
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv242.epil
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !12
  %indvars.iv.next243.epil = add nuw nsw i64 %indvars.iv242.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge4, label %bb.t, !llvm.loop !101

.critedge4:                                       ; preds = %.critedge4.loopexit.unr-lcssa, %bb.t, %.loopexit.thread, %.loopexit
  %.val150.pre291 = phi ptr [ %.val150.pre290, %.loopexit.thread ], [ %.val150.pre, %.loopexit ], [ %.val150.pre, %bb.t ], [ %.val150.pre, %.critedge4.loopexit.unr-lcssa ]
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %.val150.pre291, i64 %indvars.iv250 ; 2 uses
  %i.gh = tail call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %0, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.f) #27 ; 17 uses
  %.val170 = load ptr, ptr %i.bv, align 8, !tbaa !89 ; 2 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv250 to i32
  %i.gj = lshr i64 %indvars.iv250, 5
  %i.gk = and i64 %i.gj, 134217727
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val170, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !12
  %i.gn = and i32 %i.gi, 31
  %i.go = lshr i32 %i.gm, %i.gn
  %.not139 = trunc i32 %i.go to i1
  %or.cond = select i1 %.not139, i1 %i.bw, i1 false
  br i1 %or.cond, label %.lr.ph.i181.preheader, label %Abc_TtNot.exit

.lr.ph.i181.preheader:                            ; preds = %.critedge4
  br i1 %min.iters.check316, label %.lr.ph.i181, label %vector.body319

vector.body319:                                   ; preds = %.lr.ph.i181.preheader, %vector.body319
  %index320 = phi i64 [ %index.next323, %vector.body319 ], [ 0, %.lr.ph.i181.preheader ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index320 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %wide.load321.a = load <2 x i64>, ptr %i.gp, align 8, !tbaa !81
  %wide.load322 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !81
  %i.gr = xor <2 x i64> %wide.load321.a, splat (i64 -1)
  %i.gs = xor <2 x i64> %wide.load322, splat (i64 -1)
  store <2 x i64> %i.gr, ptr %i.gp, align 8, !tbaa !81
  store <2 x i64> %i.gs, ptr %i.gq, align 8, !tbaa !81
  %index.next323 = add nuw i64 %index320, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next323, %n.vec318
  br i1 %i.gt, label %Abc_TtNot.exit, label %vector.body319, !llvm.loop !103

.lr.ph.i181:                                      ; preds = %.lr.ph.i181.preheader
  %i.gu = load i64, ptr %i.gh, align 8, !tbaa !81
  %i.gv = xor i64 %i.gu, -1
  store i64 %i.gv, ptr %i.gh, align 8, !tbaa !81
  br i1 %exitcond.not.i, label %Abc_TtNot.exit, label %.lr.ph.i181.1

.lr.ph.i181.1:                                    ; preds = %.lr.ph.i181
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !81
  %i.gy = xor i64 %i.gx, -1
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !81
  br i1 %exitcond.not.i.1, label %Abc_TtNot.exit, label %.lr.ph.i181.2

.lr.ph.i181.2:                                    ; preds = %.lr.ph.i181.1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !81
  %i.hb = xor i64 %i.ha, -1
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !81
  br label %Abc_TtNot.exit

Abc_TtNot.exit:                                   ; preds = %vector.body319, %.lr.ph.i181, %.lr.ph.i181.1, %.lr.ph.i181.2, %.critedge4
  %.val145 = load i32, ptr %i.g, align 4, !tbaa !36 ; 2 uses
  %i.hc = icmp sgt i32 %.val145, 0
  br i1 %i.hc, label %.lr.ph218, label %.critedge6

.lr.ph218:                                        ; preds = %Abc_TtNot.exit
  %.val141 = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.hd = getelementptr inbounds i8, ptr %i.gh, i64 %.idx.i
  %wide.trip.count248 = zext nneg i32 %.val145 to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph218, %Abc_TtFlip.exit
  %indvars.iv245 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next246, %Abc_TtFlip.exit ] ; 8 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.val141, i64 %indvars.iv245
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !12 ; 2 uses
  %i.hi = ashr i32 %i.hh, 5
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %.val170, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !12
  %i.hm = and i32 %i.hh, 31
  %i.hn = shl nuw i32 1, %i.hm
  %i.ho = and i32 %i.hn, %i.hl
  %.not140 = icmp eq i32 %i.ho, 0
  br i1 %.not140, label %Abc_TtFlip.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.bx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hp = load i64, ptr %i.gh, align 8, !tbaa !81 ; 2 uses
  %i.hq = trunc nuw nsw i64 %indvars.iv245 to i32
  %i.hr = shl nuw i32 1, %i.hq
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = shl i64 %i.hp, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv245
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !81 ; 2 uses
  %i.hw = and i64 %i.ht, %i.hv
  %i.hx = and i64 %i.hv, %i.hp
  %i.hy = lshr i64 %i.hx, %i.hs
  %i.hz = or i64 %i.hy, %i.hw
  store i64 %i.hz, ptr %i.gh, align 8, !tbaa !81
  br label %Abc_TtFlip.exit

bb.x:                                             ; preds = %bb.v
  %i.ia = icmp samesign ult i64 %indvars.iv245, 6
  br i1 %i.ia, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br i1 %i.bw, label %.lr.ph.i189, label %Abc_TtFlip.exit

.lr.ph.i189:                                      ; preds = %bb.y
  %i.ib = trunc nuw nsw i64 %indvars.iv245 to i32
  %i.ic = shl nuw nsw i32 1, %i.ib
  %i.id = zext nneg i32 %i.ic to i64              ; 7 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv245
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !81 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i189
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.id, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert296 = insertelement <2 x i64> poison, i64 %i.if, i64 0
  %broadcast.splat297 = shufflevector <2 x i64> %broadcast.splatinsert296, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ig, align 8, !tbaa !81 ; 2 uses
  %wide.load298 = load <2 x i64>, ptr %i.ih, align 8, !tbaa !81 ; 2 uses
  %i.ii = shl <2 x i64> %wide.load, %broadcast.splat
  %i.ij = shl <2 x i64> %wide.load298, %broadcast.splat
  %i.ik = and <2 x i64> %i.ii, %broadcast.splat297
  %i.il = and <2 x i64> %i.ij, %broadcast.splat297
  %i.im = and <2 x i64> %wide.load, %broadcast.splat297
  %i.in = and <2 x i64> %wide.load298, %broadcast.splat297
  %i.io = lshr <2 x i64> %i.im, %broadcast.splat
  %i.ip = lshr <2 x i64> %i.in, %broadcast.splat
  %i.iq = or <2 x i64> %i.io, %i.ik
  %i.ir = or <2 x i64> %i.ip, %i.il
  store <2 x i64> %i.iq, ptr %i.ig, align 8, !tbaa !81
  store <2 x i64> %i.ir, ptr %i.ih, align 8, !tbaa !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %Abc_TtFlip.exit, label %vector.body, !llvm.loop !106

scalar.ph:                                        ; preds = %.lr.ph.i189
  %i.it = load i64, ptr %i.gh, align 8, !tbaa !81 ; 2 uses
  %i.iu = shl i64 %i.it, %i.id
  %i.iv = and i64 %i.iu, %i.if
  %i.iw = and i64 %i.it, %i.if
  %i.ix = lshr i64 %i.iw, %i.id
  %i.iy = or i64 %i.ix, %i.iv
  store i64 %i.iy, ptr %i.gh, align 8, !tbaa !81
  %i.iz = load i64, ptr %i.he, align 8, !tbaa !81 ; 2 uses
  %i.ja = shl i64 %i.iz, %i.id
  %i.jb = and i64 %i.ja, %i.if
  %i.jc = and i64 %i.iz, %i.if
  %i.jd = lshr i64 %i.jc, %i.id
  %i.je = or i64 %i.jd, %i.jb
  store i64 %i.je, ptr %i.he, align 8, !tbaa !81
  br i1 %exitcond60.not.i.1, label %Abc_TtFlip.exit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph
  %i.jf = load i64, ptr %i.hf, align 8, !tbaa !81 ; 2 uses
  %i.jg = shl i64 %i.jf, %i.id
  %i.jh = and i64 %i.jg, %i.if
  %i.ji = and i64 %i.jf, %i.if
  %i.jj = lshr i64 %i.ji, %i.id
  %i.jk = or i64 %i.jj, %i.jh
  store i64 %i.jk, ptr %i.hf, align 8, !tbaa !81
  br label %Abc_TtFlip.exit

bb.z:                                             ; preds = %bb.x
  %i.jl = add nsw i64 %indvars.iv245, -6          ; 2 uses
  %i.jm = trunc nsw i64 %i.jl to i32              ; 2 uses
  %i.jn = shl nuw i32 1, %i.jm                    ; 4 uses
  br i1 %i.bw, label %.preheader.lr.ph.i, label %Abc_TtFlip.exit

.preheader.lr.ph.i:                               ; preds = %bb.z
  %i.jo = icmp eq i64 %i.jl, 31
  %i.jp = shl i32 2, %i.jm
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  br i1 %i.jo, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.jr = sext i32 %i.jn to i64                   ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.jn, i32 1) ; 2 uses
  %wide.trip.count.i185 = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.js = shl nuw nsw i64 %wide.trip.count.i185, 3
  %i.jt = shl nsw i64 %i.jq, 3
  %1 = add nsw i64 %i.jr, %wide.trip.count.i185
  %i.ju = shl nsw i64 %1, 3
  %min.iters.check302 = icmp slt i32 %i.jn, 4
  %i.jv = getelementptr i8, ptr %i.gh, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.gh, i64 %i.js
  %n.vec304 = and i64 %wide.trip.count.i185, 2147483644
  %xtraiter334 = and i64 %wide.trip.count.i185, 1
  %i.jx = icmp slt i32 %i.jn, 2
  %unroll_iter338 = and i64 %wide.trip.count.i185, 2147483646
  %lcmp.mod336.not = icmp eq i64 %xtraiter334, 0
  %lcmp.mod337 = trunc i32 %smax.i to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ] ; 2 uses
  %.051.us.i = phi ptr [ %i.kn, %._crit_edge.us.i ], [ %i.gh, %.preheader.us.preheader.i ] ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.jr ; 5 uses
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.memcheck

scalar.ph301.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i
  br i1 %i.jx, label %scalar.ph301.epil.preheader, label %scalar.ph301

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.jy = mul i64 %i.jt, %indvar                  ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.jv, i64 %i.jy
  %scevgep = getelementptr i8, ptr %i.jw, i64 %i.jy
  %bound0 = icmp ult ptr %.051.us.i, %scevgep299
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph301.preheader, label %vector.body305

vector.body305:                                   ; preds = %vector.memcheck, %vector.body305
  %index306 = phi i64 [ %index.next311, %vector.body305 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index306 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load307.a = load <2 x i64>, ptr %i.jz, align 8, !tbaa !81, !alias.scope !107, !noalias !110
  %wide.load308.a = load <2 x i64>, ptr %i.ka, align 8, !tbaa !81, !alias.scope !107, !noalias !110
  %i.kb = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index306 ; 3 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 16     ; 2 uses
  %wide.load309.a = load <2 x i64>, ptr %i.kb, align 8, !tbaa !81, !alias.scope !110
  %wide.load310 = load <2 x i64>, ptr %i.kc, align 8, !tbaa !81, !alias.scope !110
  store <2 x i64> %wide.load309.a, ptr %i.jz, align 8, !tbaa !81, !alias.scope !107, !noalias !110
  store <2 x i64> %wide.load310, ptr %i.ka, align 8, !tbaa !81, !alias.scope !107, !noalias !110
  store <2 x i64> %wide.load307.a, ptr %i.kb, align 8, !tbaa !81, !alias.scope !110
  store <2 x i64> %wide.load308.a, ptr %i.kc, align 8, !tbaa !81, !alias.scope !110
  %index.next311 = add nuw i64 %index306, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.kd, label %._crit_edge.us.i, label %vector.body305, !llvm.loop !112

scalar.ph301:                                     ; preds = %scalar.ph301.preheader, %scalar.ph301
  %indvars.iv.i186 = phi i64 [ %indvars.iv.next.i187.1, %scalar.ph301 ], [ 0, %scalar.ph301.preheader ] ; 4 uses
  %niter339 = phi i64 [ %niter339.next.1, %scalar.ph301 ], [ 0, %scalar.ph301.preheader ]
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i186 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !81
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i186 ; 2 uses
  %i.kg = load i64, ptr %gep.i, align 8, !tbaa !81
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !81
  store i64 %i.kf, ptr %gep.i, align 8, !tbaa !81
  %indvars.iv.next.i187 = or disjoint i64 %indvars.iv.i186, 1 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.next.i187 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !81
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i187 ; 2 uses
  %i.kj = load i64, ptr %gep.i.1, align 8, !tbaa !81
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !81
  store i64 %i.ki, ptr %gep.i.1, align 8, !tbaa !81
  %indvars.iv.next.i187.1 = add nuw nsw i64 %indvars.iv.i186, 2 ; 2 uses
  %niter339.next.1 = add i64 %niter339, 2         ; 2 uses
  %niter339.ncmp.1 = icmp eq i64 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph301, !llvm.loop !113

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph301
  br i1 %lcmp.mod336.not, label %._crit_edge.us.i, label %scalar.ph301.epil.preheader

scalar.ph301.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph301.preheader
  %indvars.iv.i186.epil.init = phi i64 [ 0, %scalar.ph301.preheader ], [ %indvars.iv.next.i187.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod337)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i186.epil.init ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !81
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i186.epil.init ; 2 uses
  %i.km = load i64, ptr %gep.i.epil, align 8, !tbaa !81
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !81
  store i64 %i.kl, ptr %gep.i.epil, align 8, !tbaa !81
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body305, %scalar.ph301.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.kn = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.jq ; 2 uses
  %i.ko = icmp ult ptr %i.kn, %i.hd
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ko, label %.preheader.us.i, label %Abc_TtFlip.exit, !llvm.loop !114

Abc_TtFlip.exit:                                  ; preds = %._crit_edge.us.i, %vector.body, %scalar.ph, %scalar.ph.2, %.preheader.lr.ph.i, %bb.z, %bb.y, %bb.w, %bb.u
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.critedge6, label %bb.u, !llvm.loop !115

.critedge6:                                       ; preds = %Abc_TtFlip.exit, %Abc_TtNot.exit
  %.val165 = load ptr, ptr %i.bu, align 8, !tbaa !95
  %i.kp = getelementptr i8, ptr %.val165, i64 8
  %.val165.val = load ptr, ptr %i.kp, align 8, !tbaa !13 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.val165.val, i64 %indvars.iv250
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !12
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %.val165.val, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !12
  call fastcc void @Mini_LutPush(ptr noundef nonnull %i.aa, i32 noundef %i.ku, ptr noundef nonnull readonly %i.d, ptr noundef readonly %i.gh)
  %i.kv = load i32, ptr %i.bz, align 4, !tbaa !78
  %i.kw = add nsw i32 %i.kv, -1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !47
  %.val161.pre = load i32, ptr %i.j, align 8, !tbaa !50
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge6, %bb.e
  %.val161 = phi i32 [ %.val161.pre, %.critedge6 ], [ %.val161266, %bb.e ] ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.ky = sext i32 %.val161 to i64
  %i.kz = icmp slt i64 %indvars.iv.next251, %i.ky
  br i1 %i.kz, label %bb.e, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.aa, %.critedge
  %i.la = load ptr, ptr %i.i, align 8, !tbaa !13  ; 2 uses
  %.not.i190 = icmp eq ptr %i.la, null
  br i1 %.not.i190, label %Vec_IntFree.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.la) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.ab
  tail call void @free(ptr noundef nonnull %i.f) #27
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !117 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  store i32 0, ptr %i.ld, align 4, !tbaa !118
  %i.le = icmp sgt i32 %i.z, 0
  br i1 %i.le, label %.lr.ph223, label %._crit_edge224

.lr.ph223:                                        ; preds = %Vec_IntFree.exit, %Vec_WrdPush.exit
  %.2130222 = phi i32 [ %i.mf, %Vec_WrdPush.exit ], [ 0, %Vec_IntFree.exit ]
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !117 ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4 ; 3 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !118 ; 7 uses
  %i.li = load i32, ptr %i.lf, align 8, !tbaa !121
  %i.lj = icmp eq i32 %i.lh, %i.li
  br i1 %i.lj, label %bb.ac, label %Vec_WrdPush.exit

bb.ac:                                            ; preds = %.lr.ph223
  %i.lk = icmp slt i32 %i.lh, 16
  br i1 %i.lk, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !122 ; 2 uses
  %.not9.i.i195 = icmp eq ptr %i.lm, null
  br i1 %.not9.i.i195, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ln = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.lm, i64 noundef 128) #29
  br label %Vec_WrdGrow.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.lo = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %bb.af, %bb.ae
  %i.lp = phi ptr [ %i.ln, %bb.ae ], [ %i.lo, %bb.af ]
  store ptr %i.lp, ptr %i.ll, align 8, !tbaa !122
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.ag:                                            ; preds = %bb.ac
  %i.lq = icmp samesign ult i32 %i.lh, 1073741823
  %i.lr = shl nuw nsw i32 %i.lh, 1
  %spec.select.i191 = select i1 %i.lq, i32 %i.lr, i32 2147483647 ; 3 uses
  %.not.i9.i192 = icmp samesign ult i32 %i.lh, %spec.select.i191
  br i1 %.not.i9.i192, label %bb.ah, label %Vec_WrdPush.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !122 ; 2 uses
  %.not9.i10.i193 = icmp eq ptr %i.lt, null
  %i.lu = zext nneg i32 %spec.select.i191 to i64
  %i.lv = shl nuw nsw i64 %i.lu, 3                ; 2 uses
  br i1 %.not9.i10.i193, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lw = tail call ptr @realloc(ptr noundef nonnull %i.lt, i64 noundef %i.lv) #29
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.lx = tail call noalias ptr @malloc(i64 noundef %i.lv) #28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ly = phi ptr [ %i.lw, %bb.ai ], [ %i.lx, %bb.aj ]
  store ptr %i.ly, ptr %i.ls, align 8, !tbaa !122
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.ak, %Vec_WrdGrow.exit.i
  %spec.select.sink.i194 = phi i32 [ %spec.select.i191, %bb.ak ], [ 16, %Vec_WrdGrow.exit.i ]
  store i32 %spec.select.sink.i194, ptr %i.lf, align 8, !tbaa !121
  %.pre268 = load i32, ptr %i.lg, align 4, !tbaa !118
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %.lr.ph223, %bb.ag, %Vec_WrdGrow.exit11.sink.split.i
  %i.lz = phi i32 [ %i.lh, %.lr.ph223 ], [ %i.lh, %bb.ag ], [ %.pre268, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !122
  %i.mc = add nsw i32 %i.lz, 1
  store i32 %i.mc, ptr %i.lg, align 4, !tbaa !118
  %i.md = sext i32 %i.lz to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.md
  store i64 6148914691236517205, ptr %i.me, align 8, !tbaa !81
  %i.mf = add nuw nsw i32 %.2130222, 1            ; 2 uses
  %exitcond253.not = icmp eq i32 %i.mf, %i.z
  br i1 %exitcond253.not, label %._crit_edge224.loopexit, label %.lr.ph223, !llvm.loop !123

._crit_edge224.loopexit:                          ; preds = %Vec_WrdPush.exit
  %.pre269 = load ptr, ptr %i.lb, align 8, !tbaa !117
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit, %Vec_IntFree.exit
  %i.mg = phi ptr [ %.pre269, %._crit_edge224.loopexit ], [ %i.lc, %Vec_IntFree.exit ]
  %i.mh = getelementptr i8, ptr %i.mg, i64 8
  %.val171 = load ptr, ptr %i.mh, align 8, !tbaa !122
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !44 ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 4
  %.val144225 = load i32, ptr %i.mk, align 4, !tbaa !36
end_hunk_0
