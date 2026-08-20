inline.NumInlined: 28156
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionEC2I10GridLayoutILi3EEEERK9CenteringILi3EERKT_RKS5_i:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !715
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !713
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.b, align 8, !tbaa !1796
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !835  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  store i32 %i.q, ptr %i.m, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 4 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1065
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %3, align 8, !tbaa !859   ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !859
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !837
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !837
  %.pre = load i32, ptr %i.m, align 8, !tbaa !4, !noalias !3749
  %.pre40 = load i32, ptr %i.t, align 4, !tbaa !4, !noalias !3749
  %.pre41 = load i32, ptr %i.u, align 8, !tbaa !4, !noalias !3749
  %.pre42 = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !3749
  %.pre43 = load i32, ptr %i.aa, align 8, !tbaa !4, !noalias !3749
  %.pre44 = load i32, ptr %i.af, align 4, !tbaa !4, !noalias !3749
  br label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit

_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.am = phi i32 [ %i.ae, %bb.a ], [ %.pre44, %bb.b ]
  %i.an = phi i32 [ %i.ac, %bb.a ], [ %.pre43, %bb.b ]
  %i.ao = phi i32 [ %i.y, %bb.a ], [ %.pre42, %bb.b ]
  %i.ap = phi i32 [ %i.w, %bb.a ], [ %.pre41, %bb.b ]
  %i.aq = phi i32 [ %i.s, %bb.a ], [ %.pre40, %bb.b ]
  %i.ar = phi i32 [ %i.q, %bb.a ], [ %.pre, %bb.b ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.at = load i32, ptr %i.ag, align 8, !tbaa !4, !noalias !3749 ; 2 uses
  %i.au = add nsw i32 %i.at, %i.ar
  %i.av = load i32, ptr %i.as, align 4, !tbaa !4, !noalias !3749
  %i.aw = add i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4, !noalias !3749 ; 2 uses
  %i.az = add nsw i32 %i.ay, %i.ap
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !4, !noalias !3749
  %i.bc = add i32 %i.bb, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4, !noalias !3749 ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.an
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4, !noalias !3749
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = xor i32 %i.aw, -1
  %i.bk = add i32 %i.aq, %i.bj
  %i.bl = xor i32 %i.bc, -1
  %i.bm = add i32 %i.ao, %i.bl
  %i.bn = xor i32 %i.bi, -1
  %i.bo = add i32 %i.am, %i.bn
  store i32 %i.au, ptr %i.m, align 8, !tbaa !4
  store i32 %i.bk, ptr %i.t, align 4, !tbaa !4
  store i32 %i.az, ptr %i.u, align 8, !tbaa !4
  store i32 %i.bm, ptr %i.z, align 4, !tbaa !4
  store i32 %i.bf, ptr %i.aa, align 8, !tbaa !4
  store i32 %i.bo, ptr %i.af, align 4, !tbaa !4
  %i.bp = load i32, ptr %0, align 8, !tbaa !1794
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !715
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !713
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 12
  %i.by = trunc i64 %i.bx to i32
  %i.bz = mul nsw i32 %i.bp, %i.by                ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  tail call void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed16ConstantFunctionELb0E18RefBlockControllerIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1182 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1185 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ca, 56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !3752
  %.not.i.i.i.not.i = icmp ugt ptr %i.cf, %i.ch
  br i1 %.not.i.i.i.not.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !1806
  %.not6.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not6.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.ce, %bb.c ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  %i.cl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !1728
  store i32 1, ptr %i.cl, align 4, !tbaa !837
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 56 ; 2 uses
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !1806
  %.not.i.i.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i, !llvm.loop !3753

_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, %bb.c
  %i.cp = load i32, ptr %0, align 8, !tbaa !1794  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.preheader.preheader, label %._crit_edge36

.preheader.preheader:                             ; preds = %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit
  %.pre45 = load ptr, ptr %i.d, align 8, !tbaa !715
  %.pre46 = load ptr, ptr %i.c, align 8, !tbaa !713
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.cr = phi i32 [ %i.da, %._crit_edge ], [ %i.cp, %.preheader.preheader ]
  %i.cs = phi ptr [ %i.db, %._crit_edge ], [ %.pre46, %.preheader.preheader ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %._crit_edge ], [ %.pre45, %.preheader.preheader ] ; 2 uses
  %.01435 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 12
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

._crit_edge36:                                    ; preds = %._crit_edge, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit
  %.pre48 = load i32, ptr %0, align 8, !tbaa !1794
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.da = phi i32 [ %.pre48, %._crit_edge.loopexit ], [ %i.cr, %.preheader ] ; 2 uses
  %i.db = phi ptr [ %i.gh, %._crit_edge.loopexit ], [ %i.cs, %.preheader ]
  %i.dc = phi ptr [ %i.gg, %._crit_edge.loopexit ], [ %i.ct, %.preheader ]
  %i.dd = add nuw nsw i32 %.01435, 1              ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.da
  br i1 %i.de, label %.preheader, label %._crit_edge36, !llvm.loop !3754

.lr.ph:                                           ; preds = %.preheader, %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit
  %.034 = phi i32 [ %i.gf, %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit ], [ 0, %.preheader ] ; 2 uses
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !835 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.di = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4 ; 2 uses
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !4
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.dl, align 4, !tbaa !837
  %i.dn = load i32, ptr %i.b, align 8, !tbaa !1796
  %i.do = mul nsw i32 %i.dn, %.01435
  %i.dp = add nsw i32 %i.do, %.034
  %i.dq = sext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !1182
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1185
  %i.du = load i64, ptr %i.l, align 8, !tbaa !1188
  %i.dv = getelementptr inbounds [56 x i8], ptr %i.dt, i64 %i.du
  %i.dw = getelementptr inbounds [56 x i8], ptr %i.dv, i64 %i.dq ; 6 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !1190
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store <4 x i32> %i.di, ptr %i.dx, align 8, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store <2 x i32> %i.dj, ptr %i.dy, align 8, !tbaa !4
  %5 = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %6 = shufflevector <4 x i32> %i.di, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %6, ptr %5, align 8
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i32 %i.dk, ptr %.sroa.19.32..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1728 ; 8 uses
  %.not.i.i.i15 = icmp eq ptr %i.ea, %i.dl
  br i1 %.not.i.i.i15, label %.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge, label %bb.d

.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge: ; preds = %.lr.ph
  %.pre47 = load i32, ptr %i.dl, align 4, !tbaa !837
  %i.eb = add nsw i32 %.pre47, -1
  br label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit

bb.d:                                             ; preds = %.lr.ph
  %.not3.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not3.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !837
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !837
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1731 ; 2 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !1734 ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %.not.i.i.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.f
  %.lcssa4.i.i.i.i = phi ptr [ %i.ei, %bb.f ], [ %i.ew, %bb.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i64 [ %i.ej, %bb.f ], [ %i.fa, %bb.i ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1735
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %.lcssa.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i, i64 noundef %i.en) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.i
  %i.eo = phi ptr [ %i.ew, %bb.i ], [ %i.ei, %bb.f ] ; 2 uses
  %i.ep = phi ptr [ %i.ex, %bb.i ], [ %i.eh, %bb.f ]
  %.05.i.i.i.i = phi i64 [ %i.ey, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.05.i.i.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1736 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !73
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.er) #47, !inline_history !3755
  %.pre.i.i.i.i = load ptr, ptr %i.eg, align 8, !tbaa !1731
  %.pre9.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !1734
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.ew = phi ptr [ %i.eo, %.lr.ph.i.i.i.i ], [ %.pre9.i.i.i.i, %bb.h ] ; 3 uses
  %i.ex = phi ptr [ %i.ep, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i, %bb.h ] ; 2 uses
  %i.ey = add nuw i64 %.05.i.i.i.i, 1             ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = icmp ult i64 %i.ey, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i:             ; preds = %bb.g, %._crit_edge.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef 32) #48
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %_ZN16RelationListDataD2Ev.exit.i.i.i
  store ptr %i.dl, ptr %i.dz, align 8, !tbaa !1728
  %i.fe = load i32, ptr %i.dl, align 4, !tbaa !837
  br label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit

_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit: ; preds = %.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge, %bb.j
  %i.ff = phi i32 [ %i.eb, %.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge ], [ %i.fe, %bb.j ] ; 2 uses
  store i32 %i.ff, ptr %i.dl, align 4, !tbaa !837
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.k, label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit

bb.k:                                             ; preds = %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1731 ; 2 uses
  %i.fj = load ptr, ptr %i.dm, align 8, !tbaa !1734 ; 4 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n, %bb.k
  %.lcssa4.i.i.i.i.i = phi ptr [ %i.fj, %bb.k ], [ %i.fx, %bb.n ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i64 [ %i.fk, %bb.k ], [ %i.gb, %bb.n ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1735
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %.lcssa.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i.i, i64 noundef %i.fo) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.n
  %i.fp = phi ptr [ %i.fx, %bb.n ], [ %i.fj, %bb.k ] ; 2 uses
  %i.fq = phi ptr [ %i.fy, %bb.n ], [ %i.fi, %bb.k ]
  %.05.i.i.i.i.i = phi i64 [ %i.fz, %bb.n ], [ 0, %bb.k ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.05.i.i.i.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1736 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !73
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.fs) #47, !inline_history !3756
  %.pre.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !1731
  %.pre9.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !1734
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.fx = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %.pre9.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.fy = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.fz = add nuw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = icmp ult i64 %i.fz, %i.gd
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i.i:           ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #48
  br label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit

_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit: ; preds = %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit, %_ZN16RelationListDataD2Ev.exit.i.i.i.i
  %i.gf = add nuw nsw i32 %.034, 1                ; 2 uses
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !715 ; 2 uses
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !713 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 12
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = icmp slt i32 %i.gf, %i.gm
  br i1 %i.gn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !3757
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed16ConstantFunctionELb0E18RefBlockControllerIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 11 uses
  store i32 0, ptr %i.a, align 4, !tbaa !837
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not.i.i = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  br i1 %.not.i.i, label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext.i.i = mul i64 %1, 240518168576
  %i.c = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #45 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %1, 56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %i.f = udiv i64 %i.c, 56
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.f
  br label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit

_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit: ; preds = %bb.a, %bb.b
  %.021.i.i = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ]
  %.020.i.i = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  %.019.i.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEE13deleteStorageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.a)
  store ptr %.021.i.i, ptr %i.b, align 8, !tbaa !1185
  store ptr %.020.i.i, ptr %i.j, align 8, !tbaa !1806
  store ptr %.019.i.i, ptr %i.i, align 8, !tbaa !3752
  store i8 1, ptr %i.h, align 8, !tbaa !1805
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1182 ; 7 uses
  %.not.i = icmp eq ptr %i.l, %i.a
  br i1 %.not.i, label %_ZN13RefCountedPtrI18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEEaSEPS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit
  %.not4.i = icmp eq ptr %i.l, null
  br i1 %.not4.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionEC2I10GridLayoutILi3EEEERK9CenteringILi3EERKT_RKS5_i:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !715
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !713
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.b, align 8, !tbaa !3762
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !835  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  store i32 %i.q, ptr %i.m, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 4 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1065
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %3, align 8, !tbaa !859   ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !859
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !837
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !837
  %.pre = load i32, ptr %i.m, align 8, !tbaa !4, !noalias !3763
  %.pre39 = load i32, ptr %i.t, align 4, !tbaa !4, !noalias !3763
  %.pre40 = load i32, ptr %i.u, align 8, !tbaa !4, !noalias !3763
  %.pre41 = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !3763
  %.pre42 = load i32, ptr %i.aa, align 8, !tbaa !4, !noalias !3763
  %.pre43 = load i32, ptr %i.af, align 4, !tbaa !4, !noalias !3763
  br label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit

_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.am = phi i32 [ %i.ae, %bb.a ], [ %.pre43, %bb.b ]
  %i.an = phi i32 [ %i.ac, %bb.a ], [ %.pre42, %bb.b ]
  %i.ao = phi i32 [ %i.y, %bb.a ], [ %.pre41, %bb.b ]
  %i.ap = phi i32 [ %i.w, %bb.a ], [ %.pre40, %bb.b ]
  %i.aq = phi i32 [ %i.s, %bb.a ], [ %.pre39, %bb.b ]
  %i.ar = phi i32 [ %i.q, %bb.a ], [ %.pre, %bb.b ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.at = load i32, ptr %i.ag, align 8, !tbaa !4, !noalias !3763 ; 2 uses
  %i.au = add nsw i32 %i.at, %i.ar
  %i.av = load i32, ptr %i.as, align 4, !tbaa !4, !noalias !3763
  %i.aw = add i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4, !noalias !3763 ; 2 uses
  %i.az = add nsw i32 %i.ay, %i.ap
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !4, !noalias !3763
  %i.bc = add i32 %i.bb, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4, !noalias !3763 ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.an
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4, !noalias !3763
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = xor i32 %i.aw, -1
  %i.bk = add i32 %i.aq, %i.bj
  %i.bl = xor i32 %i.bc, -1
  %i.bm = add i32 %i.ao, %i.bl
  %i.bn = xor i32 %i.bi, -1
  %i.bo = add i32 %i.am, %i.bn
  store i32 %i.au, ptr %i.m, align 8, !tbaa !4
  store i32 %i.bk, ptr %i.t, align 4, !tbaa !4
  store i32 %i.az, ptr %i.u, align 8, !tbaa !4
  store i32 %i.bm, ptr %i.z, align 4, !tbaa !4
  store i32 %i.bf, ptr %i.aa, align 8, !tbaa !4
  store i32 %i.bo, ptr %i.af, align 4, !tbaa !4
  %i.bp = load i32, ptr %0, align 8, !tbaa !3759
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !715
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !713
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 12
  %i.by = trunc i64 %i.bx to i32
  %i.bz = mul nsw i32 %i.bp, %i.by                ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  tail call void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionELb0E18RefBlockControllerIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2236 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !3766 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ca, 48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !3769
  %.not.i.i.i.not.i = icmp ugt ptr %i.cf, %i.ch
  br i1 %.not.i.i.i.not.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !3770
  %.not6.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not6.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.ce, %bb.c ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 40
  %i.cl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !1728
  store i32 1, ptr %i.cl, align 4, !tbaa !837
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48 ; 2 uses
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !3770
  %.not.i.i.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i, !llvm.loop !3771

_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, %bb.c
  %i.cp = load i32, ptr %0, align 8, !tbaa !3759  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.preheader.preheader, label %._crit_edge35

.preheader.preheader:                             ; preds = %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit
  %.pre44 = load ptr, ptr %i.d, align 8, !tbaa !715
  %.pre45 = load ptr, ptr %i.c, align 8, !tbaa !713
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.cr = phi i32 [ %i.da, %._crit_edge ], [ %i.cp, %.preheader.preheader ]
  %i.cs = phi ptr [ %i.db, %._crit_edge ], [ %.pre45, %.preheader.preheader ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %._crit_edge ], [ %.pre44, %.preheader.preheader ] ; 2 uses
  %.01434 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 12
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

._crit_edge35:                                    ; preds = %._crit_edge, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit
  %.pre47 = load i32, ptr %0, align 8, !tbaa !3759
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.da = phi i32 [ %.pre47, %._crit_edge.loopexit ], [ %i.cr, %.preheader ] ; 2 uses
  %i.db = phi ptr [ %i.gh, %._crit_edge.loopexit ], [ %i.cs, %.preheader ]
  %i.dc = phi ptr [ %i.gg, %._crit_edge.loopexit ], [ %i.ct, %.preheader ]
  %i.dd = add nuw nsw i32 %.01434, 1              ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.da
  br i1 %i.de, label %.preheader, label %._crit_edge35, !llvm.loop !3772

.lr.ph:                                           ; preds = %.preheader, %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit
  %.033 = phi i32 [ %i.gf, %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit ], [ 0, %.preheader ] ; 2 uses
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !835 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.di = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4 ; 2 uses
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !4
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.dl, align 4, !tbaa !837
  %i.dn = load i32, ptr %i.b, align 8, !tbaa !3762
  %i.do = mul nsw i32 %i.dn, %.01434
  %i.dp = add nsw i32 %i.do, %.033
  %i.dq = sext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !2236
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !3766
  %i.du = load i64, ptr %i.l, align 8, !tbaa !3773
  %i.dv = getelementptr inbounds [48 x i8], ptr %i.dt, i64 %i.du
  %i.dw = getelementptr inbounds [48 x i8], ptr %i.dv, i64 %i.dq ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store <4 x i32> %i.di, ptr %i.dx, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  store <2 x i32> %i.dj, ptr %i.dy, align 4, !tbaa !4
  %5 = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %6 = shufflevector <4 x i32> %i.di, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %6, ptr %5, align 4
  %.sroa.17.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  store i32 %i.dk, ptr %.sroa.17.28..sroa_idx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 40 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1728 ; 8 uses
  %.not.i.i.i15 = icmp eq ptr %i.ea, %i.dl
  br i1 %.not.i.i.i15, label %.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge, label %bb.d

.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge: ; preds = %.lr.ph
  %.pre46 = load i32, ptr %i.dl, align 4, !tbaa !837
  %i.eb = add nsw i32 %.pre46, -1
  br label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit

bb.d:                                             ; preds = %.lr.ph
  %.not3.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not3.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !837
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !837
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1731 ; 2 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !1734 ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %.not.i.i.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.f
  %.lcssa4.i.i.i.i = phi ptr [ %i.ei, %bb.f ], [ %i.ew, %bb.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i64 [ %i.ej, %bb.f ], [ %i.fa, %bb.i ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1735
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %.lcssa.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i, i64 noundef %i.en) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.i
  %i.eo = phi ptr [ %i.ew, %bb.i ], [ %i.ei, %bb.f ] ; 2 uses
  %i.ep = phi ptr [ %i.ex, %bb.i ], [ %i.eh, %bb.f ]
  %.05.i.i.i.i = phi i64 [ %i.ey, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.05.i.i.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1736 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !73
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.er) #47, !inline_history !3774
  %.pre.i.i.i.i = load ptr, ptr %i.eg, align 8, !tbaa !1731
  %.pre9.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !1734
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.ew = phi ptr [ %i.eo, %.lr.ph.i.i.i.i ], [ %.pre9.i.i.i.i, %bb.h ] ; 3 uses
  %i.ex = phi ptr [ %i.ep, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i, %bb.h ] ; 2 uses
  %i.ey = add nuw i64 %.05.i.i.i.i, 1             ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = icmp ult i64 %i.ey, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i:             ; preds = %bb.g, %._crit_edge.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef 32) #48
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %_ZN16RelationListDataD2Ev.exit.i.i.i
  store ptr %i.dl, ptr %i.dz, align 8, !tbaa !1728
  %i.fe = load i32, ptr %i.dl, align 4, !tbaa !837
  br label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit

_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit: ; preds = %.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge, %bb.j
  %i.ff = phi i32 [ %i.eb, %.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge ], [ %i.fe, %bb.j ] ; 2 uses
  store i32 %i.ff, ptr %i.dl, align 4, !tbaa !837
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.k, label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit

bb.k:                                             ; preds = %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1731 ; 2 uses
  %i.fj = load ptr, ptr %i.dm, align 8, !tbaa !1734 ; 4 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n, %bb.k
  %.lcssa4.i.i.i.i.i = phi ptr [ %i.fj, %bb.k ], [ %i.fx, %bb.n ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i64 [ %i.fk, %bb.k ], [ %i.gb, %bb.n ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1735
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %.lcssa.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i.i, i64 noundef %i.fo) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.n
  %i.fp = phi ptr [ %i.fx, %bb.n ], [ %i.fj, %bb.k ] ; 2 uses
  %i.fq = phi ptr [ %i.fy, %bb.n ], [ %i.fi, %bb.k ]
  %.05.i.i.i.i.i = phi i64 [ %i.fz, %bb.n ], [ 0, %bb.k ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.05.i.i.i.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1736 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !73
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.fs) #47, !inline_history !3775
  %.pre.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !1731
  %.pre9.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !1734
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.fx = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %.pre9.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.fy = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.fz = add nuw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = icmp ult i64 %i.fz, %i.gd
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i.i:           ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #48
  br label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit

_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit: ; preds = %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit, %_ZN16RelationListDataD2Ev.exit.i.i.i.i
  %i.gf = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !715 ; 2 uses
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !713 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 12
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = icmp slt i32 %i.gf, %i.gm
  br i1 %i.gn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !3776
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionELb0E18RefBlockControllerIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 11 uses
  store i32 0, ptr %i.a, align 4, !tbaa !837
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not.i.i = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  br i1 %.not.i.i, label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext.i.i = mul i64 %1, 206158430208
  %i.c = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #45 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %1, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %i.f = udiv i64 %i.c, 48
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.f
  br label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit

_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit: ; preds = %bb.a, %bb.b
  %.021.i.i = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ]
  %.020.i.i = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  %.019.i.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEE13deleteStorageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.a)
  store ptr %.021.i.i, ptr %i.b, align 8, !tbaa !3766
  store ptr %.020.i.i, ptr %i.j, align 8, !tbaa !3770
  store ptr %.019.i.i, ptr %i.i, align 8, !tbaa !3769
  store i8 1, ptr %i.h, align 8, !tbaa !3777
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2236 ; 7 uses
  %.not.i = icmp eq ptr %i.l, %i.a
  br i1 %.not.i, label %_ZN13RefCountedPtrI18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEEaSEPS6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit
  %.not4.i = icmp eq ptr %i.l, null
  br i1 %.not4.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
