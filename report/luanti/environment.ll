Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/environment?download=true
inline.NumInlined: 290
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11Environment15continueRaycastEP12RaycastStateP12PointedThing:bb.a

bb.l:                                             ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EED2Ev.exit, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  %.sroa.01.0.copyload.i = load i64, ptr %i.ak, align 4, !tbaa !37 ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !37 ; 2 uses
  %.sroa.0405.6.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 48
  %.sroa.0405.6.extract.trunc = trunc nuw i64 %.sroa.0405.6.extract.shift to i16
  %i.al = sub i16 0, %.sroa.0405.6.extract.trunc
  %.sroa.7406.8.extract.trunc = trunc i32 %.sroa.22.0.copyload.i to i16
  %i.am = sub i16 0, %.sroa.7406.8.extract.trunc
  %.sroa.7406.10.extract.shift = lshr i32 %.sroa.22.0.copyload.i, 16
  %.sroa.7406.10.extract.trunc = trunc nuw i32 %.sroa.7406.10.extract.shift to i16
  %i.an = sub i16 0, %.sroa.7406.10.extract.trunc
  %.sroa.3.0.insert.ext.i = zext i16 %i.an to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.am to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.al to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8, !tbaa !37
  %.sroa.0405.0.extract.trunc = trunc i64 %.sroa.01.0.copyload.i to i16
  %i.ap = sub i16 0, %.sroa.0405.0.extract.trunc
  %.sroa.0405.2.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 16
  %.sroa.0405.2.extract.trunc = trunc i64 %.sroa.0405.2.extract.shift to i16
  %i.aq = sub i16 0, %.sroa.0405.2.extract.trunc
  %.sroa.0405.4.extract.shift = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.0405.4.extract.trunc = trunc i64 %.sroa.0405.4.extract.shift to i16
  %i.ar = sub i16 0, %.sroa.0405.4.extract.trunc
  %.sroa.3.0.insert.ext.i225 = zext i16 %i.ar to i48
  %.sroa.3.0.insert.shift.i226 = shl nuw i48 %.sroa.3.0.insert.ext.i225, 32
  %.sroa.2.0.insert.ext.i227 = zext i16 %i.aq to i48
  %.sroa.2.0.insert.shift.i228 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i227, 16
  %.sroa.2.0.insert.insert.i229 = or disjoint i48 %.sroa.3.0.insert.shift.i226, %.sroa.2.0.insert.shift.i228
  %.sroa.0.0.insert.ext.i230 = zext i16 %i.ap to i48
  %.sroa.0.0.insert.insert.i231 = or disjoint i48 %.sroa.2.0.insert.insert.i229, %.sroa.0.0.insert.ext.i230
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 382
  store i48 %.sroa.0.0.insert.insert.i231, ptr %i.as, align 2, !tbaa !37
  store i8 0, ptr %i.h, align 4, !tbaa !106
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.av = load i16, ptr %i.au, align 4, !tbaa !108
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !45
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0108.0.copyload = load <2 x float>, ptr %i.bb, align 4, !tbaa !35 ; 2 uses
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.2109.0.copyload = load float, ptr %.sroa.2109.0..sroa_idx, align 4, !tbaa !35
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.0108.0.copyload, i64 0 ; 2 uses
  %i.bc = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.bd = select nsz i1 %i.bc, float 5.000000e+00, float -5.000000e+00
  %i.be = fadd nsz float %.sroa.09.0.vec.extract.i, %i.bd
  %i.bf = fdiv nsz float %i.be, 1.000000e+01
  %i.bg = fptosi float %i.bf to i16
  %i.bh = insertelement <2 x float> %.sroa.0108.0.copyload, float %.sroa.2109.0.copyload, i64 0 ; 2 uses
  %i.bi = fcmp nsz ogt <2 x float> %i.bh, zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.bk = fadd nsz <2 x float> %i.bh, %i.bj
  %i.bl = fdiv nsz <2 x float> %i.bk, splat (float 1.000000e+01)
  %i.bm = fptosi <2 x float> %i.bl to <2 x i16>
  %i.bn = zext <2 x i16> %i.bm to <2 x i48>
  %i.bo = shl nuw <2 x i48> %i.bn, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i236 = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.bo)
  %.sroa.0.0.insert.ext.i237 = zext i16 %i.bg to i48
  %.sroa.0.0.insert.insert.i238 = or disjoint i48 %.sroa.2.0.insert.insert.i236, %.sroa.0.0.insert.ext.i237
  %i.bp = call noundef signext i16 @_ZN7voxalgo17VoxelLineIterator8getIndexEN4core8vector3dIsEE(ptr noundef nonnull align 4 dereferenceable(70) %i.at, i48 %.sroa.0.0.insert.insert.i238)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0175 = phi i16 [ %i.av, %bb.m ], [ %i.bp, %bb.n ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(144) ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.sroa.9390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 378
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 380
  %.sroa.19395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 382
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 386
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 78 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ce = getelementptr i8, ptr %i.g, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge500, %bb.o
  %.1176 = phi i16 [ %.0175, %bb.o ], [ %.2177.lcssa, %._crit_edge500 ] ; 3 uses
  %i.co = load i16, ptr %i.bu, align 4, !tbaa !109
  %.not = icmp sgt i16 %i.co, %.1176
  br i1 %.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0387.0.copyload = load i16, ptr %i.bv, align 8, !tbaa !37
  %.sroa.9390.0.copyload = load i16, ptr %.sroa.9390.0..sroa_idx, align 2, !tbaa !37
  %.sroa.14.0.copyload = load i16, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !37
  %.sroa.19395.0.copyload = load i16, ptr %.sroa.19395.0..sroa_idx, align 2, !tbaa !37
  %.sroa.25.0.copyload = load i16, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !37
  %.sroa.31.0.copyload = load i16, ptr %.sroa.31.0..sroa_idx, align 2, !tbaa !37
  %i.cp = load i16, ptr %i.bw, align 2, !tbaa !110 ; 3 uses
  %i.cq = add i16 %i.cp, %.sroa.0387.0.copyload   ; 6 uses
  %i.cr = load i16, ptr %i.bx, align 8, !tbaa !111 ; 3 uses
  %i.cs = add i16 %i.cr, %.sroa.9390.0.copyload   ; 6 uses
  %i.ct = load i16, ptr %i.by, align 2, !tbaa !112 ; 4 uses
  %i.cu = add i16 %i.ct, %.sroa.14.0.copyload     ; 6 uses
  %i.cv = add i16 %i.cp, %.sroa.19395.0.copyload  ; 6 uses
  %i.cw = add i16 %i.cr, %.sroa.25.0.copyload     ; 6 uses
  %i.cx = add i16 %i.ct, %.sroa.31.0.copyload     ; 7 uses
  %i.cy = load i16, ptr %i.bz, align 8, !tbaa !110
  %i.cz = sub i16 %i.cp, %i.cy                    ; 2 uses
  %i.da = load i16, ptr %i.ca, align 2, !tbaa !111
  %i.db = sub i16 %i.cr, %i.da                    ; 2 uses
  %i.dc = load i16, ptr %i.cb, align 4, !tbaa !112 ; 2 uses
  %i.dd = sub i16 %i.ct, %i.dc
  %i.de = icmp sgt i16 %i.cz, 0
  br i1 %i.de, label %bb.x, label %bb.s

bb.r:                                             ; preds = %._crit_edge500
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.s:                                             ; preds = %bb.q
  %i.dg = icmp slt i16 %i.cz, 0
  br i1 %i.dg, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp sgt i16 %i.db, 0
  br i1 %i.dh, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = icmp slt i16 %i.db, 0
  br i1 %i.di, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = icmp sgt i16 %i.dd, 0
  br i1 %i.dj, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not417 = icmp eq i16 %i.ct, %i.dc
  %spec.select415 = select i1 %.not417, i16 %i.cx, i16 %i.cu
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  %.sroa.31.0 = phi i16 [ %spec.select415, %bb.w ], [ %i.cx, %bb.q ], [ %i.cx, %bb.s ], [ %i.cx, %bb.t ], [ %i.cx, %bb.u ], [ %i.cx, %bb.v ] ; 3 uses
  %.sroa.25.0 = phi i16 [ %i.cw, %bb.w ], [ %i.cw, %bb.q ], [ %i.cw, %bb.s ], [ %i.cw, %bb.t ], [ %i.cs, %bb.u ], [ %i.cw, %bb.v ] ; 3 uses
  %.sroa.19395.0 = phi i16 [ %i.cv, %bb.w ], [ %i.cv, %bb.q ], [ %i.cq, %bb.s ], [ %i.cv, %bb.t ], [ %i.cv, %bb.u ], [ %i.cv, %bb.v ] ; 3 uses
  %.sroa.14.0 = phi i16 [ %i.cu, %bb.w ], [ %i.cu, %bb.q ], [ %i.cu, %bb.s ], [ %i.cu, %bb.t ], [ %i.cu, %bb.u ], [ %i.cx, %bb.v ] ; 2 uses
  %.sroa.9390.0 = phi i16 [ %i.cs, %bb.w ], [ %i.cs, %bb.q ], [ %i.cs, %bb.s ], [ %i.cw, %bb.t ], [ %i.cs, %bb.u ], [ %i.cs, %bb.v ] ; 2 uses
  %.sroa.0387.0 = phi i16 [ %i.cq, %bb.w ], [ %i.cv, %bb.q ], [ %i.cq, %bb.s ], [ %i.cq, %bb.t ], [ %i.cq, %bb.u ], [ %i.cq, %bb.v ] ; 2 uses
  %i.dk = icmp eq i16 %.sroa.19395.0, 32767
  %i.dl = icmp eq i16 %.sroa.25.0, 32767
  %or.cond = select i1 %i.dk, i1 true, i1 %i.dl
  %i.dm = icmp eq i16 %.sroa.31.0, 32767
  %or.cond9 = select i1 %or.cond, i1 true, i1 %i.dm
  br i1 %or.cond9, label %.thread, label %.preheader424

.preheader424:                                    ; preds = %bb.x
  %.not203496 = icmp sgt i16 %.sroa.14.0, %.sroa.31.0
  %.not204491 = icmp sgt i16 %.sroa.9390.0, %.sroa.25.0
  %or.cond597 = select i1 %.not203496, i1 true, i1 %.not204491
  %.not205483 = icmp sgt i16 %.sroa.0387.0, %.sroa.19395.0
  %or.cond598 = select i1 %or.cond597, i1 true, i1 %.not205483
  br i1 %or.cond598, label %._crit_edge500, label %.preheader423

.preheader423:                                    ; preds = %.preheader424, %._crit_edge494.split
  %.2177499 = phi i16 [ %.8183, %._crit_edge494.split ], [ %.1176, %.preheader424 ]
  %.0187497 = phi i16 [ %i.dt, %._crit_edge494.split ], [ %.sroa.14.0, %.preheader424 ] ; 6 uses
  %.sroa.9373.0.insert.ext378 = zext i16 %.0187497 to i48
  %.sroa.9373.0.insert.shift379 = shl nuw i48 %.sroa.9373.0.insert.ext378, 32
  %i.dn = sitofp nsz i16 %.0187497 to float
  %i.do = fmul nnan nsz float %i.dn, 1.000000e+01 ; 3 uses
  br label %.preheader

._crit_edge500:                                   ; preds = %._crit_edge494.split, %.preheader424
  %.2177.lcssa = phi i16 [ %.1176, %.preheader424 ], [ %.8183, %._crit_edge494.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bz, ptr noundef nonnull align 2 dereferenceable(6) %i.bw, i64 6, i1 false), !tbaa.struct !38
  invoke void @_ZN7voxalgo17VoxelLineIterator4nextEv(ptr noundef nonnull align 4 dereferenceable(70) %i.at)
          to label %bb.p unwind label %bb.r

.preheader:                                       ; preds = %.preheader423, %._crit_edge489
  %.3178493 = phi i16 [ %.2177499, %.preheader423 ], [ %.8183, %._crit_edge489 ]
  %.0188492 = phi i16 [ %.sroa.9390.0, %.preheader423 ], [ %i.du, %._crit_edge489 ] ; 6 uses
  %.sroa.8364.0.insert.ext369 = zext i16 %.0188492 to i48
  %.sroa.8364.0.insert.shift370 = shl nuw nsw i48 %.sroa.8364.0.insert.ext369, 16
  %invariant.op = or disjoint i48 %.sroa.9373.0.insert.shift379, %.sroa.8364.0.insert.shift370
  %i.dp = sitofp nsz i16 %.0188492 to float
  %i.dq = fmul nnan nsz float %i.dp, 1.000000e+01 ; 2 uses
  %i.dr = insertelement <2 x float> poison, float %i.dq, i64 1
  %i.ds = insertelement <2 x float> poison, float %i.dq, i64 1
  br label %bb.y

._crit_edge494.split:                             ; preds = %._crit_edge489
  %i.dt = add nsw i16 %.0187497, 1
  %.not203.not = icmp slt i16 %.0187497, %.sroa.31.0
  br i1 %.not203.not, label %.preheader423, label %._crit_edge500, !llvm.loop !66

._crit_edge489:                                   ; preds = %.critedge
  %i.du = add nsw i16 %.0188492, 1
  %.not204.not = icmp slt i16 %.0188492, %.sroa.25.0
  br i1 %.not204.not, label %.preheader, label %._crit_edge494.split, !llvm.loop !67

bb.y:                                             ; preds = %.preheader, %.critedge
  %.4179487 = phi i16 [ %.3178493, %.preheader ], [ %.8183, %.critedge ] ; 5 uses
  %.0189484 = phi i16 [ %.sroa.0387.0, %.preheader ], [ %i.jj, %.critedge ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.sroa.0357.0.insert.ext361 = zext i16 %.0189484 to i48
  %.sroa.0357.0.insert.insert363.reass = or disjoint i48 %invariant.op, %.sroa.0357.0.insert.ext361 ; 2 uses
  %i.dv = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.bt, i48 %.sroa.0357.0.insert.insert363.reass, ptr noundef nonnull %i.a)
          to label %bb.z unwind label %bb.aa      ; 2 uses

bb.z:                                             ; preds = %bb.y
  store i32 %i.dv, ptr %7, align 4
  %i.dw = load i8, ptr %i.a, align 1, !tbaa !113, !range !33, !noundef !34
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ab, label %.critedge

bb.aa:                                            ; preds = %bb.y
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  %i.dz = load i8, ptr %i.cc, align 1, !tbaa !114, !range !33, !noundef !34
  %i.ea = trunc nuw i8 %i.dz to i1
  %.val221 = load ptr, ptr %i.g, align 8, !tbaa !117 ; 3 uses
  %.val222 = load ptr, ptr %i.ce, align 8, !tbaa !118
  %i.eb = and i32 %i.dv, 65535
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = ptrtoint ptr %.val222 to i64
  %i.ee = ptrtoint ptr %.val221 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 2072
  %i.eh = icmp ugt i64 %i.eg, %i.ec
  br i1 %i.eh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw [2072 x i8], ptr %.val221, i64 %i.ec ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !30
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ad, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %.val221, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

_ZNK14NodeDefManager3getERK7MapNode.exit.i:       ; preds = %bb.ad, %bb.ac
  %i.en = phi ptr [ %i.em, %bb.ad ], [ %i.ei, %bb.ac ] ; 4 uses
  %i.eo = load i8, ptr %i.cf, align 8, !tbaa !119, !range !33, !noundef !34
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZNRSt8optionalI16PointabilityTypeE5valueEv.exit.i, label %bb.ae

_ZNRSt8optionalI16PointabilityTypeE5valueEv.exit.i: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.es = invoke i16 @_ZNK14Pointabilities9matchNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(56) %i.er)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %_ZNRSt8optionalI16PointabilityTypeE5valueEv.exit.i
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.es to i8
  %i.et = and i16 %i.es, 256
  %.not.i = icmp eq i16 %i.et, 0
  br i1 %.not.i, label %bb.ae, label %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit

bb.ae:                                            ; preds = %.noexc, %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 1449
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !153
  %i.ew = icmp ne i8 %i.ev, 0
  %or.cond.i = and i1 %i.ew, %i.ea
  br i1 %or.cond.i, label %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 1404
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !154
  br label %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit

_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit: ; preds = %bb.af, %.noexc
  %.1.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %.noexc ], [ %i.ey, %bb.af ] ; 2 uses
  %i.ez = icmp eq i8 %.1.i, 0
  br i1 %i.ez, label %.critedge, label %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit.thread

bb.ag:                                            ; preds = %_ZNRSt8optionalI16PointabilityTypeE5valueEv.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit.thread: ; preds = %bb.ae, %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit
  %.1.i412 = phi i8 [ %.1.i, %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit ], [ 1, %bb.ae ] ; 2 uses
  %i.fb = load ptr, ptr %6, align 8, !tbaa !155   ; 2 uses
  %i.fc = load ptr, ptr %i.cg, align 8, !tbaa !156
  %.not.i.i = icmp eq ptr %i.fc, %i.fb
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit.thread
  store ptr %i.fb, ptr %i.cg, align 8, !tbaa !156
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit: ; preds = %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit.thread, %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fd = invoke noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4) %7, i48 %.sroa.0357.0.insert.insert363.reass, ptr noundef nonnull %i.bt)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit
  invoke void @_ZNK7MapNode17getSelectionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull %i.g, ptr noundef nonnull %6, i8 noundef zeroext %i.fd)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fe = sitofp nsz i16 %.0189484 to float
  %i.ff = fmul nnan nsz float %i.fe, 1.000000e+01 ; 2 uses
  %i.fg = load <2 x float>, ptr %1, align 8, !tbaa !35
  %i.fh = insertelement <2 x float> %i.dr, float %i.ff, i64 0 ; 2 uses
  %i.fi = fsub nsz <2 x float> %i.fg, %i.fh
  %i.fj = load float, ptr %i.ci, align 8, !tbaa !157
  %i.fk = fsub nsz float %i.fj, %i.do
  %i.fl = load ptr, ptr %6, align 8, !tbaa !158   ; 2 uses
  %i.fm = load ptr, ptr %i.cg, align 8, !tbaa !158 ; 3 uses
  %.not418460 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not418460, label %.critedge, label %.lr.ph473.outer.preheader

.lr.ph473.outer.preheader:                        ; preds = %bb.ai
  %i.fn = insertelement <2 x float> %i.ds, float %i.ff, i64 0
  br label %.lr.ph473.outer

.lr.ph473.outer:                                  ; preds = %.lr.ph473.outer.preheader, %.thread534
  %.0190471.ph = phi i1 [ true, %.thread534 ], [ false, %.lr.ph473.outer.preheader ]
  %.0193470.ph = phi float [ %i.gn, %.thread534 ], [ 1.000000e+07, %.lr.ph473.outer.preheader ] ; 2 uses
  %.0196469.ph = phi i16 [ %.1197544, %.thread534 ], [ 0, %.lr.ph473.outer.preheader ]
  %.sroa.0294.0468.ph = phi ptr [ %i.hb, %.thread534 ], [ %i.fl, %.lr.ph473.outer.preheader ]
  %.sroa.0308.0467.ph = phi <2 x float> [ %i.gz, %.thread534 ], [ zeroinitializer, %.lr.ph473.outer.preheader ]
  %.sroa.12.0466.ph = phi float [ %i.ha, %.thread534 ], [ 0.000000e+00, %.lr.ph473.outer.preheader ]
  %.sroa.16.0465.ph = phi <2 x float> [ %.sroa.16.24.copyload, %.thread534 ], [ zeroinitializer, %.lr.ph473.outer.preheader ]
  %.sroa.19.0464.ph = phi <2 x float> [ %.sroa.19.36.copyload, %.thread534 ], [ zeroinitializer, %.lr.ph473.outer.preheader ]
  %.sroa.21.0463.ph = phi float [ %.sroa.21.36.copyload, %.thread534 ], [ 0.000000e+00, %.lr.ph473.outer.preheader ]
  %.sroa.18.0462.ph = phi float [ %i.gc, %.thread534 ], [ 0.000000e+00, %.lr.ph473.outer.preheader ]
  %.sroa.15334.0461.ph = phi i16 [ %.0196469, %.thread534 ], [ 0, %.lr.ph473.outer.preheader ]
  br label %.lr.ph473

._crit_edge474:                                   ; preds = %bb.an
  br i1 %.0190471.ph, label %._crit_edge474.thread, label %.critedge

bb.aj:                                            ; preds = %bb.ah, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph473:                                        ; preds = %.lr.ph473.outer, %bb.an
  %.0196469 = phi i16 [ %.1197, %bb.an ], [ %.0196469.ph, %.lr.ph473.outer ] ; 4 uses
  %.sroa.0294.0468 = phi ptr [ %i.gp, %bb.an ], [ %.sroa.0294.0468.ph, %.lr.ph473.outer ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !35
  store float 0.000000e+00, ptr %i.cj, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !35
  store float 0.000000e+00, ptr %i.ck, align 8, !tbaa !157
  %i.fp = load float, ptr %i.cl, align 4, !tbaa !159
  %i.fq = load float, ptr %1, align 8, !tbaa !159
  %i.fr = fsub nsz float %i.fp, %i.fq
  %i.fs = load <2 x float>, ptr %i.cm, align 8, !tbaa !35
  %i.ft = load <2 x float>, ptr %i.ch, align 4, !tbaa !35
  %i.fu = fsub nsz <2 x float> %i.fs, %i.ft       ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fv = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.fu, <2 x i32> <i32 0, i32 2>
  %i.fw = extractelement <2 x float> %i.fu, i64 1
  %i.fx = invoke noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0294.0468, <2 x float> %i.fi, float %i.fk, <2 x float> %i.fv, float %i.fw, ptr noundef nonnull %8, ptr noundef nonnull %9)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.lr.ph473
  br i1 %i.fx, label %bb.am, label %bb.an

bb.al:                                            ; preds = %.lr.ph473
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  %i.fz = load <2 x float>, ptr %8, align 8, !tbaa !35
  %i.ga = fadd nsz <2 x float> %i.fn, %i.fz       ; 3 uses
  store <2 x float> %i.ga, ptr %8, align 8, !tbaa !35
  %i.gb = load float, ptr %i.cj, align 8, !tbaa !157
  %i.gc = fadd nsz float %i.do, %i.gb             ; 4 uses
  store float %i.gc, ptr %i.cj, align 8, !tbaa !157
  %i.gd = load float, ptr %1, align 8, !tbaa !159
  %i.ge = extractelement <2 x float> %i.ga, i64 0
  %i.gf = fsub nsz float %i.ge, %i.gd             ; 2 uses
  %i.gg = load float, ptr %i.ch, align 4, !tbaa !160
  %i.gh = extractelement <2 x float> %i.ga, i64 1
  %i.gi = fsub nsz float %i.gh, %i.gg             ; 2 uses
  %i.gj = load float, ptr %i.ci, align 8, !tbaa !157
  %i.gk = fsub nsz float %i.gc, %i.gj             ; 2 uses
  %i.gl = fmul nsz float %i.gi, %i.gi
  %i.gm = call nsz float @llvm.fmuladd.f32(float %i.gf, float %i.gf, float %i.gl)
  %i.gn = call nsz noundef float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gm) ; 3 uses
  %i.go = fcmp nsz ogt float %.0193470.ph, %i.gn
  br i1 %i.go, label %.thread534, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.1197 = add i16 %.0196469, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0294.0468, i64 24 ; 2 uses
  %.not418 = icmp eq ptr %i.gp, %i.fm
  br i1 %.not418, label %._crit_edge474, label %.lr.ph473

.thread534:                                       ; preds = %bb.am
  %.sroa.16.24.copyload = load <2 x float>, ptr %8, align 8, !tbaa !35 ; 2 uses
  %.sroa.19.36.copyload = load <2 x float>, ptr %9, align 8, !tbaa !35 ; 2 uses
  %.sroa.21.36.copyload = load float, ptr %i.ck, align 8, !tbaa !35 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0294.0468, i64 12
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0294.0468, i64 8
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !157
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0294.0468, i64 20
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !157
  %i.gv = fadd nsz float %i.gs, %i.gu
  %i.gw = load <2 x float>, ptr %.sroa.0294.0468, align 4, !tbaa !35
  %i.gx = load <2 x float>, ptr %i.gq, align 4, !tbaa !35
  %i.gy = fadd nsz <2 x float> %i.gw, %i.gx
  %i.gz = fmul nsz <2 x float> %i.gy, splat (float 5.000000e-01) ; 2 uses
  %i.ha = fmul nsz float %i.gv, 5.000000e-01      ; 2 uses
  %.1197544 = add i16 %.0196469, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0294.0468, i64 24 ; 2 uses
  %.not418545 = icmp eq ptr %i.hb, %i.fm
  br i1 %.not418545, label %._crit_edge474.thread, label %.lr.ph473.outer

._crit_edge474.thread:                            ; preds = %.thread534, %._crit_edge474
  %.sroa.15334.1546571 = phi i16 [ %.sroa.15334.0461.ph, %._crit_edge474 ], [ %.0196469, %.thread534 ] ; 2 uses
  %.sroa.18.1547570 = phi float [ %.sroa.18.0462.ph, %._crit_edge474 ], [ %i.gc, %.thread534 ] ; 4 uses
  %.sroa.21.1548569 = phi float [ %.sroa.21.0463.ph, %._crit_edge474 ], [ %.sroa.21.36.copyload, %.thread534 ] ; 4 uses
  %.sroa.19.1549568 = phi <2 x float> [ %.sroa.19.0464.ph, %._crit_edge474 ], [ %.sroa.19.36.copyload, %.thread534 ] ; 4 uses
  %.sroa.16.1550567 = phi <2 x float> [ %.sroa.16.0465.ph, %._crit_edge474 ], [ %.sroa.16.24.copyload, %.thread534 ] ; 4 uses
  %.sroa.12.1551566 = phi float [ %.sroa.12.0466.ph, %._crit_edge474 ], [ %i.ha, %.thread534 ]
  %.sroa.0308.1552565 = phi <2 x float> [ %.sroa.0308.0467.ph, %._crit_edge474 ], [ %i.gz, %.thread534 ]
  %.2195553564 = phi float [ %.0193470.ph, %._crit_edge474 ], [ %i.gn, %.thread534 ] ; 2 uses
  %i.hc = fadd nsz float %i.do, %.sroa.12.1551566
  %i.hd = fcmp nsz olt float %.sroa.18.1547570, %i.hc
  %.sroa.15.0.v = select i1 %i.hd, float 2.000000e-02, float -2.000000e-02
  %i.he = fadd nsz float %.sroa.18.1547570, %.sroa.15.0.v ; 2 uses
  %i.hf = fadd nsz <2 x float> %i.fh, %.sroa.0308.1552565
  %i.hg = fcmp nsz olt <2 x float> %.sroa.16.1550567, %i.hf
  %i.hh = select <2 x i1> %i.hg, <2 x float> splat (float 2.000000e-02), <2 x float> splat (float -2.000000e-02)
  %i.hi = fadd nsz <2 x float> %.sroa.16.1550567, %i.hh ; 3 uses
  %i.hj = fcmp nsz ogt <2 x float> %i.hi, zeroinitializer ; 2 uses
  %i.hk = extractelement <2 x i1> %i.hj, i64 1
  %i.hl = select nsz i1 %i.hk, float 5.000000e+00, float -5.000000e+00
  %i.hm = extractelement <2 x float> %i.hi, i64 1
  %i.hn = fadd nsz float %i.hm, %i.hl
  %i.ho = fdiv nsz float %i.hn, 1.000000e+01
  %10 = fptosi float %i.ho to i16                 ; 2 uses
  %11 = fcmp nsz ogt float %i.he, 0.000000e+00
  %i.hp = insertelement <2 x i1> %i.hj, i1 %11, i64 1
  %i.hq = select <2 x i1> %i.hp, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %12 = insertelement <2 x float> %i.hi, float %i.he, i64 1
  %i.hr = fadd nsz <2 x float> %12, %i.hq
  %i.hs = fdiv nsz <2 x float> %i.hr, splat (float 1.000000e+01) ; 2 uses
  %13 = extractelement <2 x float> %i.hs, i64 0
  %14 = fptosi float %13 to i16                   ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 1
  %i.hu = fptosi float %i.ht to i16               ; 2 uses
  %.sroa.0.0.insert.ext.i263.a = zext i16 %i.hu to i48
  %.sroa.3.0.insert.shift.i259 = shl nuw i48 %.sroa.0.0.insert.ext.i263.a, 32
  %.sroa.2.0.insert.ext.i260 = zext i16 %10 to i48
  %.sroa.2.0.insert.shift.i261 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i260, 16
  %.sroa.0.0.insert.ext.i263 = zext i16 %14 to i48
  %15 = or disjoint i48 %.sroa.3.0.insert.shift.i259, %.sroa.0.0.insert.ext.i263
  %.sroa.0.0.insert.insert.i264 = or disjoint i48 %15, %.sroa.2.0.insert.shift.i261 ; 3 uses
  %.sroa.09.0.vec.extract.i265 = extractelement <2 x float> %.sroa.19.1549568, i64 0 ; 2 uses
  %16 = fcmp nsz ogt float %.sroa.09.0.vec.extract.i265, 0.000000e+00
  %17 = select nsz i1 %16, float 5.000000e-01, float -5.000000e-01
  %i.hv = extractelement <2 x float> %.sroa.19.1549568, i64 1 ; 2 uses
  %18 = fcmp nsz ogt float %i.hv, 0.000000e+00
  %19 = select nsz i1 %18, float 5.000000e-01, float -5.000000e-01
  %20 = fcmp nsz ogt float %.sroa.21.1548569, 0.000000e+00
  %21 = select nsz i1 %20, float 5.000000e-01, float -5.000000e-01
  %22 = fadd nsz float %i.hv, %19
  %23 = fptosi float %22 to i16
  %24 = fadd nsz float %.sroa.09.0.vec.extract.i265, %17
  %25 = fptosi float %24 to i16
  %26 = fadd nsz float %.sroa.21.1548569, %21
  %27 = fptosi float %26 to i16
  %28 = add i16 %14, %25
  %29 = add i16 %10, %23
  %30 = add i16 %i.hu, %27
  %.sroa.3.0.insert.ext.i274 = zext i16 %30 to i48
  %.sroa.3.0.insert.shift.i275 = shl nuw i48 %.sroa.3.0.insert.ext.i274, 32
  %.sroa.2.0.insert.ext.i276 = zext i16 %29 to i48
  %.sroa.2.0.insert.shift.i277 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i276, 16
  %.sroa.2.0.insert.insert.i278 = or disjoint i48 %.sroa.2.0.insert.shift.i277, %.sroa.3.0.insert.shift.i275
  %.sroa.0.0.insert.ext.i279 = zext i16 %28 to i48
  %.sroa.0.0.insert.insert.i280 = or disjoint i48 %.sroa.2.0.insert.insert.i278, %.sroa.0.0.insert.ext.i279 ; 2 uses
  %i.hw = load ptr, ptr %i.ay, align 8, !tbaa !49 ; 19 uses
  %i.hx = load ptr, ptr %i.cn, align 8, !tbaa !47
  %.not.i.i.i281 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not.i.i.i281, label %bb.ap, label %bb.ao

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit420 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aq
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ao:                                            ; preds = %._crit_edge474.thread
  store i8 1, ptr %i.hw, align 4, !tbaa !51
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store i8 %.1.i412, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !52
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  store i16 %.0189484, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !37
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i16 %.0188492, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, align 4, !tbaa !37
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 6
  store i16 %.0187497, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx, align 2, !tbaa !37
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i48 %.sroa.0.0.insert.insert.i280, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !37
  %.sroa.10327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 14
  store i48 %.sroa.0.0.insert.insert.i264, ptr %.sroa.10327.0..sroa_idx, align 2, !tbaa !37
  %.sroa.15.0..sroa_idx330 = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  store i16 0, ptr %.sroa.15.0..sroa_idx330, align 4, !tbaa !37
  %.sroa.15334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 22
  store i16 %.sroa.15334.1546571, ptr %.sroa.15334.0..sroa_idx, align 2, !tbaa !37
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store <2 x float> %.sroa.16.1550567, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !35
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  store float %.sroa.18.1547570, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !35
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 36
  store <2 x float> %.sroa.19.1549568, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !35
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 44
  store float %.sroa.21.1548569, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !35
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.22.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.22346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 60
  store float %.2195553564, ptr %.sroa.22346.0..sroa_idx, align 4, !tbaa !35
  %i.hy = load ptr, ptr %i.ay, align 8, !tbaa !49
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64 ; 2 uses
  store ptr %i.hz, ptr %i.ay, align 8, !tbaa !49
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !45
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit.i

bb.ap:                                            ; preds = %._crit_edge474.thread
  %i.ia = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 5 uses
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = sub i64 %i.ib, %i.ic                    ; 3 uses
  %i.ie = icmp eq i64 %i.id, 9223372036854775744
  br i1 %i.ie, label %bb.aq, label %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
          to label %.noexc283 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc283:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ap
  %i.if = ashr exact i64 %i.id, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.if, i64 1)
  %i.ig = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.if ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %i.if
  %i.ii = call i64 @llvm.umin.i64(i64 %i.ig, i64 144115188075855871)
  %i.ij = select i1 %i.ih, i64 144115188075855871, i64 %i.ii ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ij, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ik = shl nuw nsw i64 %i.ij, 6
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ik) #17
          to label %.noexc284 unwind label %.loopexit.split-lp.loopexit ; 6 uses

.noexc284:                                        ; preds = %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.id ; 15 uses
  store i8 1, ptr %i.im, align 4, !tbaa !51
  %.sroa.7.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  store i8 %.1.i412, ptr %.sroa.7.0..sroa_idx322, align 1, !tbaa !52
  %.sroa.8.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i16 %.0189484, ptr %.sroa.8.0..sroa_idx324, align 2, !tbaa !37
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx324.sroa_idx = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i16 %.0188492, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx324.sroa_idx, align 4, !tbaa !37
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx324.sroa_idx = getelementptr inbounds nuw i8, ptr %i.im, i64 6
  store i16 %.0187497, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx324.sroa_idx, align 2, !tbaa !37
  %.sroa.9.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i48 %.sroa.0.0.insert.insert.i280, ptr %.sroa.9.0..sroa_idx325, align 4, !tbaa !37
  %.sroa.10327.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.im, i64 14
  store i48 %.sroa.0.0.insert.insert.i264, ptr %.sroa.10327.0..sroa_idx328, align 2, !tbaa !37
  %.sroa.15.0..sroa_idx332 = getelementptr inbounds nuw i8, ptr %i.im, i64 20
  store i16 0, ptr %.sroa.15.0..sroa_idx332, align 4, !tbaa !37
  %.sroa.15334.0..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.im, i64 22
  store i16 %.sroa.15334.1546571, ptr %.sroa.15334.0..sroa_idx335, align 2, !tbaa !37
  %.sroa.16.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store <2 x float> %.sroa.16.1550567, ptr %.sroa.16.0..sroa_idx337, align 4, !tbaa !35
  %.sroa.18.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  store float %.sroa.18.1547570, ptr %.sroa.18.0..sroa_idx339, align 4, !tbaa !35
  %.sroa.19.0..sroa_idx341 = getelementptr inbounds nuw i8, ptr %i.im, i64 36
  store <2 x float> %.sroa.19.1549568, ptr %.sroa.19.0..sroa_idx341, align 4, !tbaa !35
  %.sroa.21.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.im, i64 44
  store float %.sroa.21.1548569, ptr %.sroa.21.0..sroa_idx343, align 4, !tbaa !35
  %.sroa.22.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.22.0..sroa_idx345, i8 0, i64 12, i1 false)
  %.sroa.22346.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.im, i64 60
  store float %.2195553564, ptr %.sroa.22346.0..sroa_idx347, align 4, !tbaa !35
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ia, %i.hw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc284, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i.i ], [ %i.il, %.noexc284 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ia, %.noexc284 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !53, !alias.scope !161
  %i.in = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.in, %i.hw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc284
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.il, %.noexc284 ], [ %i.io, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i
  %i.iq = load ptr, ptr %i.cn, align 8, !tbaa !47
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = sub i64 %i.ir, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.is) #15
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i: ; preds = %bb.ar, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i
  store ptr %i.il, ptr %i.aw, align 8, !tbaa !46
  store ptr %i.ip, ptr %i.ay, align 8, !tbaa !49
  %i.it = getelementptr inbounds nuw [64 x i8], ptr %i.il, i64 %i.ij
  store ptr %i.it, ptr %i.cn, align 8, !tbaa !47
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit.i

_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit.i: ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, %bb.ao
  %i.iu = phi ptr [ %i.hz, %bb.ao ], [ %i.ip, %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.iv = phi ptr [ %.pre.i, %bb.ao ], [ %i.il, %_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 -64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.iw, i64 64, i1 false)
  %i.ix = ptrtoint ptr %i.iu to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ashr exact i64 %i.iz, 6                 ; 2 uses
  %i.jb = add nsw i64 %i.ja, -1                   ; 2 uses
  %i.jc = icmp sgt i64 %i.ja, 1
  br i1 %i.jc, label %.lr.ph.i.i.i, label %.loopexit419

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit.i, %bb.as
  %.018.i.i.i = phi i64 [ %.0919.i45.i.i, %bb.as ], [ %i.jb, %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit.i ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i45.i.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.jd = getelementptr inbounds nuw [64 x i8], ptr %i.iv, i64 %.0919.i45.i.i ; 2 uses
  %i.je = invoke noundef zeroext i1 @_ZNK11RaycastSortclERK12PointedThingS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.jd, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.noexc285 unwind label %.loopexit

.noexc285:                                        ; preds = %.lr.ph.i.i.i
  br i1 %i.je, label %bb.as, label %.loopexit419

bb.as:                                            ; preds = %.noexc285
  %i.jf = getelementptr inbounds [64 x i8], ptr %i.iv, i64 %.018.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.jf, ptr noundef nonnull align 4 dereferenceable(64) %i.jd, i64 64, i1 false), !tbaa.struct !53
  %.not.i.i282 = icmp eq i64 %.0919.i45.i.i, 0
  br i1 %.not.i.i282, label %.loopexit419, label %.lr.ph.i.i.i, !llvm.loop !1

.loopexit419:                                     ; preds = %bb.as, %.noexc285, %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.jb, %_ZNSt6vectorI12PointedThingSaIS0_EE9push_backEOS0_.exit.i ], [ %.018.i.i.i, %.noexc285 ], [ 0, %bb.as ]
  %i.jg = getelementptr inbounds [64 x i8], ptr %i.iv, i64 %.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.jg, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.jh = invoke noundef signext i16 @_ZN7voxalgo17VoxelLineIterator8getIndexEN4core8vector3dIsEE(ptr noundef nonnull align 4 dereferenceable(70) %i.at, i48 %.sroa.0.0.insert.insert.i264)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.loopexit419
  %spec.select = call i16 @llvm.smin.i16(i16 %i.jh, i16 %.4179487)
  br label %.critedge

bb.au:                                            ; preds = %.loopexit419
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.critedge:                                        ; preds = %bb.at, %._crit_edge474, %bb.ai, %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit, %bb.z
  %.8183 = phi i16 [ %.4179487, %bb.z ], [ %.4179487, %_ZL15isPointableNodeRK7MapNodePK14NodeDefManagerbRKSt8optionalI14PointabilitiesE.exit ], [ %spec.select, %bb.at ], [ %.4179487, %._crit_edge474 ], [ %.4179487, %bb.ai ] ; 4 uses
end_hunk_0
