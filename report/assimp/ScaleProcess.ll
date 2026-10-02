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
  %i.ci = load float, ptr %i.s, align 4, !noalias !17 ; 6 uses
  %i.cj = load float, ptr %4, align 16, !noalias !17 ; 3 uses
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
  %i.cu = load <2 x float>, ptr %i.r, align 4, !noalias !17 ; 9 uses
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cw = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cx = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cy = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.cz = extractelement <2 x float> %i.cu, i64 1 ; 4 uses
  %i.da = fmul float %i.cz, %i.cj
  %i.db = shufflevector <3 x float> %i.ct, <3 x float> %i.cy, <3 x i32> <i32 0, i32 1, i32 4>
  %i.dc = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.da, i64 1
  %i.dd = insertelement <3 x float> %i.dc, float %i.cl, i64 2
  %i.de = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.df = insertelement <2 x float> %i.de, float %i.ci, i64 0
  %i.dg = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.ck, i64 1 ; 2 uses
  %i.di = fmul <2 x float> %i.df, %i.dh
  %i.dj = shufflevector <2 x float> %i.cu, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison> ; 2 uses
  %i.dk = shufflevector <3 x float> %i.dj, <3 x float> %i.cx, <3 x i32> <i32 0, i32 4, i32 poison>
  %i.dl = insertelement <3 x float> <float poison, float poison, float -2.000000e+00>, float %i.cz, i64 0
  %i.dm = insertelement <3 x float> %i.dl, float %i.ci, i64 1
  %i.dn = shufflevector <2 x float> %i.di, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.do = insertelement <3 x float> %i.dn, float 1.000000e+00, i64 2
  %i.dp = fmul <2 x float> %i.cu, %i.dh
  %i.dq = insertelement <2 x float> %i.cu, float %i.ci, i64 0 ; 2 uses
  %i.dr = fmul <2 x float> %i.dq, %i.dq           ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.ds)
  %i.du = insertelement <3 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <3 x float> %i.du, <3 x float> %i.cw, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.dw = shufflevector <3 x float> %i.dv, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.dx = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dw, <3 x float> %i.db, <3 x float> %i.dd) ; 3 uses
  %i.dy = fmul <3 x float> %i.dx, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.dz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.de, <2 x float> %i.dr)
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.eb = shufflevector <3 x float> %i.dk, <3 x float> %i.ea, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ec = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eb, <3 x float> %i.dm, <3 x float> %i.do) ; 2 uses
  %i.ed = fmul <3 x float> %i.ec, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ee = shufflevector <3 x float> %i.dj, <3 x float> %i.ea, <3 x i32> <i32 0, i32 4, i32 poison>
  %i.ef = shufflevector <3 x float> %i.ee, <3 x float> %i.cv, <3 x i32> <i32 0, i32 1, i32 4>
  %i.eg = insertelement <3 x float> <float poison, float -2.000000e+00, float poison>, float %i.ci, i64 0
  %i.eh = shufflevector <3 x float> %i.eg, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.ei = shufflevector <2 x float> %i.dp, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.ej = insertelement <3 x float> %i.ei, float 1.000000e+00, i64 1
  %i.ek = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ef, <3 x float> %i.eh, <3 x float> %i.ej) ; 3 uses
  %i.el = fmul <3 x float> %i.ek, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.em = fmul <3 x float> %i.ed, zeroinitializer ; 2 uses
  %i.en = fadd <3 x float> %i.dy, %i.em
  %i.eo = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.el, <3 x float> zeroinitializer, <3 x float> %i.en)
  %i.ep = insertelement <3 x float> poison, float %i.ch, i64 0
  %i.eq = shufflevector <3 x float> %i.ep, <3 x float> poison, <3 x i32> zeroinitializer
  %i.er = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eq, <3 x float> zeroinitializer, <3 x float> %i.eo) ; 3 uses
  %i.es = shufflevector <1 x float> %i.cs, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.es, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.eu = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ev = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ew = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1072
  %i.ey = load <2 x float>, ptr %i.p, align 4     ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %i.q, align 8
  %i.ez = shufflevector <3 x float> %i.dy, <3 x float> %i.dx, <3 x i32> <i32 1, i32 3, i32 2>
  %i.fa = shufflevector <3 x float> %i.ed, <3 x float> %i.ec, <3 x i32> <i32 1, i32 0, i32 5>
  %i.fb = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ez, <3 x float> zeroinitializer, <3 x float> %i.fa)
  %i.fc = shufflevector <3 x float> %i.ek, <3 x float> %i.el, <3 x i32> <i32 1, i32 3, i32 5>
  %i.fd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fc, <3 x float> zeroinitializer, <3 x float> %i.fb)
  %i.fe = shufflevector <2 x float> %i.cq, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ff = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fe, <3 x float> zeroinitializer, <3 x float> %i.fd) ; 3 uses
  %i.fg = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fh = shufflevector <2 x float> %i.ey, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.fi = fmul <4 x float> %i.fg, %i.fh
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.eu, <4 x float> %i.fi)
  %i.fk = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fl = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.ev, <4 x float> %i.fj)
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fm)
  %i.fo = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fk, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.fp = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fq = fmul <4 x float> %i.fo, %i.fp
  %i.fr = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fr, <4 x float> %i.fq)
  %i.ft = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.ft, <4 x float> %i.fs)
  %i.fv = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fu)
  store <4 x float> %i.fn, ptr %i.ce, align 8
  store <4 x float> %i.fw, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1088
  %i.fx = shufflevector <3 x float> %i.dx, <3 x float> %i.dy, <3 x i32> <i32 0, i32 4, i32 5>
  %i.fy = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fx, <3 x float> zeroinitializer, <3 x float> %i.em) ; 2 uses
  %i.fz = shufflevector <3 x float> %i.el, <3 x float> %i.ek, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.ga = fadd <3 x float> %i.fz, %i.fy
  %i.gb = shufflevector <2 x float> %i.cq, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.gc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gb, <3 x float> zeroinitializer, <3 x float> %i.ga) ; 3 uses
  %i.gd = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.gd, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.gf = shufflevector <3 x float> %i.gc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gg = fmul <4 x float> %i.ge, %i.gf
  %i.gh = shufflevector <3 x float> %i.gc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.gh, <4 x float> %i.gg)
  %i.gj = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.5.0.copyload, i64 2 ; 2 uses
  %i.gk = shufflevector <3 x float> %i.gc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.gk, <4 x float> %i.gi)
  %i.gm = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gl)
  store <4 x float> %i.gn, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 1104
  %i.go = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fz, <3 x float> zeroinitializer, <3 x float> %i.fy)
  %i.gp = fadd <3 x float> %i.go, zeroinitializer ; 3 uses
  %i.gq = shufflevector <3 x float> %i.gp, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gr = fmul <4 x float> %i.ge, %i.gq
  %i.gs = shufflevector <3 x float> %i.gp, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.gs, <4 x float> %i.gr)
  %i.gu = shufflevector <3 x float> %i.gp, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.gu, <4 x float> %i.gt)
  %i.gw = fadd <4 x float> %i.gv, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.gw, ptr %.sroa.39.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.gx = load i32, ptr %i.bi, align 8
  %i.gy = zext i32 %i.gx to i64
  %i.gz = icmp samesign ult i64 %indvars.iv.next198, %i.gy
  br i1 %i.gz, label %bb.h, label %.preheader, !llvm.loop !10

._crit_edge176:                                   ; preds = %._crit_edge173, %.preheader
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ha = load i32, ptr %i.k, align 8
  %i.hb = zext i32 %i.ha to i64
  %i.hc = icmp samesign ult i64 %indvars.iv.next207, %i.hb
  br i1 %i.hc, label %bb.f, label %._crit_edge179, !llvm.loop !11

bb.i:                                             ; preds = %.lr.ph175, %._crit_edge173
  %i.hd = phi i32 [ %i.bz, %.lr.ph175 ], [ %i.hk, %._crit_edge173 ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next204, %._crit_edge173 ] ; 2 uses
  %i.he = load ptr, ptr %i.ca, align 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv203
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1192 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8
  %.not186 = icmp eq i32 %i.hi, 0
  br i1 %.not186, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 1032
  br label %bb.j

._crit_edge173.loopexit:                          ; preds = %bb.j
  %.pre210 = load i32, ptr %i.by, align 8
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %._crit_edge173.loopexit, %bb.i
  %i.hk = phi i32 [ %.pre210, %._crit_edge173.loopexit ], [ %i.hd, %bb.i ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = icmp samesign ult i64 %indvars.iv.next204, %i.hl
  br i1 %i.hm, label %bb.i, label %._crit_edge176, !llvm.loop !12

bb.j:                                             ; preds = %.lr.ph172, %bb.j
  %indvars.iv200 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next201, %bb.j ] ; 2 uses
  %i.hn = load ptr, ptr %i.hj, align 8
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %i.hn, i64 %indvars.iv200 ; 3 uses
  %i.hp = load float, ptr %i.a, align 8           ; 2 uses
  %i.hq = load <2 x float>, ptr %i.ho, align 4
  %i.hr = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x float> %i.hs, %i.hq
  store <2 x float> %i.ht, ptr %i.ho, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4
  %i.hw = fmul float %i.hp, %i.hv
  store float %i.hw, ptr %i.hu, align 4
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.hx = load i32, ptr %i.hh, align 8
  %i.hy = zext i32 %i.hx to i64
  %i.hz = icmp samesign ult i64 %indvars.iv.next201, %i.hy
  br i1 %i.hz, label %bb.j, label %._crit_edge173.loopexit, !llvm.loop !13

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
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.aw, float %i.cw)
  %i.da = fmul float %i.cx, %i.bz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.bi, float %i.cz)
  %i.dc = fmul float %i.ar, %i.cr                 ; 2 uses
  %i.dd = fmul float %i.ax, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.by, float %i.db)
  %i.df = fmul float %i.dc, %i.cg
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.aw, float %i.de)
  %i.dh = load float, ptr %i.a, align 4           ; 3 uses
  %i.di = fmul float %i.cl, %i.dh                 ; 2 uses
  %i.dj = fmul float %i.di, %i.bl
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ba, float %i.dg)
  %i.dl = fmul float %i.at, %i.di
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.bi, float %i.dk)
  %i.dn = fmul float %i.ar, %i.dh                 ; 2 uses
  %i.do = fmul float %i.dn, %i.bs
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.by, float %i.dm)
  %i.dq = fmul float %i.cc, %i.dn
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ba, float %i.dp)
  %i.ds = fmul float %i.be, %i.dh                 ; 2 uses
  %i.dt = fmul float %i.ds, %i.cg
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.bi, float %i.dr)
  %i.dv = fmul float %i.bk, %i.ds
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.by, float %i.du)
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dy = insertelement <2 x float> %i.aj, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dz = fneg <2 x float> %i.aj                  ; 3 uses
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
  %i.ei = fmul float %i.v, %i.eh
  %i.ej = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.ej, float %i.ei, float %i.v ; 6 uses
  %i.ek = fcmp une float %i.ed, 0.000000e+00      ; 3 uses
  %i.el = fdiv float 1.000000e+00, %i.ed          ; 3 uses
  %i.em = fmul float %i.z, %i.el
  %i.en = fmul float %i.aa, %i.el
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.aa ; 4 uses
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.z ; 6 uses
  %i.eo = insertelement <2 x float> %i.p, float %i.w, i64 1 ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eg
  %i.eq = fmul float %i.x, %i.eh
  %.sroa.1260.0 = select i1 %i.ej, float %i.eq, float %i.x ; 4 uses
  %i.er = fmul float %i.y, %i.el
  %.sroa.17.0 = select i1 %i.ek, float %i.er, float %i.y ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.ev, float %i.eu, float %i.t ; 6 uses
  %.sroa.37.0 = select i1 %i.ev, float %i.et, float %i.r ; 4 uses
  %i.ew = select <2 x i1> %i.ef, <2 x float> %i.ep, <2 x float> %i.eo ; 6 uses
  %i.ex = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ey = fadd float %i.ex, %.sroa.42.0           ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fa = fadd float %i.ey, 1.000000e+00
  %i.fb = tail call noundef float @sqrtf(float noundef %i.fa) #13
  %i.fc = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.fb, i64 1
  %i.fd = fmul <4 x float> %i.fc, <float 2.500000e-01, float 2.000000e+00, float poison, float poison> ; 2 uses
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ff = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fg = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %.sroa.17.0, i64 1
  %i.fi = fsub <2 x float> %i.ew, %i.fh
  %i.fj = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fk = insertelement <4 x float> %i.fj, float %i.ff, i64 1
  %i.fl = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fk, <4 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fn = fmul <4 x float> %i.fm, %i.fe
  %i.fo = fdiv <4 x float> %i.fm, %i.fe
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
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !18
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
  %i.l = load float, ptr %i.f, align 4, !noalias !24 ; 6 uses
  %i.m = load float, ptr %4, align 16, !noalias !24 ; 3 uses
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
  %i.x = load <2 x float>, ptr %i.e, align 4, !noalias !24 ; 9 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.z = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ab = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ac = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  %i.ad = shufflevector <2 x float> %i.x, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison> ; 2 uses
  %i.ae = shufflevector <3 x float> %i.ad, <3 x float> %i.ab, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.af = shufflevector <3 x float> %i.ae, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %i.ag = shufflevector <3 x float> <float poison, float 1.000000e+00, float 1.000000e+00>, <3 x float> %i.aa, <3 x i32> <i32 4, i32 1, i32 2>
  %i.ah = fmul float %i.ac, %i.m
  %i.ai = shufflevector <3 x float> %i.w, <3 x float> %i.z, <3 x i32> <i32 0, i32 1, i32 4>
  %i.aj = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.ah, i64 1
  %i.ak = insertelement <3 x float> %i.aj, float %i.o, i64 2
  %i.al = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.am = insertelement <2 x float> %i.al, float %i.l, i64 0
  %i.an = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.n, i64 1 ; 2 uses
  %i.ap = fmul <2 x float> %i.am, %i.ao
  %i.aq = insertelement <3 x float> <float poison, float poison, float -2.000000e+00>, float %i.ac, i64 0
  %i.ar = insertelement <3 x float> %i.aq, float %i.l, i64 1
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.at = insertelement <3 x float> %i.as, float 1.000000e+00, i64 2
  %i.au = fmul <2 x float> %i.x, %i.ao
  %i.av = insertelement <2 x float> %i.x, float %i.l, i64 0 ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ay = shufflevector <3 x float> %i.ax, <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5>
  %i.az = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.af, <3 x float> %i.ag, <3 x float> %i.ay)
  %i.ba = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.az, <3 x float> %i.ai, <3 x float> %i.ak) ; 3 uses
  %i.bb = fmul <3 x float> %i.ba, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.aw)
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.be = shufflevector <3 x float> %i.ae, <3 x float> %i.bd, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bf = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.ar, <3 x float> %i.at) ; 2 uses
  %i.bg = fmul <3 x float> %i.bf, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.bh = shufflevector <3 x float> %i.ad, <3 x float> %i.bd, <3 x i32> <i32 0, i32 4, i32 poison>
  %i.bi = shufflevector <3 x float> %i.bh, <3 x float> %i.y, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bj = insertelement <3 x float> <float poison, float -2.000000e+00, float poison>, float %i.l, i64 0
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.bl = shufflevector <2 x float> %i.au, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.bm = insertelement <3 x float> %i.bl, float 1.000000e+00, i64 1
  %i.bn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bi, <3 x float> %i.bk, <3 x float> %i.bm) ; 3 uses
  %i.bo = fmul <3 x float> %i.bn, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.bp = fmul <3 x float> %i.bg, zeroinitializer ; 2 uses
  %i.bq = fadd <3 x float> %i.bb, %i.bp
  %i.br = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bo, <3 x float> zeroinitializer, <3 x float> %i.bq)
  %i.bs = insertelement <3 x float> poison, float %i.k, i64 0
  %i.bt = shufflevector <3 x float> %i.bs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bu = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bt, <3 x float> zeroinitializer, <3 x float> %i.br) ; 3 uses
  %i.bv = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bw = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bv, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bx = shufflevector <3 x float> %i.bu, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.by = fmul <4 x float> %i.bw, %i.bx
  %i.bz = shufflevector <4 x float> %i.bv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.ca = shufflevector <3 x float> %i.bu, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.ca, <4 x float> %i.by)
  %i.cc = shufflevector <3 x float> %i.bu, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cd = insertelement <4 x float> poison, float %i.p, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %i.cf = load <2 x float>, ptr %i.c, align 4     ; 2 uses
  %i.cg = load float, ptr %i.d, align 8
  %i.ch = shufflevector <3 x float> %i.bb, <3 x float> %i.ba, <3 x i32> <i32 1, i32 3, i32 2>
  %i.ci = shufflevector <3 x float> %i.bg, <3 x float> %i.bf, <3 x i32> <i32 1, i32 0, i32 5>
  %i.cj = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ch, <3 x float> zeroinitializer, <3 x float> %i.ci)
  %i.ck = shufflevector <3 x float> %i.bn, <3 x float> %i.bo, <3 x i32> <i32 1, i32 3, i32 5>
  %i.cl = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ck, <3 x float> zeroinitializer, <3 x float> %i.cj)
  %i.cm = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cm, <3 x float> zeroinitializer, <3 x float> %i.cl) ; 3 uses
  %i.co = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cp = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.cq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cc, <4 x float> %i.cb)
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cq)
  %i.cs = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.co, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ct = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cu = fmul <4 x float> %i.cs, %i.ct
  %i.cv = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.cv, <4 x float> %i.cu)
  %i.cx = shufflevector <3 x float> %i.cn, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cx, <4 x float> %i.cw)
  %i.cz = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> zeroinitializer
  %i.da = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cy)
  store <4 x float> %i.cr, ptr %i.g, align 4
  store <4 x float> %i.da, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.db = shufflevector <3 x float> %i.ba, <3 x float> %i.bb, <3 x i32> <i32 0, i32 4, i32 5>
  %i.dc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.db, <3 x float> zeroinitializer, <3 x float> %i.bp) ; 2 uses
  %i.dd = shufflevector <3 x float> %i.bo, <3 x float> %i.bn, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.de = fadd <3 x float> %i.dd, %i.dc
  %i.df = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.df, <3 x float> zeroinitializer, <3 x float> %i.de) ; 3 uses
  %i.dh = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.dh, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.dj = shufflevector <3 x float> %i.dg, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dk = fmul <4 x float> %i.di, %i.dj
  %i.dl = shufflevector <3 x float> %i.dg, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.dl, <4 x float> %i.dk)
  %i.dn = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.cg, i64 2 ; 2 uses
  %i.do = shufflevector <3 x float> %i.dg, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.do, <4 x float> %i.dm)
  %i.dq = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dp)
  store <4 x float> %i.dr, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %i.ds = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dd, <3 x float> zeroinitializer, <3 x float> %i.dc)
  %i.dt = fadd <3 x float> %i.ds, zeroinitializer ; 3 uses
  %i.du = shufflevector <3 x float> %i.dt, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dv = fmul <4 x float> %i.di, %i.du
  %i.dw = shufflevector <3 x float> %i.dt, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.dw, <4 x float> %i.dv)
  %i.dy = shufflevector <3 x float> %i.dt, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.dy, <4 x float> %i.dx)
  %i.ea = fadd <4 x float> %i.dz, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.ea, ptr %.sroa.39.0..sroa_idx, align 4
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
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!15 = distinct !{!15, i1 false, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!16 = distinct !{!16, !15, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!17 = !{!16}
!18 = distinct !{!18, !3}
!22 = distinct !{!22, i1 false, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!23 = distinct !{!23, !22, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!24 = !{!23}
end_hunk_1
