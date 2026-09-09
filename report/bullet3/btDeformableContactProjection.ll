Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableContactProjection?download=true
inline.NumInlined: 944
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN29btDeformableContactProjection14setConstraintsERK19btContactSolverInfo:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !116
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv153
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !118  ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load i32, ptr %i.p, align 8, !tbaa !154
  switch i32 %i.q, label %_ZNK17btCollisionObject8isActiveEv.exit.preheader [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit.thread
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit.thread
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit.thread
  ]

_ZNK17btCollisionObject8isActiveEv.exit.preheader: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 932 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !324  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.preheader133

.lr.ph:                                           ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 944
  br label %bb.c

.preheader133:                                    ; preds = %_ZNK17btCollisionObject8isActiveEv.exit, %_ZNK17btCollisionObject8isActiveEv.exit.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1220 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !327  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph136, label %.preheader132

.lr.ph136:                                        ; preds = %.preheader133
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1232
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph, %_ZNK17btCollisionObject8isActiveEv.exit
  %i.z = phi i32 [ %i.s, %.lr.ph ], [ %i.ch, %_ZNK17btCollisionObject8isActiveEv.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK17btCollisionObject8isActiveEv.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !328
  %i.ab = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !162
  %i.ae = fcmp oeq float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.d, label %_ZNK17btCollisionObject8isActiveEv.exit

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !163
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %indvars.iv153 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !167 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !168
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.ai, 0
  %i.am = shl nsw i32 %i.ai, 1
  %i.an = select i1 %.not.i.i, i32 1, i32 %i.am   ; 4 uses
  %i.ao = icmp slt i32 %i.ai, %i.an
  br i1 %i.ao, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.an to i64
  %i.aq = mul nsw i64 %i.ap, 48
  %i.ar = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aq, i32 noundef 16)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  %.pre.i = load i32, ptr %i.ah, align 4, !tbaa !167
  br label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.f
  %i.as = phi i32 [ %.pre.i, %.noexc ], [ %i.ai, %bb.f ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.ar, %.noexc ], [ null, %bb.f ] ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE7destroyEii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE8allocateEi.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.as to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.h ] ; 3 uses
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i ; 6 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !169
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV29btDeformableContactConstraint, i64 16), ptr %i.av, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !172, !range !65, !noundef !71
  store i8 %i.ba, ptr %i.ay, align 8, !tbaa !172
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !173
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !173
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !73
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV28btDeformableStaticConstraint, i64 16), ptr %i.av, align 8, !tbaa !77
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !175
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !175
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI28btDeformableStaticConstraintE4copyEiiPS0_.exit.i.i, label %bb.h, !llvm.loop !4

_ZNK20btAlignedObjectArrayI28btDeformableStaticConstraintE4copyEiiPS0_.exit.i.i: ; preds = %bb.h
  %.pre.i.i = load i32, ptr %i.ah, align 4, !tbaa !167 ; 2 uses
  %i.bj = icmp sgt i32 %.pre.i.i, 0
  br i1 %i.bj, label %.lr.ph.i5.i.i, label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE7destroyEii.exit.i.i

.lr.ph.i5.i.i:                                    ; preds = %_ZNK20btAlignedObjectArrayI28btDeformableStaticConstraintE4copyEiiPS0_.exit.i.i
  %zext.i.i = zext nneg i32 %.pre.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i5.i.i
  %indvars.iv.i6.i.i = phi i64 [ 0, %.lr.ph.i5.i.i ], [ %indvars.iv.next.i7.i.i, %bb.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !169
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.bk, i64 %indvars.iv.i6.i.i ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !77
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bl) #20, !inline_history !313
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.bo = icmp eq i64 %indvars.iv.next.i7.i.i, %zext.i.i
  br i1 %i.bo, label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE7destroyEii.exit.i.i, label %bb.i, !llvm.loop !5

_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE7destroyEii.exit.i.i: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayI28btDeformableStaticConstraintE4copyEiiPS0_.exit.i.i, %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE8allocateEi.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !169 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i9.i.i, label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE10deallocateEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE7destroyEii.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !176, !range !65, !noundef !71
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.k, label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE10deallocateEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bq)
          to label %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE10deallocateEv.exit.i.i unwind label %bb.m

_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE10deallocateEv.exit.i.i: ; preds = %bb.k, %bb.j, %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE7destroyEii.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 1, ptr %i.bu, align 8, !tbaa !176
  store ptr %.0.i.i.i, ptr %i.bp, align 8, !tbaa !169
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !168
  %.pre2.i = load i32, ptr %i.ah, align 4, !tbaa !167
  br label %bb.l

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE10deallocateEv.exit.i.i, %bb.e, %bb.d
  %i.bv = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI28btDeformableStaticConstraintE10deallocateEv.exit.i.i ], [ %i.ai, %bb.e ], [ %i.ai, %bb.d ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !169
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [48 x i8], ptr %i.bx, i64 %i.by ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 0, ptr %i.ca, align 8, !tbaa !172
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %1, ptr %i.cb, align 8, !tbaa !173
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV28btDeformableStaticConstraint, i64 16), ptr %i.bz, align 8, !tbaa !77
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr %i.ab, ptr %i.cd, align 8, !tbaa !175
  %i.ce = load i32, ptr %i.ah, align 4, !tbaa !167
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.ah, align 4, !tbaa !167
  %.pre = load i32, ptr %i.r, align 4, !tbaa !324
  br label %_ZNK17btCollisionObject8isActiveEv.exit

bb.m:                                             ; preds = %bb.k, %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNK17btCollisionObject8isActiveEv.exit:          ; preds = %bb.c, %bb.l
  %i.ch = phi i32 [ %i.z, %bb.c ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.c, label %.preheader133, !llvm.loop !314

.preheader132:                                    ; preds = %bb.y, %.preheader133
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 1284 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !332 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph138, label %.preheader

.lr.ph138:                                        ; preds = %.preheader132
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 1296
  br label %bb.ab

bb.n:                                             ; preds = %.lr.ph136, %bb.y
  %i.co = phi i32 [ %i.w, %.lr.ph136 ], [ %i.fm, %bb.y ]
  %indvars.iv144 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next145, %bb.y ] ; 2 uses
  %i.cp = load ptr, ptr %i.y, align 8, !tbaa !333
  %i.cq = getelementptr inbounds nuw [872 x i8], ptr %i.cp, i64 %indvars.iv144 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 848
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !188
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !162
  %i.cv = fcmp oeq float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !334 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 856 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !75
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !75
  %i.de = load <2 x float>, ptr %i.cx, align 4, !tbaa !75 ; 2 uses
  %6 = load <3 x float>, ptr %i.cy, align 8, !tbaa !75 ; 5 uses
  %i.df = load float, ptr %i.cy, align 8, !tbaa !75
  %i.dg = load <2 x float>, ptr %i.db, align 4, !tbaa !75 ; 2 uses
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x float> %7, %i.dh
  %i.dj = shufflevector <2 x float> %i.de, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.dk = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dd, i64 1
  %8 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %8, <2 x float> %i.dl)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !75
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !75
  %9 = extractelement <3 x float> %6, i64 1
  %i.dt = fmul float %9, %i.ds
  %i.du = call float @llvm.fmuladd.f32(float %i.dq, float %i.df, float %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !75
  %10 = extractelement <3 x float> %6, i64 2
  %i.dx = call noundef float @llvm.fmuladd.f32(float %i.dw, float %10, float %i.du)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  store <2 x float> %i.do, ptr %i.dy, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN32btDeformableNodeAnchorConstraintC1ERKN10btSoftBody25DeformableNodeRigidAnchorERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(872) %i.cq, ptr noundef nonnull align 4 dereferenceable(128) %1)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dz, i64 %indvars.iv153 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 6 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !130 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !189
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.q, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7reserveEi.exit.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i66 = icmp eq i32 %i.ec, 0
  %i.eg = shl nsw i32 %i.ec, 1
  %i.eh = select i1 %.not.i.i66, i32 1, i32 %i.eg ; 4 uses
  %i.ei = icmp slt i32 %i.ec, %i.eh
  br i1 %i.ei, label %bb.r, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7reserveEi.exit.i

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i67 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i67, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE8allocateEi.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = sext i32 %i.eh to i64
  %i.ek = mul nsw i64 %i.ej, 48
  %i.el = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ek, i32 noundef 16)
          to label %.noexc79 unwind label %.loopexit.split-lp128

.noexc79:                                         ; preds = %bb.s
  %.pre.i68 = load i32, ptr %i.eb, align 4, !tbaa !130
  br label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE8allocateEi.exit.i.i: ; preds = %.noexc79, %bb.r
  %i.em = phi i32 [ %.pre.i68, %.noexc79 ], [ %i.ec, %bb.r ] ; 2 uses
  %.0.i.i.i69 = phi ptr [ %i.el, %.noexc79 ], [ null, %bb.r ] ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i.i71, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7destroyEii.exit.i.i

.lr.ph.i.i.i71:                                   ; preds = %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE8allocateEi.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %zext.i.i72 = zext nneg i32 %i.em to i64
  br label %bb.t

bb.t:                                             ; preds = %.noexc80, %.lr.ph.i.i.i71
  %indvars.iv.i.i.i73 = phi i64 [ 0, %.lr.ph.i.i.i71 ], [ %indvars.iv.next.i.i.i74, %.noexc80 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i69, i64 %indvars.iv.i.i.i73
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !137
  %i.er = getelementptr inbounds nuw [48 x i8], ptr %i.eq, i64 %indvars.iv.i.i.i73
  invoke void @_ZN32btDeformableNodeAnchorConstraintC1ERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef nonnull align 8 dereferenceable(48) %i.er)
          to label %.noexc80 unwind label %.loopexit127

.noexc80:                                         ; preds = %bb.t
  %indvars.iv.next.i.i.i74 = add nuw nsw i64 %indvars.iv.i.i.i73, 1 ; 2 uses
  %i.es = icmp eq i64 %indvars.iv.next.i.i.i74, %zext.i.i72
  br i1 %i.es, label %_ZNK20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE4copyEiiPS0_.exit.i.i, label %bb.t, !llvm.loop !6

_ZNK20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.noexc80
  %.pre.i.i75 = load i32, ptr %i.eb, align 4, !tbaa !130 ; 2 uses
  %i.et = icmp sgt i32 %.pre.i.i75, 0
  br i1 %i.et, label %.lr.ph.i5.i.i76, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7destroyEii.exit.i.i

.lr.ph.i5.i.i76:                                  ; preds = %_ZNK20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE4copyEiiPS0_.exit.i.i
  %zext11.i.i = zext nneg i32 %.pre.i.i75 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i5.i.i76
  %indvars.iv.i6.i.i77 = phi i64 [ 0, %.lr.ph.i5.i.i76 ], [ %indvars.iv.next.i7.i.i78, %bb.u ] ; 2 uses
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !137
  %i.ev = getelementptr inbounds nuw [48 x i8], ptr %i.eu, i64 %indvars.iv.i6.i.i77 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !77
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ev) #20, !inline_history !315
  %indvars.iv.next.i7.i.i78 = add nuw nsw i64 %indvars.iv.i6.i.i77, 1 ; 2 uses
  %i.ey = icmp eq i64 %indvars.iv.next.i7.i.i78, %zext11.i.i
  br i1 %i.ey, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7destroyEii.exit.i.i, label %bb.u, !llvm.loop !7

_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7destroyEii.exit.i.i: ; preds = %bb.u, %_ZNK20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE4copyEiiPS0_.exit.i.i, %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE8allocateEi.exit.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !137 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i10.i.i, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE10deallocateEv.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7destroyEii.exit.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !190, !range !65, !noundef !71
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.w, label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE10deallocateEv.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fa)
          to label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE10deallocateEv.exit.i.i unwind label %.loopexit.split-lp128

_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE10deallocateEv.exit.i.i: ; preds = %bb.w, %bb.v, %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7destroyEii.exit.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i8 1, ptr %i.fe, align 8, !tbaa !190
  store ptr %.0.i.i.i69, ptr %i.ez, align 8, !tbaa !137
  store i32 %i.eh, ptr %i.ed, align 8, !tbaa !189
  %.pre2.i70 = load i32, ptr %i.eb, align 4, !tbaa !130
  br label %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7reserveEi.exit.i

_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7reserveEi.exit.i: ; preds = %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE10deallocateEv.exit.i.i, %bb.q, %bb.p
  %i.ff = phi i32 [ %.pre2.i70, %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE10deallocateEv.exit.i.i ], [ %i.ec, %bb.q ], [ %i.ec, %bb.p ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !137
  %i.fi = sext i32 %i.ff to i64
  %i.fj = getelementptr inbounds [48 x i8], ptr %i.fh, i64 %i.fi
  invoke void @_ZN32btDeformableNodeAnchorConstraintC1ERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.x unwind label %.loopexit.split-lp128

bb.x:                                             ; preds = %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7reserveEi.exit.i
  %i.fk = load i32, ptr %i.eb, align 4, !tbaa !130
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.eb, align 4, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre156 = load i32, ptr %i.v, align 4, !tbaa !327
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.x
  %i.fm = phi i32 [ %i.co, %bb.n ], [ %.pre156, %bb.x ] ; 2 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next145, %i.fn
  br i1 %i.fo, label %bb.n, label %.preheader132, !llvm.loop !316

bb.z:                                             ; preds = %bb.o
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit127:                                     ; preds = %bb.t
  %lpad.loopexit129 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp128:                            ; preds = %bb.s, %bb.w, %_ZN20btAlignedObjectArrayI32btDeformableNodeAnchorConstraintE7reserveEi.exit.i
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit127, %.loopexit.split-lp128, %bb.z
  %.pn59 = phi { ptr, i32 } [ %i.fp, %bb.z ], [ %lpad.loopexit129, %.loopexit127 ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bd

.preheader:                                       ; preds = %bb.am, %.preheader132
  %i.fq = getelementptr inbounds nuw i8, ptr %i.o, i64 1348 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !338 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph140, label %_ZNK17btCollisionObject8isActiveEv.exit.thread

.lr.ph140:                                        ; preds = %.preheader
  %i.ft = getelementptr inbounds nuw i8, ptr %i.o, i64 1360
  br label %bb.ap

bb.ab:                                            ; preds = %.lr.ph138, %bb.am
  %i.fu = phi i32 [ %i.cl, %.lr.ph138 ], [ %i.hp, %bb.am ]
  %indvars.iv147 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next148, %bb.am ] ; 2 uses
  %i.fv = load ptr, ptr %i.cn, align 8, !tbaa !339
  %i.fw = getelementptr inbounds nuw [856 x i8], ptr %i.fv, i64 %indvars.iv147 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 848
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !188
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 112
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !162
  %i.gb = fcmp oeq float %i.ga, 0.000000e+00
  br i1 %i.gb, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN38btDeformableNodeRigidContactConstraintC1ERKN10btSoftBody26DeformableNodeRigidContactERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(856) %i.fw, ptr noundef nonnull align 4 dereferenceable(128) %1)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.gc = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %indvars.iv153 ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 6 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !125 ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !191
  %i.gi = icmp eq i32 %i.gf, %i.gh
  br i1 %i.gi, label %bb.ae, label %_ZN20btAlignedObjectArrayI38btDeformableNodeRigidContactConstraintE7reserveEi.exit.i

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i83 = icmp eq i32 %i.gf, 0
  %i.gj = shl nsw i32 %i.gf, 1
  %i.gk = select i1 %.not.i.i83, i32 1, i32 %i.gj ; 4 uses
  %i.gl = icmp slt i32 %i.gf, %i.gk
  br i1 %i.gl, label %bb.af, label %_ZN20btAlignedObjectArrayI38btDeformableNodeRigidContactConstraintE7reserveEi.exit.i

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i84 = icmp eq i32 %i.gk, 0
  br i1 %.not.i.i.i84, label %_ZN20btAlignedObjectArrayI38btDeformableNodeRigidContactConstraintE8allocateEi.exit.i.i, label %bb.ag

end_hunk_0
