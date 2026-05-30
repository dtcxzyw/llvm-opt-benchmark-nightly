inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEC2IS4_SF_EERKS_IS1_T_T0_ERK5INodeILi3EE:bb.a
  store i32 %.sroa.449.0, ptr %i.bh, align 4, !tbaa !4, !alias.scope !4041
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 0, ptr %i.bi, align 4, !tbaa !4, !alias.scope !4041
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i32 %.sroa.9.0, ptr %i.bj, align 4, !tbaa !4, !alias.scope !4041
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 0, ptr %i.bk, align 4, !tbaa !4, !alias.scope !4041
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i32 %i.be, ptr %i.bl, align 4, !tbaa !4, !alias.scope !4041
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  store i32 0, ptr %i.bm, align 4, !tbaa !4, !alias.scope !4046
  store i32 %.sroa.449.0.in, ptr %i.bn, align 4, !tbaa !4, !alias.scope !4046
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 44
  store i32 0, ptr %i.bo, align 4, !tbaa !4, !alias.scope !4046
  store i32 %.sroa.9.0.in, ptr %i.bp, align 4, !tbaa !4, !alias.scope !4046
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 52
  store i32 0, ptr %i.bq, align 4, !tbaa !4, !alias.scope !4046
  store i32 %.sink6.i, ptr %i.br, align 4, !tbaa !4, !alias.scope !4046
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i32 0, ptr %i.bs, align 4, !tbaa !4, !alias.scope !4049
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  store i32 %.sroa.449.0, ptr %i.bt, align 4, !tbaa !4, !alias.scope !4049
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  store i32 0, ptr %i.bu, align 4, !tbaa !4, !alias.scope !4049
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 68
  store i32 %.sroa.9.0, ptr %i.bv, align 4, !tbaa !4, !alias.scope !4049
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store i32 0, ptr %i.bw, align 4, !tbaa !4, !alias.scope !4049
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 76
  store i32 %i.be, ptr %i.bx, align 4, !tbaa !4, !alias.scope !4049
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 84
  store i32 0, ptr %i.by, align 4, !tbaa !4, !alias.scope !4054
  store i32 %.sroa.449.0.in, ptr %i.bz, align 4, !tbaa !4, !alias.scope !4054
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 92
  store i32 0, ptr %i.ca, align 4, !tbaa !4, !alias.scope !4054
  store i32 %.sroa.9.0.in, ptr %i.cb, align 4, !tbaa !4, !alias.scope !4054
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 100
  store i32 0, ptr %i.cc, align 4, !tbaa !4, !alias.scope !4054
  store i32 %.sink6.i, ptr %i.cd, align 4, !tbaa !4, !alias.scope !4054
  store ptr %i.bf, ptr %i.p, align 8, !tbaa !1586
  store i32 1, ptr %i.bf, align 4, !tbaa !719
  %i.ce = load i32, ptr %0, align 8, !tbaa !3637
  %i.cf = trunc i64 %i.x to i32
  %i.cg = mul nsw i32 %i.ce, %i.cf                ; 2 uses
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  tail call void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEELb0E18RefBlockControllerISF_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1629 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !3669 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ch, 176
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i.i ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !3672
  %.not.i.i.i.not.i = icmp ugt ptr %i.cm, %i.co
  br i1 %.not.i.i.i.not.i, label %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE25inputDomainToVertexDomainERK8IntervalILi3EE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !3673
  %.not6.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not6.i.i.i, label %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %i.cl, %bb.f ] ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.07.i.i.i, i8 0, i64 104, i1 false)
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 120
  store i32 0, ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 124
  store i32 0, ptr %i.cs, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 128
  store i32 1, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 156
  store i32 0, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 160
  store i32 0, ptr %i.cv, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 164
  store i32 0, ptr %i.cw, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 168
  %i.cy = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !1610
  store i32 1, ptr %i.cy, align 4, !tbaa !719
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 176 ; 2 uses
  %i.db = load ptr, ptr %i.cp, align 8, !tbaa !3673
  %.not.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i.i, label %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit, label %.lr.ph.i.i.i, !llvm.loop !3674

_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit: ; preds = %.lr.ph.i.i.i, %_ZNK11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE25inputDomainToVertexDomainERK8IntervalILi3EE.exit, %bb.f
  %i.dc = load i32, ptr %2, align 8, !tbaa !4     ; 3 uses
  store i32 %i.dc, ptr %i.o, align 8, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4  ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 %i.de, ptr %i.df, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !4  ; 3 uses
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4  ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !4  ; 3 uses
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4  ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !4
  %i.ds = load ptr, ptr %i.r, align 8, !tbaa !597 ; 2 uses
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !595 ; 5 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 12                ; 2 uses
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !609, !noalias !4057
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %_Z27centeringDomainToCellDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ed = load i32, ptr %i.dt, align 4, !tbaa !236, !noalias !4060
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !236, !noalias !4060
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !236, !noalias !4060
  %i.ei = add i32 %i.de, -1
  %i.ej = add i32 %i.ei, %i.ed
  %i.ek = add i32 %i.dk, -1
  %i.el = add i32 %i.ek, %i.ef
  %i.em = add i32 %i.dq, -1
  %i.en = add i32 %i.em, %i.eh
  br label %_Z27centeringDomainToCellDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit

_Z27centeringDomainToCellDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit: ; preds = %bb.g, %bb.h
  %.sink7.i = phi i32 [ %i.ej, %bb.h ], [ %i.de, %bb.g ]
  %.sink5.i = phi i32 [ %i.el, %bb.h ], [ %i.dk, %bb.g ]
  %.sink.i = phi i32 [ %i.en, %bb.h ], [ %i.dq, %bb.g ]
  store i32 %i.dc, ptr %i.o, align 8, !tbaa !4
  store i32 %.sink7.i, ptr %i.df, align 4, !tbaa !4
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !4
  store i32 %.sink5.i, ptr %i.dl, align 4, !tbaa !4
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !4
  store i32 %.sink.i, ptr %i.dr, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %_Z27centeringDomainToCellDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit, %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit
  %i.eo = trunc i64 %i.dx to i32
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 108 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 124 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 164 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 148 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  br label %bb.j

._crit_edge60.loopexit:                           ; preds = %._crit_edge
  %.pre67 = load i32, ptr %i.o, align 8, !tbaa !4
  %.pre68 = load i32, ptr %i.dg, align 8, !tbaa !4
  %.pre69 = load i32, ptr %i.dm, align 8, !tbaa !4
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge60.loopexit, %bb.i
  %i.ge = phi i32 [ %.pre69, %._crit_edge60.loopexit ], [ %i.do, %bb.i ]
  %i.gf = phi i32 [ %.pre68, %._crit_edge60.loopexit ], [ %i.di, %bb.i ]
  %i.gg = phi i32 [ %.pre67, %._crit_edge60.loopexit ], [ %i.dc, %bb.i ]
  %i.gh = load i32, ptr %2, align 8, !tbaa !4, !noalias !4063
  %i.gi = load i32, ptr %i.dh, align 8, !tbaa !4, !noalias !4063
  %i.gj = load i32, ptr %i.dn, align 8, !tbaa !4, !noalias !4063
  %i.gk = sub nsw i32 %i.gg, %i.gh
  store i32 %i.gk, ptr %i.o, align 8, !tbaa !4
  %i.gl = sub nsw i32 %i.gf, %i.gi
  store i32 %i.gl, ptr %i.dg, align 8, !tbaa !4
  %i.gm = sub nsw i32 %i.ge, %i.gj
  store i32 %i.gm, ptr %i.dm, align 8, !tbaa !4
  ret void

bb.j:                                             ; preds = %.lr.ph59, %._crit_edge
  %i.gn = phi ptr [ %i.dt, %.lr.ph59 ], [ %i.ho, %._crit_edge ] ; 2 uses
  %i.go = phi ptr [ %i.ds, %.lr.ph59 ], [ %i.hp, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.gp = load i32, ptr %i.eq, align 4, !tbaa !609, !noalias !4066
  %i.gq = icmp eq i32 %i.gp, 1
  %i.gr = load i32, ptr %i.df, align 4, !tbaa !4, !noalias !4066 ; 2 uses
  br i1 %i.gq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gs = load i32, ptr %i.dl, align 4, !tbaa !4, !noalias !4066
  %i.gt = load i32, ptr %i.dr, align 4, !tbaa !4, !noalias !4066
  br label %_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit

bb.l:                                             ; preds = %bb.j
  %i.gu = add i32 %i.gr, 1
  %i.gv = load i32, ptr %i.dl, align 4, !tbaa !4, !noalias !4069
  %i.gw = add i32 %i.gv, 1
  %i.gx = load i32, ptr %i.dr, align 4, !tbaa !4, !noalias !4069
  %i.gy = add i32 %i.gx, 1
  %i.gz = getelementptr inbounds nuw [12 x i8], ptr %i.gn, i64 %indvars.iv ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !236, !noalias !4072
  %i.hb = sub i32 %i.gu, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !236, !noalias !4072
  %i.he = sub i32 %i.gw, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !236, !noalias !4072
  %i.hh = sub i32 %i.gy, %i.hg
  br label %_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit

_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit: ; preds = %bb.k, %bb.l
  %.sink9.i = phi i32 [ %i.gr, %bb.k ], [ %i.hb, %bb.l ]
  %.sink7.i24 = phi i32 [ %i.gs, %bb.k ], [ %i.he, %bb.l ]
  %.sink.i25 = phi i32 [ %i.gt, %bb.k ], [ %i.hh, %bb.l ]
  %.sink6.i27 = load i32, ptr %i.dm, align 8, !tbaa !4, !noalias !4066
  %.sink8.i28 = load i32, ptr %i.dg, align 8, !tbaa !4, !noalias !4066
  %.sink10.i = load i32, ptr %i.o, align 8, !tbaa !4, !noalias !4066
  %i.hi = load i32, ptr %0, align 8, !tbaa !3637
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit
  %i.hk = add i32 %.sink9.i, -1
  %i.hl = add i32 %.sink7.i24, -1
  %i.hm = add i32 %.sink.i25, -1
  %i.hn = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit
  %.pre65 = load ptr, ptr %i.r, align 8, !tbaa !597
  %.pre66 = load ptr, ptr %i.q, align 8, !tbaa !595
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit
  %i.ho = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.gn, %_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit ] ; 2 uses
  %i.hp = phi ptr [ %.pre65, %._crit_edge.loopexit ], [ %i.go, %_Z27cellDomainToCenteringDomainILi3EE8IntervalIXT_EERKS1_RK9CenteringIXT_EEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = sdiv exact i64 %i.hs, 12
  %sext = shl i64 %i.ht, 32
  %i.hu = ashr exact i64 %sext, 32
  %i.hv = icmp slt i64 %indvars.iv.next, %i.hu
  br i1 %i.hv, label %bb.j, label %._crit_edge60.loopexit, !llvm.loop !4075

bb.m:                                             ; preds = %.lr.ph, %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit
  %.056 = phi i32 [ 0, %.lr.ph ], [ %i.ok, %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.hw = load i32, ptr %i.es, align 8, !tbaa !3640
  %i.hx = mul nsw i32 %i.hw, %.056
  %i.hy = add nsw i32 %i.hx, %i.hn
  %i.hz = sext i32 %i.hy to i64
  %i.ia = load ptr, ptr %i.et, align 8, !tbaa !1629
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !3669
  %i.id = load i64, ptr %i.er, align 8, !tbaa !3694
  %i.ie = getelementptr inbounds [176 x i8], ptr %i.ic, i64 %i.id
  %i.if = getelementptr inbounds [176 x i8], ptr %i.ie, i64 %i.hz ; 12 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 168
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 144
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 132
  %4 = load i32, ptr %i.ih, align 4, !tbaa !4, !noalias !4076
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !4, !noalias !4076 ; 5 uses
  %5 = mul nsw i32 %i.ij, %.sink10.i
  %6 = add nsw i32 %5, %4                         ; 2 uses
  %7 = mul i32 %i.ij, %i.hk
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 148
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !4, !noalias !4076
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 136
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4, !noalias !4076 ; 5 uses
  %i.io = mul nsw i32 %i.in, %.sink8.i28
  %i.ip = add nsw i32 %i.io, %i.il                ; 2 uses
  %i.iq = mul i32 %i.in, %i.hl
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 152
  %8 = load i32, ptr %i.ir, align 4, !tbaa !4, !noalias !4076
  %i.is = getelementptr inbounds nuw i8, ptr %i.if, i64 140
  %9 = load i32, ptr %i.is, align 4, !tbaa !4, !noalias !4076 ; 5 uses
  %10 = mul nsw i32 %9, %.sink6.i27
  %i.it = add nsw i32 %10, %8                     ; 2 uses
  %11 = mul i32 %9, %i.hm
  %12 = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %i.if, i64 48 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %16 = sdiv i32 %7, %i.ij
  %17 = add nsw i32 %16, 1                        ; 2 uses
  %18 = sdiv i32 %i.iq, %i.in
  %19 = add nsw i32 %18, 1                        ; 2 uses
  %20 = sdiv i32 %11, %9
  %21 = add nsw i32 %20, 1                        ; 2 uses
  %22 = load <2 x double>, ptr %i.if, align 8, !tbaa !247, !noalias !4076 ; 2 uses
  %23 = load <2 x double>, ptr %12, align 8, !tbaa !247, !noalias !4076
  %24 = load <2 x double>, ptr %13, align 8, !tbaa !247, !noalias !4076
  store <2 x double> %22, ptr %3, align 16, !tbaa !247
  store <2 x double> %23, ptr %i.ev, align 16, !tbaa !247
  store <2 x double> %24, ptr %i.ex, align 16, !tbaa !247
  %25 = load <4 x i32>, ptr %14, align 8, !tbaa !4, !noalias !4076
  %26 = load i32, ptr %14, align 8, !tbaa !4, !noalias !4076
  %27 = load <2 x i32>, ptr %15, align 8, !tbaa !4, !noalias !4076
  store <4 x i32> %25, ptr %i.ez, align 16, !tbaa !4
  store <2 x i32> %27, ptr %i.fd, align 16, !tbaa !4
  store i32 0, ptr %i.fp, align 4, !tbaa !4
  store i32 0, ptr %i.fq, align 16, !tbaa !4
  store i32 0, ptr %i.fr, align 4, !tbaa !4
  store i32 %6, ptr %i.fs, align 16, !tbaa !4
  store i32 %i.ij, ptr %i.ft, align 4, !tbaa !4
  store i32 0, ptr %i.ff, align 8, !tbaa !4
  store i32 %17, ptr %i.fu, align 4, !tbaa !4
  store i32 %i.ip, ptr %i.fv, align 4, !tbaa !4
  store i32 %i.in, ptr %i.fw, align 8, !tbaa !4
  store i32 0, ptr %i.fx, align 16, !tbaa !4
  store i32 %19, ptr %i.fy, align 4, !tbaa !4
  store i32 %i.it, ptr %i.fz, align 8, !tbaa !4
  store i32 %9, ptr %i.ga, align 4, !tbaa !4
  store i32 0, ptr %i.gb, align 8, !tbaa !4
  store i32 %21, ptr %i.gc, align 4, !tbaa !4
  store i32 %6, ptr %i.fg, align 16, !tbaa !4
  store i32 %17, ptr %i.fh, align 4, !tbaa !4
  store i32 %i.ij, ptr %i.fi, align 8, !tbaa !4
  store i32 %i.ip, ptr %i.fj, align 4, !tbaa !4
  store i32 %19, ptr %i.fk, align 16, !tbaa !4
  store i32 %i.in, ptr %i.fl, align 4, !tbaa !4
  store i32 %i.it, ptr %i.fm, align 8, !tbaa !4
  store i32 %21, ptr %i.fn, align 4, !tbaa !4
  store i32 %9, ptr %i.fo, align 16, !tbaa !4
  %i.iu = load ptr, ptr %i.ig, align 8, !tbaa !1610 ; 7 uses
  store ptr %i.iu, ptr %i.gd, align 8, !tbaa !1610
  %.not.i.i.i29 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i29, label %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEC2I6EngineILi3ES2_SD_E5INodeILi3EEEERKT_RKT0_RK12RelationList.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !719
  %i.iw = add nsw i32 %i.iv, 1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !719
  %.pre = load i32, ptr %i.ez, align 16, !tbaa !4
  br label %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEC2I6EngineILi3ES2_SD_E5INodeILi3EEEERKT_RKT0_RK12RelationList.exit

_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEC2I6EngineILi3ES2_SD_E5INodeILi3EEEERKT_RKT0_RK12RelationList.exit: ; preds = %bb.m, %bb.n
  %i.ix = phi i32 [ %26, %bb.m ], [ %.pre, %bb.n ]
  %i.iy = load i32, ptr %i.d, align 8, !tbaa !3640
  %i.iz = mul nsw i32 %i.iy, %.056
  %i.ja = add nsw i32 %i.iz, %i.hn
  %i.jb = sext i32 %i.ja to i64
  %i.jc = load ptr, ptr %i.ci, align 8, !tbaa !1629
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !3669
  %i.jf = load i64, ptr %i.n, align 8, !tbaa !3694
  %i.jg = getelementptr inbounds [176 x i8], ptr %i.je, i64 %i.jf
  %i.jh = getelementptr inbounds [176 x i8], ptr %i.jg, i64 %i.jb ; 38 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  store i32 %i.ix, ptr %i.ji, align 4, !tbaa !4
  %i.jj = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 52
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jm = load i32, ptr %i.fb, align 8, !tbaa !4
  store i32 %i.jm, ptr %i.jl, align 4, !tbaa !4
  %i.jn = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 60
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  %i.jq = load i32, ptr %i.fd, align 16, !tbaa !4
  store i32 %i.jq, ptr %i.jp, align 4, !tbaa !4
  %i.jr = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 68
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !4
  %.not.i.i.i.i32 = icmp eq ptr %i.jh, %3
  br i1 %.not.i.i.i.i32, label %_ZN6EngineILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSERKSE_.exit, label %_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i4.i.i.i

_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i4.i.i.i: ; preds = %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEC2I6EngineILi3ES2_SD_E5INodeILi3EEEERKT_RKT0_RK12RelationList.exit
  %i.jt = extractelement <2 x double> %22, i64 0
  store double %i.jt, ptr %i.jh, align 8, !tbaa !247
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jv = load double, ptr %i.eu, align 8, !tbaa !247
  store double %i.jv, ptr %i.ju, align 8, !tbaa !247
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jx = load double, ptr %i.ev, align 16, !tbaa !247
  store double %i.jx, ptr %i.jw, align 8, !tbaa !247
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jz = load double, ptr %i.ew, align 8, !tbaa !247
  store double %i.jz, ptr %i.jy, align 8, !tbaa !247
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.kb = load double, ptr %i.ex, align 16, !tbaa !247
  store double %i.kb, ptr %i.ka, align 8, !tbaa !247
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.kd = load double, ptr %i.ey, align 8, !tbaa !247
  store double %i.kd, ptr %i.kc, align 8, !tbaa !247
  br label %_ZN6EngineILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSERKSE_.exit

_ZN6EngineILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSERKSE_.exit: ; preds = %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEC2I6EngineILi3ES2_SD_E5INodeILi3EEEERKT_RKT0_RK12RelationList.exit, %_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i4.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.kf = load i32, ptr %i.ff, align 8, !tbaa !4
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !4
  %i.kg = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jh, i64 76
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jh, i64 80
  %i.kj = load i32, ptr %i.fx, align 16, !tbaa !4
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !4
  %i.kk = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jh, i64 84
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !4
  %i.km = getelementptr inbounds nuw i8, ptr %i.jh, i64 88
  %i.kn = load i32, ptr %i.gb, align 8, !tbaa !4
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !4
  %i.ko = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jh, i64 92
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.kr = load i32, ptr %i.fg, align 16, !tbaa !4
  store i32 %i.kr, ptr %i.kq, align 4, !tbaa !4
  %i.ks = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jh, i64 100
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !4
  %i.ku = load i32, ptr %i.fi, align 8, !tbaa !4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jh, i64 104
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jh, i64 108
  %i.kx = load i32, ptr %i.fj, align 4, !tbaa !4
  store i32 %i.kx, ptr %i.kw, align 4, !tbaa !4
  %i.ky = load i32, ptr %i.fk, align 16, !tbaa !4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jh, i64 112
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !4
  %i.la = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jh, i64 116
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jh, i64 120
  %i.ld = load i32, ptr %i.fm, align 8, !tbaa !4
  store i32 %i.ld, ptr %i.lc, align 4, !tbaa !4
  %i.le = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jh, i64 124
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !4
  %i.lg = load i32, ptr %i.fo, align 16, !tbaa !4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jh, i64 128
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.jh, i64 156
  %i.lj = load i32, ptr %i.fp, align 4, !tbaa !236
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jh, i64 160
  %i.ll = load i32, ptr %i.fq, align 16, !tbaa !236
  store i32 %i.ll, ptr %i.lk, align 4, !tbaa !4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jh, i64 164
  %i.ln = load i32, ptr %i.fr, align 4, !tbaa !236
  store i32 %i.ln, ptr %i.lm, align 4, !tbaa !4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jh, i64 144
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jh, i64 132
  %i.lq = load i32, ptr %i.fs, align 16, !tbaa !4
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !4
  %i.lr = load i32, ptr %i.ft, align 4, !tbaa !4
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !4
  %i.ls = load i32, ptr %i.fv, align 4, !tbaa !4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jh, i64 148
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !4
  %i.lu = load i32, ptr %i.fw, align 8, !tbaa !4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jh, i64 136
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !4
  %i.lw = load i32, ptr %i.fz, align 8, !tbaa !4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jh, i64 152
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !4
  %i.ly = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jh, i64 140
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jh, i64 168 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !1610 ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %i.mb, %i.iu
  br i1 %.not.i.i.i30, label %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSEOSE_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6EngineILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSERKSE_.exit
  %.not3.i.i.i = icmp eq ptr %i.mb, null
  br i1 %.not3.i.i.i, label %thread-pre-split.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !719
  %i.md = add nsw i32 %i.mc, -1                   ; 2 uses
  store i32 %i.md, ptr %i.mb, align 4, !tbaa !719
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.q, label %thread-pre-split.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !1613 ; 2 uses
  %i.mi = load ptr, ptr %i.mf, align 8, !tbaa !1616 ; 4 uses
  %i.mj = ptrtoint ptr %i.mi to i64
  %.not.i.i.i.i = icmp eq ptr %i.mh, %i.mi
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.t, %bb.q
  %.lcssa4.i.i.i.i = phi ptr [ %i.mi, %bb.q ], [ %i.mw, %bb.t ] ; 2 uses
  %.lcssa.i.i.i.i = phi i64 [ %i.mj, %bb.q ], [ %i.na, %bb.t ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !1617
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = sub i64 %i.mm, %.lcssa.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i, i64 noundef %i.mn) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.t
  %i.mo = phi ptr [ %i.mw, %bb.t ], [ %i.mi, %bb.q ] ; 2 uses
  %i.mp = phi ptr [ %i.mx, %bb.t ], [ %i.mh, %bb.q ]
  %.05.i.i.i.i = phi i64 [ %i.my, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.05.i.i.i.i
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !1618 ; 3 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !73
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.mr) #47, !inline_history !3695
  %.pre.i.i.i.i = load ptr, ptr %i.mg, align 8, !tbaa !1613
  %.pre9.i.i.i.i = load ptr, ptr %i.mf, align 8, !tbaa !1616
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.mw = phi ptr [ %i.mo, %.lr.ph.i.i.i.i ], [ %.pre9.i.i.i.i, %bb.s ] ; 3 uses
  %i.mx = phi ptr [ %i.mp, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i, %bb.s ] ; 2 uses
  %i.my = add nuw i64 %.05.i.i.i.i, 1             ; 2 uses
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.mw to i64               ; 2 uses
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = ashr exact i64 %i.nb, 3
  %i.nd = icmp ult i64 %i.my, %i.nc
  br i1 %i.nd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1621

_ZN16RelationListDataD2Ev.exit.i.i.i:             ; preds = %bb.r, %._crit_edge.i.i.i.i
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef 32) #48
  %.pr.pre.i.i.i = load ptr, ptr %i.gd, align 8, !tbaa !1610
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZN16RelationListDataD2Ev.exit.i.i.i, %bb.p, %bb.o
  %i.ne = phi ptr [ %i.iu, %bb.o ], [ %i.iu, %bb.p ], [ %.pr.pre.i.i.i, %_ZN16RelationListDataD2Ev.exit.i.i.i ] ; 4 uses
  store ptr %i.ne, ptr %i.ma, align 8, !tbaa !1610
  %.not4.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not4.i.i.i, label %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSEOSE_.exit, label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i.i
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !719
  %i.ng = add nsw i32 %i.nf, 1
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !719
  br label %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSEOSE_.exit

_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSEOSE_.exit: ; preds = %_ZN6EngineILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSERKSE_.exit, %thread-pre-split.i.i.i, %bb.u
  %i.nh = load ptr, ptr %i.gd, align 8, !tbaa !1610 ; 7 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i31, label %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEaSEOSE_.exit
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !719
  %i.nj = add nsw i32 %i.ni, -1                   ; 2 uses
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !719
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %bb.w, label %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !1613 ; 2 uses
  %i.no = load ptr, ptr %i.nl, align 8, !tbaa !1616 ; 4 uses
  %i.np = ptrtoint ptr %i.no to i64
  %.not.i.i.i.i.i = icmp eq ptr %i.nn, %i.no
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.z, %bb.w
  %.lcssa4.i.i.i.i.i = phi ptr [ %i.no, %bb.w ], [ %i.oc, %bb.z ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i64 [ %i.np, %bb.w ], [ %i.og, %bb.z ]
end_hunk_0
