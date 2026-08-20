inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE:bb.a
bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.2 = phi i32 [ %i.dz, %bb.u ], [ %.2.1, %bb.v ]
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
  %i.av = phi ptr [ %i.ai, %.lr.ph122 ], [ %i.gs, %bb.o ] ; 3 uses
  %i.aw = phi ptr [ %i.ah, %.lr.ph122 ], [ %i.gt, %bb.o ] ; 2 uses
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
  %i.bs = load <2 x float>, ptr %i.bo, align 4    ; 7 uses
  %i.bt = load float, ptr %i.br, align 4          ; 7 uses
  %i.bu = fneg float %i.bq
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bq, float 1.000000e+00)
  %i.bw = extractelement <2 x float> %i.bs, i64 0 ; 4 uses
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
  %storemerge.i = phi float [ %i.cc, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.cd = fneg float %storemerge.i                ; 2 uses
  %i.ce = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cf = insertelement <2 x float> %i.ce, float %i.bt, i64 0
  %i.cg = insertelement <2 x float> poison, float %storemerge.i, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.cd, i64 1 ; 2 uses
  %i.ci = fmul <2 x float> %i.cf, %i.ch
  %i.cj = fmul float %i.bt, %i.cd
  %i.ck = fmul float %i.bq, %storemerge.i
  %foldExtExtBinop = fmul <2 x float> %i.bs, %i.bs
  %i.cl = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.cl)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float -2.000000e+00, float 1.000000e+00)
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 1072
  %i.cp = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.cq = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cp, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cr = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float -0.000000e+00, i64 3
  %i.ct = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <4 x i32> <i32 poison, i32 1, i32 5, i32 3>
  %i.cv = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.cv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1088
  %5 = fmul float %i.bt, %i.bt                    ; 2 uses
  %6 = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %5)
  %i.cx = insertelement <4 x float> %i.cp, float 0.000000e+00, i64 3
  %i.cy = insertelement <4 x float> %i.cx, float %7, i64 1
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.da = shufflevector <4 x float> %i.ct, <4 x float> <float poison, float -2.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %8 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.cj, i64 0
  %i.db = insertelement <4 x float> %8, float %i.ck, i64 2
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.da, <4 x float> %i.db)
  %10 = fmul <4 x float> %9, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.dc = insertelement <4 x float> %i.cu, float %6, i64 0
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.dc, <4 x float> %i.cw)
  %i.de = fmul <4 x float> %i.dd, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %i.de, ptr %i.co, align 4
  store <4 x float> %10, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1104
  %i.df = shufflevector <2 x float> %i.bs, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.dg = fmul <2 x float> %i.df, %i.ch
  %i.dh = shufflevector <2 x float> %i.bp, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.di = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.dg)
  %i.dl = fmul <2 x float> %i.dk, splat (float 2.000000e+00)
  store <2 x float> %i.dl, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1112
  store float %i.cn, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14113.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1132
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  %i.dm = load ptr, ptr %3, align 8
  %i.dn = getelementptr inbounds nuw [1204 x i8], ptr %i.dm, i64 %indvars.iv125 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1032
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1084
  store float %i.dp, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %3, align 8
  %i.ds = getelementptr inbounds nuw [1204 x i8], ptr %i.dr, i64 %indvars.iv125 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1036
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1100
  store float %i.du, ptr %i.dv, align 4
  %i.dw = load ptr, ptr %3, align 8
  %i.dx = getelementptr inbounds nuw [1204 x i8], ptr %i.dw, i64 %indvars.iv125 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1040
  %i.dz = load float, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 1116
  store float %i.dz, ptr %i.ea, align 4
  %i.eb = load ptr, ptr %3, align 8
  %i.ec = getelementptr inbounds nuw [1204 x i8], ptr %i.eb, i64 %indvars.iv125 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1072 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 1136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ee, ptr noundef nonnull align 4 dereferenceable(64) %i.ed, i64 64, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 1028 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ef, ptr noundef nonnull align 4 dereferenceable(64) %i.ed, i64 64, i1 false)
  %i.eg = load ptr, ptr %3, align 8
  %i.eh = getelementptr inbounds nuw [1204 x i8], ptr %i.eg, i64 %indvars.iv125
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1136
  %i.ej = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %i.ei) ; 0 uses
  br i1 %.not65, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.ek = load ptr, ptr %3, align 8
  %i.el = getelementptr inbounds nuw [1204 x i8], ptr %i.ek, i64 %i.aq ; 16 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1136
  %.sroa.0.0.copyload68 = load float, ptr %i.em, align 4
  %.sroa.6.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.el, i64 1140
  %.sroa.6.0.copyload70 = load float, ptr %.sroa.6.0..sroa_idx69, align 4
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.el, i64 1144
  %.sroa.8.0.copyload72 = load float, ptr %.sroa.8.0..sroa_idx71, align 4
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.el, i64 1148
  %.sroa.10.0.copyload74 = load float, ptr %.sroa.10.0..sroa_idx73, align 4
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.el, i64 1152
  %.sroa.12.0.copyload76 = load float, ptr %.sroa.12.0..sroa_idx75, align 4
  %.sroa.14.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.el, i64 1156
  %.sroa.14.0.copyload78 = load float, ptr %.sroa.14.0..sroa_idx77, align 4
  %.sroa.16.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.el, i64 1160
  %.sroa.16.0.copyload80 = load float, ptr %.sroa.16.0..sroa_idx79, align 4
  %.sroa.18.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.el, i64 1164
  %.sroa.18.0.copyload82 = load float, ptr %.sroa.18.0..sroa_idx81, align 4
  %.sroa.20.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.el, i64 1168
  %.sroa.20.0.copyload84 = load float, ptr %.sroa.20.0..sroa_idx83, align 4
  %.sroa.22.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.el, i64 1172
  %.sroa.22.0.copyload86 = load float, ptr %.sroa.22.0..sroa_idx85, align 4
  %.sroa.24.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.el, i64 1176
  %.sroa.24.0.copyload88 = load float, ptr %.sroa.24.0..sroa_idx87, align 4
  %.sroa.26.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.el, i64 1180
  %.sroa.26.0.copyload90 = load float, ptr %.sroa.26.0..sroa_idx89, align 4
  %.sroa.28.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.el, i64 1184
  %.sroa.28.0.copyload92 = load float, ptr %.sroa.28.0..sroa_idx91, align 4
  %.sroa.30.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.el, i64 1188
  %.sroa.30.0.copyload94 = load float, ptr %.sroa.30.0..sroa_idx93, align 4
  %.sroa.32.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.el, i64 1192
  %.sroa.32.0.copyload96 = load float, ptr %.sroa.32.0..sroa_idx95, align 4
  %.sroa.34.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.el, i64 1196
  %.sroa.34.0.copyload98 = load float, ptr %.sroa.34.0..sroa_idx97, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.bb, i64 1044 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bb, i64 1060 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bb, i64 1076 ; 2 uses
  %i.eq = load <4 x float>, ptr %i.ef, align 4    ; 4 uses
  %i.er = load <4 x float>, ptr %i.en, align 4    ; 4 uses
  %i.es = insertelement <4 x float> poison, float %.sroa.6.0.copyload70, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = fmul <4 x float> %i.et, %i.er
  %i.ev = insertelement <4 x float> poison, float %.sroa.0.0.copyload68, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.ew, <4 x float> %i.eu)
  %i.ey = load <4 x float>, ptr %i.eo, align 4    ; 4 uses
  %i.ez = insertelement <4 x float> poison, float %.sroa.8.0.copyload72, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fa, <4 x float> %i.ex)
  %i.fc = load <4 x float>, ptr %i.ep, align 4    ; 4 uses
  %i.fd = insertelement <4 x float> poison, float %.sroa.10.0.copyload74, i64 0
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ff = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.fe, <4 x float> %i.fb)
  store <4 x float> %i.ff, ptr %i.ef, align 4
  %i.fg = insertelement <4 x float> poison, float %.sroa.14.0.copyload78, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fi = fmul <4 x float> %i.fh, %i.er
  %i.fj = insertelement <4 x float> poison, float %.sroa.12.0.copyload76, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.fk, <4 x float> %i.fi)
  %i.fm = insertelement <4 x float> poison, float %.sroa.16.0.copyload80, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fn, <4 x float> %i.fl)
  %i.fp = insertelement <4 x float> poison, float %.sroa.18.0.copyload82, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.fq, <4 x float> %i.fo)
  store <4 x float> %i.fr, ptr %i.en, align 4
  %i.fs = insertelement <4 x float> poison, float %.sroa.22.0.copyload86, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = fmul <4 x float> %i.ft, %i.er
  %i.fv = insertelement <4 x float> poison, float %.sroa.20.0.copyload84, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.fw, <4 x float> %i.fu)
  %i.fy = insertelement <4 x float> poison, float %.sroa.24.0.copyload88, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fz, <4 x float> %i.fx)
  %i.gb = insertelement <4 x float> poison, float %.sroa.26.0.copyload90, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.gc, <4 x float> %i.ga)
  store <4 x float> %i.gd, ptr %i.eo, align 4
  %i.ge = insertelement <4 x float> poison, float %.sroa.30.0.copyload94, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = fmul <4 x float> %i.gf, %i.er
  %i.gh = insertelement <4 x float> poison, float %.sroa.28.0.copyload92, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.gi, <4 x float> %i.gg)
  %i.gk = insertelement <4 x float> poison, float %.sroa.32.0.copyload96, i64 0
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.gl, <4 x float> %i.gj)
  %i.gn = insertelement <4 x float> poison, float %.sroa.34.0.copyload98, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.go, <4 x float> %i.gm)
  store <4 x float> %i.gp, ptr %i.ep, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 1144) #24
  resume { ptr, i32 } %i.gq

bb.n:                                             ; preds = %bb.l, %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.gr = trunc nuw nsw i64 %indvars.iv125 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.gr, ptr noundef nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre129 = load ptr, ptr %i.a, align 8
  %.pre130 = load ptr, ptr %3, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.h, %bb.n
  %i.gs = phi ptr [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %.pre130, %bb.n ] ; 2 uses
  %i.gt = phi ptr [ %i.aw, %bb.g ], [ %i.aw, %bb.h ], [ %.pre129, %bb.n ] ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = sdiv exact i64 %i.gw, 1204
  %sext135 = shl i64 %i.gx, 32
  %i.gy = ashr exact i64 %sext135, 32
  %i.gz = icmp slt i64 %indvars.iv.next126, %i.gy
  br i1 %i.gz, label %bb.g, label %._crit_edge123.loopexit, !llvm.loop !61

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
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim:bb.a
bb.a:
  %5 = alloca %struct.aiString, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 1040
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
  br i1 %.not, label %bb.o, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.n = phi ptr [ %i.c, %.lr.ph ], [ %i.v, %bb.e ] ; 3 uses
  %i.o = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.not48 = icmp eq i64 %indvars.iv, %i.k
  br i1 %.not48, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1028
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.j, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre117 = load ptr, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.v = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %.pre117, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 1040
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !62

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
  %i.am = sdiv exact i64 %i.al, 1040
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.aq = zext i32 %1 to i64
  br label %bb.g

._crit_edge111.loopexit:                          ; preds = %bb.n
  %.pre120 = load i32, ptr %i.l, align 8
  %.pre121 = load ptr, ptr %i.ag, align 8
  %.pre122 = zext i32 %.pre120 to i64
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %bb.f
  %.pre-phi = phi i64 [ %.pre122, %._crit_edge111.loopexit ], [ %i.ad, %bb.f ]
  %i.ar = phi ptr [ %.pre121, %._crit_edge111.loopexit ], [ %i.af, %bb.f ]
  %i.as = sub nsw i64 0, %.pre-phi
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  store ptr %i.at, ptr %i.ag, align 8
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph110, %bb.n
  %i.au = phi ptr [ %i.ai, %.lr.ph110 ], [ %i.dt, %bb.n ] ; 3 uses
  %i.av = phi ptr [ %i.ah, %.lr.ph110 ], [ %i.du, %bb.n ] ; 2 uses
  %indvars.iv114 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next115, %bb.n ] ; 5 uses
  %.not47 = icmp eq i64 %indvars.iv114, %i.aq
  br i1 %.not47, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [1040 x i8], ptr %i.au, i64 %indvars.iv114
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1028
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, %1
  br i1 %i.az, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27 ; 19 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ba)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bc, ptr %i.ag, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %3, align 8
  %i.be = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %indvars.iv114 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 1023) ; 4 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = zext nneg i32 %spec.select.i to i64     ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.bg, i64 %i.bh, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bh
  store i8 0, ptr %i.bi, align 1
  store i32 %spec.select.i, ptr %i.ba, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr nonnull align 4 %i.ap, i64 %i.bh, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 1096
  store ptr %2, ptr %i.bl, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNK8aiStringneERKS_.exit.thread, %bb.j
  %.0 = phi ptr [ %4, %bb.j ], [ %i.bq, %_ZNK8aiStringneERKS_.exit.thread ] ; 2 uses
  %i.bm = load ptr, ptr %.0, align 8              ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, %spec.select.i
  br i1 %i.bo, label %_ZNK8aiStringneERKS_.exit, label %_ZNK8aiStringneERKS_.exit.thread

_ZNK8aiStringneERKS_.exit:                        ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.bp, ptr nonnull %i.bj, i64 %i.bh)
  %.not104 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not104, label %bb.m, label %_ZNK8aiStringneERKS_.exit.thread

_ZNK8aiStringneERKS_.exit.thread:                 ; preds = %bb.k, %_ZNK8aiStringneERKS_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.k, !llvm.loop !63

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 1144) #24
  resume { ptr, i32 } %i.br

bb.m:                                             ; preds = %_ZNK8aiStringneERKS_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 1032
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 1028 ; 2 uses
  store float 1.000000e+00, ptr %i.bv, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1052 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1068 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1072 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1088 ; 2 uses
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.bw = load float, ptr %i.bu, align 4          ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 1040 ; 2 uses
  store float %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bz = load float, ptr %i.by, align 4          ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 1056 ; 2 uses
  store float %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 1048
  %.sroa.864.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1036
  %.sroa.1270.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1044
  %.sroa.2082.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1060
  %i.cd = fadd float %i.bw, 0.000000e+00
  %i.ce = fadd float %i.bz, 0.000000e+00
  %i.cf = load float, ptr %i.cb, align 4          ; 4 uses
  store float %i.cf, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.cg = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cj = load float, ptr %i.ci, align 4, !noalias !64 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cl = load float, ptr %i.ch, align 4, !noalias !64 ; 4 uses
  %i.cm = fneg float %i.cl                        ; 3 uses
  %6 = fmul float %i.cj, %i.cm
  %7 = fmul float %i.cj, %i.cl
  %i.cn = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.co = load <2 x float>, ptr %i.ck, align 4, !noalias !64 ; 8 uses
  %8 = extractelement <2 x float> %i.co, i64 1    ; 3 uses
  %i.cp = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.cm, i64 1
  %i.cr = fmul <2 x float> %i.co, %i.cq
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %9 = fmul float %8, %8
  %i.ct = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cu, <2 x float> %i.cs)
  %i.cw = fmul <2 x float> %i.cv, splat (float 2.000000e+00) ; 4 uses
  %i.cx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  store float %i.cd, ptr %i.bx, align 8
  %10 = extractelement <2 x float> %i.co, i64 0   ; 3 uses
  %i.cz = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0> ; 2 uses
  %i.da = insertelement <4 x float> poison, float %i.cj, i64 0 ; 2 uses
  %11 = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %12 = shufflevector <4 x float> %11, <4 x float> %i.cz, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.db = insertelement <4 x float> %i.da, float %i.cl, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.cm, i64 3
  %13 = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dd = fmul <4 x float> %12, %13
  %14 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %15 = shufflevector <4 x float> %i.cz, <4 x float> %12, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %15, <4 x float> %i.dd) ; 4 uses
  %i.df = extractelement <4 x float> %i.de, i64 1
  %16 = fmul float %i.df, 2.000000e+00            ; 3 uses
  %17 = tail call float @llvm.fmuladd.f32(float %10, float %8, float %7)
  %i.dg = extractelement <4 x float> %i.de, i64 3
  %i.dh = fmul float %i.dg, 2.000000e+00          ; 2 uses
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %19 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %9)
  %20 = tail call float @llvm.fmuladd.f32(float %19, float -2.000000e+00, float 1.000000e+00) ; 4 uses
  %21 = fmul float %i.dh, 0.000000e+00            ; 2 uses
  %22 = fadd float %16, %21
  %23 = tail call float @llvm.fmuladd.f32(float %20, float 0.000000e+00, float %22)
  %24 = tail call float @llvm.fmuladd.f32(float %i.bw, float 0.000000e+00, float %23)
  %25 = insertelement <2 x float> poison, float %i.bz, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = tail call float @llvm.fmuladd.f32(float %16, float 0.000000e+00, float %i.dh)
  %i.di = tail call float @llvm.fmuladd.f32(float %20, float 0.000000e+00, float %27)
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.bz, float 0.000000e+00, float %i.di)
  %28 = tail call float @llvm.fmuladd.f32(float %16, float 0.000000e+00, float %21) ; 2 uses
  %29 = fadd float %20, %28
  %30 = tail call float @llvm.fmuladd.f32(float %i.cf, float 0.000000e+00, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %20, float 0.000000e+00, float %28)
  store float %24, ptr %.sroa.864.0..sroa_idx65, align 4
  store float %i.dj, ptr %.sroa.6.0..sroa_idx.i, align 4
  store float %i.ce, ptr %i.ca, align 8
  %32 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %33 = shufflevector <4 x float> %i.de, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %34 = shufflevector <2 x float> %33, <2 x float> %32, <2 x i32> <i32 0, i32 3>
  %i.dk = insertelement <2 x float> %i.co, float -2.000000e+00, i64 0
  %35 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %6, i64 1
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.dk, <2 x float> %35) ; 3 uses
  %37 = fmul <2 x float> %36, <float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.dl = extractelement <4 x float> %i.de, i64 2
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float -2.000000e+00, float 1.000000e+00) ; 2 uses
  %38 = insertelement <2 x float> %18, float %i.dm, i64 1
  %39 = fmul <2 x float> %38, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %40 = insertelement <2 x float> %39, float %i.dm, i64 1
  %41 = fmul <2 x float> %40, zeroinitializer     ; 2 uses
  %42 = shufflevector <2 x float> %36, <2 x float> %37, <2 x i32> <i32 0, i32 3>
  %43 = fadd <2 x float> %41, %42
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> zeroinitializer, <2 x float> %43)
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> zeroinitializer, <2 x float> %44)
  %46 = shufflevector <2 x float> %36, <2 x float> %37, <2 x i32> <i32 0, i32 3>
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> zeroinitializer, <2 x float> %39)
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> zeroinitializer, <2 x float> %i.dn)
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> zeroinitializer, <2 x float> %i.do)
  %48 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> zeroinitializer, <2 x float> %41) ; 2 uses
  %49 = fadd <2 x float> %i.cw, %48
  %50 = insertelement <2 x float> poison, float %i.cf, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> zeroinitializer, <2 x float> %49)
  %52 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> zeroinitializer, <2 x float> %48)
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %54 = shufflevector <4 x float> %i.cn, <4 x float> %53, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dq = insertelement <4 x float> %54, float %31, i64 3
  %i.dr = fadd <4 x float> %i.dq, zeroinitializer
  store <2 x float> %45, ptr %i.bv, align 4
  store <2 x float> %47, ptr %.sroa.1270.0..sroa_idx71, align 4
  store <2 x float> %i.dp, ptr %.sroa.2082.0..sroa_idx83, align 4
  store float %30, ptr %.sroa.7.0..sroa_idx.i, align 4
  store <4 x float> %i.dr, ptr %.sroa.8.0..sroa_idx.i, align 8
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.ds = trunc nuw nsw i64 %indvars.iv114 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.ds, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4)
  %.pre118 = load ptr, ptr %i.a, align 8
  %.pre119 = load ptr, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.m
  %i.dt = phi ptr [ %i.au, %bb.g ], [ %i.au, %bb.h ], [ %.pre119, %bb.m ] ; 2 uses
  %i.du = phi ptr [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %.pre118, %bb.m ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 1040
  %sext124 = shl i64 %i.dy, 32
  %i.dz = ashr exact i64 %sext124, 32
  %i.ea = icmp slt i64 %indvars.iv.next115, %i.dz
  br i1 %i.ea, label %bb.g, label %._crit_edge111.loopexit, !llvm.loop !67

bb.o:                                             ; preds = %._crit_edge111, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA32_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(32) %1) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #23
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA32_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

declare void @_ZN6Assimp3MD59MD5ParserC1EPcj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6Assimp3MD513MD5MeshParserC1ERSt6vectorINS0_7SectionESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3MD513MD5MeshParserD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
