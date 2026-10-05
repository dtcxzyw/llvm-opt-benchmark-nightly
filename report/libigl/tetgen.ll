Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 556
begin_hunk_0_@_ZN10tetgenmesh15delaunizecavityEPNS_9arraypoolES1_S1_S1_S1_S1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i32 0, ptr %i.d, align 8, !tbaa !225
  store ptr null, ptr %i.c, align 8, !tbaa !366
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 0, ptr %i.e, align 8, !tbaa !336
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, i8 0, i64 76, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  %i.j = load i32, ptr %i.i, align 4, !tbaa !185  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !100
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.317, i64 noundef %i.m, i64 noundef %i.o) ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 156
  %.pre412 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !185
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i32 [ %.pre412, %bb.b ], [ %i.j, %bb.a ]
  %i.r = phi ptr [ %.pre, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68960 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !277
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68696 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68700
  %i.y = load <2 x i32>, ptr %i.w, align 8, !tbaa !59
  store i64 0, ptr %i.u, align 8, !tbaa !277
  store i32 0, ptr %i.w, align 8, !tbaa !275
  store i32 0, ptr %i.x, align 4, !tbaa !276
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 156
  %i.aa = add nsw i32 %i.q, -1
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !185
  store i32 0, ptr %i.r, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !327
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !100 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !110
  %i.al = load i32, ptr %2, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !250
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ap = lshr i32 %i.ao, %i.ai
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = and i32 %i.ak, %i.ao
  %i.au = mul nsw i32 %i.at, %i.al
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !236
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh6epivotE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !59 ; 2 uses
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !236
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !231 ; 3 uses
  %i.bd = sext i32 %i.bb to i64                   ; 3 uses
  %i.be = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !220 ; 6 uses
  %.not = icmp eq ptr %i.bi, %i.an
  br i1 %.not, label %bb.e, label %.loopexit293

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !889

.loopexit293:                                     ; preds = %bb.d
  %i.bj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.bd
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !220 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.bd
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !59
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !220 ; 2 uses
  %i.bt = icmp sgt i64 %i.ad, %indvars.iv
  br i1 %i.bt, label %.lr.ph310, label %._crit_edge

.lr.ph310:                                        ; preds = %.loopexit293
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph310, %.thread
  %indvars.iv378 = phi i64 [ %indvars.iv, %.lr.ph310 ], [ %indvars.iv.next379, %.thread ] ; 2 uses
  %.1141308 = phi ptr [ %i.bs, %.lr.ph310 ], [ %.2142290, %.thread ] ; 7 uses
  %.1145307 = phi ptr [ %i.bn, %.lr.ph310 ], [ %.2146289, %.thread ] ; 8 uses
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !104
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !103
  %i.ca = trunc nuw i64 %indvars.iv378 to i32     ; 2 uses
  %i.cb = lshr i32 %i.ca, %i.bz
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.cf = load i32, ptr %i.bw, align 4, !tbaa !110
  %i.cg = and i32 %i.cf, %i.ca
  %i.ch = load i32, ptr %2, align 8, !tbaa !102
  %i.ci = mul nsw i32 %i.cg, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !231 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !236
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !59
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !220 ; 4 uses
  store ptr %i.ct, ptr %.sroa.0, align 16, !tbaa !112
  %i.cu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.co
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !220 ; 4 uses
  store ptr %i.cy, ptr %.sroa.12, align 8, !tbaa !112
  %i.cz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.co
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !59
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !220 ; 3 uses
  store ptr %i.dd, ptr %.sroa.16, align 16, !tbaa !112
  %i.de = load ptr, ptr %i.bx, align 8, !tbaa !250
  %.not151 = icmp eq ptr %i.ct, %i.de
  br i1 %.not151, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.1145307, ptr noundef %.1141308, ptr noundef %i.bi, ptr noundef %i.ct) ; 2 uses
  %i.dg = fcmp une double %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.l, label %._crit_edge413

._crit_edge413:                                   ; preds = %bb.g
  %.pre414 = load ptr, ptr %i.bx, align 8, !tbaa !250
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge413, %bb.f
  %i.dh = phi ptr [ %.pre414, %._crit_edge413 ], [ %i.ct, %bb.f ]
  %.not151.1 = icmp eq ptr %i.cy, %i.dh
  br i1 %.not151.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.di = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.1145307, ptr noundef %.1141308, ptr noundef %i.bi, ptr noundef %i.cy) ; 2 uses
  %i.dj = fcmp une double %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.l, label %._crit_edge415

._crit_edge415:                                   ; preds = %bb.i
  %.pre416 = load ptr, ptr %i.bx, align 8, !tbaa !250
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge415, %bb.h
  %i.dk = phi ptr [ %.pre416, %._crit_edge415 ], [ %i.cy, %bb.h ]
  %.not151.2 = icmp eq ptr %i.dd, %i.dk
  br i1 %.not151.2, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.1145307, ptr noundef %.1141308, ptr noundef %i.bi, ptr noundef %i.dd) ; 2 uses
  %i.dm = fcmp une double %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  %.lcssa363.sroa.phi = phi ptr [ %.sroa.0, %bb.g ], [ %.sroa.12, %bb.i ], [ %.sroa.16, %bb.k ] ; 2 uses
  %.lcssa362 = phi double [ %i.df, %bb.g ], [ %i.di, %bb.i ], [ %i.dl, %bb.k ]
  %i.dn = load ptr, ptr %.lcssa363.sroa.phi, align 8, !tbaa !112 ; 3 uses
  %i.do = fcmp ogt double %.lcssa362, 0.000000e+00 ; 3 uses
  %spec.store.select = select i1 %i.do, ptr %.1145307, ptr %i.dn
  store ptr %spec.store.select, ptr %.lcssa363.sroa.phi, align 8
  %spec.select = select i1 %i.do, ptr %.1141308, ptr %.1145307 ; 2 uses
  %spec.select154 = select i1 %i.do, ptr %.1145307, ptr %.1141308 ; 2 uses
  %.not152 = icmp eq ptr %i.dn, null
  br i1 %.not152, label %.thread, label %._crit_edge.loopexit

.thread:                                          ; preds = %bb.j, %bb.k, %bb.l
  %.2142290 = phi ptr [ %spec.select154, %bb.l ], [ %.1141308, %bb.k ], [ %.1141308, %bb.j ] ; 2 uses
  %.2146289 = phi ptr [ %spec.select, %bb.l ], [ %.1145307, %bb.k ], [ %.1145307, %bb.j ] ; 2 uses
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %i.dp = load i64, ptr %i.ac, align 8, !tbaa !100
  %i.dq = icmp sgt i64 %i.dp, %indvars.iv.next379
  br i1 %i.dq, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !890

._crit_edge.loopexit:                             ; preds = %bb.l, %.thread
  %.3147.ph = phi ptr [ %.2146289, %.thread ], [ %spec.select, %bb.l ]
  %.3143.ph = phi ptr [ %.2142290, %.thread ], [ %spec.select154, %bb.l ]
  %.2138.ph = phi ptr [ null, %.thread ], [ %i.dn, %bb.l ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..promoted.pre = load ptr, ptr %.sroa.0, align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.c, %._crit_edge.loopexit, %.loopexit293
  %.0139502 = phi ptr [ %i.bi, %.loopexit293 ], [ %i.bi, %._crit_edge.loopexit ], [ null, %bb.c ], [ null, %bb.e ]
  %.sroa.0.0..sroa.0.0..promoted = phi ptr [ undef, %.loopexit293 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..promoted.pre, %._crit_edge.loopexit ], [ undef, %bb.c ], [ undef, %bb.e ]
  %.3147 = phi ptr [ %i.bn, %.loopexit293 ], [ %.3147.ph, %._crit_edge.loopexit ], [ null, %bb.c ], [ null, %bb.e ]
  %.3143 = phi ptr [ %i.bs, %.loopexit293 ], [ %.3143.ph, %._crit_edge.loopexit ], [ null, %bb.c ], [ null, %bb.e ]
  %.2138 = phi ptr [ null, %.loopexit293 ], [ %.2138.ph, %._crit_edge.loopexit ], [ null, %bb.c ], [ null, %bb.e ]
  tail call void @_ZN10tetgenmesh15initialdelaunayEPdS0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %.3147, ptr noundef %.3143, ptr noundef %.0139502, ptr noundef %.2138)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !100
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph321, label %._crit_edge322

.lr.ph321:                                        ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 68592
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 68600
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph321, %bb.m
  %indvars.iv381 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next382, %bb.m ] ; 2 uses
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !104
  %i.ea = load i32, ptr %i.dv, align 8, !tbaa !103
  %i.eb = trunc nuw nsw i64 %indvars.iv381 to i32 ; 2 uses
  %i.ec = lshr i32 %i.eb, %i.ea
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.eg = load i32, ptr %i.dw, align 4, !tbaa !110
  %i.eh = and i32 %i.eg, %i.eb
  %i.ei = load i32, ptr %1, align 8, !tbaa !102
  %i.ej = mul nsw i32 %i.eh, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.ef, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !112 ; 2 uses
  %i.en = load ptr, ptr %i.dx, align 8, !tbaa !231
  store ptr %i.en, ptr %7, align 8, !tbaa !231
  %i.eo = load i32, ptr %i.dy, align 8, !tbaa !236
  store i32 %i.eo, ptr %i.a, align 8, !tbaa !236
  store i32 1, ptr %9, align 8, !tbaa !321
  %i.ep = call noundef i32 @_ZN10tetgenmesh11insertpointEPdPNS_7trifaceEPNS_4faceES4_PNS_17insertvertexflagsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.em, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef nonnull %9) ; 0 uses
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %i.eq = load i64, ptr %i.dr, align 8, !tbaa !100
  %i.er = icmp sgt i64 %i.eq, %indvars.iv.next382
  br i1 %i.er, label %bb.m, label %._crit_edge322, !llvm.loop !891

._crit_edge322:                                   ; preds = %bb.m, %._crit_edge
  %.lcssa318 = phi ptr [ %.sroa.0.0..sroa.0.0..promoted, %._crit_edge ], [ %i.em, %bb.m ]
  store ptr %.lcssa318, ptr %.sroa.0, align 16
  %i.es = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 156
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !185
  %i.ev = icmp sgt i32 %i.eu, 2
  br i1 %i.ev, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge322
  %i.ew = load i64, ptr %i.ac, align 8, !tbaa !100
  %i.ex = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.318, i64 noundef %i.ew) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge322
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 68708
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 68692
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 68688 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 68720
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 68592 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 68600 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge344, %bb.o
  %i.gm = load i64, ptr %i.ac, align 8, !tbaa !100
  %i.gn = icmp sgt i64 %i.gm, 0
  br i1 %i.gn, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.p, %bb.ao
  %indvars.iv384 = phi i64 [ %indvars.iv.next385, %bb.ao ], [ 0, %bb.p ] ; 2 uses
  %i.go = load ptr, ptr %i.ey, align 8, !tbaa !104
  %i.gp = load i32, ptr %i.ez, align 8, !tbaa !103
  %i.gq = trunc nuw nsw i64 %indvars.iv384 to i32 ; 2 uses
  %i.gr = lshr i32 %i.gq, %i.gp
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !53
  %i.gv = load i32, ptr %i.fa, align 4, !tbaa !110
  %i.gw = and i32 %i.gv, %i.gq
  %i.gx = load i32, ptr %2, align 8, !tbaa !102
  %i.gy = mul nsw i32 %i.gw, %i.gx
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %i.gu, i64 %i.gz ; 4 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !231 ; 4 uses
  %i.hc = load i32, ptr %i.fb, align 4, !tbaa !232
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !59
  %i.hg = trunc i32 %i.hf to i1
  br i1 %i.hg, label %bb.ao, label %bb.q

bb.q:                                             ; preds = %.lr.ph326
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !236
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh6epivotE, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !59 ; 2 uses
  store i32 %i.hl, ptr %i.hh, align 8, !tbaa !236
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !59
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !220 ; 2 uses
  store ptr %i.hr, ptr %.sroa.0, align 16, !tbaa !112
  %i.hs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.hm
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !59
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !220 ; 2 uses
  store ptr %i.hw, ptr %.sroa.12, align 8, !tbaa !112
  %i.hx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.hm
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !59
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !220 ; 2 uses
  store ptr %i.ib, ptr %.sroa.16, align 16, !tbaa !112
  %i.ic = load ptr, ptr %i.fc, align 8, !tbaa !251 ; 13 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !200 ; 3 uses
  %.not.i158 = icmp eq ptr %i.ie, null
  br i1 %.not.i158, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !111
  store ptr %i.if, ptr %i.id, align 8, !tbaa !200
  br label %_ZN10tetgenmesh10memorypool5allocEv.exit

bb.s:                                             ; preds = %bb.q
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 80 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !199 ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !198
  br label %bb.y

end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh13split_segmentEPNS_4faceEPdS2_iiPi:bb.a
  %i.bu = icmp eq i32 %4, 0                       ; 2 uses
  %i.bv = icmp eq ptr %2, null
  %or.cond = and i1 %i.bv, %i.bu
  br i1 %or.cond, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  br i1 %i.bt, label %bb.as, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 68552
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !353
  %i.by = shl nsw i32 %i.bm, 1
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !225
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !59
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !220 ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.cd ; 2 uses
  %i.ck = load ptr, ptr %i.ca, align 8, !tbaa !112 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ci
  br i1 %i.cl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !220
  %i.cq = icmp eq ptr %i.ck, %i.cp
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cr = getelementptr i8, ptr %i.br, i64 16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !58 ; 2 uses
  %i.ct = fcmp olt double %i.cs, 1.800000e+02
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.1.i = phi double [ %i.cs, %bb.o ], [ 1.800000e+02, %bb.n ], [ 1.800000e+02, %bb.m ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !112 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ci
  br i1 %i.cw, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = load i32, ptr %i.cj, align 4, !tbaa !59
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !220
  %i.db = icmp eq ptr %i.cv, %i.da
  br i1 %i.db, label %bb.r, label %_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dc = getelementptr i8, ptr %i.br, i64 24
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !58 ; 2 uses
  %i.de = fcmp olt double %i.dd, %.1.i
  br i1 %i.de, label %bb.s, label %_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit

bb.s:                                             ; preds = %bb.r
  br label %_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit

_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit: ; preds = %bb.q, %bb.r, %bb.s
  %.1.1.i = phi double [ %i.dd, %bb.s ], [ %.1.i, %bb.r ], [ %.1.i, %bb.q ]
  %i.df = fcmp olt double %.1.1.i, 6.000000e+01
  br i1 %i.df, label %bb.as, label %bb.t

bb.t:                                             ; preds = %_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit, %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !219
  %i.di = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dh) ; 14 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 68640
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !241 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %scevgep.i = getelementptr i8, ptr %i.di, i64 24
  %i.dm = zext nneg i32 %i.dk to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.dn, i1 false), !tbaa !58
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !242 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph23.i, label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %.preheader.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !243
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 3
  %scevgep25.i = getelementptr i8, ptr %i.di, i64 %i.du
  %i.dv = zext nneg i32 %i.dp to i64
  %i.dw = shl nuw nsw i64 %i.dv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep25.i, i8 0, i64 %i.dw, i1 false), !tbaa !58
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph23.i, %.preheader.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !244
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i8 0, i64 16, i1 false)
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !218 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !117
  %.not.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !125
  %.not17.i = icmp eq i32 %i.ee, 0
  br i1 %.not17.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %i.ef = getelementptr i8, ptr %i.ea, i64 16
  store ptr null, ptr %i.ef, align 8, !tbaa !220
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !143
  %.not18.i = icmp eq i32 %i.eh, 0
  br i1 %.not18.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !245
  %.not19.i = icmp eq ptr %i.ej, null
  br i1 %.not19.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr i8, ptr %i.ea, i64 24
  store ptr null, ptr %i.ek, align 8, !tbaa !220
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit:  ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %i.el = load ptr, ptr %i.dg, align 8, !tbaa !219
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.en = load i64, ptr %i.em, align 8, !tbaa !202
  %i.eo = trunc i64 %i.en to i32
  %i.ep = load ptr, ptr %0, align 8, !tbaa !221
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !55
  %.not20.i = icmp eq i32 %i.eq, 0
  %.neg.i = sext i1 %.not20.i to i32
  %i.er = add i32 %.neg.i, %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 4 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !223
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.eu
  store i32 %i.er, ptr %i.ev, align 4, !tbaa !59
  %i.ew = load i32, ptr %i.es, align 8, !tbaa !223
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [4 x i8], ptr %i.di, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 4
  store i32 0, ptr %i.ez, align 4, !tbaa !59
  %i.fa = load i32, ptr %i.es, align 8, !tbaa !223
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr [4 x i8], ptr %i.di, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 4      ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !59
  %i.ff = and i32 %i.fe, 255
  %i.fg = or disjoint i32 %i.ff, 1280
  store i32 %i.fg, ptr %i.fd, align 4, !tbaa !59
  %i.fh = tail call noundef zeroext i1 @_ZN10tetgenmesh22get_steiner_on_segmentEPNS_4faceEPdS2_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.di) ; 0 uses
  %i.fi = load ptr, ptr %1, align 8, !tbaa !224   ; 2 uses
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !225
  %i.fm = sext i32 %i.fl to i64
  %i.fn = or i64 %i.fm, %i.fj
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = load i32, ptr %i.dx, align 4, !tbaa !244
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr [8 x i8], ptr %i.di, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store ptr %i.fo, ptr %i.fs, align 8, !tbaa !220
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !220
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = and i32 %i.fw, 15
  store i32 %i.fx, ptr %i.a, align 8, !tbaa !236
  %i.fy = and i64 %i.fv, -16
  %i.fz = inttoptr i64 %i.fy to ptr
  store ptr %i.fz, ptr %7, align 8, !tbaa !231
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 1, ptr %i.ga, align 16, !tbaa !333
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gc = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 44
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !143 ; 2 uses
  %.not46 = icmp eq i32 %i.ge, 0
  %spec.store.select = select i1 %.not46, i32 0, i32 4
  store i32 %spec.store.select, ptr %i.gb, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %5, ptr %i.gf, align 4, !tbaa !348
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 11, ptr %i.gg, align 8, !tbaa !340
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 3, ptr %i.gh, align 4, !tbaa !341
  store <4 x i32> <i32 4, i32 3, i32 2, i32 1>, ptr %9, align 16, !tbaa !59
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 1, ptr %i.gi, align 4, !tbaa !334
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 %i.ge, ptr %i.gj, align 4, !tbaa !326
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 68720 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !240 ; 2 uses
  store i32 %i.gl, ptr %i.e, align 16, !tbaa !336
  br i1 %i.bu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !325
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  store ptr null, ptr %i.gn, align 16, !tbaa !338
  %i.go = call noundef i32 @_ZN10tetgenmesh11insertpointEPdPNS_7trifaceEPNS_4faceES4_PNS_17insertvertexflagsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.di, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %9)
  %.not48 = icmp eq i32 %i.go, 0
  br i1 %.not48, label %bb.ap, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 69024 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !344
  %i.gr = add nsw i64 %i.gq, 1
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !344
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 68984 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !347 ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, 0
  br i1 %i.gu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gv = add nsw i64 %i.gt, -1
  store i64 %i.gv, ptr %i.gs, align 8, !tbaa !347
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gw = load i32, ptr %i.gk, align 8, !tbaa !240
  %.not49 = icmp eq i32 %i.gw, 0
  br i1 %.not49, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.pre = load double, ptr %i.f, align 8, !tbaa !337 ; 3 uses
  br i1 %i.bt, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.gx = fmul double %.pre, f0x3FEE666666666666  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !58 ; 2 uses
  %i.ha = fcmp ogt double %i.gz, %i.gx
  %. = select i1 %i.ha, double %i.gz, double %i.gx ; 4 uses
  %i.hb = load ptr, ptr %i.bn, align 8, !tbaa !399
  %i.hc = getelementptr [8 x i8], ptr %i.hb, i64 %i.bq
  %i.hd = getelementptr i8, ptr %i.hc, i64 8      ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !58 ; 3 uses
  %i.hf = fcmp oeq double %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hg = fcmp olt double %., %i.he
  br i1 %i.hg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %.0 = phi double [ %i.he, %bb.af ], [ %., %bb.ag ], [ %., %bb.ae ]
  store double %.0, ptr %i.hd, align 8, !tbaa !58
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %.034 = phi double [ %., %bb.ah ], [ 0.000000e+00, %bb.ad ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 68668
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !249
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.hj
  store double %.034, ptr %i.hk, align 8, !tbaa !58
  %i.hl = load ptr, ptr %i.gn, align 16, !tbaa !338
  %i.hm = load i32, ptr %i.dx, align 4, !tbaa !244
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr [8 x i8], ptr %i.di, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  store ptr %i.hl, ptr %i.hp, align 8, !tbaa !220
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 68904 ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !407
  %i.hs = fcmp olt double %.pre, %i.hr
  br i1 %i.hs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store double %.pre, ptr %i.hq, align 8, !tbaa !407
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !290
  %.not50 = icmp eq ptr %i.hu, null
  br i1 %.not50, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr null, ptr %i.hx, align 8, !tbaa !112
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr null, ptr %i.hy, align 8, !tbaa !112
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr null, ptr %i.hz, align 8, !tbaa !306
  %i.ia = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ia, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hv, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.hw, i8 0, i64 28, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %5, ptr %i.ib, align 4, !tbaa !281
  store i32 2, ptr %10, align 8, !tbaa !285
  %i.ic = call noundef i64 @_ZN10tetgenmesh12lawsonflip3dEPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !264
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !100
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 236
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !398
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp sgt i64 %i.ig, %i.ik
  br i1 %i.il, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZN10tetgenmesh15recoverdelaunayEv(ptr noundef nonnull align 8 dereferenceable(69984) %0)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.im = load i32, ptr %9, align 16, !tbaa !321
  br label %bb.as

bb.ap:                                            ; preds = %bb.z
  %i.in = load i32, ptr %9, align 16, !tbaa !321  ; 2 uses
  %i.io = icmp eq i32 %i.in, 9
  br i1 %i.io, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ip = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.ip, align 16, !tbaa !59
  call void @__cxa_throw(ptr nonnull %i.ip, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.iq = load i32, ptr %i.es, align 8, !tbaa !223
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr [4 x i8], ptr %i.di, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 4      ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !59
  %i.iv = and i32 %i.iu, 255
  %i.iw = or disjoint i32 %i.iv, 2304
  store i32 %i.iw, ptr %i.it, align 4, !tbaa !59
  %i.ix = load ptr, ptr %i.dg, align 8, !tbaa !219 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !200
  store ptr %i.iz, ptr %i.di, align 8, !tbaa !111
  store ptr %i.di, ptr %i.iy, align 8, !tbaa !200
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 64 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !202
  %i.jc = add nsw i64 %i.jb, -1
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !202
  br label %bb.as

bb.as:                                            ; preds = %_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit, %bb.k, %bb.ar, %bb.ao
  %.sink = phi i32 [ %i.in, %bb.ar ], [ %i.im, %bb.ao ], [ 14, %bb.k ], [ 14, %_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit ]
  %.035 = phi i1 [ false, %bb.ar ], [ true, %bb.ao ], [ false, %bb.k ], [ false, %_ZN10tetgenmesh29does_seg_contain_acute_vertexEPNS_4faceE.exit ]
  store i32 %.sink, ptr %6, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  ret i1 %.035
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh13repairencsegsEPdii(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !150
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68984 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh13split_subfaceEPNS_4faceEPdS2_S2_iiPi:bb.a
  %.not17.i156 = icmp eq i32 %i.mt, 0
  br i1 %.not17.i156, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161, label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i150
  %i.mu = getelementptr i8, ptr %i.mp, i64 16
  store ptr null, ptr %i.mu, align 8, !tbaa !220
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !143
  %.not18.i152 = icmp eq i32 %i.mw, 0
  br i1 %.not18.i152, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !245
  %.not19.i153 = icmp eq ptr %i.my, null
  br i1 %.not19.i153, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mz = getelementptr i8, ptr %i.mp, i64 24
  store ptr null, ptr %i.mz, align 8, !tbaa !220
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161: ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %i.na = load ptr, ptr %i.lv, align 8, !tbaa !219
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !202
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = load ptr, ptr %0, align 8, !tbaa !221
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !55
  %.not20.i154 = icmp eq i32 %i.nf, 0
  %.neg.i155 = sext i1 %.not20.i154 to i32
  %i.ng = add i32 %.neg.i155, %i.nd
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 3 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !223
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.nj
  store i32 %i.ng, ptr %i.nk, align 4, !tbaa !59
  %i.nl = load i32, ptr %i.nh, align 8, !tbaa !223
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr [4 x i8], ptr %i.lx, i64 %i.nm
  %i.no = getelementptr i8, ptr %i.nn, i64 4
  store i32 0, ptr %i.no, align 4, !tbaa !59
  %i.np = load i32, ptr %i.nh, align 8, !tbaa !223
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr [4 x i8], ptr %i.lx, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 4      ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !59
  %i.nu = and i32 %i.nt, 255
  %i.nv = or disjoint i32 %i.nu, 1536
  store i32 %i.nv, ptr %i.ns, align 4, !tbaa !59
  %i.nw = load double, ptr %3, align 8, !tbaa !58
  store double %i.nw, ptr %i.lx, align 8, !tbaa !58
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !58
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store double %i.ny, ptr %i.nz, align 8, !tbaa !58
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !58
  %i.oc = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store double %i.ob, ptr %i.oc, align 8, !tbaa !58
  br label %.loopexit191

.loopexit191:                                     ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, %.preheader192.preheader, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161
  %i.od = phi i1 [ %i.lt, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161 ], [ %i.dw, %.preheader192.preheader ], [ %i.dw, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ]
  %i.oe = phi i1 [ %i.lu, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161 ], [ %i.dx, %.preheader192.preheader ], [ %i.dx, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ] ; 2 uses
  %.0178 = phi ptr [ %i.lx, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit161 ], [ %i.hr, %.preheader192.preheader ], [ %i.hr, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit ] ; 17 uses
  %i.of = load ptr, ptr %1, align 8, !tbaa !224   ; 2 uses
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !225 ; 2 uses
  %i.oi = sext i32 %i.oh to i64
  %i.oj = or i64 %i.oi, %i.og
  %i.ok = inttoptr i64 %i.oj to ptr
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !244
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr [8 x i8], ptr %.0178, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 16
  store ptr %i.ok, ptr %i.op, align 8, !tbaa !220
  store ptr %i.of, ptr %9, align 8, !tbaa !224
  store i32 %i.oh, ptr %i.c, align 8, !tbaa !225
  %i.oq = call noundef i32 @_ZN10tetgenmesh17locate_on_surfaceEPdPNS_4faceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %.0178, ptr noundef nonnull %9) ; 3 uses
  store i32 %i.oq, ptr %10, align 8, !tbaa !321
  switch i32 %i.oq, label %bb.ad [
    i32 7, label %bb.aa
    i32 5, label %bb.ab
    i32 16, label %bb.ac
  ]

bb.aa:                                            ; preds = %.loopexit191
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.os = load i32, ptr %i.or, align 8, !tbaa !223
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr [4 x i8], ptr %.0178, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 4      ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !59
  %i.ox = and i32 %i.ow, 255
  %i.oy = or disjoint i32 %i.ox, 2304
  store i32 %i.oy, ptr %i.ov, align 4, !tbaa !59
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !219 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !200
  store ptr %i.pc, ptr %.0178, align 8, !tbaa !111
  store ptr %.0178, ptr %i.pb, align 8, !tbaa !200
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 64 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !202
  %i.pf = add nsw i64 %i.pe, -1
  store i64 %i.pf, ptr %i.pd, align 8, !tbaa !202
  br label %bb.bo

bb.ab:                                            ; preds = %.loopexit191
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !223
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr [4 x i8], ptr %.0178, i64 %i.pi
  %i.pk = getelementptr i8, ptr %i.pj, i64 4      ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !59
  %i.pm = and i32 %i.pl, 255
  %i.pn = or disjoint i32 %i.pm, 2304
  store i32 %i.pn, ptr %i.pk, align 4, !tbaa !59
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !219 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !200
  store ptr %i.pr, ptr %.0178, align 8, !tbaa !111
  store ptr %.0178, ptr %i.pq, align 8, !tbaa !200
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 64 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !202
  %i.pu = add nsw i64 %i.pt, -1
  store i64 %i.pu, ptr %i.ps, align 8, !tbaa !202
  br label %bb.bo

bb.ac:                                            ; preds = %.loopexit191
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !223
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr [4 x i8], ptr %.0178, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 4      ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !59
  %i.qb = and i32 %i.qa, 255
  %i.qc = or disjoint i32 %i.qb, 2304
  store i32 %i.qc, ptr %i.pz, align 4, !tbaa !59
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !219 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 24 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !200
  store ptr %i.qg, ptr %.0178, align 8, !tbaa !111
  store ptr %.0178, ptr %i.qf, align 8, !tbaa !200
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 64 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !202
  %i.qj = add nsw i64 %i.qi, -1
  store i64 %i.qj, ptr %i.qh, align 8, !tbaa !202
  br label %bb.bo

bb.ad:                                            ; preds = %.loopexit191
  %i.qk = add nsw i32 %i.oq, -5
  %or.cond = icmp ult i32 %i.qk, -2
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ql = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.ql, align 16, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.ql, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.qm = load ptr, ptr %9, align 8, !tbaa !224
  %i.qn = load i32, ptr %i.c, align 8, !tbaa !225 ; 2 uses
  %i.qo = and i32 %i.qn, 1
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 72
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !220
  %i.qt = ptrtoint ptr %i.qs to i64               ; 3 uses
  %i.qu = trunc i64 %i.qt to i32
  %i.qv = and i32 %i.qu, 15
  store i32 %i.qv, ptr %i.b, align 8, !tbaa !236
  %i.qw = and i64 %i.qt, -16                      ; 2 uses
  %i.qx = inttoptr i64 %i.qw to ptr
  store ptr %i.qx, ptr %8, align 8, !tbaa !231
  %i.qy = icmp eq i64 %i.qw, 0
  br i1 %i.qy, label %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.qz = and i64 %i.qt, 15
  %i.ra = getelementptr inbounds nuw [24 x i8], ptr @_ZN10tetgenmesh10stpivottblE, i64 %i.qz
  %i.rb = sext i32 %i.qn to i64
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !59
  store i32 %i.rd, ptr %i.b, align 8, !tbaa !236
  br label %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit

_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit: ; preds = %bb.af, %bb.ag
  %i.re = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.rg = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 44
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !143 ; 2 uses
  %.not134 = icmp eq i32 %i.ri, 0
  %spec.store.select = select i1 %.not134, i32 1, i32 5
  store i32 %spec.store.select, ptr %i.rf, align 8
  %i.rj = and i32 %6, -2                          ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !348
  %i.rl = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 11, ptr %i.rl, align 8, !tbaa !340
  %i.rm = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 3, ptr %i.rm, align 4, !tbaa !341
  store <4 x i32> <i32 3, i32 2, i32 1, i32 1>, ptr %i.re, align 4, !tbaa !59
  %i.rn = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 1, ptr %i.rn, align 4, !tbaa !334
  %i.ro = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 %i.ri, ptr %i.ro, align 4, !tbaa !326
  %i.rp = getelementptr inbounds nuw i8, ptr %10, i64 60
  store i32 2, ptr %i.rp, align 4, !tbaa !329
  %i.rq = load ptr, ptr %1, align 8, !tbaa !224
  store ptr %i.rq, ptr %i.d, align 8, !tbaa !224
  %i.rr = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !225
  store i32 %i.rr, ptr %i.e, align 8, !tbaa !225
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 68720 ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !240 ; 2 uses
  store i32 %i.rt, ptr %i.f, align 8, !tbaa !336
  br i1 %i.oe, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit
  %i.ru = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 %i.rt, ptr %i.ru, align 8, !tbaa !325
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit
  %i.rv = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  store ptr null, ptr %i.rv, align 8, !tbaa !338
  %i.rw = call noundef i32 @_ZN10tetgenmesh11insertpointEPdPNS_7trifaceEPNS_4faceES4_PNS_17insertvertexflagsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %.0178, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %10)
  %.not135 = icmp eq i32 %i.rw, 0
  br i1 %.not135, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 69032 ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !345
  %i.rz = add nsw i64 %i.ry, 1
  store i64 %i.rz, ptr %i.rx, align 8, !tbaa !345
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 68984 ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !347 ; 2 uses
  %i.sc = icmp sgt i64 %i.sb, 0
  br i1 %i.sc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sd = add nsw i64 %i.sb, -1
  store i64 %i.sd, ptr %i.sa, align 8, !tbaa !347
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.se = load i32, ptr %i.rs, align 8, !tbaa !240
  %.not144 = icmp eq i32 %i.se, 0
  br i1 %.not144, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.pre = load double, ptr %i.g, align 8, !tbaa !337 ; 3 uses
  br i1 %i.od, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.sf = fdiv double %.pre, 3.000000e+00         ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !58 ; 2 uses
  %i.si = fcmp ogt double %i.sh, %i.sf
  %. = select i1 %i.si, double %i.sh, double %i.sf
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0 = phi double [ %., %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 68668
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !249
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [8 x i8], ptr %.0178, i64 %i.sl
  store double %.0, ptr %i.sm, align 8, !tbaa !58
  %i.sn = load ptr, ptr %i.rv, align 8, !tbaa !338
  %i.so = load i32, ptr %i.ol, align 4, !tbaa !244
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr [8 x i8], ptr %.0178, i64 %i.sp
  %i.sr = getelementptr i8, ptr %i.sq, i64 8
  store ptr %i.sn, ptr %i.sr, align 8, !tbaa !220
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 68904 ; 2 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !407
  %i.su = fcmp ogt double %i.st, %.pre
  br i1 %i.su, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store double %.pre, ptr %i.ss, align 8, !tbaa !407
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.al
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !290
  %.not145 = icmp eq ptr %i.sw, null
  br i1 %.not145, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.sx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.sy = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.sz = getelementptr inbounds nuw i8, ptr %11, i64 88
  store ptr null, ptr %i.sz, align 8, !tbaa !112
  %i.ta = getelementptr inbounds nuw i8, ptr %11, i64 104
  store ptr null, ptr %i.ta, align 8, !tbaa !112
  %i.tb = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr null, ptr %i.tb, align 8, !tbaa !306
  %i.tc = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.tc, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.sx, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.sy, i8 0, i64 28, i1 false)
  %i.td = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.rj, ptr %i.td, align 4, !tbaa !281
  store i32 2, ptr %11, align 8, !tbaa !285
  %i.te = call noundef i64 @_ZN10tetgenmesh12lawsonflip3dEPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !264
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !100
  %i.tj = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 236
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !398
  %i.tm = sext i32 %i.tl to i64
  %i.tn = icmp sgt i64 %i.ti, %i.tm
  br i1 %i.tn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @_ZN10tetgenmesh15recoverdelaunayEv(ptr noundef nonnull align 8 dereferenceable(69984) %0)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.to = load i32, ptr %10, align 8, !tbaa !321
  br label %bb.bo

bb.av:                                            ; preds = %bb.ai
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !223
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr [4 x i8], ptr %.0178, i64 %i.tr
  %i.tt = getelementptr i8, ptr %i.ts, i64 4      ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !59
  %i.tv = and i32 %i.tu, 255
  %i.tw = or disjoint i32 %i.tv, 2304
  store i32 %i.tw, ptr %i.tt, align 4, !tbaa !59
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !219 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 24 ; 2 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !200
  store ptr %i.ua, ptr %.0178, align 8, !tbaa !111
  store ptr %.0178, ptr %i.tz, align 8, !tbaa !200
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 64 ; 2 uses
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !202
  %i.ud = add nsw i64 %i.uc, -1
  store i64 %i.ud, ptr %i.ub, align 8, !tbaa !202
  %i.ue = load i32, ptr %10, align 8, !tbaa !321  ; 7 uses
  switch i32 %i.ue, label %bb.bo [
    i32 7, label %bb.aw
    i32 9, label %bb.bn
  ]

bb.aw:                                            ; preds = %bb.av
  %i.uf = load ptr, ptr %1, align 8, !tbaa !224   ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %.sroa.0212.0.copyload = load ptr, ptr %i.ug, align 8, !tbaa !112 ; 2 uses
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %.sroa.5214.0.copyload = load ptr, ptr %.sroa.5214.0..sroa_idx, align 8, !tbaa !112 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 40
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !112 ; 2 uses
  %i.uh = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 24
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !150
  %i.uk = trunc i32 %i.uj to i1
  %or.cond4 = or i1 %i.oe, %i.uk
  br i1 %or.cond4, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aw
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 68472 ; 2 uses
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !330 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 32
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !100
  %i.up = icmp sgt i64 %i.uo, 0
  br i1 %i.up, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.uq = or i32 %6, 1
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %.thread182
  %i.ur = phi ptr [ %i.um, %.lr.ph ], [ %i.wm, %.thread182 ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread182 ] ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !104
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !103
  %i.uw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ux = lshr i32 %i.uw, %i.uv
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.uy
end_hunk_2
begin_hunk_3_@_ZN10tetgenmesh14checktet4splitEPNS_7trifaceEPdRi:bb.a
  %i.lg = extractelement <2 x double> %i.lf, i64 0
  %i.lh = fsub double %i.kz, %i.lg                ; 2 uses
  %i.li = extractelement <2 x double> %i.lf, i64 1
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.jz, double %i.lh, double %i.li)
  %i.lk = fsub double %i.la, %i.lj
  %i.ll = fdiv double %i.lk, %i.dw                ; 7 uses
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.ll, double 0.000000e+00)
  %i.ln = fsub double %i.lh, %i.lm
  %i.lo = fdiv double %i.ln, %i.ef                ; 6 uses
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.kg, double %i.lo, double 0.000000e+00)
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.ke, double %i.ll, double %i.lp)
  %i.lr = fsub double %i.ky, %i.lq
  %i.ls = fdiv double %i.lr, %i.eq                ; 5 uses
  store double %i.ls, ptr %i.js, align 8, !tbaa !58
  store double %i.lo, ptr %i.jt, align 16, !tbaa !58
  store double %i.ll, ptr %.sroa.42.0..sroa_idx329, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.kh, i8 0, i64 16, i1 false), !tbaa !58
  store double 1.000000e+00, ptr %i.ki, align 16, !tbaa !58
  %i.lt = load double, ptr %i.kj, align 8, !tbaa !58 ; 2 uses
  %i.lu = load double, ptr %i.ed, align 16, !tbaa !58
  %i.lv = load double, ptr %i.kk, align 8, !tbaa !58
  %i.lw = load double, ptr %i.kl, align 8, !tbaa !58
  %i.lx = load double, ptr %i.km, align 8, !tbaa !58
  %i.ly = load double, ptr %i.du, align 16, !tbaa !58
  %i.lz = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.ma = insertelement <2 x double> %i.lz, double %i.ly, i64 1
  %i.mb = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.md = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.mc, <2 x double> zeroinitializer) ; 2 uses
  %i.me = extractelement <2 x double> %i.md, i64 0
  %i.mf = fsub double %i.lv, %i.me                ; 2 uses
  %i.mg = extractelement <2 x double> %i.md, i64 1
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.lx, double %i.mf, double %i.mg)
  %i.mi = fsub double %i.lw, %i.mh
  %i.mj = load double, ptr %i.kn, align 16, !tbaa !58
  %i.mk = load double, ptr %i.ko, align 16, !tbaa !58
  %i.ml = load double, ptr %i.kp, align 8, !tbaa !58
  %i.mm = fdiv double %i.mi, %i.dw                ; 6 uses
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mm, double 0.000000e+00)
  %i.mo = fsub double %i.mf, %i.mn
  %i.mp = fdiv double %i.mo, %i.ef                ; 5 uses
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.ml, double %i.mp, double 0.000000e+00)
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.mm, double %i.mq)
  %i.ms = fsub double %i.lt, %i.mr
  %i.mt = fdiv double %i.ms, %i.eq                ; 4 uses
  %i.mu = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.mv = insertelement <2 x double> %i.mu, double %i.kq, i64 1
  %i.mw = fneg <2 x double> %i.mv
  %i.mx = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.my = insertelement <2 x double> %i.mx, double %i.ll, i64 1
  %i.mz = fsub <2 x double> %i.mw, %i.my
  %i.na = fneg double %i.kt
  %i.nb = fsub double %i.na, %i.lo
  %i.nc = fsub double %i.nb, %i.mp                ; 3 uses
  %i.nd = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.ne = insertelement <2 x double> %i.nd, double %i.mm, i64 1
  %i.nf = fsub <2 x double> %i.mz, %i.ne          ; 3 uses
  %i.ng = fmul double %i.kt, %i.kt
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.kx, double %i.ng)
  %i.ni = tail call noundef double @llvm.fmuladd.f64(double %i.kq, double %i.kq, double %i.nh) ; 2 uses
  %i.nj = fcmp oeq double %i.ni, 0.000000e+00
  br i1 %i.nj, label %bb.r, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge76.i181.2.2
  %sqrt203 = tail call double @llvm.sqrt.f64(double %i.ni) ; 3 uses
  %i.nk = fdiv double %i.kx, %sqrt203             ; 2 uses
  %i.nl = fdiv double %i.kt, %sqrt203             ; 2 uses
  %i.nm = fdiv double %i.kq, %sqrt203             ; 2 uses
  %i.nn = fmul double %i.lo, %i.lo
  %i.no = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.ls, double %i.nn)
  %i.np = tail call noundef double @llvm.fmuladd.f64(double %i.ll, double %i.ll, double %i.no) ; 2 uses
  %i.nq = fcmp oeq double %i.np, 0.000000e+00
  br i1 %i.nq, label %bb.r, label %.preheader.preheader.1

bb.r:                                             ; preds = %.preheader.preheader.2, %.preheader.preheader.1, %.preheader.preheader, %._crit_edge76.i181.2.2
  %i.nr = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.nr, align 16, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.nr, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

.preheader.preheader.1:                           ; preds = %.preheader.preheader
  %sqrt203.1 = tail call double @llvm.sqrt.f64(double %i.np) ; 3 uses
  %i.ns = fdiv double %i.ls, %sqrt203.1           ; 3 uses
  %i.nt = fdiv double %i.lo, %sqrt203.1           ; 3 uses
  %i.nu = fdiv double %i.ll, %sqrt203.1           ; 3 uses
  %i.nv = fmul double %i.mp, %i.mp
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.mt, double %i.mt, double %i.nv)
  %i.nx = tail call noundef double @llvm.fmuladd.f64(double %i.mm, double %i.mm, double %i.nw) ; 2 uses
  %i.ny = fcmp oeq double %i.nx, 0.000000e+00
  br i1 %i.ny, label %bb.r, label %.preheader.preheader.2

.preheader.preheader.2:                           ; preds = %.preheader.preheader.1
  %i.nz = fmul double %i.nc, %i.nc
  %i.oa = extractelement <2 x double> %i.nf, i64 0 ; 2 uses
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.oa, double %i.oa, double %i.nz)
  %i.oc = extractelement <2 x double> %i.nf, i64 1 ; 2 uses
  %i.od = tail call noundef double @llvm.fmuladd.f64(double %i.oc, double %i.oc, double %i.ob) ; 2 uses
  %i.oe = fcmp oeq double %i.od, 0.000000e+00
  br i1 %i.oe, label %bb.r, label %.preheader.preheader.3

.preheader.preheader.3:                           ; preds = %.preheader.preheader.2
  %i.of = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.og = insertelement <2 x double> %i.of, double %i.od, i64 1
  %i.oh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.og) ; 3 uses
  %i.oi = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.oj = insertelement <2 x double> %i.oi, double %i.mt, i64 1
  %i.ok = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = fdiv <2 x double> %i.oj, %i.ok          ; 6 uses
  %i.om = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.nc, i64 1
  %i.oo = fdiv <2 x double> %i.on, %i.oh          ; 4 uses
  %i.op = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oq = fdiv <2 x double> %i.nf, %i.op          ; 4 uses
  %i.or = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.os = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ot = insertelement <2 x double> %i.oo, double %i.nt, i64 1
  %i.ou = fmul <2 x double> %i.os, %i.ot
  %i.ov = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ox = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.oy = insertelement <2 x double> %i.ox, double %i.ns, i64 1
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.oy, <2 x double> %i.ou)
  %i.pa = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.pb = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pc = insertelement <2 x double> %i.ol, double %i.nu, i64 1
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.pc, <2 x double> %i.oz) ; 2 uses
  %i.pe = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.nl, i64 1
  %i.pg = fmul <2 x double> %i.pf, %i.oo
  %i.ph = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.pi = insertelement <2 x double> %i.ph, double %i.nk, i64 1
  %i.pj = shufflevector <2 x double> %i.ol, <2 x double> %i.oq, <2 x i32> <i32 1, i32 2>
  %i.pk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> %i.pj, <2 x double> %i.pg)
  %i.pl = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.pm = insertelement <2 x double> %i.pl, double %i.nm, i64 1
  %i.pn = shufflevector <2 x double> %i.ol, <2 x double> %i.oq, <2 x i32> <i32 0, i32 3>
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pm, <2 x double> %i.pn, <2 x double> %i.pk) ; 2 uses
  %i.pp = shufflevector <2 x double> %i.oo, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pq = insertelement <2 x double> %i.pp, double %i.nt, i64 0
  %i.pr = shufflevector <2 x double> %i.oo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ps = fmul <2 x double> %i.pq, %i.pr
  %i.pt = insertelement <2 x double> %i.ol, double %i.ns, i64 0
  %i.pu = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> %i.pu, <2 x double> %i.ps)
  %i.pw = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.px = insertelement <2 x double> %i.pw, double %i.nu, i64 0
  %i.py = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.py, <2 x double> %i.pv) ; 2 uses
  %i.qa = extractelement <2 x double> %i.pd, i64 0 ; 2 uses
  %i.qb = extractelement <2 x double> %i.pd, i64 1 ; 2 uses
  %i.qc = fcmp olt double %i.qa, %i.qb
  %..0154.v = select i1 %i.qc, double %i.qa, double %i.qb ; 2 uses
  %i.qd = extractelement <2 x double> %i.po, i64 1 ; 2 uses
  %i.qe = fcmp olt double %i.qd, %..0154.v
  %..0154.1.v = select i1 %i.qe, double %i.qd, double %..0154.v ; 2 uses
  %i.qf = extractelement <2 x double> %i.po, i64 0 ; 2 uses
  %i.qg = fcmp olt double %i.qf, %..0154.1.v
  %..0154.2.v = select i1 %i.qg, double %i.qf, double %..0154.1.v ; 2 uses
  %i.qh = extractelement <2 x double> %i.pz, i64 0 ; 2 uses
  %i.qi = fcmp olt double %i.qh, %..0154.2.v
  %..0154.3.v = select i1 %i.qi, double %i.qh, double %..0154.2.v ; 2 uses
  %i.qj = extractelement <2 x double> %i.pz, i64 1 ; 2 uses
  %i.qk = fcmp olt double %i.qj, %..0154.3.v
  %..0154.4.v = select i1 %i.qk, double %i.qj, double %..0154.3.v
  %..0154.4 = fneg double %..0154.4.v
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 68752
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !415
  %i.qn = fcmp olt double %i.qm, %..0154.4
  br i1 %i.qn, label %.thread199, label %bb.s

bb.s:                                             ; preds = %.preheader.preheader.3, %.critedge
  br label %.thread199

.thread199:                                       ; preds = %bb.i, %.thread, %bb.q, %.preheader.preheader.3, %bb.n, %bb.d, %bb.c, %bb.b, %bb.s, %bb.m
  %.1156 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.m ], [ true, %.thread ], [ true, %bb.n ], [ false, %bb.s ], [ true, %bb.q ], [ true, %bb.i ], [ true, %.preheader.preheader.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %.1156
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10tetgenmesh17split_tetrahedronEPNS_7trifaceEPdiiRNS_17insertvertexflagsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 4)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.tetgenmesh::triface", align 8 ; 7 uses
  %7 = alloca %"class.tetgenmesh::flipconstraints", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [3 x double], align 16            ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !236
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68920 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !400
  %i.h = add nsw i64 %i.g, 1                      ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !400
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.l = load i32, ptr %i.k, align 4, !tbaa !183
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.n = load double, ptr %i.m, align 8, !tbaa !127
  %i.o = fcmp ogt double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68928 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !401
  %.not215 = icmp slt i64 %i.h, %i.q
  br i1 %.not215, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68944 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !402
  %i.t = sub nsw i64 %i.h, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !219
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68936 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !403
  %i.aa = sub nsw i64 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !404
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !100
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.489, i64 noundef %i.t, i64 noundef %i.aa, i64 noundef %i.ae) ; 0 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !219
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !202
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !403
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !400
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !402
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  %i.am = load double, ptr %i.al, align 8, !tbaa !127
  %i.an = fadd double %i.am, 1.000000e+00
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !401
  %i.ap = sitofp i64 %i.ao to double
  %i.aq = fmul double %i.an, %i.ap
  %i.ar = fptosi double %i.aq to i64
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !401
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !219
  %i.au = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.at) ; 19 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 68640
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !241 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %scevgep.i = getelementptr i8, ptr %i.au, i64 24
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.az, i1 false), !tbaa !58
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 68648
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !242 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph23.i, label %._crit_edge.i

.lr.ph23.i:                                       ; preds = %.preheader.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 68652
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !243
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 3
  %scevgep25.i = getelementptr i8, ptr %i.au, i64 %i.bg
  %i.bh = zext nneg i32 %i.bb to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep25.i, i8 0, i64 %i.bi, i1 false), !tbaa !58
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph23.i, %.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !244
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bl ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !218 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !117
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !125
  %.not17.i = icmp eq i32 %i.bq, 0
  br i1 %.not17.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.br = getelementptr i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.br, align 8, !tbaa !220
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !143
  %.not18.i = icmp eq i32 %i.bt, 0
  br i1 %.not18.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !245
  %.not19.i = icmp eq ptr %i.bv, null
  br i1 %.not19.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr i8, ptr %i.bm, i64 24
  store ptr null, ptr %i.bw, align 8, !tbaa !220
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit:  ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !219
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !202
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = load ptr, ptr %0, align 8, !tbaa !221
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !55
  %.not20.i = icmp eq i32 %i.cc, 0
  %.neg.i = sext i1 %.not20.i to i32
  %i.cd = add i32 %.neg.i, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !223
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cg
  store i32 %i.cd, ptr %i.ch, align 4, !tbaa !59
  %i.ci = load i32, ptr %i.ce, align 8, !tbaa !223
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [4 x i8], ptr %i.au, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  store i32 0, ptr %i.cl, align 4, !tbaa !59
  %i.cm = load i32, ptr %i.ce, align 8, !tbaa !223
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.au, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4      ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !59
  %i.cr = and i32 %i.cq, 255
  %i.cs = or disjoint i32 %i.cr, 1792
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !59
  %i.ct = load double, ptr %2, align 8, !tbaa !58
  store double %i.ct, ptr %i.au, align 8, !tbaa !58
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.cv, ptr %i.cw, align 8, !tbaa !58
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !58
  %i.cz = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store double %i.cy, ptr %i.cz, align 8, !tbaa !58
  %i.da = load ptr, ptr %1, align 8, !tbaa !231
  store ptr %i.da, ptr %6, align 8, !tbaa !231
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !236
  store i32 %i.dc, ptr %i.e, align 8, !tbaa !236
  store i32 1, ptr %5, align 8, !tbaa !321
  %i.dd = call noundef i32 @_ZN10tetgenmesh17locate_point_walkEPdPNS_7trifaceEi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.au, ptr noundef nonnull %6, i32 noundef 1) ; 2 uses
  store i32 %i.dd, ptr %5, align 8, !tbaa !321
  %.off = add nsw i32 %i.dd, -2
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.de = load i32, ptr %i.ce, align 8, !tbaa !223
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.au, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 4      ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !59
  %i.dj = and i32 %i.di, 255
  %i.dk = or disjoint i32 %i.dj, 2304
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !59
  %i.dl = load ptr, ptr %i.as, align 8, !tbaa !219 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !200
  store ptr %i.dn, ptr %i.au, align 8, !tbaa !111
  store ptr %i.au, ptr %i.dm, align 8, !tbaa !200
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !202
  %i.dq = add nsw i64 %i.dp, -1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !202
  store i32 15, ptr %5, align 8, !tbaa !321
  br label %bb.cj

bb.k:                                             ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !143
  %.not216 = icmp eq i32 %i.dv, 0
  %spec.store.select = select i1 %.not216, i32 3, i32 7
  store i32 %spec.store.select, ptr %i.ds, align 8
  %i.dw = and i32 %4, -4                          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !348
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.dy, align 4, !tbaa !341
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.dz, align 8, !tbaa !340
  store <4 x i32> <i32 3, i32 2, i32 0, i32 1>, ptr %i.dr, align 4, !tbaa !59
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 1, ptr %i.ea, align 4, !tbaa !334
  %8 = load ptr, ptr %i.i, align 8, !tbaa !218
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 44
  %10 = load i32, ptr %9, align 4, !tbaa !143
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %10, ptr %i.eb, align 4, !tbaa !326
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i32 1, ptr %i.ec, align 4, !tbaa !329
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ee = load ptr, ptr %1, align 8, !tbaa !231
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !231
  %i.ef = load i32, ptr %i.db, align 8, !tbaa !236
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !236
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 68720 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !240 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !336
  %i.ek = icmp ne i32 %3, 0                       ; 2 uses
  %spec.select = select i1 %i.ek, i32 0, i32 %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %spec.select, ptr %i.el, align 8, !tbaa !325
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  store ptr null, ptr %i.em, align 8, !tbaa !338
  %i.en = call noundef i32 @_ZN10tetgenmesh11insertpointEPdPNS_7trifaceEPNS_4faceES4_PNS_17insertvertexflagsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.au, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %5)
  %.not217 = icmp eq i32 %i.en, 0
  br i1 %.not217, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 69040 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !346
  %i.eq = add nsw i64 %i.ep, 1
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !346
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 68984 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !347 ; 2 uses
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eu = add nsw i64 %i.es, -1
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !347
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !240
  %.not248 = icmp eq i32 %i.ev, 0
  br i1 %.not248, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !58 ; 3 uses
  %i.ey = fcmp ogt double %i.ex, 0.000000e+00
  br i1 %i.ey, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !337 ; 2 uses
  %i.fb = fcmp olt double %i.ex, %i.fa
  %. = select i1 %i.fb, double %i.ex, double %i.fa
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0180 = phi double [ %., %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 68668
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !249
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.fe
  store double %.0180, ptr %i.ff, align 8, !tbaa !58
  %i.fg = load ptr, ptr %i.em, align 8, !tbaa !338
  %i.fh = load i32, ptr %i.bj, align 4, !tbaa !244
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr [8 x i8], ptr %i.au, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  store ptr %i.fg, ptr %i.fk, align 8, !tbaa !220
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !337 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 68904 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !407
  %i.fp = fcmp olt double %i.fm, %i.fo
  br i1 %i.fp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.fm, ptr %i.fn, align 8, !tbaa !407
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !290
  %.not249 = icmp eq ptr %i.fr, null
  br i1 %.not249, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr null, ptr %i.fu, align 8, !tbaa !112
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr null, ptr %i.fv, align 8, !tbaa !112
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr null, ptr %i.fw, align 8, !tbaa !306
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fx, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fs, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ft, i8 0, i64 28, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.dw, ptr %i.fy, align 4, !tbaa !281
  store i32 2, ptr %7, align 8, !tbaa !285
  %i.fz = call noundef i64 @_ZN10tetgenmesh12lawsonflip3dEPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !264
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !100
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 236
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !398
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp sgt i64 %i.gd, %i.gh
  br i1 %i.gi, label %bb.v, label %bb.cj

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN10tetgenmesh15recoverdelaunayEv(ptr noundef nonnull align 8 dereferenceable(69984) %0)
  br label %bb.cj

bb.w:                                             ; preds = %bb.k
  %i.gj = load i32, ptr %i.ce, align 8, !tbaa !223
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr [4 x i8], ptr %i.au, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 4      ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !59
  %i.go = and i32 %i.gn, 255
  %i.gp = or disjoint i32 %i.go, 2304
  store i32 %i.gp, ptr %i.gm, align 4, !tbaa !59
  %i.gq = load ptr, ptr %i.as, align 8, !tbaa !219 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !200
  store ptr %i.gs, ptr %i.au, align 8, !tbaa !111
  store ptr %i.au, ptr %i.gr, align 8, !tbaa !200
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 64 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !202
  %i.gv = add nsw i64 %i.gu, -1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !202
  %i.gw = load i32, ptr %5, align 8, !tbaa !321
  switch i32 %i.gw, label %bb.ci [
    i32 7, label %bb.x
    i32 8, label %bb.at
  ]

bb.x:                                             ; preds = %bb.w
  %i.gx = load ptr, ptr %i.i, align 8, !tbaa !218 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !121
  %.not237 = icmp eq i32 %i.gz, 0
  br i1 %.not237, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  %i.ha = load ptr, ptr %1, align 8, !tbaa !231   ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload344 = load ptr, ptr %i.hb, align 8, !tbaa !112 ; 2 uses
  %.sroa.9.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %.sroa.9.0.copyload346 = load ptr, ptr %.sroa.9.0..sroa_idx345, align 8, !tbaa !112 ; 2 uses
  %.sroa.14.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %.sroa.14.0.copyload352 = load ptr, ptr %.sroa.14.0..sroa_idx351, align 8, !tbaa !112 ; 2 uses
  %.sroa.19.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %.sroa.19.0.copyload358 = load ptr, ptr %.sroa.19.0..sroa_idx357, align 8, !tbaa !112 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !150
  %i.he = trunc i32 %i.hd to i1
  %or.cond = or i1 %i.ek, %i.he
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.y
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 68472 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !330 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !100
  %i.hj = icmp sgt i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph328, label %.loopexit

.lr.ph328:                                        ; preds = %.preheader
  %i.hk = or i32 %4, 3
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph328, %.thread
  %i.hl = phi ptr [ %i.hg, %.lr.ph328 ], [ %i.ji, %.thread ] ; 7 uses
  %indvars.iv337 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next338, %.thread ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !104
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !103
  %i.hq = trunc nuw nsw i64 %indvars.iv337 to i32 ; 2 uses
  %i.hr = lshr i32 %i.hq, %i.hp
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !53
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !110
  %i.hx = and i32 %i.hw, %i.hq
  %i.hy = load i32, ptr %i.hl, align 8, !tbaa !102
  %i.hz = mul nsw i32 %i.hx, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hu, i64 %i.ia ; 4 uses
end_hunk_3
