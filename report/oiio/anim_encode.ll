Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/anim_encode?download=true
inline.NumInlined: 118
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@GenerateCandidates:bb.a
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13 ; 4 uses
  %i.cq = lshr i32 %i.cp, 24                      ; 4 uses
  %i.cr = lshr i32 %i.cp, 8
  %i.cs = and i32 %i.cr, 255
  %i.ct = and i32 %i.cp, 255
  %i.cu = lshr i32 %i.ci, 24
  %i.cv = lshr i32 %i.ci, 8
  %i.cw = and i32 %i.cv, 255
  %i.cx = and i32 %i.ci, 255
  %i.cy = icmp eq i32 %i.cq, %i.cu
  br i1 %i.cy, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cz = lshr i32 %i.ci, 16
  %i.da = and i32 %i.cz, 255
  %i.db = lshr i32 %i.cp, 16
  %i.dc = and i32 %i.db, 255
  %i.dd = sub nsw i32 %i.dc, %i.da
  %i.de = tail call i32 @llvm.abs.i32(i32 %i.dd, i1 true)
  %i.df = mul nuw nsw i32 %i.de, %i.cq
  %.not.i.i = icmp sgt i32 %i.df, %i.bt
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dg = sub nsw i32 %i.cs, %i.cw
  %i.dh = tail call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = mul nuw nsw i32 %i.dh, %i.cq
  %.not23.i.i = icmp samesign ugt i32 %i.di, %i.bt
  br i1 %.not23.i.i, label %.thread, label %PixelsAreSimilar.exit.i

PixelsAreSimilar.exit.i:                          ; preds = %bb.i
  %i.dj = sub nsw i32 %i.ct, %i.cx
  %i.dk = tail call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dl = mul nuw nsw i32 %i.dk, %i.cq
  %.not30.i = icmp samesign ugt i32 %i.dl, %i.bt
  br i1 %.not30.i, label %.thread, label %.critedge.i78

.critedge.i78:                                    ; preds = %PixelsAreSimilar.exit.i, %bb.f
  %indvars.iv.next.i79 = add nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %i.dm = icmp slt i64 %indvars.iv.next.i79, %i.cb
  br i1 %i.dm, label %bb.f, label %._crit_edge.i80, !llvm.loop !138

._crit_edge.i80:                                  ; preds = %.critedge.i78
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next39.i, %i.ce
  br i1 %i.dn, label %.lr.ph.i75, label %.thread, !llvm.loop !139

.thread:                                          ; preds = %._crit_edge.i80, %PixelsAreSimilar.exit.i, %bb.i, %bb.h, %bb.g, %.lr.ph35.i, %.thread99, %CopyCurrentCanvas.exit
  %i.do = phi i1 [ false, %CopyCurrentCanvas.exit ], [ %i.ax, %.thread99 ], [ %i.ax, %.lr.ph35.i ], [ %i.ax, %PixelsAreSimilar.exit.i ], [ %i.ax, %bb.g ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %._crit_edge.i80 ] ; 3 uses
  %i.dp = phi i1 [ false, %CopyCurrentCanvas.exit ], [ true, %.thread99 ], [ true, %.lr.ph35.i ], [ false, %PixelsAreSimilar.exit.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ true, %._crit_edge.i80 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !78
  %.not67 = icmp eq i32 %i.dr, 0
  br i1 %.not67, label %.split, label %bb.j

.split:                                           ; preds = %.thread
  %.not68 = icmp eq i32 %3, 0
  br i1 %.not68, label %.thread106, label %.thread101

bb.j:                                             ; preds = %.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !95
  %.not69 = icmp eq i32 %i.dt, 0
  br i1 %.not69, label %bb.k, label %.thread101

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dv = tail call i32 @WebPGetColorPalette(ptr noundef nonnull %i.du, ptr noundef null) #14 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 193
  %i.dx = icmp sgt i32 %i.dv, 30
  br i1 %i.dw, label %.thread106, label %.thread101

.thread101:                                       ; preds = %bb.j, %.split, %bb.k
  %.059.shrunk104 = phi i1 [ false, %.split ], [ %i.dx, %bb.k ], [ true, %bb.j ]
  %i.dy = load i32, ptr %i.f, align 8, !tbaa !34
  %.not.i81 = icmp eq i32 %i.dy, 0
  br i1 %.not.i81, label %CopyCurrentCanvas.exit82, label %bb.l

bb.l:                                             ; preds = %.thread101
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !67
  tail call void @WebPCopyPixels(ptr noundef %i.ea, ptr noundef nonnull %i.d) #14
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ee = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !68
  store <2 x ptr> %i.ee, ptr %i.ed, align 8, !tbaa !68
  store i32 0, ptr %i.f, align 8, !tbaa !34
  br label %CopyCurrentCanvas.exit82

CopyCurrentCanvas.exit82:                         ; preds = %.thread101, %bb.l
  br i1 %i.do, label %bb.m, label %bb.q

bb.m:                                             ; preds = %CopyCurrentCanvas.exit82
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph32.i, label %IncreaseTransparency.exit

.lr.ph32.i:                                       ; preds = %bb.m
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !45 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !48
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !48
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre.i = load i32, ptr %i.ef, align 4, !tbaa !44 ; 2 uses
  %.pre36.i = load i32, ptr %i.er, align 4, !tbaa !46 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i83, %.lr.ph32.i
  %i.es = phi i32 [ %i.ei, %.lr.ph32.i ], [ %i.fu, %._crit_edge.i83 ]
  %i.et = phi i32 [ %i.ek, %.lr.ph32.i ], [ %i.fv, %._crit_edge.i83 ]
  %i.eu = phi i32 [ %.pre36.i, %.lr.ph32.i ], [ %i.fw, %._crit_edge.i83 ] ; 2 uses
  %i.ev = phi i32 [ %.pre.i, %.lr.ph32.i ], [ %i.fx, %._crit_edge.i83 ] ; 2 uses
  %i.ew = phi i32 [ %.pre36.i, %.lr.ph32.i ], [ %i.fy, %._crit_edge.i83 ] ; 2 uses
  %i.ex = phi i32 [ %.pre.i, %.lr.ph32.i ], [ %i.fz, %._crit_edge.i83 ] ; 2 uses
  %.030.i = phi i32 [ 0, %.lr.ph32.i ], [ %.1.lcssa.i, %._crit_edge.i83 ] ; 2 uses
  %.02429.i = phi i32 [ %i.ek, %.lr.ph32.i ], [ %i.ga, %._crit_edge.i83 ] ; 3 uses
  %i.ey = load i32, ptr %i.en, align 8, !tbaa !49
  %i.ez = mul nsw i32 %i.ey, %.02429.i
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fa
  %i.fc = load i32, ptr %i.eq, align 8, !tbaa !49
  %i.fd = mul nsw i32 %i.fc, %.02429.i
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.fe
  %i.fg = icmp sgt i32 %i.ew, 0
  br i1 %i.fg, label %.lr.ph.preheader.i, label %._crit_edge.i83

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.fh = sext i32 %i.ex to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.p, %.lr.ph.preheader.i
  %i.fi = phi i32 [ %i.eu, %.lr.ph.preheader.i ], [ %i.fp, %bb.p ]
  %i.fj = phi i32 [ %i.ev, %.lr.ph.preheader.i ], [ %i.fq, %bb.p ]
  %indvars.iv.i85 = phi i64 [ %i.fh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i87, %bb.p ] ; 3 uses
  %.128.i = phi i32 [ %.030.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.p ]
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv.i85
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !13
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv.i85 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !13 ; 2 uses
  %i.fo = icmp ne i32 %i.fl, %i.fn
  %.not.i86 = icmp eq i32 %i.fn, 0
  %or.cond.i = or i1 %i.fo, %.not.i86
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i84
  store i32 0, ptr %i.fm, align 4, !tbaa !13
  %.pre37.i = load i32, ptr %i.ef, align 4, !tbaa !44
  %.pre38.i = load i32, ptr %i.er, align 4, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i84
  %i.fp = phi i32 [ %.pre38.i, %bb.o ], [ %i.fi, %.lr.ph.i84 ] ; 4 uses
  %i.fq = phi i32 [ %.pre37.i, %bb.o ], [ %i.fj, %.lr.ph.i84 ] ; 4 uses
  %.2.i = phi i32 [ 1, %bb.o ], [ %.128.i, %.lr.ph.i84 ] ; 2 uses
  %indvars.iv.next.i87 = add nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %i.fr = add nsw i32 %i.fq, %i.fp
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next.i87, %i.fs
  br i1 %i.ft, label %.lr.ph.i84, label %._crit_edge.loopexit.i, !llvm.loop !140

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %.pre39.i = load i32, ptr %i.eg, align 4, !tbaa !45
  %.pre40.i = load i32, ptr %i.eh, align 4, !tbaa !47
  br label %._crit_edge.i83

._crit_edge.i83:                                  ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.fu = phi i32 [ %i.es, %bb.n ], [ %.pre40.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fv = phi i32 [ %i.et, %bb.n ], [ %.pre39.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fw = phi i32 [ %i.eu, %bb.n ], [ %i.fp, %._crit_edge.loopexit.i ]
  %i.fx = phi i32 [ %i.ev, %bb.n ], [ %i.fq, %._crit_edge.loopexit.i ]
  %i.fy = phi i32 [ %i.ew, %bb.n ], [ %i.fp, %._crit_edge.loopexit.i ]
  %i.fz = phi i32 [ %i.ex, %bb.n ], [ %i.fq, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.030.i, %bb.n ], [ %.2.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ga = add nsw i32 %.02429.i, 1                ; 2 uses
  %i.gb = add nsw i32 %i.fv, %i.fu
  %i.gc = icmp slt i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.n, label %IncreaseTransparency.exit, !llvm.loop !141

IncreaseTransparency.exit:                        ; preds = %._crit_edge.i83, %bb.m
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %.1.lcssa.i, %._crit_edge.i83 ]
  store i32 %.0.lcssa.i, ptr %i.f, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %IncreaseTransparency.exit, %CopyCurrentCanvas.exit82
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %9, ptr noundef nonnull readonly align 4 dereferenceable(116) %6, i64 116, i1 false), !tbaa.struct !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !80
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.gg, align 4, !tbaa !146
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.gi = load <2 x i32>, ptr %i.ge, align 4, !tbaa !13
  store <2 x i32> %i.gi, ptr %i.gh, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.gj, align 8, !tbaa !147
  %not..i = xor i1 %i.do, true
  %i.gk = zext i1 %not..i to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !148
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.gm, align 8, !tbaa !149
  tail call void @WebPMemoryWriterInit(ptr noundef nonnull %i.b) #14
  %i.gn = load i32, ptr %9, align 4, !tbaa !66
  %i.go = icmp eq i32 %i.gn, 0
  %or.cond.i88 = and i1 %i.do, %i.go
  br i1 %or.cond.i88, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.gp, align 4, !tbaa !150
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 0, ptr %i.gq, align 4, !tbaa !151
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1, ptr %i.gd, align 8, !tbaa !56
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr @WebPMemoryWrite, ptr %i.gr, align 8, !tbaa !87
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr %i.b, ptr %i.gs, align 8, !tbaa !88
  %i.gt = call i32 @WebPEncode(ptr noundef nonnull %9, ptr noundef nonnull %i.gd) #14
  %.not.i.not.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !58
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.b) #14
  br label %EncodeCandidate.exit

bb.u:                                             ; preds = %bb.s
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 1, ptr %i.gw, align 8, !tbaa !97
  br label %EncodeCandidate.exit

EncodeCandidate.exit:                             ; preds = %bb.t, %bb.u
  %.0.i = phi i32 [ 0, %bb.u ], [ %i.gv, %bb.t ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %.not71 = icmp eq i32 %.0.i, 0
  %brmerge.not = and i1 %.059.shrunk104, %.not71
  br i1 %brmerge.not, label %.thread106, label %bb.aj

.thread106:                                       ; preds = %bb.k, %.split, %EncodeCandidate.exit
  %i.gx = load i32, ptr %i.f, align 8, !tbaa !34
  %.not.i89 = icmp eq i32 %i.gx, 0
  br i1 %.not.i89, label %CopyCurrentCanvas.exit90, label %bb.v

bb.v:                                             ; preds = %.thread106
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !67
  call void @WebPCopyPixels(ptr noundef %i.gz, ptr noundef nonnull %i.d) #14
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !67
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 144
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.hd = load <2 x ptr>, ptr %i.hb, align 8, !tbaa !68
  store <2 x ptr> %i.hd, ptr %i.hc, align 8, !tbaa !68
  store i32 0, ptr %i.f, align 8, !tbaa !34
  br label %CopyCurrentCanvas.exit90

CopyCurrentCanvas.exit90:                         ; preds = %.thread106, %bb.v
  br i1 %i.dp, label %bb.w, label %bb.af

bb.w:                                             ; preds = %CopyCurrentCanvas.exit90
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !94
  %i.hh = fpext float %i.hg to double
  %i.hi = fdiv double %i.hh, 1.000000e+02
  %i.hj = call double @pow(double noundef %i.hi, double noundef 5.000000e-01) #14, !tbaa !13 ; 2 uses
  %i.hk = fsub double 1.000000e+00, %i.hj
  %i.hl = call double @llvm.fmuladd.f64(double %i.hk, double 3.100000e+01, double %i.hj)
  %i.hm = fadd double %i.hl, 5.000000e-01
  %i.hn = fptosi double %i.hm to i32              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !45 ; 2 uses
  %i.hq = and i32 %i.hp, -8
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !47
  %i.ht = add nsw i32 %i.hs, %i.hp
  %i.hu = and i32 %i.ht, -8                       ; 2 uses
  %i.hv = load i32, ptr %i.he, align 4, !tbaa !44 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !46
  %i.hy = add nsw i32 %i.hx, %i.hv
  %i.hz = and i32 %i.hy, -8                       ; 2 uses
  %.078100.i = add nsw i32 %i.hq, 8               ; 2 uses
  %i.ia = icmp slt i32 %.078100.i, %i.hu
  br i1 %i.ia, label %.preheader83.lr.ph.i, label %FlattenSimilarBlocks.exit

.preheader83.lr.ph.i:                             ; preds = %bb.w
  %i.ib = and i32 %i.hv, -8
  %.07997.i = add nsw i32 %i.ib, 8                ; 2 uses
  %i.ic = icmp slt i32 %.07997.i, %i.hz
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 57 uses
  %10 = mul nsw i32 %i.hn, 255                    ; 2 uses
  br i1 %i.ic, label %.preheader83.lr.ph.split.us.i, label %FlattenSimilarBlocks.exit

.preheader83.lr.ph.split.us.i:                    ; preds = %.preheader83.lr.ph.i
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !48
  %i.ii = load ptr, ptr %i.if, align 8, !tbaa !48
  %i.ij = sext i32 %.07997.i to i64
  %i.ik = sext i32 %i.hz to i64
  br label %.preheader83.us.i

.preheader83.us.i:                                ; preds = %..loopexit84_crit_edge.us.i, %.preheader83.lr.ph.split.us.i
  %.078102.us.i = phi i32 [ %.078100.i, %.preheader83.lr.ph.split.us.i ], [ %.078.us.i, %..loopexit84_crit_edge.us.i ] ; 3 uses
  %.075101.us.i = phi i32 [ 0, %.preheader83.lr.ph.split.us.i ], [ %.277.us.i, %..loopexit84_crit_edge.us.i ]
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.us.i, %.preheader83.us.i
  %indvars.iv112.i = phi i64 [ %i.ij, %.preheader83.us.i ], [ %indvars.iv.next113.i, %.loopexit.us.i ] ; 3 uses
  %.17698.us.i = phi i32 [ %.075101.us.i, %.preheader83.us.i ], [ %.277.us.i, %.loopexit.us.i ]
  %i.il = load i32, ptr %i.id, align 8, !tbaa !49 ; 2 uses
  %i.im = mul nsw i32 %i.il, %.078102.us.i
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.in
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.io, i64 %indvars.iv112.i
  %i.iq = load i32, ptr %i.ie, align 8, !tbaa !49 ; 2 uses
  %i.ir = mul nsw i32 %i.iq, %.078102.us.i
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.is
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %indvars.iv112.i ; 59 uses
  %i.iv = sext i32 %i.il to i64
  %i.iw = sext i32 %i.iq to i64
  br label %.preheader82.us.i

bb.y:                                             ; preds = %.preheader82.us.i, %PixelsAreSimilar.exit.thread.us.i.a
  %indvars.iv.i92 = phi i64 [ 0, %.preheader82.us.i ], [ %indvars.iv.next.i93, %PixelsAreSimilar.exit.thread.us.i.a ] ; 3 uses
  %.16588.us.i = phi i32 [ %.06493.us.i, %.preheader82.us.i ], [ %.2.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ] ; 6 uses
  %.16787.us.i = phi i32 [ %.06692.us.i, %.preheader82.us.i ], [ %.268.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ] ; 6 uses
  %.17086.us.i = phi i32 [ %.06991.us.i, %.preheader82.us.i ], [ %.271.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ] ; 6 uses
  %.17385.us.i = phi i32 [ %.07290.us.i, %.preheader82.us.i ], [ %.274.us.i.a, %PixelsAreSimilar.exit.thread.us.i.a ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i92
  %11 = load i32, ptr %gep.i, align 4, !tbaa !13  ; 4 uses
  %i.ix = icmp ugt i32 %11, -16777217
  br i1 %i.ix, label %bb.z, label %PixelsAreSimilar.exit.thread.us.i.a

bb.z:                                             ; preds = %bb.y
  %gep120.i = getelementptr [4 x i8], ptr %invariant.gep119.i, i64 %indvars.iv.i92
  %i.iy = load i32, ptr %gep120.i, align 4, !tbaa !13 ; 4 uses
  %i.iz = lshr i32 %11, 8
  %i.ja = and i32 %i.iz, 255                      ; 2 uses
  %i.jb = and i32 %11, 255                        ; 2 uses
  %i.jc = lshr i32 %i.iy, 8
  %i.jd = and i32 %i.jc, 255
  %i.je = and i32 %i.iy, 255
  %i.jf = icmp ugt i32 %i.iy, -16777217
  br i1 %i.jf, label %bb.aa, label %PixelsAreSimilar.exit.thread.us.i.a

bb.aa:                                            ; preds = %bb.z
  %i.jg = lshr i32 %i.iy, 16
  %i.jh = and i32 %i.jg, 255
  %i.ji = lshr i32 %11, 16
  %i.jj = and i32 %i.ji, 255                      ; 2 uses
  %i.jk = sub nsw i32 %i.jj, %i.jh
  %i.jl = call i32 @llvm.abs.i32(i32 %i.jk, i1 true)
  %.not.i.us.i.a = icmp sgt i32 %i.jl, %i.hn
  br i1 %.not.i.us.i.a, label %PixelsAreSimilar.exit.thread.us.i.a, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jm = sub nsw i32 %i.ja, %i.jd
  %i.jn = call i32 @llvm.abs.i32(i32 %i.jm, i1 true)
  %12 = mul nuw nsw i32 %i.jn, 255
  %.not23.i.us.i.a = icmp samesign ugt i32 %12, %10
  br i1 %.not23.i.us.i.a, label %PixelsAreSimilar.exit.thread.us.i.a, label %PixelsAreSimilar.exit.us.i.a

PixelsAreSimilar.exit.us.i.a:                     ; preds = %bb.ab
  %i.jo = sub nsw i32 %i.jb, %i.je
  %i.jp = call i32 @llvm.abs.i32(i32 %i.jo, i1 true)
  %13 = mul nuw nsw i32 %i.jp, 255
  %.not81.us.i.a = icmp samesign ugt i32 %13, %10
  br i1 %.not81.us.i.a, label %PixelsAreSimilar.exit.thread.us.i.a, label %bb.ac

bb.ac:                                            ; preds = %PixelsAreSimilar.exit.us.i.a
  %i.jq = add nsw i32 %.17385.us.i, 1
  %i.jr = add i32 %i.jj, %.17086.us.i
  %i.js = add i32 %i.ja, %.16787.us.i
  %i.jt = add i32 %i.jb, %.16588.us.i
  br label %PixelsAreSimilar.exit.thread.us.i.a

PixelsAreSimilar.exit.thread.us.i.a:              ; preds = %bb.ac, %PixelsAreSimilar.exit.us.i.a, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.274.us.i.a = phi i32 [ %i.jq, %bb.ac ], [ %.17385.us.i, %PixelsAreSimilar.exit.us.i.a ], [ %.17385.us.i, %bb.y ], [ %.17385.us.i, %bb.ab ], [ %.17385.us.i, %bb.aa ], [ %.17385.us.i, %bb.z ] ; 3 uses
  %.271.us.i.a = phi i32 [ %i.jr, %bb.ac ], [ %.17086.us.i, %PixelsAreSimilar.exit.us.i.a ], [ %.17086.us.i, %bb.y ], [ %.17086.us.i, %bb.ab ], [ %.17086.us.i, %bb.aa ], [ %.17086.us.i, %bb.z ] ; 3 uses
  %.268.us.i.a = phi i32 [ %i.js, %bb.ac ], [ %.16787.us.i, %PixelsAreSimilar.exit.us.i.a ], [ %.16787.us.i, %bb.y ], [ %.16787.us.i, %bb.ab ], [ %.16787.us.i, %bb.aa ], [ %.16787.us.i, %bb.z ] ; 3 uses
  %.2.us.i.a = phi i32 [ %i.jt, %bb.ac ], [ %.16588.us.i, %PixelsAreSimilar.exit.us.i.a ], [ %.16588.us.i, %bb.y ], [ %.16588.us.i, %bb.ab ], [ %.16588.us.i, %bb.aa ], [ %.16588.us.i, %bb.z ] ; 3 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i93, 8
  br i1 %exitcond.not.i, label %bb.ad, label %bb.y, !llvm.loop !142

bb.ad:                                            ; preds = %PixelsAreSimilar.exit.thread.us.i.a
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 8
  br i1 %exitcond109.not.i, label %bb.ae, label %.preheader82.us.i, !llvm.loop !143

bb.ae:                                            ; preds = %bb.ad
  %i.ju = icmp eq i32 %.274.us.i.a, 64
  br i1 %i.ju, label %.preheader.us.i, label %.loopexit.us.i

.preheader.us.i:                                  ; preds = %bb.ae
  %i.jv = sdiv i32 %.271.us.i.a, 64
  %i.jw = shl i32 %i.jv, 16
  %i.jx = sdiv i32 %.268.us.i.a, 64
  %i.jy = shl i32 %i.jx, 8
  %i.jz = or i32 %i.jy, %i.jw
  %i.ka = sdiv i32 %.2.us.i.a, 64
  %i.kb = or i32 %i.jz, %i.ka                     ; 57 uses
  %i.kc = insertelement <4 x i32> poison, i32 %i.kb, i64 0
  %i.kd = shufflevector <4 x i32> %i.kc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.kd, ptr %i.iu, align 4, !tbaa !13
  %i.ke = getelementptr i8, ptr %i.iu, i64 16
  store <4 x i32> %i.kd, ptr %i.ke, align 4, !tbaa !13
  %i.kf = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.kg
  store i32 %i.kb, ptr %i.kh, align 4, !tbaa !13
  %i.ki = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr [4 x i8], ptr %i.iu, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 4
  store i32 %i.kb, ptr %i.kl, align 4, !tbaa !13
  %i.km = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr [4 x i8], ptr %i.iu, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  store i32 %i.kb, ptr %i.kp, align 4, !tbaa !13
  %i.kq = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr [4 x i8], ptr %i.iu, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 12
  store i32 %i.kb, ptr %i.kt, align 4, !tbaa !13
  %i.ku = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr [4 x i8], ptr %i.iu, i64 %i.kv
  %i.kx = getelementptr i8, ptr %i.kw, i64 16
  store i32 %i.kb, ptr %i.kx, align 4, !tbaa !13
  %i.ky = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr [4 x i8], ptr %i.iu, i64 %i.kz
  %i.lb = getelementptr i8, ptr %i.la, i64 20
  store i32 %i.kb, ptr %i.lb, align 4, !tbaa !13
  %i.lc = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr [4 x i8], ptr %i.iu, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.le, i64 24
  store i32 %i.kb, ptr %i.lf, align 4, !tbaa !13
  %i.lg = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr [4 x i8], ptr %i.iu, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 28
  store i32 %i.kb, ptr %i.lj, align 4, !tbaa !13
  %i.lk = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ll = shl nsw i32 %i.lk, 1
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.lm
  store i32 %i.kb, ptr %i.ln, align 4, !tbaa !13
  %i.lo = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.lp = shl nsw i32 %i.lo, 1
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr [4 x i8], ptr %i.iu, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lr, i64 4
  store i32 %i.kb, ptr %i.ls, align 4, !tbaa !13
  %i.lt = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.lu = shl nsw i32 %i.lt, 1
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr [4 x i8], ptr %i.iu, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 8
  store i32 %i.kb, ptr %i.lx, align 4, !tbaa !13
  %i.ly = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.lz = shl nsw i32 %i.ly, 1
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr [4 x i8], ptr %i.iu, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 12
  store i32 %i.kb, ptr %i.mc, align 4, !tbaa !13
  %i.md = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.me = shl nsw i32 %i.md, 1
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr [4 x i8], ptr %i.iu, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 16
  store i32 %i.kb, ptr %i.mh, align 4, !tbaa !13
  %i.mi = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.mj = shl nsw i32 %i.mi, 1
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr [4 x i8], ptr %i.iu, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 20
  store i32 %i.kb, ptr %i.mm, align 4, !tbaa !13
  %i.mn = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.mo = shl nsw i32 %i.mn, 1
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr [4 x i8], ptr %i.iu, i64 %i.mp
  %i.mr = getelementptr i8, ptr %i.mq, i64 24
  store i32 %i.kb, ptr %i.mr, align 4, !tbaa !13
  %i.ms = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.mt = shl nsw i32 %i.ms, 1
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr [4 x i8], ptr %i.iu, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 28
  store i32 %i.kb, ptr %i.mw, align 4, !tbaa !13
  %i.mx = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.my = mul nsw i32 %i.mx, 3
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.mz
  store i32 %i.kb, ptr %i.na, align 4, !tbaa !13
  %i.nb = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.nc = mul nsw i32 %i.nb, 3
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr [4 x i8], ptr %i.iu, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 4
  store i32 %i.kb, ptr %i.nf, align 4, !tbaa !13
  %i.ng = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.nh = mul nsw i32 %i.ng, 3
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr [4 x i8], ptr %i.iu, i64 %i.ni
  %i.nk = getelementptr i8, ptr %i.nj, i64 8
  store i32 %i.kb, ptr %i.nk, align 4, !tbaa !13
  %i.nl = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.nm = mul nsw i32 %i.nl, 3
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr [4 x i8], ptr %i.iu, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 12
  store i32 %i.kb, ptr %i.np, align 4, !tbaa !13
  %i.nq = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.nr = mul nsw i32 %i.nq, 3
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr [4 x i8], ptr %i.iu, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 16
  store i32 %i.kb, ptr %i.nu, align 4, !tbaa !13
  %i.nv = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.nw = mul nsw i32 %i.nv, 3
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr [4 x i8], ptr %i.iu, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 20
  store i32 %i.kb, ptr %i.nz, align 4, !tbaa !13
  %i.oa = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ob = mul nsw i32 %i.oa, 3
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr [4 x i8], ptr %i.iu, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.od, i64 24
  store i32 %i.kb, ptr %i.oe, align 4, !tbaa !13
  %i.of = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.og = mul nsw i32 %i.of, 3
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr [4 x i8], ptr %i.iu, i64 %i.oh
  %i.oj = getelementptr i8, ptr %i.oi, i64 28
  store i32 %i.kb, ptr %i.oj, align 4, !tbaa !13
  %i.ok = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ol = shl nsw i32 %i.ok, 2
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.om
  store i32 %i.kb, ptr %i.on, align 4, !tbaa !13
  %i.oo = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.op = shl nsw i32 %i.oo, 2
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr [4 x i8], ptr %i.iu, i64 %i.oq
  %i.os = getelementptr i8, ptr %i.or, i64 4
  store i32 %i.kb, ptr %i.os, align 4, !tbaa !13
  %i.ot = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ou = shl nsw i32 %i.ot, 2
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr [4 x i8], ptr %i.iu, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 8
  store i32 %i.kb, ptr %i.ox, align 4, !tbaa !13
  %i.oy = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.oz = shl nsw i32 %i.oy, 2
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr [4 x i8], ptr %i.iu, i64 %i.pa
  %i.pc = getelementptr i8, ptr %i.pb, i64 12
  store i32 %i.kb, ptr %i.pc, align 4, !tbaa !13
  %i.pd = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.pe = shl nsw i32 %i.pd, 2
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr [4 x i8], ptr %i.iu, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 16
  store i32 %i.kb, ptr %i.ph, align 4, !tbaa !13
  %i.pi = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.pj = shl nsw i32 %i.pi, 2
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr [4 x i8], ptr %i.iu, i64 %i.pk
  %i.pm = getelementptr i8, ptr %i.pl, i64 20
  store i32 %i.kb, ptr %i.pm, align 4, !tbaa !13
  %i.pn = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.po = shl nsw i32 %i.pn, 2
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr [4 x i8], ptr %i.iu, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 24
  store i32 %i.kb, ptr %i.pr, align 4, !tbaa !13
  %i.ps = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.pt = shl nsw i32 %i.ps, 2
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr [4 x i8], ptr %i.iu, i64 %i.pu
  %i.pw = getelementptr i8, ptr %i.pv, i64 28
  store i32 %i.kb, ptr %i.pw, align 4, !tbaa !13
  %i.px = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.py = mul nsw i32 %i.px, 5
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.pz
  store i32 %i.kb, ptr %i.qa, align 4, !tbaa !13
  %i.qb = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.qc = mul nsw i32 %i.qb, 5
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr [4 x i8], ptr %i.iu, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 4
  store i32 %i.kb, ptr %i.qf, align 4, !tbaa !13
  %i.qg = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.qh = mul nsw i32 %i.qg, 5
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr [4 x i8], ptr %i.iu, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 8
  store i32 %i.kb, ptr %i.qk, align 4, !tbaa !13
  %i.ql = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.qm = mul nsw i32 %i.ql, 5
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr [4 x i8], ptr %i.iu, i64 %i.qn
  %i.qp = getelementptr i8, ptr %i.qo, i64 12
  store i32 %i.kb, ptr %i.qp, align 4, !tbaa !13
  %i.qq = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.qr = mul nsw i32 %i.qq, 5
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr [4 x i8], ptr %i.iu, i64 %i.qs
  %i.qu = getelementptr i8, ptr %i.qt, i64 16
  store i32 %i.kb, ptr %i.qu, align 4, !tbaa !13
  %i.qv = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.qw = mul nsw i32 %i.qv, 5
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr [4 x i8], ptr %i.iu, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 20
  store i32 %i.kb, ptr %i.qz, align 4, !tbaa !13
  %i.ra = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.rb = mul nsw i32 %i.ra, 5
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr [4 x i8], ptr %i.iu, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.rd, i64 24
  store i32 %i.kb, ptr %i.re, align 4, !tbaa !13
  %i.rf = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.rg = mul nsw i32 %i.rf, 5
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr [4 x i8], ptr %i.iu, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 28
  store i32 %i.kb, ptr %i.rj, align 4, !tbaa !13
  %i.rk = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.rl = mul nsw i32 %i.rk, 6
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.rm
  store i32 %i.kb, ptr %i.rn, align 4, !tbaa !13
  %i.ro = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.rp = mul nsw i32 %i.ro, 6
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr [4 x i8], ptr %i.iu, i64 %i.rq
  %i.rs = getelementptr i8, ptr %i.rr, i64 4
  store i32 %i.kb, ptr %i.rs, align 4, !tbaa !13
  %i.rt = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ru = mul nsw i32 %i.rt, 6
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr [4 x i8], ptr %i.iu, i64 %i.rv
  %i.rx = getelementptr i8, ptr %i.rw, i64 8
  store i32 %i.kb, ptr %i.rx, align 4, !tbaa !13
  %i.ry = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.rz = mul nsw i32 %i.ry, 6
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr [4 x i8], ptr %i.iu, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 12
  store i32 %i.kb, ptr %i.sc, align 4, !tbaa !13
  %i.sd = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.se = mul nsw i32 %i.sd, 6
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr [4 x i8], ptr %i.iu, i64 %i.sf
  %i.sh = getelementptr i8, ptr %i.sg, i64 16
  store i32 %i.kb, ptr %i.sh, align 4, !tbaa !13
  %i.si = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.sj = mul nsw i32 %i.si, 6
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr [4 x i8], ptr %i.iu, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 20
  store i32 %i.kb, ptr %i.sm, align 4, !tbaa !13
  %i.sn = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.so = mul nsw i32 %i.sn, 6
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr [4 x i8], ptr %i.iu, i64 %i.sp
  %i.sr = getelementptr i8, ptr %i.sq, i64 24
  store i32 %i.kb, ptr %i.sr, align 4, !tbaa !13
  %i.ss = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.st = mul nsw i32 %i.ss, 6
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr [4 x i8], ptr %i.iu, i64 %i.su
  %i.sw = getelementptr i8, ptr %i.sv, i64 28
  store i32 %i.kb, ptr %i.sw, align 4, !tbaa !13
  %i.sx = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.sy = mul nsw i32 %i.sx, 7
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.sz
  store i32 %i.kb, ptr %i.ta, align 4, !tbaa !13
  %i.tb = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.tc = mul nsw i32 %i.tb, 7
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr [4 x i8], ptr %i.iu, i64 %i.td
  %i.tf = getelementptr i8, ptr %i.te, i64 4
  store i32 %i.kb, ptr %i.tf, align 4, !tbaa !13
  %i.tg = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.th = mul nsw i32 %i.tg, 7
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr [4 x i8], ptr %i.iu, i64 %i.ti
  %i.tk = getelementptr i8, ptr %i.tj, i64 8
  store i32 %i.kb, ptr %i.tk, align 4, !tbaa !13
  %i.tl = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.tm = mul nsw i32 %i.tl, 7
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr [4 x i8], ptr %i.iu, i64 %i.tn
  %i.tp = getelementptr i8, ptr %i.to, i64 12
  store i32 %i.kb, ptr %i.tp, align 4, !tbaa !13
  %i.tq = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.tr = mul nsw i32 %i.tq, 7
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr [4 x i8], ptr %i.iu, i64 %i.ts
  %i.tu = getelementptr i8, ptr %i.tt, i64 16
  store i32 %i.kb, ptr %i.tu, align 4, !tbaa !13
  %i.tv = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.tw = mul nsw i32 %i.tv, 7
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr [4 x i8], ptr %i.iu, i64 %i.tx
  %i.tz = getelementptr i8, ptr %i.ty, i64 20
  store i32 %i.kb, ptr %i.tz, align 4, !tbaa !13
  %i.ua = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ub = mul nsw i32 %i.ua, 7
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr [4 x i8], ptr %i.iu, i64 %i.uc
  %i.ue = getelementptr i8, ptr %i.ud, i64 24
  store i32 %i.kb, ptr %i.ue, align 4, !tbaa !13
  %i.uf = load i32, ptr %i.ie, align 8, !tbaa !49
  %i.ug = mul nsw i32 %i.uf, 7
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr [4 x i8], ptr %i.iu, i64 %i.uh
  %i.uj = getelementptr i8, ptr %i.ui, i64 28
  store i32 %i.kb, ptr %i.uj, align 4, !tbaa !13
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.preheader.us.i, %bb.ae
  %.277.us.i = phi i32 [ %.17698.us.i, %bb.ae ], [ 1, %.preheader.us.i ] ; 3 uses
  %indvars.iv.next113.i = add nsw i64 %indvars.iv112.i, 8 ; 2 uses
  %i.uk = icmp slt i64 %indvars.iv.next113.i, %i.ik
  br i1 %i.uk, label %bb.x, label %..loopexit84_crit_edge.us.i, !llvm.loop !144

.preheader82.us.i:                                ; preds = %bb.ad, %bb.x
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %bb.ad ], [ 0, %bb.x ] ; 3 uses
  %.06493.us.i = phi i32 [ %.2.us.i.a, %bb.ad ], [ 0, %bb.x ]
  %.06692.us.i = phi i32 [ %.268.us.i.a, %bb.ad ], [ 0, %bb.x ]
  %.06991.us.i = phi i32 [ %.271.us.i.a, %bb.ad ], [ 0, %bb.x ]
  %.07290.us.i = phi i32 [ %.274.us.i.a, %bb.ad ], [ 0, %bb.x ]
  %i.ul = mul nsw i64 %indvars.iv106.i, %i.iv
  %i.um = mul nsw i64 %indvars.iv106.i, %i.iw
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ip, i64 %i.ul
  %invariant.gep119.i = getelementptr [4 x i8], ptr %i.iu, i64 %i.um
  br label %bb.y

..loopexit84_crit_edge.us.i:                      ; preds = %.loopexit.us.i
  %.078.us.i = add nsw i32 %.078102.us.i, 8       ; 2 uses
  %i.un = icmp slt i32 %.078.us.i, %i.hu
  br i1 %i.un, label %.preheader83.us.i, label %FlattenSimilarBlocks.exit, !llvm.loop !145

FlattenSimilarBlocks.exit:                        ; preds = %..loopexit84_crit_edge.us.i, %bb.w, %.preheader83.lr.ph.i
  %.075.lcssa.i = phi i32 [ 0, %bb.w ], [ 0, %.preheader83.lr.ph.i ], [ %.277.us.i, %..loopexit84_crit_edge.us.i ]
  store i32 %.075.lcssa.i, ptr %i.f, align 8, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %FlattenSimilarBlocks.exit, %CopyCurrentCanvas.exit90
  %i.uo = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %8, ptr noundef nonnull readonly align 4 dereferenceable(116) %7, i64 116, i1 false), !tbaa.struct !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i8 0, i64 104, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uq, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.up, i64 16, i1 false), !tbaa.struct !80
  %i.ur = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 3, ptr %i.ur, align 4, !tbaa !146
  %i.us = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ut = load <2 x i32>, ptr %i.up, align 4, !tbaa !13
  store <2 x i32> %i.ut, ptr %i.us, align 8, !tbaa !13
  %i.uu = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.uu, align 8, !tbaa !147
  %not..i94 = xor i1 %i.dp, true
  %i.uv = zext i1 %not..i94 to i32
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.uv, ptr %i.uw, align 4, !tbaa !148
  %i.ux = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 0, ptr %i.ux, align 8, !tbaa !149
  call void @WebPMemoryWriterInit(ptr noundef nonnull %i.c) #14
  %i.uy = load i32, ptr %8, align 4, !tbaa !66
  %i.uz = icmp eq i32 %i.uy, 0
  %or.cond.i95 = and i1 %i.dp, %i.uz
  br i1 %or.cond.i95, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.va = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %i.va, align 4, !tbaa !150
  %i.vb = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 0, ptr %i.vb, align 4, !tbaa !151
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store i32 1, ptr %i.uo, align 8, !tbaa !56
  %i.vc = getelementptr inbounds nuw i8, ptr %5, i64 392
  store ptr @WebPMemoryWrite, ptr %i.vc, align 8, !tbaa !87
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 400
  store ptr %i.c, ptr %i.vd, align 8, !tbaa !88
  %i.ve = call i32 @WebPEncode(ptr noundef nonnull %8, ptr noundef nonnull %i.uo) #14
  %.not.i.not.i96 = icmp eq i32 %i.ve, 0
  br i1 %.not.i.not.i96, label %EncodeCandidate.exit98, label %EncodeCandidate.exit98.thread

EncodeCandidate.exit98.thread:                    ; preds = %bb.ah
  %i.vf = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 1, ptr %i.vf, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.ai

EncodeCandidate.exit98:                           ; preds = %bb.ah
  %i.vg = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !58 ; 2 uses
  call void @WebPMemoryWriterClear(ptr noundef nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %.not72 = icmp eq i32 %i.vh, 0
  br i1 %.not72, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %EncodeCandidate.exit98.thread, %EncodeCandidate.exit98
  store i32 1, ptr %i.f, align 8, !tbaa !34
  br label %bb.aj

bb.aj:                                            ; preds = %EncodeCandidate.exit, %bb.ai, %EncodeCandidate.exit98
  %.0 = phi i32 [ %i.vh, %EncodeCandidate.exit98 ], [ %.0.i, %EncodeCandidate.exit ], [ 0, %bb.ai ]
  ret i32 %.0
}

declare void @WebPMemoryWriterClear(ptr noundef) local_unnamed_addr #3

declare i32 @WebPPictureView(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPGetColorPalette(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WebPMemoryWriterInit(ptr noundef) local_unnamed_addr #3

declare i32 @WebPMemoryWrite(ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @WebPEncode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxGetFrame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxGetCanvasSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPMuxSetImage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WebPMuxCreateInternal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPDecode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPInitDecoderConfigInternal(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !50}
!1 = distinct !{!1, !50}
!2 = distinct !{!2, !50}
!3 = distinct !{!3, !50}
!4 = distinct !{!4, !50}
!5 = distinct !{!5, !50}
!6 = distinct !{!6, !50}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"WebPMuxAnimParams", !12, i64 0, !12, i64 4}
!15 = !{!"WebPAnimEncoderOptions", !14, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28}
!16 = !{!15, !12, i64 16}
!17 = !{!15, !12, i64 20}
!18 = !{!15, !12, i64 24}
!19 = !{!11, !11, i64 0}
!20 = !{!"any pointer", !11, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!24 = !{!"float", !11, i64 0}
!25 = !{!"WebPConfig", !12, i64 0, !24, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !24, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112}
!26 = !{!"p1 _ZTS11WebPPicture", !20, i64 0}
!27 = !{!"p1 omnipotent char", !20, i64 0}
!28 = !{!"p1 int", !20, i64 0}
!29 = !{!"p1 _ZTS12WebPAuxStats", !20, i64 0}
!30 = !{!"WebPPicture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !27, i64 16, !27, i64 24, !27, i64 32, !12, i64 40, !12, i64 44, !27, i64 48, !12, i64 56, !11, i64 60, !28, i64 72, !12, i64 80, !11, i64 84, !20, i64 96, !20, i64 104, !12, i64 112, !27, i64 120, !29, i64 128, !12, i64 136, !20, i64 144, !20, i64 152, !11, i64 160, !27, i64 176, !27, i64 184, !11, i64 192, !20, i64 224, !20, i64 232, !11, i64 240}
!31 = !{!"long", !11, i64 0}
!32 = !{!"p1 _ZTS7WebPMux", !20, i64 0}
!33 = !{!"WebPAnimEncoder", !12, i64 0, !12, i64 4, !15, i64 8, !23, i64 52, !25, i64 68, !25, i64 184, !26, i64 304, !30, i64 312, !12, i64 568, !30, i64 576, !30, i64 832, !20, i64 1088, !31, i64 1096, !31, i64 1104, !31, i64 1112, !31, i64 1120, !31, i64 1128, !12, i64 1136, !12, i64 1140, !12, i64 1144, !12, i64 1148, !12, i64 1152, !12, i64 1156, !12, i64 1160, !31, i64 1168, !31, i64 1176, !32, i64 1184, !11, i64 1192}
!34 = !{!33, !12, i64 568}
!35 = !{!33, !31, i64 1128}
!36 = !{!33, !12, i64 1136}
!37 = !{!33, !12, i64 24}
!38 = !{!33, !12, i64 20}
!39 = !{!33, !31, i64 1096}
!40 = !{!33, !20, i64 1088}
!41 = !{!33, !32, i64 1184}
!42 = !{!33, !12, i64 1156}
!43 = !{!33, !12, i64 1160}
!44 = !{!23, !12, i64 0}
!45 = !{!23, !12, i64 4}
!46 = !{!23, !12, i64 8}
!47 = !{!23, !12, i64 12}
!48 = !{!30, !28, i64 72}
!49 = !{!30, !12, i64 80}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!30, !12, i64 8}
!52 = !{!30, !12, i64 12}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"WebPData", !27, i64 0, !31, i64 8}
!55 = !{!54, !27, i64 0}
!56 = !{!30, !12, i64 0}
!57 = !{!33, !12, i64 1148}
!58 = !{!30, !12, i64 136}
!59 = !{!33, !31, i64 1112}
!60 = !{!33, !12, i64 1144}
!61 = !{!33, !12, i64 0}
!62 = !{!33, !12, i64 4}
!63 = !{!33, !12, i64 32}
!64 = !{!24, !24, i64 0}
!65 = !{i64 0, i64 4, !13, i64 4, i64 4, !64, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !64, i64 24, i64 4, !13, i64 28, i64 4, !13, i64 32, i64 4, !13, i64 36, i64 4, !13, i64 40, i64 4, !13, i64 44, i64 4, !13, i64 48, i64 4, !13, i64 52, i64 4, !13, i64 56, i64 4, !13, i64 60, i64 4, !13, i64 64, i64 4, !13, i64 68, i64 4, !13, i64 72, i64 4, !13, i64 76, i64 4, !13, i64 80, i64 4, !13, i64 84, i64 4, !13, i64 88, i64 4, !13, i64 92, i64 4, !13, i64 96, i64 4, !13, i64 100, i64 4, !13, i64 104, i64 4, !13, i64 108, i64 4, !13, i64 112, i64 4, !13}
!66 = !{!25, !12, i64 0}
!67 = !{!33, !26, i64 304}
!68 = !{!20, !20, i64 0}
!69 = !{!33, !31, i64 1104}
!70 = !{!"WebPMuxFrameInfo", !54, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40}
!71 = !{!"", !70, i64 0, !70, i64 48, !12, i64 96}
!72 = !{!71, !12, i64 96}
!73 = !{!33, !31, i64 1120}
!74 = !{!33, !12, i64 1140}
!75 = !{!33, !12, i64 1152}
!76 = !{!33, !31, i64 1168}
!77 = !{!54, !31, i64 8}
!78 = !{!33, !12, i64 28}
!79 = !{!71, !12, i64 32}
!80 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13}
!81 = !{!70, !12, i64 16}
!82 = !{!70, !12, i64 20}
!83 = !{!70, !12, i64 32}
!84 = !{!33, !31, i64 1176}
!85 = !{!31, !31, i64 0}
!86 = !{!27, !27, i64 0}
!87 = !{!30, !20, i64 96}
!88 = !{!30, !20, i64 104}
!89 = !{!"WebPMemoryWriter", !27, i64 0, !31, i64 8, !31, i64 16, !11, i64 24}
!90 = !{!89, !27, i64 0}
!91 = !{!89, !31, i64 8}
!92 = !{!"", !12, i64 0, !12, i64 4, !23, i64 8, !30, i64 24, !23, i64 280, !30, i64 296}
!93 = !{!92, !12, i64 4}
!94 = !{!25, !24, i64 4}
!95 = !{!33, !12, i64 16}
!96 = !{!"", !89, i64 0, !70, i64 32, !23, i64 80, !12, i64 96}
!97 = !{!96, !12, i64 96}
!98 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13, i64 24, i64 4, !13, i64 28, i64 16, !19}
!99 = !{!15, !12, i64 8}
!100 = !{!15, !12, i64 12}
!101 = !{!33, !12, i64 320}
!102 = !{!33, !12, i64 324}
!103 = !{!33, !12, i64 312}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !50, !106}
!106 = !{!"llvm.loop.unswitch.partial.disable"}
!107 = !{ptr @ComparePixelsLossless, ptr @ComparePixelsLossy}
!108 = !{!71, !31, i64 8}
!109 = !{!71, !31, i64 56}
!110 = !{!71, !12, i64 24}
!111 = !{!33, !12, i64 68}
!112 = !{!71, !12, i64 28}
!113 = !{!71, !12, i64 16}
!114 = !{!71, !12, i64 20}
!115 = !{!71, !12, i64 36}
!116 = !{!71, !12, i64 72}
!117 = !{!70, !12, i64 36}
!118 = !{i64 0, i64 8, !86, i64 8, i64 8, !85, i64 16, i64 4, !13, i64 20, i64 4, !13, i64 24, i64 4, !13, i64 28, i64 4, !13, i64 32, i64 4, !13, i64 36, i64 4, !13, i64 40, i64 4, !19, i64 48, i64 8, !86, i64 56, i64 8, !85, i64 64, i64 4, !13, i64 68, i64 4, !13, i64 72, i64 4, !13, i64 76, i64 4, !13, i64 80, i64 4, !13, i64 84, i64 4, !13, i64 88, i64 4, !19, i64 96, i64 4, !13}
!119 = distinct !{!119, !53}
!120 = !{!"WebPBitstreamFeatures", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !11, i64 20}
!121 = !{!"WebPDecBuffer", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 96, !27, i64 112}
!122 = !{!"WebPDecoderOptions", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !11, i64 56}
!123 = !{!"WebPDecoderConfig", !120, i64 0, !121, i64 40, !122, i64 160}
!124 = !{!123, !12, i64 0}
!125 = !{!123, !12, i64 4}
!126 = !{!123, !12, i64 52}
!127 = !{!123, !12, i64 40}
!128 = !{i64 0, i64 8, !86, i64 8, i64 8, !85}
!129 = !{!92, !12, i64 0}
!130 = !{i64 0, i64 8, !86, i64 8, i64 8, !85, i64 16, i64 4, !13, i64 20, i64 4, !13, i64 24, i64 4, !13, i64 28, i64 4, !13, i64 32, i64 4, !13, i64 36, i64 4, !13, i64 40, i64 4, !19}
!131 = !{!96, !31, i64 8}
!132 = !{!92, !12, i64 8}
!133 = !{!92, !12, i64 12}
!134 = !{!92, !12, i64 16}
!135 = !{!92, !12, i64 20}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = distinct !{!141, !50}
!142 = distinct !{!142, !50}
!143 = distinct !{!143, !50}
!144 = distinct !{!144, !50}
!145 = distinct !{!145, !50}
!146 = !{!96, !12, i64 60}
!147 = !{!96, !12, i64 64}
!148 = !{!96, !12, i64 68}
!149 = !{!96, !12, i64 56}
!150 = !{!25, !12, i64 44}
!151 = !{!25, !12, i64 32}
end_hunk_0
