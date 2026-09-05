Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshQuery?download=true
begin_hunk_0_@_ZNK14dtNavMeshQuery18findDistanceToWallEjPKffPK13dtQueryFilterPfS5_S5_:bb.a
  store i32 0, ptr %i.ao, align 4, !tbaa !33
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.aq = tail call noundef ptr @_ZN10dtNodePool7getNodeEjh(ptr noundef nonnull align 8 dereferenceable(36) %i.ap, i32 noundef %1, i8 noundef zeroext 0) #15 ; 7 uses
  %i.ar = load float, ptr %2, align 4, !tbaa !15
  store float %i.ar, ptr %i.aq, align 4, !tbaa !15
  %i.as = load float, ptr %i.s, align 4, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store float %i.as, ptr %i.at, align 4, !tbaa !15
  %i.au = load float, ptr %i.w, align 4, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store <2 x float> zeroinitializer, ptr %i.ay, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %1, ptr %i.az, align 4, !tbaa !58
  %i.ba = and i32 %i.ax, -486539264
  %i.bb = or disjoint i32 %i.ba, 67108864
  store i32 %i.bb, ptr %i.aw, align 4
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !33 ; 2 uses
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !33
  tail call void @_ZN11dtNodeQueue8bubbleUpEiP6dtNode(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i32 noundef %i.be, ptr noundef nonnull %i.aq) #15
  %i.bg = fmul float %3, %3                       ; 2 uses
  %i.bh = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %._crit_edge213, label %.lr.ph212

.lr.ph212:                                        ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 258 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph212, %._crit_edge
  %i.br = phi i32 [ %i.bj, %.lr.ph212 ], [ %i.ga, %._crit_edge ]
  %i.bs = phi ptr [ %i.bi, %.lr.ph212 ], [ %i.fz, %._crit_edge ]
  %i.bt = phi ptr [ %i.bh, %.lr.ph212 ], [ %i.fy, %._crit_edge ] ; 2 uses
  %.0140210 = phi i32 [ 1073741824, %.lr.ph212 ], [ %.1141.lcssa, %._crit_edge ] ; 2 uses
  %.0145209 = phi float [ %i.bg, %.lr.ph212 ], [ %.1146.lcssa, %._crit_edge ] ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60 ; 7 uses
  %i.bw = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !33
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !60
  call void @_ZN11dtNodeQueue11trickleDownEiP6dtNode(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i32 noundef 0, ptr noundef %i.bz) #15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 20 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, -201326593
  %i.cd = or disjoint i32 %i.cc, 134217728
  store i32 %i.cd, ptr %i.ca, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8, !tbaa !56
  %i.cg = load ptr, ptr %0, align 8, !tbaa !27
  call void @_ZNK9dtNavMesh25getTileAndPolyByRefUnsafeEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.cg, i32 noundef %i.cf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr null, ptr %i.e, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store ptr null, ptr %i.f, align 8, !tbaa !56
  %i.ch = load i32, ptr %i.ca, align 4
  %i.ci = and i32 %i.ch, 16777215                 ; 2 uses
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = zext nneg i32 %i.ci to i64
  %i.cm = getelementptr [28 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !58 ; 3 uses
  %.not160 = icmp eq i32 %i.co, 0
  br i1 %.not160, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = load ptr, ptr %0, align 8, !tbaa !27
  call void @_ZNK9dtNavMesh25getTileAndPolyByRefUnsafeEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.cp, i32 noundef %i.co, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %bb.g
  %.0139187 = phi i32 [ 0, %bb.g ], [ %i.co, %bb.h ], [ 0, %bb.f ]
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !56  ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 30
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !51  ; 2 uses
  %.not216 = icmp eq i8 %i.cs, 0
  br i1 %.not216, label %.preheader192, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %.thread
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -1
  br label %.lr.ph201

.preheader192:                                    ; preds = %bb.p, %.thread
  %.1146.lcssa = phi float [ %.0145209, %.thread ], [ %.3148, %bb.p ] ; 3 uses
  %.lcssa193 = phi ptr [ %i.cq, %.thread ], [ %i.fs, %bb.p ]
  %.0203 = load i32, ptr %.lcssa193, align 4, !tbaa !54 ; 2 uses
  %.not161204 = icmp eq i32 %.0203, -1
  br i1 %.not161204, label %._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader192
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cy = ptrtoint ptr %i.bv to i64
  %.pre223 = load ptr, ptr %i.c, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre223, i64 32
  %.pre224 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %bb.q

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph201.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.cz = phi ptr [ %i.cq, %.lr.ph201.preheader ], [ %i.fs, %bb.p ] ; 2 uses
  %.0137200 = phi i32 [ %i.cu, %.lr.ph201.preheader ], [ %i.fx, %bb.p ] ; 2 uses
  %.1146198 = phi float [ %.0145209, %.lr.ph201.preheader ], [ %.3148, %bb.p ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = sext i32 %.0137200 to i64               ; 2 uses
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !53 ; 3 uses
  %i.de = zext nneg i16 %i.dd to i64
  %.not168 = icmp sgt i16 %i.dd, -1
  br i1 %.not168, label %bb.l, label %.preheader

.preheader:                                       ; preds = %.lr.ph201
  %.0132195 = load i32, ptr %i.cz, align 4, !tbaa !54 ; 2 uses
  %.not170196 = icmp eq i32 %.0132195, -1
  %.pre221 = load ptr, ptr %i.c, align 8, !tbaa !55 ; 4 uses
  br i1 %.not170196, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.df = getelementptr inbounds nuw i8, ptr %.pre221, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.0132197 = phi i32 [ %.0132195, %.lr.ph ], [ %.0132, %bb.k ]
  %i.dh = zext i32 %.0132197 to i64
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !66
  %i.dl = zext i8 %i.dk to i32
  %.not172 = icmp eq i32 %.0137200, %i.dl
  br i1 %.not172, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !63
  %.not171 = icmp eq i32 %i.dm, 0
  br i1 %.not171, label %.critedge, label %.thread188

.thread188:                                       ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store ptr null, ptr %i.g, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store ptr null, ptr %i.h, align 8, !tbaa !56
  %i.dn = load ptr, ptr %0, align 8, !tbaa !27
  %i.do = load i32, ptr %i.di, align 4, !tbaa !63
  call void @_ZNK9dtNavMesh25getTileAndPolyByRefUnsafeEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.dn, i32 noundef %i.do, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #15
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.dr = load i16, ptr %i.dq, align 4, !tbaa !50 ; 2 uses
  %i.ds = load i16, ptr %i.bl, align 4, !tbaa !13
  %i.dt = and i16 %i.ds, %i.dr
  %.not.i177 = icmp eq i16 %i.dt, 0
  %i.du = load i16, ptr %i.bm, align 2
  %i.dv = and i16 %i.du, %i.dr
  %i.dw = icmp ne i16 %i.dv, 0
  %.not191 = select i1 %.not.i177, i1 true, i1 %i.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br i1 %.not191, label %.thread188..critedge_crit_edge, label %bb.p

.thread188..critedge_crit_edge:                   ; preds = %.thread188
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %.0132 = load i32, ptr %i.dx, align 4, !tbaa !54 ; 2 uses
  %.not170 = icmp eq i32 %.0132, -1
  br i1 %.not170, label %.critedge, label %bb.i

bb.l:                                             ; preds = %.lr.ph201
  %.not169 = icmp eq i16 %i.dd, 0
  %.pre222 = load ptr, ptr %i.c, align 8, !tbaa !55 ; 2 uses
  br i1 %.not169, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %8 = add nuw nsw i64 %i.de, 4294967295
  %i.dy = load ptr, ptr %0, align 8, !tbaa !27
  %i.dz = call noundef i32 @_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile(ptr noundef nonnull align 8 dereferenceable(100) %i.dy, ptr noundef %.pre222) #15 ; 0 uses
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !47
  %9 = and i64 %8, 4294967295
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %9
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  %i.ef = load i16, ptr %i.ee, align 4, !tbaa !50 ; 2 uses
  %i.eg = load i16, ptr %i.bl, align 4, !tbaa !13
  %i.eh = and i16 %i.eg, %i.ef
  %.not.i178 = icmp ne i16 %i.eh, 0
  %i.ei = load i16, ptr %i.bm, align 2
  %i.ej = and i16 %i.ei, %i.ef
  %i.ek = icmp eq i16 %i.ej, 0
  %i.el = select i1 %.not.i178, i1 %i.ek, i1 false
  br i1 %i.el, label %bb.p, label %.critedge

.critedge:                                        ; preds = %bb.k, %.thread188..critedge_crit_edge, %.preheader, %bb.j, %bb.m, %bb.l
  %i.em = phi ptr [ %.pre, %.thread188..critedge_crit_edge ], [ %.pre222, %bb.l ], [ %.pre221, %.preheader ], [ %.pre221, %bb.j ], [ %i.ea, %bb.m ], [ %.pre221, %bb.k ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52 ; 2 uses
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.db
  %i.es = load i16, ptr %i.er, align 2, !tbaa !53
  %i.et = zext i16 %i.es to i64
  %.idx173 = mul nuw nsw i64 %i.et, 12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx173 ; 4 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !53
  %i.ex = zext i16 %i.ew to i64
  %.idx174 = mul nuw nsw i64 %i.ex, 12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx174 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.ez = call noundef float @_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf(ptr noundef nonnull %2, ptr noundef %i.eu, ptr noundef %i.ey, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #15 ; 2 uses
  %i.fa = fcmp ogt float %i.ez, %.1146198
  br i1 %i.fa, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.fb = load float, ptr %i.eu, align 4, !tbaa !15 ; 2 uses
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !15
  %i.fd = fsub float %i.fc, %i.fb
  %i.fe = load float, ptr %i.i, align 4, !tbaa !15 ; 3 uses
  %i.ff = call float @llvm.fmuladd.f32(float %i.fd, float %i.fe, float %i.fb)
  store float %i.ff, ptr %6, align 4, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !15 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !15
  %i.fk = fsub float %i.fj, %i.fh
  %i.fl = call float @llvm.fmuladd.f32(float %i.fk, float %i.fe, float %i.fh)
  store float %i.fl, ptr %i.bn, align 4, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !15 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !15
  %i.fq = fsub float %i.fp, %i.fn
  %i.fr = call float @llvm.fmuladd.f32(float %i.fq, float %i.fe, float %i.fn)
  store float %i.fr, ptr %i.bo, align 4, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  %.2147 = phi float [ %i.ez, %bb.n ], [ %.1146198, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.thread188, %bb.o
  %.3148 = phi float [ %.2147, %bb.o ], [ %.1146198, %.thread188 ], [ %.1146198, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fs = load ptr, ptr %i.d, align 8, !tbaa !56  ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 30
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !51
  %i.fv = zext i8 %i.fu to i64
  %i.fw = icmp samesign ult i64 %indvars.iv.next, %i.fv
  %i.fx = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.fw, label %.lr.ph201, label %.preheader192

._crit_edge:                                      ; preds = %bb.ai, %.preheader192
  %.1141.lcssa = phi i32 [ %.0140210, %.preheader192 ], [ %.5, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.fy = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !33 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %._crit_edge213, label %bb.f

bb.q:                                             ; preds = %.lr.ph207, %bb.ai
  %i.gc = phi ptr [ %.pre224, %.lr.ph207 ], [ %i.kl, %bb.ai ] ; 2 uses
  %.0206 = phi i32 [ %.0203, %.lr.ph207 ], [ %.0, %bb.ai ]
  %.1141205 = phi i32 [ %.0140210, %.lr.ph207 ], [ %.5, %bb.ai ] ; 11 uses
  %i.gd = zext i32 %.0206 to i64                  ; 2 uses
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !63 ; 6 uses
  %.not162 = icmp eq i32 %i.gf, 0
  %i.gg = icmp eq i32 %i.gf, %.0139187
  %or.cond176 = or i1 %.not162, %i.gg
  br i1 %or.cond176, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  store ptr null, ptr %i.j, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  store ptr null, ptr %i.k, align 8, !tbaa !56
  %i.gh = load ptr, ptr %0, align 8, !tbaa !27
  call void @_ZNK9dtNavMesh25getTileAndPolyByRefUnsafeEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.gh, i32 noundef %i.gf, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #15
  %i.gi = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 31
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !49
  %.mask = and i8 %i.gk, -64
  %i.gl = icmp eq i8 %.mask, 64
  %.pre225.pre226 = load ptr, ptr %i.c, align 8, !tbaa !55 ; 2 uses
  br i1 %i.gl, label %bb.ah, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gm = getelementptr inbounds nuw i8, ptr %.pre225.pre226, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !52 ; 2 uses
  %i.go = load ptr, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !66  ; 2 uses
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.gs
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !53
  %i.gv = zext i16 %i.gu to i64
  %.idx = mul nuw nsw i64 %i.gv, 12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx
  %i.gx = zext i8 %i.gr to i16
  %.lhs.trunc = add nuw nsw i16 %i.gx, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 30
  %i.gz = load i8, ptr %i.gy, align 2, !tbaa !51
  %.rhs.trunc = zext i8 %i.gz to i16
  %i.ha = urem i16 %.lhs.trunc, %.rhs.trunc
  %i.hb = zext nneg i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !53
  %i.he = zext i16 %i.hd to i64
  %.idx163 = mul nuw nsw i64 %i.he, 12
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  %i.hg = call noundef float @_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf(ptr noundef nonnull %2, ptr noundef %i.gw, ptr noundef %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #15
  %i.hh = fcmp ogt float %i.hg, %.1146.lcssa
  br i1 %i.hh, label %_ZN11dtNodeQueue6modifyEP6dtNode.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hi = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 28
  %i.hk = load i16, ptr %i.hj, align 4, !tbaa !50 ; 2 uses
  %i.hl = load i16, ptr %i.bl, align 4, !tbaa !13
  %i.hm = and i16 %i.hl, %i.hk
  %.not.i179 = icmp ne i16 %i.hm, 0
  %i.hn = load i16, ptr %i.bm, align 2
  %i.ho = and i16 %i.hn, %i.hk
  %i.hp = icmp eq i16 %i.ho, 0
  %i.hq = select i1 %.not.i179, i1 %i.hp, i1 false
  br i1 %i.hq, label %bb.u, label %_ZN11dtNodeQueue6modifyEP6dtNode.exit

bb.u:                                             ; preds = %bb.t
  %i.hr = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.hs = call noundef ptr @_ZN10dtNodePool7getNodeEjh(ptr noundef nonnull align 8 dereferenceable(36) %i.hr, i32 noundef %i.gf, i8 noundef zeroext 0) #15 ; 13 uses
  %.not164 = icmp eq ptr %i.hs, null
  br i1 %.not164, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ht = or i32 %.1141205, 32
  br label %_ZN11dtNodeQueue6modifyEP6dtNode.exit

bb.w:                                             ; preds = %bb.u
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 20 ; 4 uses
  %i.hv = load i32, ptr %i.hu, align 4            ; 6 uses
  %i.hw = and i32 %i.hv, 134217728
  %.not165 = icmp eq i32 %i.hw, 0
  br i1 %.not165, label %bb.x, label %_ZN11dtNodeQueue6modifyEP6dtNode.exit

bb.x:                                             ; preds = %bb.w
  %i.hx = and i32 %i.hv, 335544320
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ia = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ib = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.ic = load ptr, ptr %i.j, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.id = call noundef i32 @_ZNK14dtNavMeshQuery15getPortalPointsEjPK6dtPolyPK10dtMeshTilejS2_S5_PfS6_(ptr nonnull readnone align 8 poison, i32 noundef %i.cf, ptr noundef readonly %i.hz, ptr noundef readonly %i.ia, i32 noundef %i.gf, ptr noundef readonly %i.ib, ptr noundef readonly %i.ic, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %_ZNK14dtNavMeshQuery15getEdgeMidPointEjPK6dtPolyPK10dtMeshTilejS2_S5_Pf.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.if = load <2 x float>, ptr %i.a, align 8, !tbaa !15
  %i.ig = load <2 x float>, ptr %i.b, align 8, !tbaa !15
  %i.ih = fadd <2 x float> %i.if, %i.ig
  %i.ii = fmul <2 x float> %i.ih, splat (float 5.000000e-01)
  store <2 x float> %i.ii, ptr %i.hs, align 4, !tbaa !15
  %i.ij = load float, ptr %i.bp, align 8, !tbaa !15
  %i.ik = load float, ptr %i.bq, align 8, !tbaa !15
  %i.il = fadd float %i.ij, %i.ik
  %i.im = fmul float %i.il, 5.000000e-01
  %i.in = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store float %i.im, ptr %i.in, align 4, !tbaa !15
  br label %_ZNK14dtNavMeshQuery15getEdgeMidPointEjPK6dtPolyPK10dtMeshTilejS2_S5_Pf.exit

_ZNK14dtNavMeshQuery15getEdgeMidPointEjPK6dtPolyPK10dtMeshTilejS2_S5_Pf.exit: ; preds = %bb.y, %bb.z
end_hunk_0
