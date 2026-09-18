Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MD5Loader?download=true
inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE:bb.a
  %i.ef = shl nuw i64 1, %i.ee                    ; 2 uses
  %i.eg = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.eh = and i64 %i.ef, %i.eg
  %.not75.2 = icmp eq i64 %i.eh, 0
  br i1 %.not75.2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.eb
  %i.ej = zext i32 %.2.1 to i64
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %i.ei, i64 16, i1 false)
  %i.el = add i32 %.2.1, 1
  %i.em = load ptr, ptr %i.bu, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %.2.1, ptr %i.en, align 4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eo = or i64 %i.ef, %i.eg
  store i64 %i.eo, ptr %i.ed, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.2.2 = phi i32 [ %i.el, %bb.v ], [ %.2.1, %bb.w ]
  %i.ep = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.er = load i32, ptr %i.ep, align 4
  %i.es = load i32, ptr %i.eq, align 4
  store i32 %i.es, ptr %i.ep, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.061.080, i64 16 ; 2 uses
  %.not74 = icmp eq ptr %i.et, %i.bt
  br i1 %.not74, label %._crit_edge.thread, label %.preheader, !llvm.loop !58

bb.y:                                             ; preds = %bb.k, %bb.l, %bb.h, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.g ], [ %i.cl, %bb.h ], [ %i.co, %bb.l ], [ %i.cn, %bb.k ]
  %.not.i.i54 = icmp eq ptr %.sroa.065.0, null
  br i1 %.not.i.i54, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = ptrtoint ptr %.sroa.1671.0 to i64
  %i.ev = ptrtoint ptr %.sroa.065.0 to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr inbounds [8 x i8], ptr %.sroa.1671.0, i64 %i.ey
  tail call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.ew) #24
  br label %.body

.body:                                            ; preds = %bb.z, %bb.y
  resume { ptr, i32 } %.pn.pn.pn

bb.aa:                                            ; preds = %bb.j
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
  %i.ad = zext i32 %i.m to i64
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
  %.pre131 = load ptr, ptr %i.ag, align 8
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %._crit_edge123.loopexit, %bb.f
  %i.as = phi ptr [ %.pre131, %._crit_edge123.loopexit ], [ %i.af, %bb.f ]
  %i.at = load i32, ptr %i.l, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.av
  store ptr %i.aw, ptr %i.ag, align 8
  br label %bb.p

bb.g:                                             ; preds = %.lr.ph122, %bb.o
  %i.ax = phi ptr [ %i.ai, %.lr.ph122 ], [ %i.gj, %bb.o ] ; 3 uses
  %i.ay = phi ptr [ %i.ah, %.lr.ph122 ], [ %i.gk, %bb.o ] ; 2 uses
  %indvars.iv125 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next126, %bb.o ] ; 10 uses
  %.not64 = icmp eq i64 %indvars.iv125, %i.ar
  br i1 %.not64, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [1204 x i8], ptr %i.ax, i64 %indvars.iv125
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1028
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, %1
  br i1 %i.bc, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27 ; 11 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bd)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bf, ptr %i.ag, align 8
  store ptr %i.bd, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bg = load ptr, ptr %3, align 8
  %i.bh = getelementptr inbounds nuw [1204 x i8], ptr %i.bg, i64 %indvars.iv125 ; 11 uses
  %i.bi = load i32, ptr %i.bh, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 1023) ; 3 uses
  store i32 %spec.select.i, ptr %4, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.bj, i64 %i.bk, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bk
  store i8 0, ptr %i.bl, align 1
  store i32 %spec.select.i, ptr %i.bd, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr nonnull align 4 %i.ap, i64 %i.bk, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 1096
  store ptr %2, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 1044
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 1048
  %i.br = load <2 x float>, ptr %i.bp, align 4    ; 5 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 1052
  %i.bu = load <2 x float>, ptr %i.bq, align 4    ; 7 uses
  %i.bv = load float, ptr %i.bt, align 4          ; 7 uses
  %i.bw = fneg float %i.bs
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bs, float 1.000000e+00)
  %i.by = extractelement <2 x float> %i.bu, i64 0 ; 4 uses
  %i.bz = fneg float %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.by, float %i.bx)
  %i.cb = fneg float %i.bv
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bv, float %i.ca) ; 2 uses
  %i.cd = fcmp olt float %i.cc, 0.000000e+00
  br i1 %i.cd, label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = tail call noundef float @sqrtf(float noundef %i.cc) #23
  br label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit

_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit: ; preds = %bb.j, %bb.k
  %storemerge.i = phi float [ %i.ce, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.cf = fneg float %storemerge.i                ; 2 uses
  %i.cg = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x float> %i.cg, float %i.bv, i64 0
  %i.ci = insertelement <2 x float> poison, float %storemerge.i, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cf, i64 1 ; 2 uses
  %i.ck = fmul <2 x float> %i.ch, %i.cj
  %i.cl = fmul float %i.bv, %i.cf
  %i.cm = fmul float %i.bs, %storemerge.i
  %foldExtExtBinop = fmul <2 x float> %i.bu, %i.bu
  %i.cn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float -2.000000e+00, float 1.000000e+00)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 1072
  %i.cr = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.cs = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ct = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float -0.000000e+00, i64 3
  %i.cv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 poison, i32 1, i32 5, i32 3>
  %i.cx = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cy = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.cx, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 1088
  %i.cz = fmul float %i.bv, %i.bv                 ; 2 uses
  %5 = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.cz)
  %6 = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.cz)
  %i.da = insertelement <4 x float> %i.cr, float 0.000000e+00, i64 3
  %7 = insertelement <4 x float> %i.da, float %6, i64 1
  %i.db = shufflevector <4 x float> %7, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.dc = shufflevector <4 x float> %i.cv, <4 x float> <float poison, float -2.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.dd = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.cl, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.cm, i64 2
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dc, <4 x float> %i.de)
  %i.dg = fmul <4 x float> %i.df, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %8 = insertelement <4 x float> %i.cw, float %5, i64 0
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %8, <4 x float> %i.cy)
  %i.di = fmul <4 x float> %i.dh, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %i.di, ptr %i.cq, align 4
  store <4 x float> %i.dg, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 1104
  %9 = shufflevector <2 x float> %i.bu, <2 x float> %i.br, <2 x i32> <i32 0, i32 2>
  %i.dj = fmul <2 x float> %9, %i.cj
  %i.dk = shufflevector <2 x float> %i.br, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.dl = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dm, <2 x float> %i.dj)
  %i.do = fmul <2 x float> %i.dn, splat (float 2.000000e+00)
  store <2 x float> %i.do, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 1112
  store float %i.cp, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14113.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 1132
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  %i.dp = load ptr, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw [1204 x i8], ptr %i.dp, i64 %indvars.iv125 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1032
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1084
  store float %i.ds, ptr %i.dt, align 4
  %i.du = load ptr, ptr %3, align 8
  %i.dv = getelementptr inbounds nuw [1204 x i8], ptr %i.du, i64 %indvars.iv125 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1036
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1100
  store float %i.dx, ptr %i.dy, align 4
  %i.dz = load ptr, ptr %3, align 8
  %i.ea = getelementptr inbounds nuw [1204 x i8], ptr %i.dz, i64 %indvars.iv125 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1040
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1116
  store float %i.ec, ptr %i.ed, align 4
  %i.ee = load ptr, ptr %3, align 8
  %i.ef = getelementptr inbounds nuw [1204 x i8], ptr %i.ee, i64 %indvars.iv125 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1072 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.eh, ptr noundef nonnull align 4 dereferenceable(64) %i.eg, i64 64, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bd, i64 1028 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ei, ptr noundef nonnull align 4 dereferenceable(64) %i.eg, i64 64, i1 false)
  %i.ej = load ptr, ptr %3, align 8
  %i.ek = getelementptr inbounds nuw [1204 x i8], ptr %i.ej, i64 %indvars.iv125
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1136
  %i.em = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %i.el) ; 0 uses
  br i1 %.not65, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.en = load ptr, ptr %3, align 8
  %i.eo = getelementptr inbounds nuw [1204 x i8], ptr %i.en, i64 %i.aq ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1136
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.eo, i64 1152
  %.sroa.20.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.eo, i64 1168
  %.sroa.28.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.eo, i64 1184
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bd, i64 1044 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.bd, i64 1060 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bd, i64 1076 ; 2 uses
  %i.et = load <4 x float>, ptr %i.ep, align 4    ; 4 uses
  %i.eu = load <4 x float>, ptr %i.ei, align 4    ; 4 uses
  %i.ev = load <4 x float>, ptr %i.eq, align 4    ; 4 uses
  %i.ew = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ex = fmul <4 x float> %i.ew, %i.ev
  %i.ey = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ey, <4 x float> %i.ex)
  %i.fa = load <4 x float>, ptr %i.er, align 4    ; 4 uses
  %i.fb = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fb, <4 x float> %i.ez)
  %i.fd = load <4 x float>, ptr %i.es, align 4    ; 4 uses
  %i.fe = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ff = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.fe, <4 x float> %i.fc)
  %i.fg = load <4 x float>, ptr %.sroa.12.0..sroa_idx75, align 4 ; 4 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fi = fmul <4 x float> %i.fh, %i.ev
  %i.fj = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.fj, <4 x float> %i.fi)
  %i.fl = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fl, <4 x float> %i.fk)
  %i.fn = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.fn, <4 x float> %i.fm)
  %i.fp = load <4 x float>, ptr %.sroa.20.0..sroa_idx83, align 4 ; 4 uses
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fr = fmul <4 x float> %i.fq, %i.ev
  %i.fs = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.fs, <4 x float> %i.fr)
  %i.fu = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fu, <4 x float> %i.ft)
  %i.fw = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.fw, <4 x float> %i.fv)
  %i.fy = load <4 x float>, ptr %.sroa.28.0..sroa_idx91, align 4 ; 4 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ga = fmul <4 x float> %i.fz, %i.ev
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.gb, <4 x float> %i.ga)
  %i.gd = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.gd, <4 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.gf, <4 x float> %i.ge)
  store <4 x float> %i.ff, ptr %i.ei, align 4
  store <4 x float> %i.fo, ptr %i.eq, align 4
  store <4 x float> %i.fx, ptr %i.er, align 4
  store <4 x float> %i.gg, ptr %i.es, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 1144) #24
  resume { ptr, i32 } %i.gh

bb.n:                                             ; preds = %bb.l, %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.gi = trunc nuw nsw i64 %indvars.iv125 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.gi, ptr noundef nonnull %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre129 = load ptr, ptr %i.a, align 8
  %.pre130 = load ptr, ptr %3, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.h, %bb.n
  %i.gj = phi ptr [ %i.ax, %bb.g ], [ %i.ax, %bb.h ], [ %.pre130, %bb.n ] ; 2 uses
  %i.gk = phi ptr [ %i.ay, %bb.g ], [ %i.ay, %bb.h ], [ %.pre129, %bb.n ] ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = sdiv exact i64 %i.gn, 1204
  %sext133 = shl i64 %i.go, 32
  %i.gp = ashr exact i64 %sext133, 32
  %i.gq = icmp slt i64 %indvars.iv.next126, %i.gp
  br i1 %i.gq, label %bb.g, label %._crit_edge123.loopexit, !llvm.loop !61

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
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 7 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 4 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.y = fneg <4 x float> %i.x                    ; 4 uses
  %i.z = extractelement <4 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <4 x float> %i.y, i64 3  ; 3 uses
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = fmul float %i.t, %i.al
  %i.an = fmul float %i.t, %i.aj
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.ao)
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = fmul float %i.a, %i.aq                  ; 2 uses
  %i.as = fmul float %i.aj, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ap)
  %i.au = fmul float %i.ar, %i.ac
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.at)
  %foldExtExtBinop = fmul <2 x float> %i.ah, %i.ae
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ax = fmul float %i.aw, %i.ak
  %i.ay = load <2 x float>, ptr %i.q, align 4     ; 7 uses
  %i.az = load <2 x float>, ptr %i.k, align 4     ; 8 uses
  %i.ba = load float, ptr %i.o, align 4           ; 6 uses
  %i.bb = fneg float %i.ba                        ; 4 uses
  %i.bc = load <2 x float>, ptr %i.ag, align 4    ; 8 uses
  %i.bd = load float, ptr %i.p, align 4           ; 5 uses
end_hunk_0
