inline.NumInlined: 998
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11MD5Importer14MakeDataUniqueERNS_3MD58MeshDescE:bb.a
  %i.dt = shl nuw i64 1, %i.ds                    ; 2 uses
  %i.du = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.dv = and i64 %i.dt, %i.du
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
  %i.av = phi ptr [ %i.ai, %.lr.ph122 ], [ %i.fn, %bb.o ] ; 3 uses
  %i.aw = phi ptr [ %i.ah, %.lr.ph122 ], [ %i.fo, %bb.o ] ; 2 uses
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
  %i.bp = load <2 x float>, ptr %i.bn, align 4    ; 8 uses
  %5 = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %6 = load <2 x float>, ptr %i.bo, align 4       ; 6 uses
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %8 = extractelement <2 x float> %i.bp, i64 0    ; 2 uses
  %i.bq = fneg float %8
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %8, float 1.000000e+00)
  %i.bs = extractelement <2 x float> %i.bp, i64 1 ; 6 uses
  %i.bt = fneg float %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bs, float %i.br)
  %9 = extractelement <2 x float> %6, i64 1       ; 4 uses
  %i.bv = fneg float %9
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %9, float %i.bu) ; 2 uses
  %i.bx = fcmp olt float %i.bw, 0.000000e+00
  br i1 %i.bx, label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = tail call noundef float @sqrtf(float noundef %i.bw) #23
  br label %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit

_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit: ; preds = %bb.j, %bb.k
  %storemerge.i = phi float [ %i.by, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.bz = fneg float %storemerge.i                ; 2 uses
  %10 = fmul <2 x float> %6, %6
  %11 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %12 = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %11)
  %i.ca = tail call float @llvm.fmuladd.f32(float %12, float -2.000000e+00, float 1.000000e+00)
  %i.cb = fmul float %9, %i.bz
  %i.cc = extractelement <2 x float> %i.bp, i64 0 ; 6 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.bs, float %i.cb)
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %11)
  %13 = tail call float @llvm.fmuladd.f32(float %i.ce, float -2.000000e+00, float 1.000000e+00)
  %14 = fmul float %i.cc, %storemerge.i
  %15 = tail call float @llvm.fmuladd.f32(float %i.bs, float %9, float %14)
  %16 = fmul <2 x float> %i.bp, %i.bp
  %17 = extractelement <2 x float> %16, i64 1
  %18 = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %18, float -2.000000e+00, float 1.000000e+00)
  %20 = getelementptr inbounds nuw i8, ptr %i.bf, i64 1072
  store float %i.ca, ptr %20, align 4
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1076
  %21 = insertelement <2 x float> poison, float %storemerge.i, i64 0
  %22 = insertelement <2 x float> %21, float %i.bz, i64 1 ; 2 uses
  %23 = fmul <2 x float> %7, %22
  %24 = shufflevector <2 x float> %i.bp, <2 x float> %6, <2 x i32> <i32 0, i32 3>
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %24, <2 x float> %23)
  %i.cf = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.cd, i64 3
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %26, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = fmul <4 x float> %27, <float 2.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00>
  store <4 x float> %i.cg, ptr %.sroa.4108.0..sroa_idx, align 4
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1092
  store float %13, ptr %.sroa.8110.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1096
  %28 = fmul <2 x float> %5, %22
  %29 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %29, <2 x float> %28)
  %31 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %15, i64 0
  %32 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> %31, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %34 = fmul <4 x float> %33, <float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %34, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1112
  store float %19, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14113.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1132
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  %i.ch = load ptr, ptr %3, align 8
  %i.ci = getelementptr inbounds nuw [1204 x i8], ptr %i.ch, i64 %indvars.iv125 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1032
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1084
  store float %i.ck, ptr %i.cl, align 4
  %i.cm = load ptr, ptr %3, align 8
  %i.cn = getelementptr inbounds nuw [1204 x i8], ptr %i.cm, i64 %indvars.iv125 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1036
  %i.cp = load float, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 1100
  store float %i.cp, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %3, align 8
  %i.cs = getelementptr inbounds nuw [1204 x i8], ptr %i.cr, i64 %indvars.iv125 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1040
  %i.cu = load float, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 1116
  store float %i.cu, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %3, align 8
  %i.cx = getelementptr inbounds nuw [1204 x i8], ptr %i.cw, i64 %indvars.iv125 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1072 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cz, ptr noundef nonnull align 4 dereferenceable(64) %i.cy, i64 64, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.bb, i64 1028 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.da, ptr noundef nonnull align 4 dereferenceable(64) %i.cy, i64 64, i1 false)
  %i.db = load ptr, ptr %3, align 8
  %i.dc = getelementptr inbounds nuw [1204 x i8], ptr %i.db, i64 %indvars.iv125
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1136
  %i.de = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %i.dd) ; 0 uses
  br i1 %.not65, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.df = load ptr, ptr %3, align 8
  %i.dg = getelementptr inbounds nuw [1204 x i8], ptr %i.df, i64 %i.aq ; 16 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1136
  %.sroa.0.0.copyload68 = load float, ptr %i.dh, align 4
  %.sroa.6.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1140
  %.sroa.6.0.copyload70 = load float, ptr %.sroa.6.0..sroa_idx69, align 4
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1144
  %.sroa.8.0.copyload72 = load float, ptr %.sroa.8.0..sroa_idx71, align 4
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1148
  %.sroa.10.0.copyload74 = load float, ptr %.sroa.10.0..sroa_idx73, align 4
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1152
  %.sroa.12.0.copyload76 = load float, ptr %.sroa.12.0..sroa_idx75, align 4
  %.sroa.14.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1156
  %.sroa.14.0.copyload78 = load float, ptr %.sroa.14.0..sroa_idx77, align 4
  %.sroa.16.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1160
  %.sroa.16.0.copyload80 = load float, ptr %.sroa.16.0..sroa_idx79, align 4
  %.sroa.18.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1164
  %.sroa.18.0.copyload82 = load float, ptr %.sroa.18.0..sroa_idx81, align 4
  %.sroa.20.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1168
  %.sroa.20.0.copyload84 = load float, ptr %.sroa.20.0..sroa_idx83, align 4
  %.sroa.22.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1172
  %.sroa.22.0.copyload86 = load float, ptr %.sroa.22.0..sroa_idx85, align 4
  %.sroa.24.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1176
  %.sroa.24.0.copyload88 = load float, ptr %.sroa.24.0..sroa_idx87, align 4
  %.sroa.26.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1180
  %.sroa.26.0.copyload90 = load float, ptr %.sroa.26.0..sroa_idx89, align 4
  %.sroa.28.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1184
  %.sroa.28.0.copyload92 = load float, ptr %.sroa.28.0..sroa_idx91, align 4
  %.sroa.30.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1188
  %.sroa.30.0.copyload94 = load float, ptr %.sroa.30.0..sroa_idx93, align 4
  %.sroa.32.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1192
  %.sroa.32.0.copyload96 = load float, ptr %.sroa.32.0..sroa_idx95, align 4
  %.sroa.34.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.dg, i64 1196
  %.sroa.34.0.copyload98 = load float, ptr %.sroa.34.0..sroa_idx97, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.bb, i64 1044 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1060 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bb, i64 1076 ; 2 uses
  %i.dl = load <4 x float>, ptr %i.da, align 4    ; 4 uses
  %i.dm = load <4 x float>, ptr %i.di, align 4    ; 4 uses
  %i.dn = insertelement <4 x float> poison, float %.sroa.6.0.copyload70, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul <4 x float> %i.do, %i.dm
  %i.dq = insertelement <4 x float> poison, float %.sroa.0.0.copyload68, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dr, <4 x float> %i.dp)
  %i.dt = load <4 x float>, ptr %i.dj, align 4    ; 4 uses
  %i.du = insertelement <4 x float> poison, float %.sroa.8.0.copyload72, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.dv, <4 x float> %i.ds)
  %i.dx = load <4 x float>, ptr %i.dk, align 4    ; 4 uses
  %i.dy = insertelement <4 x float> poison, float %.sroa.10.0.copyload74, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dz, <4 x float> %i.dw)
  store <4 x float> %i.ea, ptr %i.da, align 4
  %i.eb = insertelement <4 x float> poison, float %.sroa.14.0.copyload78, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fmul <4 x float> %i.ec, %i.dm
  %i.ee = insertelement <4 x float> poison, float %.sroa.12.0.copyload76, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = insertelement <4 x float> poison, float %.sroa.16.0.copyload80, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.ei, <4 x float> %i.eg)
  %i.ek = insertelement <4 x float> poison, float %.sroa.18.0.copyload82, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.el, <4 x float> %i.ej)
  store <4 x float> %i.em, ptr %i.di, align 4
  %i.en = insertelement <4 x float> poison, float %.sroa.22.0.copyload86, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = fmul <4 x float> %i.eo, %i.dm
  %i.eq = insertelement <4 x float> poison, float %.sroa.20.0.copyload84, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.er, <4 x float> %i.ep)
  %i.et = insertelement <4 x float> poison, float %.sroa.24.0.copyload88, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.eu, <4 x float> %i.es)
  %i.ew = insertelement <4 x float> poison, float %.sroa.26.0.copyload90, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.ex, <4 x float> %i.ev)
  store <4 x float> %i.ey, ptr %i.dj, align 4
  %i.ez = insertelement <4 x float> poison, float %.sroa.30.0.copyload94, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fmul <4 x float> %i.fa, %i.dm
  %i.fc = insertelement <4 x float> poison, float %.sroa.28.0.copyload92, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.fd, <4 x float> %i.fb)
  %i.ff = insertelement <4 x float> poison, float %.sroa.32.0.copyload96, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.fg, <4 x float> %i.fe)
  %i.fi = insertelement <4 x float> poison, float %.sroa.34.0.copyload98, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.fj, <4 x float> %i.fh)
  store <4 x float> %i.fk, ptr %i.dk, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 1144) #24
  resume { ptr, i32 } %i.fl

bb.n:                                             ; preds = %bb.l, %_ZN6Assimp3MD517ConvertQuaternionERK10aiVector3tIfER13aiQuaterniontIfE.exit
  %i.fm = trunc nuw nsw i64 %indvars.iv125 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_MeshEiP6aiNodeRSt6vectorINS_3MD58BoneDescESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.fm, ptr noundef nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre129 = load ptr, ptr %i.a, align 8
  %.pre130 = load ptr, ptr %3, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.h, %bb.n
  %i.fn = phi ptr [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %.pre130, %bb.n ] ; 2 uses
  %i.fo = phi ptr [ %i.aw, %bb.g ], [ %i.aw, %bb.h ], [ %.pre129, %bb.n ] ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = sdiv exact i64 %i.fr, 1204
  %sext135 = shl i64 %i.fs, 32
  %i.ft = ashr exact i64 %sext135, 32
  %i.fu = icmp slt i64 %indvars.iv.next126, %i.ft
  br i1 %i.fu, label %bb.g, label %._crit_edge123.loopexit, !llvm.loop !61

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
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 8 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 5 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.y = fneg <2 x float> %i.x                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.hn = fmul <4 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hq = phi <4 x float> [ %i.er, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hp, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ht = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hq, ptr %0, align 4
  store <4 x float> %i.hr, ptr %i.p, align 4
  store <4 x float> %i.hs, ptr %i.o, align 4
  store <4 x float> %i.ht, ptr %i.m, align 4
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(140) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.au = phi ptr [ %i.ai, %.lr.ph110 ], [ %i.cr, %bb.n ] ; 3 uses
  %i.av = phi ptr [ %i.ah, %.lr.ph110 ], [ %i.cs, %bb.n ] ; 2 uses
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
  %6 = load float, ptr %i.bu, align 4             ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 1040 ; 2 uses
  store float %6, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %7 = load float, ptr %i.bx, align 4             ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 1056 ; 2 uses
  store float %7, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ca = load float, ptr %i.bz, align 4          ; 3 uses
  store float %i.ca, ptr %.sroa.8.0..sroa_idx.i, align 8
  %8 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1048
  %9 = load ptr, ptr %8, align 8                  ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %13 = load float, ptr %10, align 4, !noalias !64 ; 4 uses
  %14 = fneg float %13                            ; 3 uses
  %.sroa.864.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1036
  %.sroa.1270.0..sroa_idx71.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 1044
  %.sroa.2082.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1060
  %15 = fadd float %6, 0.000000e+00
  %16 = fadd float %7, 0.000000e+00
  %17 = load <2 x float>, ptr %11, align 4, !noalias !64 ; 5 uses
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = load <2 x float>, ptr %12, align 4, !noalias !64 ; 8 uses
  %19 = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %20 = extractelement <2 x float> %i.cb, i64 1   ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %14, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %13, i64 1
  %i.ce = fmul <2 x float> %18, %i.cd
  %21 = shufflevector <2 x float> %i.cb, <2 x float> %17, <2 x i32> <i32 0, i32 3> ; 2 uses
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %21, <2 x float> %i.ce)
  %23 = fmul <2 x float> %22, splat (float 2.000000e+00) ; 5 uses
  %24 = extractelement <2 x float> %i.cb, i64 0   ; 2 uses
  %25 = fmul float %24, %14
  %26 = insertelement <2 x float> %21, float -2.000000e+00, i64 0
  %i.cf = insertelement <2 x float> <float 1.000000e+00, float poison>, float %25, i64 1
  %27 = fmul float %24, %13
  %28 = shufflevector <2 x float> %17, <2 x float> %i.cb, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %29 = insertelement <4 x float> %28, float %13, i64 0
  %30 = insertelement <4 x float> %29, float %14, i64 1
  %31 = fmul <4 x float> %28, %30                 ; 2 uses
  %i.cg = extractelement <4 x float> %31, i64 2
  %i.ch = tail call float @llvm.fmuladd.f32(float %20, float %20, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %32 = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> zeroinitializer
  %33 = shufflevector <2 x float> %i.cb, <2 x float> %17, <4 x i32> <i32 1, i32 3, i32 0, i32 0>
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %33, <4 x float> %31) ; 3 uses
  %35 = extractelement <4 x float> %34, i64 0
  %36 = fmul float %35, 2.000000e+00              ; 2 uses
  %37 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %38 = shufflevector <2 x float> %37, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3>
  %39 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %26, <2 x float> %i.cf) ; 2 uses
  %40 = fmul <2 x float> %39, <float 1.000000e+00, float 2.000000e+00> ; 2 uses
  %41 = extractelement <4 x float> %34, i64 1
  %i.cj = fmul float %41, 2.000000e+00            ; 3 uses
  %42 = shufflevector <2 x float> %19, <2 x float> %37, <2 x i32> <i32 0, i32 3>
  %43 = shufflevector <2 x float> %17, <2 x float> <float poison, float -2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %44 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %27, i64 0
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %43, <2 x float> %44) ; 3 uses
  %46 = fmul <2 x float> %45, <float 2.000000e+00, float 1.000000e+00> ; 3 uses
  %47 = fmul float %36, 0.000000e+00              ; 2 uses
  %48 = fmul <2 x float> %40, zeroinitializer     ; 3 uses
  %i.ck = extractelement <2 x float> %23, i64 1
  %foldExtExtBinop = fadd <2 x float> %23, %48
  %i.cl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %49 = extractelement <2 x float> %45, i64 1     ; 2 uses
  %50 = tail call float @llvm.fmuladd.f32(float %49, float 0.000000e+00, float %i.cl)
  %51 = tail call float @llvm.fmuladd.f32(float %6, float 0.000000e+00, float %50)
  %52 = extractelement <2 x float> %40, i64 1
  %53 = tail call float @llvm.fmuladd.f32(float %i.ck, float 0.000000e+00, float %52)
  %54 = tail call float @llvm.fmuladd.f32(float %49, float 0.000000e+00, float %53)
  %55 = tail call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %47) ; 2 uses
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> zeroinitializer, <2 x float> %48) ; 3 uses
  %foldExtExtBinop128 = fadd <2 x float> %45, %57
  %58 = insertelement <2 x float> poison, float %i.ca, i64 0 ; 2 uses
  %59 = insertelement <2 x float> %58, float %i.cj, i64 1
  %60 = shufflevector <2 x float> %foldExtExtBinop128, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cm = insertelement <2 x float> %60, float %56, i64 1
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> zeroinitializer, <2 x float> %i.cm) ; 2 uses
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> zeroinitializer, <2 x float> %57)
  %61 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %62 = insertelement <4 x float> %61, float %i.ca, i64 0
  %63 = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %64 = shufflevector <4 x float> %62, <4 x float> %63, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %65 = fadd <4 x float> %64, zeroinitializer
  %foldExtExtBinop130 = fadd <2 x float> %48, %23
  %66 = fadd float %i.ci, %47
  %67 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %68 = insertelement <2 x float> %67, float %i.cj, i64 0 ; 2 uses
  %69 = insertelement <2 x float> poison, float %66, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> %foldExtExtBinop130, <2 x i32> <i32 0, i32 2>
  %71 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> zeroinitializer, <2 x float> %70)
  %72 = insertelement <2 x float> poison, float %6, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> zeroinitializer, <2 x float> %71)
  store <2 x float> %74, ptr %i.bv, align 4
  store float %51, ptr %.sroa.864.0..sroa_idx65, align 4
  store float %15, ptr %i.bw, align 8
  %75 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %76 = insertelement <2 x float> %75, float %i.ci, i64 0
  %77 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %78 = insertelement <2 x float> %77, float %36, i64 0
  %79 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %76, <2 x float> zeroinitializer, <2 x float> %78)
  %80 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> zeroinitializer, <2 x float> %79)
  %81 = insertelement <2 x float> poison, float %7, i64 0
  %82 = shufflevector <2 x float> %81, <2 x float> poison, <2 x i32> zeroinitializer
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %82, <2 x float> zeroinitializer, <2 x float> %80)
  store <2 x float> %83, ptr %.sroa.1270.0..sroa_idx71.a, align 4
  store float %55, ptr %.sroa.6.0..sroa_idx.i, align 4
  store float %16, ptr %i.by, align 8
  %foldExtExtBinop132 = fadd <2 x float> %46, %57
  %84 = fadd float %i.cj, %56
  %85 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  %86 = insertelement <2 x float> poison, float %84, i64 0
  %87 = shufflevector <2 x float> %86, <2 x float> %foldExtExtBinop132, <2 x i32> <i32 0, i32 2>
  %88 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %85, <2 x float> zeroinitializer, <2 x float> %87)
  store <2 x float> %88, ptr %.sroa.2082.0..sroa_idx83, align 4
  %i.cp = extractelement <2 x float> %i.cn, i64 0
  store float %i.cp, ptr %.sroa.7.0..sroa_idx.i, align 4
  store <4 x float> %65, ptr %.sroa.8.0..sroa_idx.i, align 8
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.cq = trunc nuw nsw i64 %indvars.iv114 to i32
  tail call void @_ZN6Assimp11MD5Importer17AttachChilds_AnimEiP6aiNodeRSt6vectorINS_3MD512AnimBoneDescESaIS5_EEPPK10aiNodeAnim(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.cq, ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4)
  %.pre118 = load ptr, ptr %i.a, align 8
  %.pre119 = load ptr, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.m
  %i.cr = phi ptr [ %i.au, %bb.g ], [ %i.au, %bb.h ], [ %.pre119, %bb.m ] ; 2 uses
  %i.cs = phi ptr [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %.pre118, %bb.m ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 1040
  %sext124 = shl i64 %i.cw, 32
  %i.cx = ashr exact i64 %sext124, 32
  %i.cy = icmp slt i64 %indvars.iv.next115, %i.cx
  br i1 %i.cy, label %bb.g, label %._crit_edge111.loopexit, !llvm.loop !67

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
bb.a:
end_hunk_1
