inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE:bb.a
  %.not74.2 = icmp eq i64 %i.dv, 0
  br i1 %.not74.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dp
  %i.dx = zext i32 %.240.1 to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %i.dw, i64 16, i1 false)
  %i.dz = add i32 %.240.1, 1
  %i.ea = load ptr, ptr %i.bi, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 %.240.1, ptr %i.eb, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ec = or i64 %i.dt, %i.du
  store i64 %i.ec, ptr %i.dr, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.240.2 = phi i32 [ %i.dz, %bb.u ], [ %.240.1, %bb.v ]
  %i.ed = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4
  %i.eg = load i32, ptr %i.ee, align 4
  store i32 %i.eg, ptr %i.ed, align 4
  store i32 %i.ef, ptr %i.ee, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.079, i64 16 ; 2 uses
  %.not73 = icmp eq ptr %i.eh, %i.bh
  br i1 %.not73, label %._crit_edge.thread, label %.preheader, !llvm.loop !59

bb.x:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.f ], [ %i.bz, %bb.g ], [ %i.cc, %bb.k ], [ %i.cb, %bb.j ]
  %.not.i.i55 = icmp eq ptr %.sroa.066.0, null
  br i1 %.not.i.i55, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = ptrtoint ptr %.sroa.1571.0 to i64
  %i.ej = ptrtoint ptr %.sroa.066.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %.sroa.1571.0, i64 %i.em
  tail call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.ek) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit56

_ZNSt13_Bvector_baseISaIbEED2Ev.exit56:           ; preds = %bb.y, %bb.x
  resume { ptr, i32 } %.pn.pn.pn

bb.z:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(140) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 1204
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.k = zext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.p, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.n = phi ptr [ %i.c, %.lr.ph ], [ %i.v, %bb.e ] ; 3 uses
  %i.o = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.not66 = icmp eq i64 %indvars.iv, %i.k
  br i1 %.not66, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [1204 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1028
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.j, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre128 = load ptr, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.v = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %.pre128, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 1204
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !60

bb.f:                                             ; preds = %._crit_edge
  %i.ad = zext i32 %i.m to i64                    ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 5 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 1204
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %.not65 = icmp eq i32 %1, -1
  %i.aq = sext i32 %1 to i64
  %i.ar = zext i32 %1 to i64
  br label %bb.g

._crit_edge123.loopexit:                          ; preds = %bb.o
  %.pre131 = load i32, ptr %i.l, align 8
  %.pre132 = load ptr, ptr %i.ag, align 8
  %.pre133 = zext i32 %.pre131 to i64
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %._crit_edge123.loopexit, %bb.f
  %.pre-phi = phi i64 [ %.pre133, %._crit_edge123.loopexit ], [ %i.ad, %bb.f ]
  %i.as = phi ptr [ %.pre132, %._crit_edge123.loopexit ], [ %i.af, %bb.f ]
  %i.at = sub nsw i64 0, %.pre-phi
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  store ptr %i.au, ptr %i.ag, align 8
  br label %bb.p

bb.g:                                             ; preds = %.lr.ph122, %bb.o
  %i.av = phi ptr [ %i.ai, %.lr.ph122 ], [ %i.gr, %bb.o ] ; 3 uses
  %i.aw = phi ptr [ %i.ah, %.lr.ph122 ], [ %i.gs, %bb.o ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next126, %bb.o ] ; 10 uses
  %.not64 = icmp eq i64 %indvars.iv125, %i.ar
  br i1 %.not64, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [1204 x i8], ptr %i.av, i64 %indvars.iv125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1028
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %i.az, %1
  br i1 %i.ba, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27 ; 11 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bb)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.ag, align 8
  store ptr %i.bb, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr inbounds nuw [1204 x i8], ptr %i.be, i64 %indvars.iv125 ; 11 uses
  %i.bg = load i32, ptr %i.bf, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 1023) ; 3 uses
  store i32 %spec.select.i, ptr %4, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.bh, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bi
  store i8 0, ptr %i.bj, align 1
  store i32 %spec.select.i, ptr %i.bb, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %i.ap, i64 %i.bi, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 1096
  store ptr %2, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 1044
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 1048
  %i.bp = load <2 x float>, ptr %i.bn, align 4    ; 5 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 1052
  %i.bs = load <2 x float>, ptr %i.bo, align 4    ; 6 uses
  %i.bt = load float, ptr %i.br, align 4          ; 7 uses
  %i.bu = fneg float %i.bq
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bq, float 1.000000e+00)
  %i.bw = extractelement <2 x float> %i.bs, i64 0 ; 5 uses
  %i.bx = fneg float %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bw, float %i.bv)
  %i.bz = fneg float %i.bt
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bt, float %i.by) ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = tail call noundef float @sqrtf(float noundef %i.ca) #23
  br label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit

_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit: ; preds = %bb.j, %bb.k
  %storemerge.i = phi float [ %i.cc, %bb.k ], [ 0.000000e+00, %bb.j ] ; 4 uses
  %i.cd = fneg float %storemerge.i                ; 3 uses
  %i.ce = fmul float %i.bt, %i.bt                 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.ce)
  %5 = fmul float %i.bt, %storemerge.i
  %6 = fmul float %i.bw, %i.cd
  %i.cg = fmul float %i.bt, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.ce)
  %i.ci = fmul float %i.bq, %storemerge.i
  %foldExtExtBinop = fmul <2 x float> %i.bs, %i.bs
  %i.cj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.cj)
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float -2.000000e+00, float 1.000000e+00)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 1072
  %i.cn = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.co = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cp = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cq = insertelement <4 x float> %i.cp, float -0.000000e+00, i64 3
  %i.cr = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.cr, <4 x i32> <i32 poison, i32 1, i32 5, i32 3>
  %i.ct = insertelement <4 x float> %i.cs, float %i.cf, i64 0
  %7 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, float %5, i64 1
  %8 = insertelement <4 x float> %7, float %6, i64 2
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.ct, <4 x float> %8)
  %i.cv = fmul <4 x float> %i.cu, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %i.cv, ptr %i.cm, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1088
  %i.cw = insertelement <4 x float> %i.cn, float 0.000000e+00, i64 3
  %i.cx = insertelement <4 x float> %i.cw, float %i.ch, i64 1
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cz = shufflevector <4 x float> %i.cr, <4 x float> <float poison, float -2.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.da = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.cg, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.ci, i64 2
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cz, <4 x float> %i.db)
  %i.dd = fmul <4 x float> %i.dc, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %i.dd, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1104
  %i.de = shufflevector <2 x float> %i.bs, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %storemerge.i, i64 0
  %10 = insertelement <2 x float> %9, float %i.cd, i64 1
  %i.df = fmul <2 x float> %i.de, %10
  %i.dg = shufflevector <2 x float> %i.bp, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.dh = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.di, <2 x float> %i.df)
  %i.dk = fmul <2 x float> %i.dj, splat (float 2.000000e+00)
  store <2 x float> %i.dk, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1112
  store float %i.cl, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14113.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1132
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  %i.dl = load ptr, ptr %3, align 8
  %i.dm = getelementptr inbounds nuw [1204 x i8], ptr %i.dl, i64 %indvars.iv125 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1032
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1084
  store float %i.do, ptr %i.dp, align 4
  %i.dq = load ptr, ptr %3, align 8
  %i.dr = getelementptr inbounds nuw [1204 x i8], ptr %i.dq, i64 %indvars.iv125 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1036
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1100
  store float %i.dt, ptr %i.du, align 4
  %i.dv = load ptr, ptr %3, align 8
  %i.dw = getelementptr inbounds nuw [1204 x i8], ptr %i.dv, i64 %indvars.iv125 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1040
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1116
  store float %i.dy, ptr %i.dz, align 4
  %i.ea = load ptr, ptr %3, align 8
  %i.eb = getelementptr inbounds nuw [1204 x i8], ptr %i.ea, i64 %indvars.iv125 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1072 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 1136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ed, ptr noundef nonnull align 4 dereferenceable(64) %i.ec, i64 64, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bb, i64 1028 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ee, ptr noundef nonnull align 4 dereferenceable(64) %i.ec, i64 64, i1 false)
  %i.ef = load ptr, ptr %3, align 8
  %i.eg = getelementptr inbounds nuw [1204 x i8], ptr %i.ef, i64 %indvars.iv125
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1136
  %i.ei = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %i.eh) ; 0 uses
  br i1 %.not65, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.ej = load ptr, ptr %3, align 8
  %i.ek = getelementptr inbounds nuw [1204 x i8], ptr %i.ej, i64 %i.aq ; 16 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1136
  %.sroa.0.0.copyload68 = load float, ptr %i.el, align 4
  %.sroa.6.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1140
  %.sroa.6.0.copyload70 = load float, ptr %.sroa.6.0..sroa_idx69, align 4
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1144
  %.sroa.8.0.copyload72 = load float, ptr %.sroa.8.0..sroa_idx71, align 4
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1148
  %.sroa.10.0.copyload74 = load float, ptr %.sroa.10.0..sroa_idx73, align 4
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1152
  %.sroa.12.0.copyload76 = load float, ptr %.sroa.12.0..sroa_idx75, align 4
  %.sroa.14.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1156
  %.sroa.14.0.copyload78 = load float, ptr %.sroa.14.0..sroa_idx77, align 4
  %.sroa.16.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1160
  %.sroa.16.0.copyload80 = load float, ptr %.sroa.16.0..sroa_idx79, align 4
  %.sroa.18.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1164
  %.sroa.18.0.copyload82 = load float, ptr %.sroa.18.0..sroa_idx81, align 4
  %.sroa.20.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1168
  %.sroa.20.0.copyload84 = load float, ptr %.sroa.20.0..sroa_idx83, align 4
  %.sroa.22.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1172
  %.sroa.22.0.copyload86 = load float, ptr %.sroa.22.0..sroa_idx85, align 4
  %.sroa.24.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1176
  %.sroa.24.0.copyload88 = load float, ptr %.sroa.24.0..sroa_idx87, align 4
  %.sroa.26.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1180
  %.sroa.26.0.copyload90 = load float, ptr %.sroa.26.0..sroa_idx89, align 4
  %.sroa.28.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1184
  %.sroa.28.0.copyload92 = load float, ptr %.sroa.28.0..sroa_idx91, align 4
  %.sroa.30.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1188
  %.sroa.30.0.copyload94 = load float, ptr %.sroa.30.0..sroa_idx93, align 4
  %.sroa.32.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1192
  %.sroa.32.0.copyload96 = load float, ptr %.sroa.32.0..sroa_idx95, align 4
  %.sroa.34.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.ek, i64 1196
  %.sroa.34.0.copyload98 = load float, ptr %.sroa.34.0..sroa_idx97, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.bb, i64 1044 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bb, i64 1060 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bb, i64 1076 ; 2 uses
  %i.ep = load <4 x float>, ptr %i.ee, align 4    ; 4 uses
  %i.eq = load <4 x float>, ptr %i.em, align 4    ; 4 uses
  %i.er = insertelement <4 x float> poison, float %.sroa.6.0.copyload70, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = fmul <4 x float> %i.es, %i.eq
  %i.eu = insertelement <4 x float> poison, float %.sroa.0.0.copyload68, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.ev, <4 x float> %i.et)
  %i.ex = load <4 x float>, ptr %i.en, align 4    ; 4 uses
  %i.ey = insertelement <4 x float> poison, float %.sroa.8.0.copyload72, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.ez, <4 x float> %i.ew)
  %i.fb = load <4 x float>, ptr %i.eo, align 4    ; 4 uses
  %i.fc = insertelement <4 x float> poison, float %.sroa.10.0.copyload74, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fd, <4 x float> %i.fa)
  store <4 x float> %i.fe, ptr %i.ee, align 4
  %i.ff = insertelement <4 x float> poison, float %.sroa.14.0.copyload78, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = fmul <4 x float> %i.fg, %i.eq
  %i.fi = insertelement <4 x float> poison, float %.sroa.12.0.copyload76, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.fj, <4 x float> %i.fh)
  %i.fl = insertelement <4 x float> poison, float %.sroa.16.0.copyload80, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fm, <4 x float> %i.fk)
  %i.fo = insertelement <4 x float> poison, float %.sroa.18.0.copyload82, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fp, <4 x float> %i.fn)
  store <4 x float> %i.fq, ptr %i.em, align 4
  %i.fr = insertelement <4 x float> poison, float %.sroa.22.0.copyload86, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = fmul <4 x float> %i.fs, %i.eq
  %i.fu = insertelement <4 x float> poison, float %.sroa.20.0.copyload84, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.fv, <4 x float> %i.ft)
  %i.fx = insertelement <4 x float> poison, float %.sroa.24.0.copyload88, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fy, <4 x float> %i.fw)
  %i.ga = insertelement <4 x float> poison, float %.sroa.26.0.copyload90, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.gb, <4 x float> %i.fz)
  store <4 x float> %i.gc, ptr %i.en, align 4
  %i.gd = insertelement <4 x float> poison, float %.sroa.30.0.copyload94, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gf = fmul <4 x float> %i.ge, %i.eq
  %i.gg = insertelement <4 x float> poison, float %.sroa.28.0.copyload92, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.gh, <4 x float> %i.gf)
  %i.gj = insertelement <4 x float> poison, float %.sroa.32.0.copyload96, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.gk, <4 x float> %i.gi)
  %i.gm = insertelement <4 x float> poison, float %.sroa.34.0.copyload98, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.gn, <4 x float> %i.gl)
  store <4 x float> %i.go, ptr %i.eo, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 1144) #24
  resume { ptr, i32 } %i.gp

bb.n:                                             ; preds = %bb.l, %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.gq = trunc nuw nsw i64 %indvars.iv125 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.gq, ptr noundef nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre129 = load ptr, ptr %i.a, align 8
  %.pre130 = load ptr, ptr %3, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.h, %bb.n
  %i.gr = phi ptr [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %.pre130, %bb.n ] ; 2 uses
  %i.gs = phi ptr [ %i.aw, %bb.g ], [ %i.aw, %bb.h ], [ %.pre129, %bb.n ] ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = sdiv exact i64 %i.gv, 1204
  %sext135 = shl i64 %i.gw, 32
  %i.gx = ashr exact i64 %sext135, 32
  %i.gy = icmp slt i64 %indvars.iv.next126, %i.gx
  br i1 %i.gy, label %bb.g, label %._crit_edge123.loopexit, !llvm.loop !61

bb.p:                                             ; preds = %._crit_edge123, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
