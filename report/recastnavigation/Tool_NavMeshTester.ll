Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_NavMeshTester?download=true
inline.NumInlined: 145
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN17NavMeshTesterTool6recalcEv:bb.a
  %i.er = call float @llvm.fmuladd.f32(float %i.ed, float %.057, float %i.cx)
  store float %i.er, ptr %i.ck, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i32 0, ptr %i.k, align 4, !tbaa !63
  %i.es = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !58
  %i.ev = load i32, ptr %i.e, align 16, !tbaa !63
  %i.ew = call noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104) %i.eu, i32 noundef %i.ev, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 16) #14 ; 0 uses
  %i.ex = load i32, ptr %i.k, align 4, !tbaa !63
  %i.ey = call noundef i32 @_Z25dtMergeCorridorStartMovedPjiiPKji(ptr noundef nonnull %i.e, i32 noundef %.0131, i32 noundef 256, ptr noundef nonnull %i.j, i32 noundef %i.ex) #14
  %i.ez = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !58
  %i.fc = call fastcc noundef i32 @_ZN12_GLOBAL__N_114fixupShortcutsEPjiP14dtNavMeshQuery(ptr noundef %i.e, i32 noundef %i.ey, ptr noundef %i.fb) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !34
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !58
  %i.fg = load i32, ptr %i.e, align 16, !tbaa !63
  %i.fh = call noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %i.ff, i32 noundef %i.fg, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l) #14 ; 0 uses
  %i.fi = load float, ptr %i.l, align 4, !tbaa !34 ; 4 uses
  store float %i.fi, ptr %i.cl, align 4, !tbaa !34
  %i.fj = load float, ptr %i.i, align 4, !tbaa !34 ; 3 uses
  store float %i.fj, ptr %i.f, align 8, !tbaa !34
  store float %i.fi, ptr %i.cf, align 4, !tbaa !34
  %i.fk = load float, ptr %i.cm, align 4, !tbaa !34 ; 3 uses
  store float %i.fk, ptr %i.ch, align 8, !tbaa !34
  br i1 %.not87, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fl = fsub float %i.dv, %i.fj                 ; 2 uses
  %i.fm = fsub float %i.dx, %i.fk                 ; 2 uses
  %i.fn = fmul float %i.fm, %i.fm
  %i.fo = call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fn)
  %i.fp = fcmp olt float %i.fo, f0x38D1B717
  br i1 %i.fp, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit:          ; preds = %bb.u
  %i.fq = fsub float %i.da, %i.fi
  %i.fr = call float @llvm.fabs.f32(float %i.fq)
  %i.fs = fcmp olt float %i.fr, 1.000000e+00
  br i1 %i.fs, label %bb.v, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit
  %i.ft = load i32, ptr %i.bo, align 4, !tbaa !35 ; 3 uses
  %i.fu = icmp slt i32 %i.ft, 2048
  br i1 %i.fu, label %bb.w, label %.thread116

bb.w:                                             ; preds = %bb.v
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !34
  %i.fx = mul nsw i32 %i.ft, 3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.fy ; 2 uses
  %i.ga = load <2 x float>, ptr %i.g, align 8, !tbaa !34
  store <2 x float> %i.ga, ptr %i.fz, align 4, !tbaa !34
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store float %i.fw, ptr %i.gb, align 4, !tbaa !34
  %i.gc = add nsw i32 %i.ft, 1
  store i32 %i.gc, ptr %i.bo, align 4, !tbaa !35
  br label %.thread116

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread:   ; preds = %bb.u, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit, %bb.t
  br i1 %.not88, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread, label %bb.x

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread
  %i.gd = fsub float %i.dv, %i.fj                 ; 2 uses
  %i.ge = fsub float %i.dx, %i.fk                 ; 2 uses
  %i.gf = fmul float %i.ge, %i.ge
  %i.gg = call float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.gf)
  %i.gh = fcmp olt float %i.gg, f0x38D1B717
  br i1 %i.gh, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90:        ; preds = %bb.x
  %i.gi = fsub float %i.da, %i.fi
  %i.gj = call float @llvm.fabs.f32(float %i.gi)
  %i.gk = fcmp olt float %i.gj, 1.000000e+00
  br i1 %i.gk, label %bb.y, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %.055124 = load i32, ptr %i.e, align 16, !tbaa !63 ; 3 uses
  %i.gl = icmp sgt i32 %i.fc, 0
  %i.gm = icmp ne i32 %.055124, %i.dz
  %i.gn = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %i.gn, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.go = zext nneg i32 %i.fc to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.gp = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.y
  %.056.lcssa = phi i32 [ 0, %bb.y ], [ %.055126, %.preheader.loopexit ]
  %.054.lcssa = phi i32 [ 0, %bb.y ], [ %i.gp, %.preheader.loopexit ] ; 4 uses
  %.055.lcssa = phi i32 [ %.055124, %bb.y ], [ %.055, %.preheader.loopexit ]
  %i.gq = icmp slt i32 %.054.lcssa, %i.fc
  br i1 %i.gq, label %.lr.ph130.preheader, label %._crit_edge

.lr.ph130.preheader:                              ; preds = %.preheader
  %i.gr = zext i32 %.054.lcssa to i64             ; 4 uses
  %i.gs = zext nneg i32 %.054.lcssa to i64        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fc to i64   ; 2 uses
  %i.gt = sub nsw i64 %wide.trip.count, %i.gr     ; 3 uses
  %min.iters.check = icmp ult i64 %i.gt, 8
  br i1 %min.iters.check, label %.lr.ph130.preheader180, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph130.preheader
  %n.vec = and i64 %i.gt, -8                      ; 3 uses
  %i.gu = add nsw i64 %n.vec, %i.gr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gv = add nuw i64 %index, %i.gr               ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load = load <4 x i32>, ptr %i.gw, align 4, !tbaa !63
  %wide.load178 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !63
  %i.gy = sub nuw nsw i64 %i.gv, %i.gs
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <4 x i32> %wide.load, ptr %i.gz, align 4, !tbaa !63
  store <4 x i32> %wide.load178, ptr %i.ha, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gt, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph130.preheader180

.lr.ph130.preheader180:                           ; preds = %.lr.ph130.preheader, %middle.block
  %indvars.iv138.ph = phi i64 [ %i.gr, %.lr.ph130.preheader ], [ %i.gu, %middle.block ]
  br label %.lr.ph130

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.055126 = phi i32 [ %.055124, %.lr.ph.preheader ], [ %.055, %.lr.ph ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.055 = load i32, ptr %i.hc, align 4, !tbaa !63 ; 3 uses
  %i.hd = icmp samesign ult i64 %indvars.iv.next, %i.go
  %i.he = icmp ne i32 %.055, %i.dz
  %i.hf = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %i.hf, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph130, %middle.block, %.preheader
  %i.hg = sub nuw nsw i32 %i.fc, %.054.lcssa
  %i.hh = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !60
  %i.hk = call noundef i32 @_ZNK9dtNavMesh33getOffMeshConnectionPolyEndPointsEjjPfS0_(ptr noundef nonnull align 8 dereferenceable(100) %i.hj, i32 noundef %.056.lcssa, i32 noundef %.055.lcssa, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #14
  %i.hl = and i32 %i.hk, 1073741824
  %.not120 = icmp eq i32 %i.hl, 0
  br i1 %.not120, label %bb.ad, label %bb.z

.lr.ph130:                                        ; preds = %.lr.ph130.preheader180, %.lr.ph130
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph130 ], [ %indvars.iv138.ph, %.lr.ph130.preheader180 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv138
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !63
  %i.ho = sub nuw nsw i64 %indvars.iv138, %i.gs
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ho
  store i32 %i.hn, ptr %i.hp, align 4, !tbaa !63
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph130, !llvm.loop !108

bb.z:                                             ; preds = %._crit_edge
  %i.hq = load i32, ptr %i.bo, align 4, !tbaa !35 ; 5 uses
  %i.hr = icmp slt i32 %i.hq, 2048
  br i1 %i.hr, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.hs = mul nsw i32 %i.hq, 3
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ht ; 2 uses
  %i.hv = load <2 x float>, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  store <2 x float> %i.hv, ptr %i.hu, align 4, !tbaa !34
  %i.hw = load float, ptr %i.cn, align 8, !tbaa !34 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store float %i.hw, ptr %i.hx, align 4, !tbaa !34
  %i.hy = add nsw i32 %i.hq, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.bo, align 4, !tbaa !35
  %i.hz = and i32 %i.hq, 1
  %.not89.not = icmp eq i32 %i.hz, 0
  br i1 %.not89.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ia = mul nsw i32 %i.hy, 3
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ib ; 2 uses
  store <2 x float> %i.hv, ptr %i.ic, align 8, !tbaa !34
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store float %i.hw, ptr %i.id, align 8, !tbaa !34
  %i.ie = add nsw i32 %i.hq, 2
  store i32 %i.ie, ptr %i.bo, align 4, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.if = load <2 x float>, ptr %i.n, align 8, !tbaa !34
  store <2 x float> %i.if, ptr %i.f, align 8, !tbaa !34
  %i.ig = load float, ptr %i.co, align 8, !tbaa !34
  store float %i.ig, ptr %i.ch, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !34
  %i.ih = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !58
  %i.ik = load i32, ptr %i.e, align 16, !tbaa !63
  %i.il = call noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %i.ij, i32 noundef %i.ik, ptr noundef nonnull %i.f, ptr noundef nonnull %i.o) #14 ; 0 uses
  %i.im = load float, ptr %i.o, align 4, !tbaa !34
  store float %i.im, ptr %i.cf, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread: ; preds = %bb.x, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90, %bb.ad
  %.1 = phi i32 [ %i.hg, %bb.ad ], [ %i.fc, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90 ], [ %i.fc, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread ], [ %i.fc, %bb.x ] ; 2 uses
  %i.in = load i32, ptr %i.bo, align 4, !tbaa !35 ; 4 uses
  %i.io = icmp slt i32 %i.in, 2048
  br i1 %i.io, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread
  %i.ip = mul nsw i32 %i.in, 3
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.iq ; 2 uses
  %i.is = load <2 x float>, ptr %i.f, align 8, !tbaa !34
  store <2 x float> %i.is, ptr %i.ir, align 4, !tbaa !34
  %i.it = load float, ptr %i.ch, align 8, !tbaa !34
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store float %i.it, ptr %i.iu, align 4, !tbaa !34
  %i.iv = add nsw i32 %i.in, 1                    ; 2 uses
  store i32 %i.iv, ptr %i.bo, align 4, !tbaa !35
  br label %bb.af

.thread116:                                       ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %.critedge

bb.af:                                            ; preds = %bb.ae, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread
  %i.iw = phi i32 [ %i.iv, %bb.ae ], [ %i.in, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit90.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %.not86 = icmp eq i32 %.1, 0
  br i1 %.not86, label %.critedge, label %bb.o

.critedge:                                        ; preds = %bb.af, %bb.o, %.thread116, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.bv

bb.ag:                                            ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.ix, align 8, !tbaa !32
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 31292
  store i32 0, ptr %i.iy, align 4, !tbaa !35
  br label %bb.bv

bb.ah:                                            ; preds = %bb.h
  %i.iz = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.jb = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !30 ; 2 uses
  %.not79 = icmp eq i32 %i.je, 0
  br i1 %.not79, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !31 ; 2 uses
  %.not80 = icmp eq i32 %i.jg, 0
  br i1 %.not80, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jh = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !58
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 32120 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2344 ; 3 uses
  %i.jp = tail call noundef i32 @_ZNK14dtNavMeshQuery8findPathEjjPKfS1_PK13dtQueryFilterPjPii(ptr noundef nonnull align 8 dereferenceable(104) %i.jj, i32 noundef %i.je, i32 noundef %i.jg, ptr noundef nonnull %i.jk, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jo, i32 noundef 256) #14 ; 0 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 6700 ; 2 uses
  store i32 0, ptr %i.jq, align 4, !tbaa !33
  %i.jr = load i32, ptr %i.jo, align 8, !tbaa !32 ; 3 uses
  %.not81 = icmp eq i32 %i.jr, 0
  br i1 %.not81, label %bb.bv, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [4 x i8], ptr %i.jn, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 -4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !63 ; 2 uses
  %i.jw = load i32, ptr %i.jf, align 4, !tbaa !31
  %.not82 = icmp eq i32 %i.jv, %i.jw
  br i1 %.not82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jx = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !58
  %i.ka = call noundef i32 @_ZNK14dtNavMeshQuery18closestPointOnPolyEjPKfPfPb(ptr noundef nonnull align 8 dereferenceable(104) %i.jz, i32 noundef %i.jv, ptr noundef nonnull %i.p, ptr noundef nonnull %i.p, ptr noundef null) #14 ; 0 uses
  %.pre145 = load i32, ptr %i.jo, align 8, !tbaa !32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.kb = phi i32 [ %.pre145, %bb.an ], [ %i.jr, %bb.am ]
  %i.kc = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !58
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2348
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 5420
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 5676
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !29
  %i.kk = call noundef i32 @_ZNK14dtNavMeshQuery16findStraightPathEPKfS1_PKjiPfPhPjPiii(ptr noundef nonnull align 8 dereferenceable(104) %i.ke, ptr noundef nonnull %i.jk, ptr noundef nonnull %i.p, ptr noundef nonnull %i.jn, i32 noundef %i.kb, ptr noundef nonnull %i.kf, ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kh, ptr noundef nonnull %i.jq, i32 noundef 256, i32 noundef %i.kj) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  br label %bb.bv

bb.ap:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.kl, align 8, !tbaa !32
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 6700
  store i32 0, ptr %i.km, align 4, !tbaa !33
  br label %bb.bv

bb.aq:                                            ; preds = %bb.h
  %i.kn = load i8, ptr %i.w, align 1, !tbaa !38, !range !61, !noundef !62
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.kp = load i8, ptr %i.ah, align 4, !tbaa !39, !range !61, !noundef !62
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !30 ; 2 uses
  %.not77 = icmp eq i32 %i.ks, 0
  br i1 %.not77, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !31 ; 2 uses
  %.not78 = icmp eq i32 %i.ku, 0
  br i1 %.not78, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.kv, align 8, !tbaa !32
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 6700
  store i32 0, ptr %i.kw, align 4, !tbaa !33
  %i.kx = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !58
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32120
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 32136
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ld = tail call noundef i32 @_ZN14dtNavMeshQuery18initSlicedFindPathEjjPKfS1_PK13dtQueryFilterj(ptr noundef nonnull align 8 dereferenceable(104) %i.kz, i32 noundef %i.ks, i32 noundef %i.ku, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lb, ptr noundef nonnull %i.lc, i32 noundef 2) #14
  store i32 %i.ld, ptr %i.at, align 4, !tbaa !27
  br label %bb.bv

bb.av:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store i32 0, ptr %i.le, align 8, !tbaa !32
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6700
  store i32 0, ptr %i.lf, align 4, !tbaa !33
  br label %bb.bv

bb.aw:                                            ; preds = %bb.h
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 6700 ; 2 uses
  store i32 0, ptr %i.lg, align 4, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZN17NavMeshTesterTool8onToggleEv:bb.a
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cw)
  %i.cy = tail call float @sqrtf(float noundef %i.cx) #14 ; 2 uses
  %i.cz = fcmp olt float %i.cy, 5.000000e-01
  %or.cond3 = select i1 %or.cond, i1 %i.cz, i1 false
  %i.da = fdiv float 5.000000e-01, %i.cy
  %.028 = select i1 %or.cond3, float 1.000000e+00, float %i.da ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.db = insertelement <2 x float> poison, float %.028, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.dc, <2 x float> %i.cs)
  store <2 x float> %i.dd, ptr %i.d, align 8, !tbaa !34
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cp, float %.028, float %i.co)
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.de, ptr %i.df, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4, !tbaa !63
  %i.dg = load ptr, ptr %i.bz, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !58
  %i.dj = load i32, ptr %i.ce, align 8, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = call noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104) %i.di, i32 noundef %i.dj, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.d, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef 16) #14 ; 0 uses
  %i.dm = load i32, ptr %i.bu, align 8, !tbaa !43
  %i.dn = load i32, ptr %i.g, align 4, !tbaa !63
  %i.do = call noundef i32 @_Z25dtMergeCorridorStartMovedPjiiPKji(ptr noundef nonnull %i.ce, i32 noundef %i.dm, i32 noundef 256, ptr noundef nonnull %i.f, i32 noundef %i.dn) #14 ; 2 uses
  store i32 %i.do, ptr %i.bu, align 8, !tbaa !43
  %i.dp = load ptr, ptr %i.bz, align 8, !tbaa !26
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.ds = call fastcc noundef i32 @_ZN12_GLOBAL__N_114fixupShortcutsEPjiP14dtNavMeshQuery(ptr noundef %i.ce, i32 noundef %i.do, ptr noundef %i.dr)
  store i32 %i.ds, ptr %i.bu, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !34
  %i.dt = load ptr, ptr %i.bz, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !58
  %i.dw = load i32, ptr %i.ce, align 8, !tbaa !63
  %i.dx = call noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %i.dv, i32 noundef %i.dw, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #14 ; 0 uses
  %i.dy = load float, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %i.dy, ptr %i.dz, align 4, !tbaa !34
  %i.ea = load float, ptr %i.e, align 4, !tbaa !34 ; 3 uses
  store float %i.ea, ptr %i.bm, align 8, !tbaa !34
  store float %i.dy, ptr %i.bn, align 4, !tbaa !34
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !34 ; 3 uses
  store float %i.ec, ptr %i.bp, align 8, !tbaa !34
  br i1 %.not41, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = extractelement <2 x float> %i.cr, i64 0
  %i.ee = fsub float %i.ed, %i.ea                 ; 2 uses
  %i.ef = fsub float %i.cj, %i.ec                 ; 2 uses
  %i.eg = fmul float %i.ef, %i.ef
  %i.eh = call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.eg)
  %i.ei = fcmp olt float %i.eh, f0x38D1B717
  br i1 %i.ei, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit:          ; preds = %bb.k
  %i.ej = extractelement <2 x float> %i.cr, i64 1
  %i.ek = fsub float %i.ej, %i.dy
  %i.el = call float @llvm.fabs.f32(float %i.ek)
  %i.em = fcmp olt float %i.el, 1.000000e+00
  br i1 %i.em, label %bb.l, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit
  %i.en = load <2 x float>, ptr %i.cd, align 8, !tbaa !34 ; 2 uses
  store <2 x float> %i.en, ptr %i.bm, align 8, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 33264
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !34
  store float %i.ep, ptr %i.bp, align 8, !tbaa !34
  %i.eq = load i32, ptr %i.bw, align 4, !tbaa !35 ; 3 uses
  %i.er = icmp slt i32 %i.eq, 2048
  br i1 %i.er, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 6716
  %i.et = mul nsw i32 %i.eq, 3
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.eu ; 2 uses
  %i.ew = extractelement <2 x float> %i.en, i64 0
  store float %i.ew, ptr %i.ev, align 4, !tbaa !34
  br label %.sink.split

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread:   ; preds = %bb.k, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit, %bb.j
  br i1 %.not42, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50.thread, label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread
  %i.ex = extractelement <2 x float> %i.cr, i64 0
  %i.ey = fsub float %i.ex, %i.ea                 ; 2 uses
  %i.ez = fsub float %i.cj, %i.ec                 ; 2 uses
  %i.fa = fmul float %i.ez, %i.ez
  %i.fb = call float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.fa)
  %i.fc = fcmp olt float %i.fb, f0x38D1B717
  br i1 %i.fc, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50.thread

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50:        ; preds = %bb.n
  %i.fd = extractelement <2 x float> %i.cr, i64 1
  %i.fe = fsub float %i.fd, %i.dy
  %i.ff = call float @llvm.fabs.f32(float %i.fe)
  %i.fg = fcmp olt float %i.ff, 1.000000e+00
  br i1 %i.fg, label %bb.o, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50.thread

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.fh = load i32, ptr %i.bu, align 8, !tbaa !43 ; 4 uses
  %i.fi = load i32, ptr %i.c, align 4             ; 2 uses
  %.02659 = load i32, ptr %i.ce, align 8, !tbaa !63 ; 3 uses
  %i.fj = icmp sgt i32 %i.fh, 0
  %i.fk = icmp ne i32 %.02659, %i.fi
  %i.fl = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %i.fl, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.fm = zext nneg i32 %i.fh to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.fn = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.o
  %.027.lcssa = phi i32 [ 0, %bb.o ], [ %.02661, %.preheader.loopexit ]
  %.025.lcssa = phi i32 [ 0, %bb.o ], [ %i.fn, %.preheader.loopexit ] ; 4 uses
  %.026.lcssa = phi i32 [ %.02659, %bb.o ], [ %.026, %.preheader.loopexit ]
  %i.fo = icmp slt i32 %.025.lcssa, %i.fh
  br i1 %i.fo, label %.lr.ph65.preheader, label %._crit_edge

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.fp = zext nneg i32 %.025.lcssa to i64
  %i.fq = zext nneg i32 %.025.lcssa to i64
  br label %.lr.ph65

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02661 = phi i32 [ %.02659, %.lr.ph.preheader ], [ %.026, %.lr.ph ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.026 = load i32, ptr %i.fr, align 4, !tbaa !63 ; 3 uses
  %i.fs = icmp samesign ult i64 %indvars.iv.next, %i.fm
  %i.ft = icmp ne i32 %.026, %i.fi
  %i.fu = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %i.fu, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph65, %.preheader
  %.lcssa = phi i32 [ %i.fh, %.preheader ], [ %i.gf, %.lr.ph65 ]
  %i.fv = sub nsw i32 %.lcssa, %.025.lcssa
  store i32 %i.fv, ptr %i.bu, align 8, !tbaa !43
  %i.fw = load ptr, ptr %i.bz, align 8, !tbaa !26
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !60
  %i.fz = call noundef i32 @_ZNK9dtNavMesh33getOffMeshConnectionPolyEndPointsEjjPfS0_(ptr noundef nonnull align 8 dereferenceable(100) %i.fy, i32 noundef %.027.lcssa, i32 noundef %.026.lcssa, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #14
  %i.ga = and i32 %i.fz, 1073741824
  %.not58 = icmp eq i32 %i.ga, 0
  br i1 %.not58, label %bb.t, label %bb.p

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.lr.ph65
  %indvars.iv71 = phi i64 [ %i.fp, %.lr.ph65.preheader ], [ %indvars.iv.next72, %.lr.ph65 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv71
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !63
  %i.gd = sub nuw nsw i64 %indvars.iv71, %i.fq
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.gd
  store i32 %i.gc, ptr %i.ge, align 4, !tbaa !63
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.gf = load i32, ptr %i.bu, align 8, !tbaa !43 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next72, %i.gg
  br i1 %i.gh, label %.lr.ph65, label %._crit_edge, !llvm.loop !113

bb.p:                                             ; preds = %._crit_edge
  %i.gi = load i32, ptr %i.bw, align 4, !tbaa !35 ; 5 uses
  %i.gj = icmp slt i32 %i.gi, 2048
  br i1 %i.gj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 6716 ; 2 uses
  %i.gl = mul nsw i32 %i.gi, 3
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gm ; 2 uses
  %i.go = load <2 x float>, ptr %i.i, align 8, !tbaa !34 ; 2 uses
  store <2 x float> %i.go, ptr %i.gn, align 4, !tbaa !34
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !34 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store float %i.gq, ptr %i.gr, align 4, !tbaa !34
  %i.gs = add nsw i32 %i.gi, 1                    ; 2 uses
  store i32 %i.gs, ptr %i.bw, align 4, !tbaa !35
  %i.gt = and i32 %i.gi, 1
  %.not43.not = icmp eq i32 %i.gt, 0
  br i1 %.not43.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gu = mul nsw i32 %i.gs, 3
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gv ; 2 uses
  store <2 x float> %i.go, ptr %i.gw, align 8, !tbaa !34
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %i.gq, ptr %i.gx, align 8, !tbaa !34
  %i.gy = add nsw i32 %i.gi, 2
  store i32 %i.gy, ptr %i.bw, align 4, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.gz = load <2 x float>, ptr %i.j, align 8, !tbaa !34
  store <2 x float> %i.gz, ptr %i.bm, align 8, !tbaa !34
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !34
  store float %i.hb, ptr %i.bp, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !34
  %i.hc = load ptr, ptr %i.bz, align 8, !tbaa !26
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !58
  %i.hf = load i32, ptr %i.ce, align 8, !tbaa !63
  %i.hg = call noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %i.he, i32 noundef %i.hf, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.k) #14 ; 0 uses
  %i.hh = load float, ptr %i.k, align 4, !tbaa !34
  store float %i.hh, ptr %i.bn, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50.thread

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50.thread: ; preds = %bb.n, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50, %bb.t
  %i.hi = load i32, ptr %i.bw, align 4, !tbaa !35 ; 3 uses
  %i.hj = icmp slt i32 %i.hi, 2048
  br i1 %i.hj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50.thread
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 6716
  %i.hl = mul nsw i32 %i.hi, 3
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hm ; 2 uses
  %i.ho = load float, ptr %i.bm, align 8, !tbaa !34
  store float %i.ho, ptr %i.hn, align 4, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.u
  %.sink88 = phi ptr [ %i.hn, %bb.u ], [ %i.ev, %bb.m ] ; 2 uses
  %.sink84 = phi i32 [ %i.hi, %bb.u ], [ %i.eq, %bb.m ]
  %i.hp = load float, ptr %i.bn, align 4, !tbaa !34
  %i.hq = getelementptr inbounds nuw i8, ptr %.sink88, i64 4
  store float %i.hp, ptr %i.hq, align 4, !tbaa !34
  %i.hr = load float, ptr %i.bp, align 8, !tbaa !34
  %i.hs = getelementptr inbounds nuw i8, ptr %.sink88, i64 8
  store float %i.hr, ptr %i.hs, align 4, !tbaa !34
  %i.ht = add nsw i32 %.sink84, 1
  store i32 %i.ht, ptr %i.bw, align 4, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit50.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.h, %.thread, %bb.b, %bb.c, %bb.a, %bb.w
  ret void
}

declare noundef i32 @_ZNK14dtNavMeshQuery8findPathEjjPKfS1_PK13dtQueryFilterPjPii(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef i32 @_ZNK14dtNavMeshQuery18closestPointOnPolyEjPKfPfPb(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114getSteerTargetEP14dtNavMeshQueryPKfS3_fPKjiPfRhRjS6_Pi(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 8 uses
  %i.b = alloca [3 x i8], align 1                 ; 4 uses
  %i.c = alloca [3 x i32], align 4                ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !63
  %i.e = call noundef i32 @_ZNK14dtNavMeshQuery16findStraightPathEPKfS1_PKjiPfPhPjPiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 3, i32 noundef 0) #14 ; 0 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !63   ; 8 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne ptr %8, null
  %i.h = icmp ne ptr %9, null
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.c, label %.loopexit36

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %9, align 4, !tbaa !63
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.f, 1
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.k = mul nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !34
  store <2 x float> %i.n, ptr %i.l, align 4, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float %i.p, ptr %i.q, align 4, !tbaa !34
  %i.r = mul nuw i64 %indvars.iv, 3
  %i.s = add nuw i64 %i.r, 3                      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !34
  store <2 x float> %i.v, ptr %i.t, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph40.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !114

.loopexit36:                                      ; preds = %bb.b
  %i.z = icmp sgt i32 %i.f, 0
  br i1 %i.z, label %.lr.ph40, label %.loopexit

.lr.ph40.loopexit.unr-lcssa:                      ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph40.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph40.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod5)
  %i.aa = mul nuw nsw i64 %indvars.iv.epil.init, 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 4, !tbaa !34
  store <2 x float> %i.ad, ptr %i.ab, align 4, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float %i.af, ptr %i.ag, align 4, !tbaa !34
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph.epil.preheader, %.lr.ph40.loopexit.unr-lcssa, %.loopexit36
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %wide.trip.count46 = zext nneg i32 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph40, %bb.f
  %indvars.iv43 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next44, %bb.f ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv43
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !64  ; 2 uses
  %i.al = and i8 %i.ak, 4
  %.not34 = icmp eq i8 %i.al, 0
  br i1 %.not34, label %bb.e, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread

bb.e:                                             ; preds = %bb.d
  %.idx = mul nuw nsw i64 %indvars.iv43, 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.an = load float, ptr %1, align 4, !tbaa !34
  %i.ao = load float, ptr %i.am, align 4, !tbaa !34
  %i.ap = fsub float %i.an, %i.ao                 ; 2 uses
  %i.aq = load float, ptr %i.ah, align 4, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !34
  %i.at = fsub float %i.aq, %i.as                 ; 2 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.au)
  %i.aw = fcmp olt float %i.av, f0x38D1B717
  br i1 %i.aw, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit, label %_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit.thread

_ZN12_GLOBAL__N_17inRangeEPKfS1_ff.exit:          ; preds = %bb.e
  %i.ax = load float, ptr %i.ai, align 4, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
end_hunk_1
