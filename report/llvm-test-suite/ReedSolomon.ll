inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@rsdec_204:bb.a
  store <4 x i32> %i.cn, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 748), align 4, !tbaa !4
  store <4 x i32> %i.co, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 764), align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 132
  %wide.load.16 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !10
  %wide.load128.16 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !10
  %i.cr = zext <4 x i8> %wide.load.16 to <4 x i32>
  %i.cs = zext <4 x i8> %wide.load128.16 to <4 x i32>
  store <4 x i32> %i.cr, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 780), align 4, !tbaa !4
  store <4 x i32> %i.cs, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 796), align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %wide.load.17 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !10
  %wide.load128.17 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !10
  %i.cv = zext <4 x i8> %wide.load.17 to <4 x i32>
  %i.cw = zext <4 x i8> %wide.load128.17 to <4 x i32>
  store <4 x i32> %i.cv, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 812), align 4, !tbaa !4
  store <4 x i32> %i.cw, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 828), align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 148
  %wide.load.18 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !10
  %wide.load128.18 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !10
  %i.cz = zext <4 x i8> %wide.load.18 to <4 x i32>
  %i.da = zext <4 x i8> %wide.load128.18 to <4 x i32>
  store <4 x i32> %i.cz, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 844), align 4, !tbaa !4
  store <4 x i32> %i.da, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 860), align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 156
  %wide.load.19 = load <4 x i8>, ptr %i.db, align 1, !tbaa !10
  %wide.load128.19 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !10
  %i.dd = zext <4 x i8> %wide.load.19 to <4 x i32>
  %i.de = zext <4 x i8> %wide.load128.19 to <4 x i32>
  store <4 x i32> %i.dd, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 876), align 4, !tbaa !4
  store <4 x i32> %i.de, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 892), align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 164
  %wide.load.20 = load <4 x i8>, ptr %i.df, align 1, !tbaa !10
  %wide.load128.20 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !10
  %i.dh = zext <4 x i8> %wide.load.20 to <4 x i32>
  %i.di = zext <4 x i8> %wide.load128.20 to <4 x i32>
  store <4 x i32> %i.dh, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 908), align 4, !tbaa !4
  store <4 x i32> %i.di, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 924), align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 172
  %wide.load.21 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !10
  %wide.load128.21 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !10
  %i.dl = zext <4 x i8> %wide.load.21 to <4 x i32>
  %i.dm = zext <4 x i8> %wide.load128.21 to <4 x i32>
  store <4 x i32> %i.dl, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 940), align 4, !tbaa !4
  store <4 x i32> %i.dm, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 956), align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 180
  %wide.load.22 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !10
  %wide.load128.22 = load <4 x i8>, ptr %i.do, align 1, !tbaa !10
  %i.dp = zext <4 x i8> %wide.load.22 to <4 x i32>
  %i.dq = zext <4 x i8> %wide.load128.22 to <4 x i32>
  store <4 x i32> %i.dp, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 972), align 4, !tbaa !4
  store <4 x i32> %i.dq, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 988), align 4, !tbaa !4
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !10
  %i.dt = zext i8 %i.ds to i32
  store i32 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1004), align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !10
  %i.dw = zext i8 %i.dv to i32
  store i32 %i.dw, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1008), align 16, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !10
  %i.dz = zext i8 %i.dy to i32
  store i32 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1012), align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 187
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !10
  %i.ec = zext i8 %i.eb to i32
  store i32 %i.ec, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1016), align 8, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader32.preheader
  %indvars.iv58 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next59.4, %.preheader ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !4
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  store i32 %i.et, ptr %i.ep, align 4, !tbaa !4
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !4
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !4
  %indvars.iv.next59.4 = add nuw nsw i64 %indvars.iv58, 5 ; 2 uses
  %exitcond61.not.4 = icmp eq i64 %indvars.iv.next59.4, 255
  br i1 %exitcond61.not.4, label %bb.g, label %.preheader, !llvm.loop !11

bb.g:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %indvars.iv392.i = phi i64 [ 1, %bb.g ], [ %indvars.iv.next393.i, %bb.l ] ; 3 uses
  %.0333.i = phi i32 [ 0, %bb.g ], [ %spec.select.i, %bb.l ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv392.i ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.fh = phi i32 [ 0, %bb.h ], [ %i.fs, %bb.k ]  ; 2 uses
  %indvars.iv.i21 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i22, %bb.k ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv.i21
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4  ; 2 uses
  %.not305.i = icmp eq i32 %i.fj, -1
  br i1 %.not305.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fk = mul nuw nsw i64 %indvars.iv.i21, %indvars.iv392.i
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = add nsw i32 %i.fj, %i.fl
  %i.fn = srem i32 %i.fm, 255
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = xor i32 %i.fq, %i.fh                    ; 2 uses
  store i32 %i.fr, ptr %i.fg, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fs = phi i32 [ %i.fh, %bb.i ], [ %i.fr, %bb.j ] ; 3 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, 255
  br i1 %exitcond.not.i23, label %bb.l, label %bb.i, !llvm.loop !12

bb.l:                                             ; preds = %bb.k
  %.not304.i = icmp eq i32 %i.fs, 0
  %spec.select.i = select i1 %.not304.i, i32 %.0333.i, i32 1 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4
  store i32 %i.fv, ptr %i.fg, align 4, !tbaa !4
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %exitcond395.not.i = icmp eq i64 %indvars.iv.next393.i, 17
  br i1 %exitcond395.not.i, label %bb.m, label %bb.h, !llvm.loop !13

bb.m:                                             ; preds = %bb.l
  %.not.i24 = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i24, label %.preheader.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.b, align 16, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !4
  store i32 0, ptr %i.a, align 16, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 1, ptr %i.fz, align 16, !tbaa !4
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i, i8 -1, i64 60, i1 false), !tbaa !4
  %scevgep396.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep396.i, i8 0, i64 60, i1 false), !tbaa !4
  store i32 0, ptr %i.c, align 16, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ga, align 4, !tbaa !4
  store i32 -1, ptr %i.d, align 16, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.gb, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %bb.n
  %i.gc = phi i32 [ %i.lj, %._crit_edge.i ], [ %i.fx, %bb.n ] ; 2 uses
  %indvars.iv400.i = phi i64 [ %indvars.iv.next401.i, %._crit_edge.i ], [ 0, %bb.n ] ; 9 uses
  %i.gd = shl nuw nsw i64 %indvars.iv400.i, 6
  %i.ge = getelementptr nuw i8, ptr %i.a, i64 %i.gd
  %scevgep410.i = getelementptr nuw i8, ptr %i.ge, i64 128
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 7 uses
  %i.gf = icmp eq i32 %i.gc, -1
  br i1 %i.gf, label %bb.p, label %.preheader328.i

bb.p:                                             ; preds = %bb.o
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next401.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4  ; 7 uses
  %i.gi = add nuw nsw i64 %indvars.iv400.i, 2     ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gi
  store i32 %i.gh, ptr %i.gj, align 4, !tbaa !4
  %.not277341.i = icmp slt i32 %i.gh, 0
  br i1 %.not277341.i, label %.loopexit322.i, label %.lr.ph343.i

.lr.ph343.i:                                      ; preds = %bb.p
  %i.gk = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv.next401.i ; 3 uses
  %i.gl = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.gi ; 3 uses
  %i.gm = add nuw i32 %i.gh, 1                    ; 2 uses
  %wide.trip.count431.i = zext i32 %i.gm to i64   ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count431.i, 1
  %i.gn = icmp eq i32 %i.gh, 0
  br i1 %i.gn, label %.epil.preheader148, label %.lr.ph343.i.new

.lr.ph343.i.new:                                  ; preds = %.lr.ph343.i
  %unroll_iter152 = and i64 %wide.trip.count431.i, 4294967294
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph343.i.new
  %indvars.iv427.i = phi i64 [ 0, %.lr.ph343.i.new ], [ %indvars.iv.next428.i.1, %bb.q ] ; 4 uses
  %niter153 = phi i64 [ 0, %.lr.ph343.i.new ], [ %niter153.next.1, %bb.q ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv427.i ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !4  ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv427.i
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !4
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  store i32 %i.gt, ptr %i.go, align 8, !tbaa !4
  %indvars.iv.next428.i = or disjoint i64 %indvars.iv427.i, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next428.i ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4  ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next428.i
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !4
  %i.gx = sext i32 %i.gv to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !4
  store i32 %i.gz, ptr %i.gu, align 4, !tbaa !4
  %indvars.iv.next428.i.1 = add nuw nsw i64 %indvars.iv427.i, 2 ; 2 uses
  %niter153.next.1 = add i64 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %.loopexit322.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !14

.preheader328.i:                                  ; preds = %bb.o, %.preheader328.i
  %indvars.iv402.i = phi i64 [ %indvars.iv.next403.i, %.preheader328.i ], [ %indvars.iv400.i, %bb.o ] ; 5 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv402.i
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %i.hc = icmp eq i32 %i.hb, -1
  %i.hd = icmp sgt i64 %indvars.iv402.i, 0        ; 2 uses
  %i.he = and i1 %i.hd, %i.hc
  %indvars.iv.next403.i = add nsw i64 %indvars.iv402.i, -1
  br i1 %i.he, label %.preheader328.i, label %bb.r, !llvm.loop !15

bb.r:                                             ; preds = %.preheader328.i
  br i1 %i.hd, label %.preheader326.preheader.i, label %.loopexit327.i

.preheader326.preheader.i:                        ; preds = %bb.r
  %indvars62.le = trunc i64 %indvars.iv402.i to i32
  %i.hf = and i64 %indvars.iv402.i, 4294967295
  br label %.preheader326.i

.preheader326.i:                                  ; preds = %bb.t, %.preheader326.preheader.i
  %indvars.iv407.i = phi i64 [ %i.hf, %.preheader326.preheader.i ], [ %indvars.iv.next408.i, %bb.t ] ; 2 uses
  %.1234.i = phi i32 [ %indvars62.le, %.preheader326.preheader.i ], [ %.2.i, %bb.t ] ; 3 uses
  %indvars.iv.next408.i = add nsw i64 %indvars.iv407.i, -1 ; 3 uses
  %i.hg = and i64 %indvars.iv.next408.i, 4294967295 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %.not273.i = icmp eq i32 %i.hi, -1
  br i1 %.not273.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader326.i
  %indvars.i = trunc i64 %indvars.iv.next408.i to i32
  %i.hj = zext nneg i32 %.1234.i to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hg
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !4
  %i.ho = icmp slt i32 %i.hl, %i.hn
  %spec.select306.i = select i1 %i.ho, i32 %indvars.i, i32 %.1234.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader326.i
  %.2.i = phi i32 [ %.1234.i, %.preheader326.i ], [ %spec.select306.i, %bb.s ] ; 2 uses
  %i.hp = icmp samesign ugt i64 %indvars.iv407.i, 1
  br i1 %i.hp, label %.preheader326.i, label %.loopexit327.i, !llvm.loop !16

.loopexit327.i:                                   ; preds = %bb.t, %bb.r
  %.3.i = phi i32 [ 0, %bb.r ], [ %.2.i, %bb.t ]  ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next401.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4  ; 4 uses
  %i.hs = sext i32 %.3.i to i64                   ; 3 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.hv = trunc nuw nsw i64 %indvars.iv.next401.i to i32
  %i.hw = sub i32 %i.hv, %.3.i                    ; 2 uses
  %i.hx = add i32 %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv400.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %..i = tail call i32 @llvm.smax.i32(i32 %i.hr, i32 %i.hx) ; 4 uses
  store i32 %..i, ptr %i.hz, align 4, !tbaa !4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %scevgep410.i, i8 0, i64 64, i1 false), !tbaa !4
  %i.ia = load i32, ptr %i.ht, align 4, !tbaa !4  ; 2 uses
  %.not274336.i = icmp slt i32 %i.ia, 0
  br i1 %.not274336.i, label %.preheader323.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit327.i
  %i.ib = getelementptr inbounds [64 x i8], ptr %i.a, i64 %i.hs
  %i.ic = add nsw i32 %i.gc, 255
  %i.id = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hs
  %i.ie = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv400.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 128
  %i.ig = add nuw i32 %i.ia, 1
  %wide.trip.count.i = zext i32 %i.ig to i64
  br label %bb.u

.preheader323.i:                                  ; preds = %bb.w, %.loopexit327.i
  %.not275338.i = icmp slt i32 %i.hr, 0
  br i1 %.not275338.i, label %.loopexit322.i, label %.lr.ph340.i

.lr.ph340.i:                                      ; preds = %.preheader323.i
  %i.ih = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv.next401.i ; 3 uses
  %i.ii = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv400.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 128 ; 3 uses
  %i.ik = add nuw i32 %i.hr, 1                    ; 2 uses
  %wide.trip.count424.i = zext i32 %i.ik to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count424.i, 1
  %i.il = icmp eq i32 %i.hr, 0
  br i1 %i.il, label %.epil.preheader, label %.lr.ph340.i.new

.lr.ph340.i.new:                                  ; preds = %.lr.ph340.i
  %unroll_iter = and i64 %wide.trip.count424.i, 4294967294
  br label %bb.x

bb.u:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv415.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next416.i, %bb.w ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv415.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4  ; 2 uses
  %.not276.i = icmp eq i32 %i.in, -1
  br i1 %.not276.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.io = load i32, ptr %i.id, align 4, !tbaa !4
  %i.ip = add i32 %i.ic, %i.in
  %i.iq = sub i32 %i.ip, %i.io
  %i.ir = srem i32 %i.iq, 255
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = trunc nuw nsw i64 %indvars.iv415.i to i32
  %i.iw = add i32 %i.hw, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.ix
  store i32 %i.iu, ptr %i.iy, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next416.i = add nuw nsw i64 %indvars.iv415.i, 1 ; 2 uses
  %exitcond419.not.i = icmp eq i64 %indvars.iv.next416.i, %wide.trip.count.i
  br i1 %exitcond419.not.i, label %.preheader323.i, label %bb.u, !llvm.loop !17

bb.x:                                             ; preds = %bb.x, %.lr.ph340.i.new
  %indvars.iv420.i = phi i64 [ 0, %.lr.ph340.i.new ], [ %indvars.iv.next421.i.1, %bb.x ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph340.i.new ], [ %niter.next.1, %bb.x ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv420.i ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !4  ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv420.i ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !4
  %i.jd = xor i32 %i.jc, %i.ja
  store i32 %i.jd, ptr %i.jb, align 8, !tbaa !4
  %i.je = sext i32 %i.ja to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4
  store i32 %i.jg, ptr %i.iz, align 8, !tbaa !4
  %indvars.iv.next421.i = or disjoint i64 %indvars.iv420.i, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv.next421.i ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4  ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next421.i ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !4
  %i.jl = xor i32 %i.jk, %i.ji
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !4
  %i.jm = sext i32 %i.ji to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !4
  store i32 %i.jo, ptr %i.jh, align 4, !tbaa !4
  %indvars.iv.next421.i.1 = add nuw nsw i64 %indvars.iv420.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit322.i.loopexit141.unr-lcssa, label %bb.x, !llvm.loop !18

.loopexit322.i.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
end_hunk_0
