Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ScaleProcess?download=true
inline.NumInlined: 69
inline.NumDeleted: 22
begin_hunk_0_@llvm.lifetime.start.p0
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 7 uses
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiQuaterniont, align 16      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load float, ptr %i.a, align 8
  %i.c = fcmp oeq float %i.b, 1.000000e+00
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %.preheader157

.preheader157:                                    ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader156, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader157
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.c

.preheader156:                                    ; preds = %._crit_edge162, %.preheader157
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not182 = icmp eq i32 %i.l, 0
  br i1 %.not182, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %.preheader156
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph164, %._crit_edge162
  %i.t = phi i32 [ %i.i, %.lr.ph164 ], [ %i.aa, %._crit_edge162 ]
  %indvars.iv191 = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next192, %._crit_edge162 ] ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv191
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1048 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not180 = icmp eq i32 %i.y, 0
  br i1 %.not180, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1056
  br label %bb.d

._crit_edge162.loopexit:                          ; preds = %._crit_edge
  %.pre209 = load i32, ptr %i.h, align 8
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %bb.c
  %i.aa = phi i32 [ %.pre209, %._crit_edge162.loopexit ], [ %i.t, %bb.c ] ; 2 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next192, %i.ab
  br i1 %i.ac, label %bb.c, label %.preheader156, !llvm.loop !4

bb.d:                                             ; preds = %.lr.ph161, %._crit_edge
  %i.ad = phi i32 [ %i.y, %.lr.ph161 ], [ %i.ak, %._crit_edge ]
  %indvars.iv188 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next189, %._crit_edge ] ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv188
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %.not181 = icmp eq i32 %i.ai, 0
  br i1 %.not181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1032
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.x, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.ak = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ad, %bb.d ] ; 2 uses
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next189, %i.al
  br i1 %i.am, label %bb.d, label %._crit_edge162.loopexit, !llvm.loop !5

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.ap = load float, ptr %i.a, align 8           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.aq, align 4
  %i.as = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %i.ar
  store <2 x float> %i.au, ptr %i.aq, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fmul float %i.ap, %i.aw
  store float %i.ax, ptr %i.av, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.ah, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !6

._crit_edge179:                                   ; preds = %._crit_edge176, %.preheader156
  %i.bb = load ptr, ptr %i.e, align 8
  call void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.bb, i32 noundef 0)
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph178, %._crit_edge176
  %indvars.iv206 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next207, %._crit_edge176 ] ; 2 uses
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv206
  %i.be = load ptr, ptr %i.bd, align 8            ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %.not183 = icmp eq i32 %i.bg, 0
  br i1 %.not183, label %.preheader155, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  br label %bb.g

.preheader155:                                    ; preds = %bb.g, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 216 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %.not184 = icmp eq i32 %i.bj, 0
  br i1 %.not184, label %.preheader, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader155
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph167, %bb.g
  %indvars.iv194 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next195, %bb.g ] ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv194 ; 3 uses
  %i.bn = load float, ptr %i.a, align 8           ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bm, align 4
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bo
  store <2 x float> %i.br, ptr %i.bm, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fmul float %i.bn, %i.bt
  store float %i.bu, ptr %i.bs, align 4
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.bv = load i32, ptr %i.bf, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next195, %i.bw
  br i1 %i.bx, label %bb.g, label %.preheader155, !llvm.loop !7

.preheader:                                       ; preds = %bb.h, %.preheader155
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 1264 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %.not185 = icmp eq i32 %i.bz, 0
  br i1 %.not185, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 1272
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph169, %bb.h
  %indvars.iv197 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next198, %bb.h ] ; 2 uses
  %i.cb = load ptr, ptr %i.bk, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv197
  %i.cd = load ptr, ptr %i.cc, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store <2 x float> zeroinitializer, ptr %3, align 8
  store float 0.000000e+00, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1056 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.cf = load float, ptr %i.a, align 8           ; 2 uses
  %i.cg = load float, ptr %2, align 8
  %i.ch = fmul float %i.cf, %i.cg                 ; 2 uses
  %i.ci = load float, ptr %i.s, align 4, !noalias !14 ; 6 uses
  %i.cj = load float, ptr %4, align 16, !noalias !14 ; 3 uses
  %i.ck = fneg float %i.cj                        ; 2 uses
  %i.cl = fmul float %i.ci, %i.ck
  %i.cm = fadd float %i.ch, 0.000000e+00
  %i.cn = load <2 x float>, ptr %i.n, align 4
  %i.co = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cp, %i.cn           ; 3 uses
  %i.cr = fadd <2 x float> %i.cq, zeroinitializer ; 2 uses
  %i.cs = load <1 x float>, ptr %3, align 8
  %i.ct = insertelement <3 x float> <float -2.000000e+00, float poison, float poison>, float %i.ci, i64 1
  %i.cu = load <2 x float>, ptr %i.r, align 4, !noalias !14 ; 9 uses
  %5 = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %6 = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cw = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cx = extractelement <2 x float> %i.cu, i64 1 ; 4 uses
  %i.cy = fmul float %i.cx, %i.cj
  %i.cz = shufflevector <3 x float> %i.ct, <3 x float> %i.cw, <3 x i32> <i32 0, i32 1, i32 4>
  %i.da = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.cy, i64 1
  %i.db = insertelement <3 x float> %i.da, float %i.cl, i64 2
  %i.dc = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dd = insertelement <2 x float> %i.dc, float %i.ci, i64 0
  %i.de = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.ck, i64 1 ; 2 uses
  %i.dg = fmul <2 x float> %i.dd, %i.df
  %7 = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison> ; 2 uses
  %8 = shufflevector <3 x float> %7, <3 x float> %6, <3 x i32> <i32 0, i32 4, i32 poison>
  %9 = insertelement <3 x float> <float poison, float poison, float -2.000000e+00>, float %i.cx, i64 0
  %10 = insertelement <3 x float> %9, float %i.ci, i64 1
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.di = insertelement <3 x float> %i.dh, float 1.000000e+00, i64 2
  %i.dj = fmul <2 x float> %i.cu, %i.df
  %i.dk = insertelement <2 x float> %i.cu, float %i.ci, i64 0 ; 2 uses
  %i.dl = fmul <2 x float> %i.dk, %i.dk           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.dm)
  %i.do = insertelement <3 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <3 x float> %i.do, <3 x float> %i.cv, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.dq = shufflevector <3 x float> %i.dp, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.dr = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dq, <3 x float> %i.cz, <3 x float> %i.db) ; 3 uses
  %i.ds = fmul <3 x float> %i.dr, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dc, <2 x float> %i.dl)
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dv = shufflevector <3 x float> %8, <3 x float> %i.du, <3 x i32> <i32 0, i32 1, i32 3>
  %i.dw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dv, <3 x float> %10, <3 x float> %i.di) ; 2 uses
  %i.dx = fmul <3 x float> %i.dw, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %11 = shufflevector <3 x float> %7, <3 x float> %i.du, <3 x i32> <i32 0, i32 4, i32 poison>
  %12 = shufflevector <3 x float> %11, <3 x float> %5, <3 x i32> <i32 0, i32 1, i32 4>
  %13 = insertelement <3 x float> <float poison, float -2.000000e+00, float poison>, float %i.ci, i64 0
  %14 = shufflevector <3 x float> %13, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.dy = shufflevector <2 x float> %i.dj, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.dz = insertelement <3 x float> %i.dy, float 1.000000e+00, i64 1
  %i.ea = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %12, <3 x float> %14, <3 x float> %i.dz) ; 3 uses
  %i.eb = fmul <3 x float> %i.ea, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.ec = fmul <3 x float> %i.dx, zeroinitializer ; 2 uses
  %i.ed = fadd <3 x float> %i.ds, %i.ec
  %i.ee = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eb, <3 x float> zeroinitializer, <3 x float> %i.ed)
  %i.ef = insertelement <3 x float> poison, float %i.ch, i64 0
  %i.eg = shufflevector <3 x float> %i.ef, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eh = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eg, <3 x float> zeroinitializer, <3 x float> %i.ee) ; 3 uses
  %i.ei = shufflevector <1 x float> %i.cs, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.ek = shufflevector <3 x float> %i.eh, <3 x float> poison, <4 x i32> zeroinitializer
  %i.el = shufflevector <3 x float> %i.eh, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.em = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1072
  %i.eo = load <2 x float>, ptr %i.p, align 4     ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %i.q, align 8
  %i.ep = shufflevector <3 x float> %i.ds, <3 x float> %i.dr, <3 x i32> <i32 1, i32 3, i32 2>
  %i.eq = shufflevector <3 x float> %i.dx, <3 x float> %i.dw, <3 x i32> <i32 1, i32 0, i32 5>
  %i.er = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ep, <3 x float> zeroinitializer, <3 x float> %i.eq)
  %i.es = shufflevector <3 x float> %i.ea, <3 x float> %i.eb, <3 x i32> <i32 1, i32 3, i32 5>
  %i.et = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.es, <3 x float> zeroinitializer, <3 x float> %i.er)
  %i.eu = shufflevector <2 x float> %i.cq, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ev = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eu, <3 x float> zeroinitializer, <3 x float> %i.et) ; 3 uses
  %i.ew = shufflevector <3 x float> %i.eh, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ex = shufflevector <2 x float> %i.eo, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.ey = fmul <4 x float> %i.ew, %i.ex
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.ek, <4 x float> %i.ey)
  %i.fa = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fb = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.el, <4 x float> %i.ez)
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fc)
  %i.fe = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fa, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ff = shufflevector <3 x float> %i.ev, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fg = fmul <4 x float> %i.fe, %i.ff
  %i.fh = shufflevector <3 x float> %i.ev, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.fh, <4 x float> %i.fg)
  %i.fj = shufflevector <3 x float> %i.ev, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fj, <4 x float> %i.fi)
  %i.fl = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fk)
  store <4 x float> %i.fd, ptr %i.ce, align 8
  store <4 x float> %i.fm, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1088
  %i.fn = shufflevector <3 x float> %i.dr, <3 x float> %i.ds, <3 x i32> <i32 0, i32 4, i32 5>
  %i.fo = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fn, <3 x float> zeroinitializer, <3 x float> %i.ec) ; 2 uses
  %i.fp = shufflevector <3 x float> %i.eb, <3 x float> %i.ea, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.fq = fadd <3 x float> %i.fp, %i.fo
  %i.fr = shufflevector <2 x float> %i.cq, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fs = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fr, <3 x float> zeroinitializer, <3 x float> %i.fq) ; 3 uses
  %i.ft = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.fv = shufflevector <3 x float> %i.fs, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fw = fmul <4 x float> %i.fu, %i.fv
  %i.fx = shufflevector <3 x float> %i.fs, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.fx, <4 x float> %i.fw)
  %i.fz = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.5.0.copyload, i64 2 ; 2 uses
  %i.ga = shufflevector <3 x float> %i.fs, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.ga, <4 x float> %i.fy)
  %i.gc = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gb)
  store <4 x float> %i.gd, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1104
  %i.ge = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fp, <3 x float> zeroinitializer, <3 x float> %i.fo)
  %i.gf = fadd <3 x float> %i.ge, zeroinitializer ; 3 uses
  %i.gg = shufflevector <3 x float> %i.gf, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gh = fmul <4 x float> %i.fu, %i.gg
  %i.gi = shufflevector <3 x float> %i.gf, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.gi, <4 x float> %i.gh)
  %i.gk = shufflevector <3 x float> %i.gf, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.gk, <4 x float> %i.gj)
  %i.gm = fadd <4 x float> %i.gl, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.gm, ptr %.sroa.39.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.gn = load i32, ptr %i.bi, align 8
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp samesign ult i64 %indvars.iv.next198, %i.go
  br i1 %i.gp, label %bb.h, label %.preheader, !llvm.loop !10

._crit_edge176:                                   ; preds = %._crit_edge173, %.preheader
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.gq = load i32, ptr %i.k, align 8
  %i.gr = zext i32 %i.gq to i64
  %i.gs = icmp samesign ult i64 %indvars.iv.next207, %i.gr
  br i1 %i.gs, label %bb.f, label %._crit_edge179, !llvm.loop !11

bb.i:                                             ; preds = %.lr.ph175, %._crit_edge173
  %i.gt = phi i32 [ %i.bz, %.lr.ph175 ], [ %i.ha, %._crit_edge173 ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next204, %._crit_edge173 ] ; 2 uses
  %i.gu = load ptr, ptr %i.ca, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv203
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1192 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8
  %.not186 = icmp eq i32 %i.gy, 0
  br i1 %.not186, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 1032
  br label %bb.j

._crit_edge173.loopexit:                          ; preds = %bb.j
  %.pre210 = load i32, ptr %i.by, align 8
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %._crit_edge173.loopexit, %bb.i
  %i.ha = phi i32 [ %.pre210, %._crit_edge173.loopexit ], [ %i.gt, %bb.i ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.hb = zext i32 %i.ha to i64
  %i.hc = icmp samesign ult i64 %indvars.iv.next204, %i.hb
  br i1 %i.hc, label %bb.i, label %._crit_edge176, !llvm.loop !12

bb.j:                                             ; preds = %.lr.ph172, %bb.j
  %indvars.iv200 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next201, %bb.j ] ; 2 uses
  %i.hd = load ptr, ptr %i.gz, align 8
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.hd, i64 %indvars.iv200 ; 3 uses
  %i.hf = load float, ptr %i.a, align 8           ; 2 uses
  %i.hg = load <2 x float>, ptr %i.he, align 4
  %i.hh = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x float> %i.hi, %i.hg
  store <2 x float> %i.hj, ptr %i.he, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4
  %i.hm = fmul float %i.hf, %i.hl
  store float %i.hm, ptr %i.hk, align 4
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.hn = load i32, ptr %i.gx, align 8
  %i.ho = zext i32 %i.hn to i64
  %i.hp = icmp samesign ult i64 %indvars.iv.next201, %i.ho
  br i1 %i.hp, label %bb.j, label %._crit_edge173.loopexit, !llvm.loop !13

bb.k:                                             ; preds = %bb.b, %bb.a, %._crit_edge179
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.k, align 4            ; 4 uses
  %i.w = load float, ptr %0, align 4              ; 3 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.c, align 4            ; 2 uses
  %i.z = load float, ptr %i.m, align 4            ; 4 uses
  %i.aa = load float, ptr %i.g, align 4           ; 3 uses
  %i.ab = fmul float %i.x, %i.x
  %i.ac = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ab)
  %i.ag = insertelement <2 x float> %i.p, float %i.w, i64 1 ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ag, <2 x float> %i.ae)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.af)
  %i.aj = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.aa, i64 1 ; 2 uses
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ak, <2 x float> %i.ah)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.ai) ; 3 uses
  %i.am = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.al) ; 4 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  store float %i.an, ptr %1, align 4
  store float %sqrt.i31, ptr %i.u, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = extractelement <2 x float> %i.am, i64 0
  store float %i.ap, ptr %i.ao, align 4
  %i.aq = load float, ptr %0, align 4             ; 3 uses
  %i.ar = load float, ptr %i.l, align 4           ; 3 uses
  %i.as = fmul float %i.aq, %i.ar                 ; 2 uses
  %i.at = load float, ptr %i.s, align 4           ; 4 uses
  %i.au = fmul float %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load float, ptr %i.av, align 4          ; 6 uses
  %i.ax = load float, ptr %i.h, align 4           ; 5 uses
  %i.ay = fmul float %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.dz = fneg <2 x float> %i.am                  ; 3 uses
  %i.ea = fneg float %sqrt.i31                    ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  store float %i.ec, ptr %i.ao, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = phi float [ %sqrt.i31, %._crit_edge ], [ %i.ea, %bb.b ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.dy, %._crit_edge ], [ %i.dz, %bb.b ] ; 2 uses
  %i.ef = fcmp une <2 x float> %i.ee, zeroinitializer ; 3 uses
  %i.eg = fdiv <2 x float> splat (float 1.000000e+00), %i.ee ; 3 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ei = fmul float %i.w, %i.eh
  %i.ej = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.ej, float %i.ei, float %i.w ; 6 uses
  %i.ek = fcmp une float %i.ed, 0.000000e+00      ; 3 uses
  %i.el = fdiv float 1.000000e+00, %i.ed          ; 3 uses
  %i.em = fmul float %i.x, %i.el
  %i.en = fmul float %i.z, %i.el
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.z ; 4 uses
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.x ; 6 uses
  %i.eo = fmul float %i.aa, %i.eh
  %i.ep = fmul float %i.v, %i.el
  %.sroa.1260.0 = select i1 %i.ej, float %i.eo, float %i.aa ; 4 uses
  %i.eq = insertelement <2 x float> %i.p, float %i.y, i64 1 ; 2 uses
  %i.er = fmul <2 x float> %i.eq, %i.eg
  %.sroa.17.0 = select i1 %i.ek, float %i.ep, float %i.v ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.ev, float %i.eu, float %i.t ; 6 uses
  %.sroa.37.0 = select i1 %i.ev, float %i.et, float %i.r ; 4 uses
  %i.ew = select <2 x i1> %i.ef, <2 x float> %i.er, <2 x float> %i.eq ; 6 uses
  %i.ex = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ey = fadd float %i.ex, %.sroa.42.0           ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fa = fadd float %i.ey, 1.000000e+00
  %i.fb = tail call noundef float @sqrtf(float noundef %i.fa) #13
  %i.fc = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %.sroa.17.0, i64 1
  %i.fe = fsub <2 x float> %i.ew, %i.fd
  %i.ff = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.fb, i64 1
  %i.fg = fmul <4 x float> %i.ff, <float 2.500000e-01, float 2.000000e+00, float poison, float poison> ; 2 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fi = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fj = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fk = insertelement <4 x float> %i.fj, float %i.fi, i64 1
  %i.fl = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fk, <4 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fn = fmul <4 x float> %i.fm, %i.fh
  %i.fo = fdiv <4 x float> %i.fm, %i.fh
  %i.fp = shufflevector <4 x float> %i.fn, <4 x float> %i.fo, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fq = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fr = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fq, %i.fr
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fs = fadd float %.sroa.055.0, 1.000000e+00
  %i.ft = fsub float %i.fs, %.sroa.22.0
  %i.fu = fsub float %i.ft, %.sroa.42.0
  %i.fv = tail call noundef float @sqrtf(float noundef %i.fu) #13
  %i.fw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.fv, i64 0
  %i.fx = fmul <4 x float> %i.fw, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.fz = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %.sroa.17.0, i64 1
  %i.gb = fadd <2 x float> %i.ew, %i.ga
  %i.gc = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gd = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> %i.fx, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gf = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.ge, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.gh = fdiv <4 x float> %i.gg, %i.fy
  %i.gi = fmul <4 x float> %i.gg, %i.fy
  %i.gj = shufflevector <4 x float> %i.gh, <4 x float> %i.gi, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gk = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gl = fadd float %.sroa.22.0, 1.000000e+00
  %i.gm = fsub float %i.gl, %.sroa.055.0
  %i.gn = fsub float %i.gm, %.sroa.42.0
  %i.go = tail call noundef float @sqrtf(float noundef %i.gn) #13
  %i.gp = fmul float %i.go, 2.000000e+00
  %i.gq = extractelement <2 x float> %i.ew, i64 1
  %i.gr = fadd float %i.gq, %.sroa.17.0
  %i.gs = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gt = extractelement <2 x float> %i.ew, i64 0
  %i.gu = fsub float %i.gt, %.sroa.1260.0
  %i.gv = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gu, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gr, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gs, i64 3 ; 2 uses
  %i.gy = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ha = fdiv <4 x float> %i.gx, %i.gz
  %i.hb = fmul <4 x float> %i.gx, %i.gz
  %i.hc = shufflevector <4 x float> %i.ha, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hd = fadd float %.sroa.42.0, 1.000000e+00
  %i.he = fsub float %i.hd, %.sroa.055.0
  %i.hf = fsub float %i.he, %.sroa.22.0
  %i.hg = tail call noundef float @sqrtf(float noundef %i.hf) #13
  %i.hh = fmul float %i.hg, 2.000000e+00
  %i.hi = extractelement <2 x float> %i.ew, i64 0
  %i.hj = fadd float %.sroa.1260.0, %i.hi
  %i.hk = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hl = extractelement <2 x float> %i.ew, i64 1
  %i.hm = fsub float %i.hl, %.sroa.17.0
  %i.hn = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hm, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hj, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hk, i64 2 ; 2 uses
  %i.hq = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hs = fdiv <4 x float> %i.hp, %i.hr
  %i.ht = fmul <4 x float> %i.hp, %i.hr
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.hv = phi <4 x float> [ %i.fp, %bb.d ], [ %i.gj, %bb.f ], [ %i.hc, %bb.h ], [ %i.hu, %bb.i ]
  store <4 x float> %i.hv, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6Assimp12ScaleProcess12applyScalingEP6aiNode(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.d = add i32 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ]  ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.07
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.g, i32 noundef %i.d)
  %i.h = add nuw nsw i64 %.07, 1                  ; 2 uses
  %i.i = load i32, ptr %i.a, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !15
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess12applyScalingEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 7 uses
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiQuaterniont, align 16      ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> zeroinitializer, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0.000000e+00, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x float> zeroinitializer, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1028 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load float, ptr %i.h, align 8            ; 2 uses
  %i.j = load float, ptr %2, align 8
  %i.k = fmul float %i.i, %i.j                    ; 2 uses
  %i.l = load float, ptr %i.f, align 4, !noalias !18 ; 6 uses
  %i.m = load float, ptr %4, align 16, !noalias !18 ; 3 uses
  %i.n = fneg float %i.m                          ; 2 uses
  %i.o = fmul float %i.l, %i.n
  %i.p = fadd float %i.k, 0.000000e+00
  %i.q = load <2 x float>, ptr %i.a, align 4
  %i.r = insertelement <2 x float> poison, float %i.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %i.q              ; 3 uses
  %i.u = fadd <2 x float> %i.t, zeroinitializer   ; 2 uses
  %i.v = load <2 x float>, ptr %3, align 8
  %i.w = insertelement <3 x float> <float -2.000000e+00, float poison, float poison>, float %i.l, i64 1
  %i.x = load <2 x float>, ptr %i.e, align 4, !noalias !18 ; 9 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %5 = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %6 = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %7 = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.z = extractelement <2 x float> %i.x, i64 1   ; 2 uses
  %8 = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison> ; 2 uses
  %9 = shufflevector <3 x float> %8, <3 x float> %7, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %11 = shufflevector <3 x float> <float poison, float 1.000000e+00, float 1.000000e+00>, <3 x float> %6, <3 x i32> <i32 4, i32 1, i32 2>
  %i.aa = fmul float %i.z, %i.m
  %i.ab = shufflevector <3 x float> %i.w, <3 x float> %5, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ac = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.aa, i64 1
  %i.ad = insertelement <3 x float> %i.ac, float %i.o, i64 2
  %i.ae = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.af = insertelement <2 x float> %i.ae, float %i.l, i64 0
  %i.ag = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.n, i64 1 ; 2 uses
  %i.ai = fmul <2 x float> %i.af, %i.ah
  %12 = insertelement <3 x float> <float poison, float poison, float -2.000000e+00>, float %i.z, i64 0
  %13 = insertelement <3 x float> %12, float %i.l, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ak = insertelement <3 x float> %i.aj, float 1.000000e+00, i64 2
  %i.al = fmul <2 x float> %i.x, %i.ah
  %i.am = insertelement <2 x float> %i.x, float %i.l, i64 0 ; 2 uses
  %i.an = fmul <2 x float> %i.am, %i.am           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ap = shufflevector <3 x float> %i.ao, <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5>
  %i.aq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %10, <3 x float> %11, <3 x float> %i.ap)
  %i.ar = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aq, <3 x float> %i.ab, <3 x float> %i.ad) ; 3 uses
  %i.as = fmul <3 x float> %i.ar, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.at = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ae, <2 x float> %i.an)
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.av = shufflevector <3 x float> %9, <3 x float> %i.au, <3 x i32> <i32 0, i32 1, i32 3>
  %i.aw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.av, <3 x float> %13, <3 x float> %i.ak) ; 2 uses
  %i.ax = fmul <3 x float> %i.aw, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %14 = shufflevector <3 x float> %8, <3 x float> %i.au, <3 x i32> <i32 0, i32 4, i32 poison>
  %15 = shufflevector <3 x float> %14, <3 x float> %i.y, <3 x i32> <i32 0, i32 1, i32 4>
  %16 = insertelement <3 x float> <float poison, float -2.000000e+00, float poison>, float %i.l, i64 0
  %17 = shufflevector <3 x float> %16, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.ay = shufflevector <2 x float> %i.al, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.az = insertelement <3 x float> %i.ay, float 1.000000e+00, i64 1
  %i.ba = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %15, <3 x float> %17, <3 x float> %i.az) ; 3 uses
  %i.bb = fmul <3 x float> %i.ba, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.bc = fmul <3 x float> %i.ax, zeroinitializer ; 2 uses
  %i.bd = fadd <3 x float> %i.as, %i.bc
  %i.be = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bb, <3 x float> zeroinitializer, <3 x float> %i.bd)
  %i.bf = insertelement <3 x float> poison, float %i.k, i64 0
  %i.bg = shufflevector <3 x float> %i.bf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bh = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bg, <3 x float> zeroinitializer, <3 x float> %i.be) ; 3 uses
  %i.bi = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bi, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bk = shufflevector <3 x float> %i.bh, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bl = fmul <4 x float> %i.bj, %i.bk
  %i.bm = shufflevector <4 x float> %i.bi, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.bn = shufflevector <3 x float> %i.bh, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bn, <4 x float> %i.bl)
  %i.bp = shufflevector <3 x float> %i.bh, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bq = insertelement <4 x float> poison, float %i.p, i64 0
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %i.bs = load <2 x float>, ptr %i.c, align 4     ; 2 uses
  %i.bt = load float, ptr %i.d, align 8
  %i.bu = shufflevector <3 x float> %i.as, <3 x float> %i.ar, <3 x i32> <i32 1, i32 3, i32 2>
  %i.bv = shufflevector <3 x float> %i.ax, <3 x float> %i.aw, <3 x i32> <i32 1, i32 0, i32 5>
  %i.bw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bu, <3 x float> zeroinitializer, <3 x float> %i.bv)
  %i.bx = shufflevector <3 x float> %i.ba, <3 x float> %i.bb, <3 x i32> <i32 1, i32 3, i32 5>
  %i.by = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bx, <3 x float> zeroinitializer, <3 x float> %i.bw)
  %i.bz = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ca = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bz, <3 x float> zeroinitializer, <3 x float> %i.by) ; 3 uses
  %i.cb = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.cd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.bp, <4 x float> %i.bo)
  %i.ce = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cd)
  %i.cf = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.cg = shufflevector <3 x float> %i.ca, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ch = fmul <4 x float> %i.cf, %i.cg
  %i.ci = shufflevector <3 x float> %i.ca, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.ci, <4 x float> %i.ch)
  %i.ck = shufflevector <3 x float> %i.ca, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.ck, <4 x float> %i.cj)
  %i.cm = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cl)
  store <4 x float> %i.ce, ptr %i.g, align 4
  store <4 x float> %i.cn, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.co = shufflevector <3 x float> %i.ar, <3 x float> %i.as, <3 x i32> <i32 0, i32 4, i32 5>
  %i.cp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.co, <3 x float> zeroinitializer, <3 x float> %i.bc) ; 2 uses
  %i.cq = shufflevector <3 x float> %i.bb, <3 x float> %i.ba, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.cr = fadd <3 x float> %i.cq, %i.cp
  %i.cs = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ct = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cs, <3 x float> zeroinitializer, <3 x float> %i.cr) ; 3 uses
  %i.cu = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cu, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.cw = shufflevector <3 x float> %i.ct, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cx = fmul <4 x float> %i.cv, %i.cw
  %i.cy = shufflevector <3 x float> %i.ct, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.cy, <4 x float> %i.cx)
  %i.da = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.bt, i64 2 ; 2 uses
  %i.db = shufflevector <3 x float> %i.ct, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.db, <4 x float> %i.cz)
  %i.dd = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dc)
  store <4 x float> %i.de, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %i.df = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cq, <3 x float> zeroinitializer, <3 x float> %i.cp)
  %i.dg = fadd <3 x float> %i.df, zeroinitializer ; 3 uses
  %i.dh = shufflevector <3 x float> %i.dg, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.di = fmul <4 x float> %i.cv, %i.dh
  %i.dj = shufflevector <3 x float> %i.dg, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.dj, <4 x float> %i.di)
  %i.dl = shufflevector <3 x float> %i.dg, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.dl, <4 x float> %i.dk)
  %i.dn = fadd <4 x float> %i.dm, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.dn, ptr %.sroa.39.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12ScaleProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!9 = distinct !{!9, !8, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = !{!9}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!17 = distinct !{!17, !16, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!18 = !{!17}
end_hunk_1
