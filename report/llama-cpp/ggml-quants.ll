Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 272
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 328
begin_hunk_0_@dequantize_row_nvfp4:bb.a
  %i.t = fmul float %.0.i, 5.000000e-01
  br label %ggml_ue4m3_to_fp32.exit

ggml_ue4m3_to_fp32.exit:                          ; preds = %bb.c, %bb.c, %bb.g
  %.011.i = phi float [ %i.t, %bb.g ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.c ]
  %.idx41 = shl nuw nsw i64 %indvars.iv, 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx41 ; 4 uses
  %i.v = shl nuw nsw i64 %indvars.iv, 3           ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = and i32 %i.y, 15
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = lshr i32 %i.y, 4
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = and i32 %i.al, 15
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = lshr i32 %i.al, 4
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !34
  %i.bc = lshr i32 %i.ax, 4
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !34
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = and i32 %i.bj, 15
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34
  %i.bo = lshr i32 %i.bj, 4
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !34
  %i.bs = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  %i.bt = insertelement <4 x i8> %i.bs, i8 %i.ap, i64 1
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bb, i64 2
  %i.bv = insertelement <4 x i8> %i.bu, i8 %i.bn, i64 3
  %i.bw = sitofp <4 x i8> %i.bv to <4 x float>
  %i.bx = insertelement <4 x float> poison, float %.011.i, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bz = fmul <4 x float> %i.by, %i.bw
  store <4 x float> %i.bz, ptr %i.u, align 4, !tbaa !36
  %i.ca = insertelement <4 x i8> poison, i8 %i.ag, i64 0
  %i.cb = insertelement <4 x i8> %i.ca, i8 %i.at, i64 1
  %i.cc = insertelement <4 x i8> %i.cb, i8 %i.bf, i64 2
  %i.cd = insertelement <4 x i8> %i.cc, i8 %i.br, i64 3
  %i.ce = sitofp <4 x i8> %i.cd to <4 x float>
  %i.cf = fmul <4 x float> %i.by, %i.ce
  store <4 x float> %i.cf, ptr %i.ah, align 4, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = and i32 %i.cj, 15
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %i.co = lshr i32 %i.cj, 4
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 5
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !34
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = and i32 %i.cx, 15
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !34
  %i.dc = lshr i32 %i.cx, 4
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !34
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = and i32 %i.dj, 15
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.do = lshr i32 %i.dj, 4
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 7
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !34
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = and i32 %i.dv, 15
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !34
  %i.ea = lshr i32 %i.dv, 4
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @kvalues_fp4, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !34
  %i.ee = insertelement <4 x i8> poison, i8 %i.cn, i64 0
  %i.ef = insertelement <4 x i8> %i.ee, i8 %i.db, i64 1
  %i.eg = insertelement <4 x i8> %i.ef, i8 %i.dn, i64 2
  %i.eh = insertelement <4 x i8> %i.eg, i8 %i.dz, i64 3
  %i.ei = sitofp <4 x i8> %i.eh to <4 x float>
  %i.ej = fmul <4 x float> %i.by, %i.ei
  store <4 x float> %i.ej, ptr %i.cs, align 4, !tbaa !36
  %i.ek = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %i.el = insertelement <4 x i8> %i.ek, i8 %i.df, i64 1
  %i.em = insertelement <4 x i8> %i.el, i8 %i.dr, i64 2
  %i.en = insertelement <4 x i8> %i.em, i8 %i.ed, i64 3
  %i.eo = sitofp <4 x i8> %i.en to <4 x float>
  %i.ep = fmul <4 x float> %i.by, %i.eo
  store <4 x float> %i.ep, ptr %i.ct, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !117
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @quantize_row_q2_K_ref(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 20 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x float], align 16            ; 8 uses
  %i.d = alloca [16 x float], align 16            ; 4 uses
  %i.e = alloca [16 x float], align 16            ; 4 uses
  %i.f = sdiv i64 %2, 256                         ; 2 uses
  %i.g = trunc i64 %i.f to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader126.preheader, label %._crit_edge

.preheader126.preheader:                          ; preds = %bb.a
  %wide.trip.count = and i64 %i.f, 2147483647
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  br label %.preheader126

.preheader126:                                    ; preds = %.preheader126.preheader, %.preheader124
  %indvars.iv180 = phi i64 [ 0, %.preheader126.preheader ], [ %indvars.iv.next181, %.preheader124 ] ; 7 uses
  %.0104145 = phi ptr [ %0, %.preheader126.preheader ], [ %i.ob, %.preheader124 ] ; 6 uses
  br label %.preheader123

._crit_edge:                                      ; preds = %.preheader124, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.preheader123:                                    ; preds = %.preheader126, %make_qkx2_quants.exit
  %indvars.iv = phi i64 [ 0, %.preheader126 ], [ %indvars.iv.next, %make_qkx2_quants.exit ] ; 4 uses
  %.0112135 = phi float [ 0.000000e+00, %.preheader126 ], [ %.1, %make_qkx2_quants.exit ] ; 2 uses
  %.0113134 = phi float [ 0.000000e+00, %.preheader126 ], [ %.1114, %make_qkx2_quants.exit ] ; 2 uses
  %i.aa = shl nuw nsw i64 %indvars.iv, 4          ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa ; 16 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 4, !tbaa !36 ; 3 uses
  %i.ad = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ac) ; 6 uses
  store <4 x float> %i.ad, ptr %i.c, align 16, !tbaa !36
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load <4 x float>, ptr %i.af, align 4, !tbaa !36
  %i.ah = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ag) ; 5 uses
  store <4 x float> %i.ah, ptr %i.i, align 16, !tbaa !36
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load <4 x float>, ptr %i.aj, align 4, !tbaa !36
  %i.al = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ak) ; 5 uses
  store <4 x float> %i.al, ptr %i.j, align 16, !tbaa !36
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load <4 x float>, ptr %i.an, align 4, !tbaa !36
  %i.ap = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ao) ; 5 uses
  store <4 x float> %i.ap, ptr %i.k, align 16, !tbaa !36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.aq = extractelement <4 x float> %i.ad, i64 0 ; 2 uses
  %i.ar = extractelement <4 x float> %i.ac, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <4 x float> %i.ac, %i.ad
  %i.as = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.av = fcmp olt float %i.au, %i.ar
  %.1174.i = select i1 %i.av, float %i.au, float %i.ar ; 2 uses
  %i.aw = fcmp ogt float %i.au, %i.ar
  %.1181.i = select i1 %i.aw, float %i.au, float %i.ar ; 2 uses
  %i.ax = extractelement <4 x float> %i.ad, i64 1 ; 3 uses
  %i.ay = fadd float %i.aq, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.au, float %i.as)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bc = fcmp olt float %i.bb, %.1174.i
  %.1174.i.1 = select i1 %i.bc, float %i.bb, float %.1174.i ; 2 uses
  %i.bd = fcmp ogt float %i.bb, %.1181.i
  %.1181.i.1 = select i1 %i.bd, float %i.bb, float %.1181.i ; 2 uses
  %i.be = extractelement <4 x float> %i.ad, i64 2 ; 3 uses
  %i.bf = fadd float %i.ay, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bb, float %i.az)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bj = fcmp olt float %i.bi, %.1174.i.1
  %.1174.i.2 = select i1 %i.bj, float %i.bi, float %.1174.i.1 ; 2 uses
  %i.bk = fcmp ogt float %i.bi, %.1181.i.1
  %.1181.i.2 = select i1 %i.bk, float %i.bi, float %.1181.i.1 ; 2 uses
  %i.bl = extractelement <4 x float> %i.ad, i64 3 ; 3 uses
  %i.bm = fadd float %i.bf, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bi, float %i.bg)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bq = fcmp olt float %i.bp, %.1174.i.2
  %.1174.i.3 = select i1 %i.bq, float %i.bp, float %.1174.i.2 ; 2 uses
  %i.br = fcmp ogt float %i.bp, %.1181.i.2
  %.1181.i.3 = select i1 %i.br, float %i.bp, float %.1181.i.2 ; 2 uses
  %i.bs = extractelement <4 x float> %i.ah, i64 0 ; 3 uses
  %i.bt = fadd float %i.bm, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bp, float %i.bn)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bx = fcmp olt float %i.bw, %.1174.i.3
  %.1174.i.4 = select i1 %i.bx, float %i.bw, float %.1174.i.3 ; 2 uses
  %i.by = fcmp ogt float %i.bw, %.1181.i.3
  %.1181.i.4 = select i1 %i.by, float %i.bw, float %.1181.i.3 ; 2 uses
  %i.bz = extractelement <4 x float> %i.ah, i64 1 ; 3 uses
  %i.ca = fadd float %i.bt, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bw, float %i.bu)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cd = extractelement <4 x float> %i.ah, i64 2 ; 3 uses
  %i.ce = fadd float %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.cg = load <2 x float>, ptr %i.cc, align 4, !tbaa !36, !alias.scope !127 ; 2 uses
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 5 uses
  %i.cj = fcmp olt float %i.ci, %.1174.i.4
  %.1174.i.5 = select i1 %i.cj, float %i.ci, float %.1174.i.4 ; 2 uses
  %i.ck = fcmp ogt float %i.ci, %.1181.i.4
  %.1181.i.5 = select i1 %i.ck, float %i.ci, float %.1181.i.4 ; 2 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ci, float %i.cb)
  %i.cm = fcmp olt float %i.ch, %.1174.i.5
  %.1174.i.6 = select i1 %i.cm, float %i.ch, float %.1174.i.5 ; 2 uses
  %i.cn = fcmp ogt float %i.ch, %.1181.i.5
  %.1181.i.6 = select i1 %i.cn, float %i.ch, float %.1181.i.5 ; 2 uses
  %i.co = extractelement <4 x float> %i.ah, i64 3 ; 3 uses
  %i.cp = fadd float %i.ce, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.co, float %i.ch, float %i.cl)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.cs = extractelement <4 x float> %i.al, i64 0 ; 3 uses
  %i.ct = fadd float %i.cp, %i.cs
  %i.cu = extractelement <4 x float> %i.al, i64 1 ; 3 uses
  %i.cv = fadd float %i.ct, %i.cu
  %i.cw = extractelement <4 x float> %i.al, i64 2 ; 3 uses
  %i.cx = fadd float %i.cv, %i.cw
  %i.cy = load <4 x float>, ptr %i.cr, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 0 ; 5 uses
  %i.da = fcmp olt float %i.cz, %.1174.i.6
  %.1174.i.7 = select i1 %i.da, float %i.cz, float %.1174.i.6 ; 2 uses
  %i.db = fcmp ogt float %i.cz, %.1181.i.6
  %.1181.i.7 = select i1 %i.db, float %i.cz, float %.1181.i.6 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cz, float %i.cq)
  %i.dd = extractelement <4 x float> %i.cy, i64 1 ; 5 uses
  %i.de = fcmp olt float %i.dd, %.1174.i.7
  %.1174.i.8 = select i1 %i.de, float %i.dd, float %.1174.i.7 ; 2 uses
  %i.df = fcmp ogt float %i.dd, %.1181.i.7
  %.1181.i.8 = select i1 %i.df, float %i.dd, float %.1181.i.7 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.dd, float %i.dc)
  %i.dh = extractelement <4 x float> %i.cy, i64 2 ; 5 uses
  %i.di = fcmp olt float %i.dh, %.1174.i.8
  %.1174.i.9 = select i1 %i.di, float %i.dh, float %.1174.i.8 ; 2 uses
  %i.dj = fcmp ogt float %i.dh, %.1181.i.8
  %.1181.i.9 = select i1 %i.dj, float %i.dh, float %.1181.i.8 ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.dh, float %i.dg)
  %i.dl = extractelement <4 x float> %i.cy, i64 3 ; 5 uses
  %i.dm = fcmp olt float %i.dl, %.1174.i.9
  %.1174.i.10 = select i1 %i.dm, float %i.dl, float %.1174.i.9 ; 2 uses
  %i.dn = fcmp ogt float %i.dl, %.1181.i.9
  %.1181.i.10 = select i1 %i.dn, float %i.dl, float %.1181.i.9 ; 2 uses
  %i.do = extractelement <4 x float> %i.al, i64 3 ; 3 uses
  %i.dp = fadd float %i.cx, %i.do
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float %i.dl, float %i.dk)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.dt = fcmp olt float %i.ds, %.1174.i.10
  %.1174.i.11 = select i1 %i.dt, float %i.ds, float %.1174.i.10 ; 2 uses
  %i.du = fcmp ogt float %i.ds, %.1181.i.10
  %.1181.i.11 = select i1 %i.du, float %i.ds, float %.1181.i.10 ; 2 uses
  %i.dv = extractelement <4 x float> %i.ap, i64 0 ; 3 uses
  %i.dw = fadd float %i.dp, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.ds, float %i.dq)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.ea = fcmp olt float %i.dz, %.1174.i.11
  %.1174.i.12 = select i1 %i.ea, float %i.dz, float %.1174.i.11 ; 2 uses
  %i.eb = fcmp ogt float %i.dz, %.1181.i.11
  %.1181.i.12 = select i1 %i.eb, float %i.dz, float %.1181.i.11 ; 2 uses
  %i.ec = extractelement <4 x float> %i.ap, i64 1 ; 3 uses
  %i.ed = fadd float %i.dw, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.dz, float %i.dx)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.eh = fcmp olt float %i.eg, %.1174.i.12
  %.1174.i.13 = select i1 %i.eh, float %i.eg, float %.1174.i.12 ; 2 uses
  %i.ei = fcmp ogt float %i.eg, %.1181.i.12
  %.1181.i.13 = select i1 %i.ei, float %i.eg, float %.1181.i.12 ; 2 uses
  %i.ej = extractelement <4 x float> %i.ap, i64 2 ; 3 uses
  %i.ek = fadd float %i.ed, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.eg, float %i.ee)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.en = load float, ptr %i.em, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.eo = fcmp olt float %i.en, %.1174.i.13
  %.1174.i.14 = select i1 %i.eo, float %i.en, float %.1174.i.13 ; 2 uses
  %i.ep = fcmp ogt float %i.en, %.1181.i.13
  %.1181.i.14 = select i1 %i.ep, float %i.en, float %.1181.i.13 ; 3 uses
  %i.eq = extractelement <4 x float> %i.ap, i64 3 ; 3 uses
  %i.er = fadd float %i.ek, %i.eq                 ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.en, float %i.el) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ev = fcmp ogt float %.1174.i.14, 0.000000e+00
  %spec.store.select.i = select i1 %i.ev, float 0.000000e+00, float %.1174.i.14 ; 6 uses
  %i.ew = fcmp oeq float %.1181.i.14, %spec.store.select.i
  br i1 %i.ew, label %.preheader.preheader.i, label %bb.c

bb.b:                                             ; preds = %make_qkx2_quants.exit
  %i.ex = fcmp ogt float %.1114, 0.000000e+00
  br i1 %i.ex, label %bb.h, label %.preheader125

.preheader125:                                    ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false), !tbaa !34
  br label %bb.i

.preheader.preheader.i:                           ; preds = %.preheader123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.et, i8 0, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !129
  br label %make_qkx2_quants.exit

bb.c:                                             ; preds = %.preheader123
  %i.ez = fsub float %.1181.i.14, %spec.store.select.i
  %i.fa = fdiv float 3.000000e+00, %i.ez          ; 2 uses
  %i.fb = fdiv float 1.000000e+00, %i.fa          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv230.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next231.i, %bb.d ] ; 4 uses
  %.0183209.i = phi float [ 0.000000e+00, %bb.c ], [ %i.ft, %bb.d ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv230.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !36, !alias.scope !127 ; 2 uses
  %i.fe = fsub float %i.fd, %spec.store.select.i
  %i.ff = fmul float %i.fa, %i.fe
  %i.fg = fadd float %i.ff, f0x4B400000
  %i.fh = bitcast float %i.fg to i32
  %i.fi = and i32 %i.fh, 8388607
  %i.fj = tail call i32 @llvm.umax.i32(i32 %i.fi, i32 4194304)
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 4194307)
  %i.fl = trunc i32 %i.fk to i8                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv230.i
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !34, !alias.scope !129
  %i.fn = uitofp nneg i8 %i.fl to float
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fn, float %spec.store.select.i)
  %i.fp = fsub float %i.fo, %i.fd
  %i.fq = tail call float @llvm.fabs.f32(float %i.fp)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv230.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !36, !alias.scope !128
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fq, float %.0183209.i) ; 2 uses
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next231.i, 16
  br i1 %exitcond234.not.i, label %.preheader203.i, label %bb.d, !llvm.loop !6

.preheader203.i:                                  ; preds = %bb.d, %.loopexit.i
  %.2221.i = phi float [ %.4.i, %.loopexit.i ], [ %spec.store.select.i, %bb.d ] ; 4 uses
  %.0179220.i = phi i32 [ %i.jr, %.loopexit.i ], [ 0, %bb.d ] ; 3 uses
  %.1184219.i = phi float [ %.3186.i, %.loopexit.i ], [ %i.ft, %bb.d ] ; 3 uses
  %.0187218.i = phi float [ %.2189.i, %.loopexit.i ], [ %i.fb, %bb.d ] ; 2 uses
  %i.fu = uitofp nneg i32 %.0179220.i to float
  %i.fv = tail call nnan float @llvm.fmuladd.f32(float %i.fu, float 1.000000e-01, float -5.000000e-01)
  %i.fw = fadd nnan float %i.fv, 3.000000e+00
  %i.fx = fsub float %.1181.i.14, %.2221.i
  %i.fy = fdiv float %i.fw, %i.fx
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.fz = extractelement <2 x float> %i.hb, i64 1 ; 3 uses
  %i.ga = fneg float %i.fz                        ; 2 uses
  %i.gb = fmul float %i.fz, %i.ga
  %i.gc = extractelement <2 x float> %i.hb, i64 0 ; 3 uses
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.er, float %i.gc, float %i.gb) ; 3 uses
  %i.ge = fcmp ogt float %i.gd, 0.000000e+00
  br i1 %i.ge, label %bb.g, label %.loopexit.i

bb.f:                                             ; preds = %bb.f, %.preheader203.i
  %indvars.iv235.i = phi i64 [ 0, %.preheader203.i ], [ %indvars.iv.next236.i, %bb.f ] ; 4 uses
  %.0176213.i = phi float [ 0.000000e+00, %.preheader203.i ], [ %i.hc, %bb.f ]
  %i.gf = phi <2 x float> [ zeroinitializer, %.preheader203.i ], [ %i.hb, %bb.f ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv235.i
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !36, !alias.scope !127 ; 2 uses
  %i.gi = fsub float %i.gh, %.2221.i
  %i.gj = fmul float %i.fy, %i.gi
  %i.gk = fadd float %i.gj, f0x4B400000
  %i.gl = bitcast float %i.gk to i32
  %i.gm = and i32 %i.gl, 8388607                  ; 2 uses
  %i.gn = icmp samesign ult i32 %i.gm, 4194304
  %i.go = tail call i32 @llvm.umin.i32(i32 %i.gm, i32 4194307)
  %i.gp = add nsw i32 %i.go, -4194304
  %i.gq = select i1 %i.gn, i32 0, i32 %i.gp       ; 2 uses
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv235.i
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !34, !alias.scope !131
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv235.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !36, !alias.scope !128 ; 2 uses
  %i.gv = uitofp nneg i32 %i.gq to float          ; 2 uses
  %i.gw = fmul float %i.gu, %i.gv                 ; 2 uses
  %i.gx = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.gu, i64 1
  %i.gz = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.ha, <2 x float> %i.gf) ; 3 uses
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gh, float %.0176213.i) ; 4 uses
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %indvars.iv.next236.i, 16
  br i1 %exitcond239.not.i, label %bb.e, label %bb.f, !llvm.loop !7

bb.g:                                             ; preds = %bb.e
  %i.hd = fneg float %i.hc
  %i.he = fdiv float %i.hc, %i.gc
  %i.hf = load <16 x i8>, ptr %i.b, align 16, !tbaa !34, !alias.scope !131
  %i.hg = uitofp <16 x i8> %i.hf to <16 x float>  ; 4 uses
  %i.hh = load <4 x float>, ptr %i.ab, align 4, !tbaa !36, !alias.scope !127
  %i.hi = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hj = load <2 x float>, ptr %i.bo, align 4, !tbaa !36, !alias.scope !127
  %i.hk = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hl = shufflevector <2 x float> %i.cg, <2 x float> %i.hj, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hm = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.hn = fmul float %i.es, %i.ga
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.er, float %i.hc, float %i.hn)
  %i.hp = fdiv float %i.ho, %i.gd
  %i.hq = fmul float %i.fz, %i.hd
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.es, float %i.hq)
  %i.hs = fdiv float %i.hr, %i.gd                 ; 2 uses
  %i.ht = fcmp ogt float %i.hs, 0.000000e+00      ; 2 uses
  %.0172.i = select i1 %i.ht, float %i.he, float %i.hp ; 2 uses
  %.0171.i = select i1 %i.ht, float 0.000000e+00, float %i.hs ; 2 uses
  %i.hu = insertelement <4 x float> poison, float %.0172.i, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hw = insertelement <4 x float> poison, float %.0171.i, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.hi, <4 x float> %i.hx)
  %i.hz = fsub <4 x float> %i.hy, %i.hh
  %3 = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hz) ; 4 uses
  %i.ia = extractelement <4 x float> %3, i64 0
  %4 = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ia, float 0.000000e+00)
  %i.ib = extractelement <4 x float> %3, i64 1
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ib, float %4)
  %i.id = extractelement <4 x float> %3, i64 2
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.be, float %i.id, float %i.ic)
  %i.if = extractelement <4 x float> %3, i64 3
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.if, float %i.ie)
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.hk, <4 x float> %i.hx)
  %i.ii = fsub <4 x float> %i.ih, %i.hl
  %i.ij = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ii) ; 4 uses
  %i.ik = extractelement <4 x float> %i.ij, i64 0
  %i.il = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ik, float %i.ig)
  %i.im = extractelement <4 x float> %i.ij, i64 1
  %i.in = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.im, float %i.il)
  %i.io = extractelement <4 x float> %i.ij, i64 2
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.io, float %i.in)
  %i.iq = extractelement <4 x float> %i.ij, i64 3
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.co, float %i.iq, float %i.ip)
  %i.is = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.hm, <4 x float> %i.hx)
  %i.it = fsub <4 x float> %i.is, %i.cy
  %i.iu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.it) ; 4 uses
  %i.iv = extractelement <4 x float> %i.iu, i64 0
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.iv, float %i.ir)
  %i.ix = extractelement <4 x float> %i.iu, i64 1
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.ix, float %i.iw)
  %i.iz = extractelement <4 x float> %i.iu, i64 2
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.iz, float %i.iy)
  %i.jb = extractelement <4 x float> %i.iu, i64 3
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.do, float %i.jb, float %i.ja)
  %i.jd = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.je = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.jd, <4 x float> %i.hx)
  %i.jf = load <4 x float>, ptr %i.dr, align 4, !tbaa !36, !alias.scope !127
  %i.jg = fsub <4 x float> %i.je, %i.jf
  %i.jh = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jg) ; 4 uses
  %i.ji = extractelement <4 x float> %i.jh, i64 0
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.ji, float %i.jc)
  %i.jk = extractelement <4 x float> %i.jh, i64 1
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.jk, float %i.jj)
  %i.jm = extractelement <4 x float> %i.jh, i64 2
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.jm, float %i.jl)
  %i.jo = extractelement <4 x float> %i.jh, i64 3
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.jo, float %i.jn) ; 2 uses
  %i.jq = fcmp olt float %i.jp, %.1184219.i
  br i1 %i.jq, label %.preheader202.preheader.i, label %.loopexit.i

.preheader202.preheader.i:                        ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.et, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !132
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader202.preheader.i, %bb.g, %bb.e
  %.2189.i = phi float [ %.0187218.i, %bb.e ], [ %.0187218.i, %bb.g ], [ %.0172.i, %.preheader202.preheader.i ] ; 2 uses
  %.3186.i = phi float [ %.1184219.i, %bb.e ], [ %.1184219.i, %bb.g ], [ %i.jp, %.preheader202.preheader.i ]
  %.4.i = phi float [ %.2221.i, %bb.e ], [ %.2221.i, %bb.g ], [ %.0171.i, %.preheader202.preheader.i ] ; 2 uses
  %i.jr = add nuw nsw i32 %.0179220.i, 1
  %exitcond248.not.i = icmp eq i32 %.0179220.i, 15
  br i1 %exitcond248.not.i, label %make_qkx2_quants.exit, label %.preheader203.i, !llvm.loop !8

make_qkx2_quants.exit:                            ; preds = %.loopexit.i, %.preheader.preheader.i
  %.4.lcssa.sink.i = phi float [ %spec.store.select.i, %.preheader.preheader.i ], [ %.4.i, %.loopexit.i ]
  %.1.i = phi float [ 0.000000e+00, %.preheader.preheader.i ], [ %.2189.i, %.loopexit.i ] ; 3 uses
  %i.js = fneg float %.4.lcssa.sink.i             ; 3 uses
  store float %i.js, ptr %i.eu, align 4, !tbaa !36, !alias.scope !130
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %.1.i, ptr %i.jt, align 4, !tbaa !36
  %i.ju = fcmp ogt float %.1.i, %.0113134
  %.1114 = select i1 %i.ju, float %.1.i, float %.0113134 ; 4 uses
  %i.jv = fcmp olt float %.0112135, %i.js
  %.1 = select i1 %i.jv, float %i.js, float %.0112135 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %.preheader123, !llvm.loop !124

bb.h:                                             ; preds = %bb.b
  %i.jw = fdiv nnan float 1.500000e+01, %.1114
  %i.jx = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  %i.jy = load <16 x float>, ptr %i.e, align 16, !tbaa !36
  %i.jz = insertelement <16 x float> poison, float %i.jw, i64 0
  %i.ka = shufflevector <16 x float> %i.jz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kb = fmul <16 x float> %i.ka, %i.jy
  %i.kc = fadd <16 x float> %i.kb, splat (float f0x4B400000)
  %i.kd = bitcast <16 x float> %i.kc to <16 x i32>
  %i.ke = trunc <16 x i32> %i.kd to <16 x i8>
  store <16 x i8> %i.ke, ptr %i.jx, align 1, !tbaa !34
  %i.kf = fdiv float %.1114, 1.500000e+01         ; 2 uses
  %i.kg = fmul nnan float %i.kf, f0x77800000
  %i.kh = fmul nnan float %i.kg, f0x08800000
  %i.ki = bitcast float %i.kf to i32              ; 2 uses
  %i.kj = shl nuw i32 %i.ki, 1
  %i.kk = tail call i32 @llvm.umax.i32(i32 %i.kj, i32 1895825408)
  %spec.store.select.i119 = lshr exact i32 %i.kk, 1
  %i.kl = and i32 %spec.store.select.i119, 2139095040
  %i.km = add nuw i32 %i.kl, 125829120
  %i.kn = bitcast i32 %i.km to float
  %i.ko = fadd float %i.kh, %i.kn
  %i.kp = bitcast float %i.ko to i32              ; 2 uses
  %i.kq = lshr i32 %i.kp, 13
  %i.kr = and i32 %i.kq, 31744
  %i.ks = and i32 %i.kp, 4095
  %i.kt = add nuw nsw i32 %i.kr, %i.ks
  %i.ku = icmp ugt i32 %i.ki, 2139095040
  %i.kv = trunc nuw i32 %i.kt to i16
  %i.kw = select i1 %i.ku, i16 32256, i16 %i.kv
  br label %bb.i

bb.i:                                             ; preds = %.preheader125, %bb.h
  %.sink = phi i16 [ 0, %.preheader125 ], [ %i.kw, %bb.h ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 80
  store i16 %.sink, ptr %i.ky, align 4, !tbaa !34
  %i.kz = fcmp ogt float %.1, 0.000000e+00
  br i1 %i.kz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.la = fdiv nnan float 1.500000e+01, %.1
  %i.lb = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180 ; 4 uses
  %i.lc = load <16 x float>, ptr %i.d, align 16, !tbaa !36
  %i.ld = insertelement <16 x float> poison, float %i.la, i64 0
  %i.le = shufflevector <16 x float> %i.ld, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lf = fmul <16 x float> %i.le, %i.lc
  %i.lg = fadd <16 x float> %i.lf, splat (float f0x4B400000)
  %i.lh = bitcast <16 x float> %i.lg to <16 x i32>
  %i.li = load <16 x i8>, ptr %i.lb, align 1, !tbaa !34
  %i.lj = trunc <16 x i32> %i.lh to <16 x i8>
  %i.lk = shl <16 x i8> %i.lj, splat (i8 4)
  %i.ll = or <16 x i8> %i.lk, %i.li
  store <16 x i8> %i.ll, ptr %i.lb, align 1, !tbaa !34
  %i.lm = fdiv float %.1, 1.500000e+01            ; 2 uses
  %i.ln = fmul nnan float %i.lm, f0x77800000
  %i.lo = fmul nnan float %i.ln, f0x08800000
  %i.lp = bitcast float %i.lm to i32              ; 2 uses
  %i.lq = shl nuw i32 %i.lp, 1
  %i.lr = tail call i32 @llvm.umax.i32(i32 %i.lq, i32 1895825408)
  %spec.store.select.i120 = lshr exact i32 %i.lr, 1
  %i.ls = and i32 %spec.store.select.i120, 2139095040
  %i.lt = add nuw i32 %i.ls, 125829120
  %i.lu = bitcast i32 %i.lt to float
  %i.lv = fadd float %i.lo, %i.lu
  %i.lw = bitcast float %i.lv to i32              ; 2 uses
  %i.lx = lshr i32 %i.lw, 13
  %i.ly = and i32 %i.lx, 31744
  %i.lz = and i32 %i.lw, 4095
  %i.ma = add nuw nsw i32 %i.ly, %i.lz
  %i.mb = icmp ugt i32 %i.lp, 2139095040
  %i.mc = trunc nuw i32 %i.ma to i16
  %i.md = select i1 %i.mb, i16 32256, i16 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.lb, i64 82
  store i16 %i.md, ptr %i.me, align 2, !tbaa !34
  %.phi.trans.insert184 = getelementptr inbounds nuw i8, ptr %i.lb, i64 80
  %.pre = load i16, ptr %.phi.trans.insert184, align 4, !tbaa !34
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.mf = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 82
  store i16 0, ptr %i.mg, align 2, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.mh = phi i16 [ %.sink, %bb.k ], [ %.pre, %bb.j ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180 ; 6 uses
  %i.mj = zext i16 %i.mh to i32                   ; 2 uses
  %i.mk = shl i32 %i.mj, 17                       ; 2 uses
  %i.ml = lshr exact i32 %i.mk, 4
  %i.mm = or disjoint i32 %i.ml, 1879048192
  %i.mn = bitcast i32 %i.mm to float
  %i.mo = and i32 %i.mj, 32767
  %i.mp = or disjoint i32 %i.mo, 1056964608
  %i.mq = bitcast i32 %i.mp to float
  %i.mr = icmp ult i32 %i.mk, 134217728
  %i.ms = fadd float %i.mq, -5.000000e-01
  %i.mt = fmul float %i.mn, 1.925930e-34
  %.v.i = select i1 %i.mr, float %i.ms, float %i.mt
  %i.mu = bitcast float %.v.i to i32
  %.signext.i = sext i16 %i.mh to i32
  %i.mv = and i32 %.signext.i, -2147483648
  %i.mw = or i32 %i.mv, %i.mu
  %i.mx = bitcast i32 %i.mw to float
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 82
  br label %bb.m

.preheader124:                                    ; preds = %.loopexit
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %wide.load205 = load <16 x i8>, ptr %i.a, align 16, !tbaa !34
  %wide.load206 = load <16 x i8>, ptr %i.l, align 16, !tbaa !34
  %wide.load207 = load <16 x i8>, ptr %i.m, align 16, !tbaa !34
  %wide.load208 = load <16 x i8>, ptr %i.n, align 16, !tbaa !34
  %i.na = shl <16 x i8> %wide.load207, splat (i8 2)
  %i.nb = shl <16 x i8> %wide.load208, splat (i8 2)
  %i.nc = or <16 x i8> %i.na, %wide.load205
  %i.nd = or <16 x i8> %i.nb, %wide.load206
  %wide.load209 = load <16 x i8>, ptr %i.o, align 16, !tbaa !34
  %wide.load210 = load <16 x i8>, ptr %i.p, align 16, !tbaa !34
  %i.ne = shl <16 x i8> %wide.load209, splat (i8 4)
  %i.nf = shl <16 x i8> %wide.load210, splat (i8 4)
  %i.ng = or <16 x i8> %i.nc, %i.ne
  %i.nh = or <16 x i8> %i.nd, %i.nf
  %wide.load211 = load <16 x i8>, ptr %i.q, align 16, !tbaa !34
  %wide.load212 = load <16 x i8>, ptr %i.r, align 16, !tbaa !34
  %i.ni = shl <16 x i8> %wide.load211, splat (i8 6)
  %i.nj = shl <16 x i8> %wide.load212, splat (i8 6)
  %i.nk = or <16 x i8> %i.ng, %i.ni
  %i.nl = or <16 x i8> %i.nh, %i.nj
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  store <16 x i8> %i.nk, ptr %i.mz, align 1, !tbaa !34
  store <16 x i8> %i.nl, ptr %i.nm, align 1, !tbaa !34
  %wide.load = load <16 x i8>, ptr %i.s, align 16, !tbaa !34
  %wide.load196 = load <16 x i8>, ptr %i.t, align 16, !tbaa !34
end_hunk_0
begin_hunk_1_@quantize_q3_K:bb.a
  %i.td = sitofp i8 %i.tc to float
  %i.te = fmul float %i.si, %i.td                 ; 2 uses
  %i.tf = fcmp une float %i.te, 0.000000e+00
  br i1 %i.tf, label %.preheader152.i.us, label %.loopexit.i.us

.preheader152.i.us:                               ; preds = %bb.aa
  %i.tg = shl nuw nsw i64 %indvars.iv201.i.us, 4  ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.0136174.i.us, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tg
  %i.tj = load <16 x float>, ptr %i.th, align 4, !tbaa !36, !alias.scope !208
  %i.tk = insertelement <16 x float> poison, float %i.te, i64 0
  %i.tl = shufflevector <16 x float> %i.tk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.tm = fdiv <16 x float> %i.tj, %i.tl
  %i.tn = fadd <16 x float> %i.tm, splat (float f0x4B400000)
  %i.to = bitcast <16 x float> %i.tn to <16 x i32>
  %i.tp = and <16 x i32> %i.to, splat (i32 8388607)
  %i.tq = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.tp, <16 x i32> splat (i32 4194300))
  %i.tr = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.tq, <16 x i32> splat (i32 4194307))
  %i.ts = trunc <16 x i32> %i.tr to <16 x i8>
  %i.tt = add nsw <16 x i8> %i.ts, splat (i8 4)
  store <16 x i8> %i.tt, ptr %i.ti, align 16, !tbaa !34, !noalias !211
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader152.i.us, %bb.aa
  %indvars.iv.next202.i.us = add nuw nsw i64 %indvars.iv201.i.us, 1 ; 2 uses
  %exitcond204.not.i.us = icmp eq i64 %indvars.iv.next202.i.us, 16
  br i1 %exitcond204.not.i.us, label %bb.ab, label %bb.x, !llvm.loop !204

bb.ab:                                            ; preds = %.loopexit.i.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.ky, i8 0, i64 32, i1 false), !alias.scope !209
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %indvars.iv205.i.us = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next206.i.us, %bb.ae ] ; 2 uses
  %.0133169.i.us = phi i8 [ 1, %bb.ab ], [ %spec.select151.i.us, %bb.ae ] ; 2 uses
  %.0134168.i.us = phi i32 [ 0, %bb.ab ], [ %spec.select.i.us, %bb.ae ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv205.i.us ; 2 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !34, !noalias !211 ; 2 uses
  %i.tw = icmp sgt i8 %i.tv, 3
  br i1 %i.tw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.tx = sext i32 %.0134168.i.us to i64
  %i.ty = getelementptr inbounds i8, ptr %i.ky, i64 %i.tx ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !34, !alias.scope !209
  %i.ua = or i8 %i.tz, %.0133169.i.us
  store i8 %i.ua, ptr %i.ty, align 1, !tbaa !34, !alias.scope !209
  %i.ub = add nsw i8 %i.tv, -4
  store i8 %i.ub, ptr %i.tu, align 1, !tbaa !34, !noalias !211
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.uc = add nsw i32 %.0134168.i.us, 1           ; 2 uses
  %i.ud = icmp eq i32 %i.uc, 32                   ; 2 uses
  %spec.select.i.us = select i1 %i.ud, i32 0, i32 %i.uc
  %i.ue = zext i1 %i.ud to i8
  %spec.select151.i.us = shl i8 %.0133169.i.us, %i.ue
  %indvars.iv.next206.i.us = add nuw nsw i64 %indvars.iv205.i.us, 1 ; 2 uses
  %exitcond207.not.i.us = icmp eq i64 %indvars.iv.next206.i.us, 256
  br i1 %exitcond207.not.i.us, label %.preheader154.i.us, label %bb.ac, !llvm.loop !205

.preheader154.i.us:                               ; preds = %bb.ae
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %wide.load126 = load <16 x i8>, ptr %i.a, align 16, !tbaa !34, !noalias !211
  %wide.load127 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !34, !noalias !211
  %wide.load128 = load <16 x i8>, ptr %i.ad, align 16, !tbaa !34, !noalias !211
  %wide.load129 = load <16 x i8>, ptr %i.ae, align 16, !tbaa !34, !noalias !211
  %i.ug = shl <16 x i8> %wide.load128, splat (i8 2)
  %i.uh = shl <16 x i8> %wide.load129, splat (i8 2)
  %i.ui = or <16 x i8> %i.ug, %wide.load126
  %i.uj = or <16 x i8> %i.uh, %wide.load127
  %wide.load130 = load <16 x i8>, ptr %i.af, align 16, !tbaa !34, !noalias !211
  %wide.load131 = load <16 x i8>, ptr %i.ag, align 16, !tbaa !34, !noalias !211
  %i.uk = shl <16 x i8> %wide.load130, splat (i8 4)
  %i.ul = shl <16 x i8> %wide.load131, splat (i8 4)
  %i.um = or <16 x i8> %i.ui, %i.uk
  %i.un = or <16 x i8> %i.uj, %i.ul
  %wide.load132 = load <16 x i8>, ptr %i.ah, align 16, !tbaa !34, !noalias !211
  %wide.load133 = load <16 x i8>, ptr %i.ai, align 16, !tbaa !34, !noalias !211
  %i.uo = shl <16 x i8> %wide.load132, splat (i8 6)
  %i.up = shl <16 x i8> %wide.load133, splat (i8 6)
  %i.uq = or <16 x i8> %i.um, %i.uo
  %i.ur = or <16 x i8> %i.un, %i.up
  %i.us = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  store <16 x i8> %i.uq, ptr %i.uf, align 2, !tbaa !34, !alias.scope !209
  store <16 x i8> %i.ur, ptr %i.us, align 2, !tbaa !34, !alias.scope !209
  %wide.load = load <16 x i8>, ptr %i.aj, align 16, !tbaa !34, !noalias !211
  %wide.load117 = load <16 x i8>, ptr %i.ak, align 16, !tbaa !34, !noalias !211
  %wide.load118 = load <16 x i8>, ptr %i.al, align 16, !tbaa !34, !noalias !211
  %wide.load119 = load <16 x i8>, ptr %i.am, align 16, !tbaa !34, !noalias !211
  %i.ut = shl <16 x i8> %wide.load118, splat (i8 2)
  %i.uu = shl <16 x i8> %wide.load119, splat (i8 2)
  %i.uv = or <16 x i8> %i.ut, %wide.load
  %i.uw = or <16 x i8> %i.uu, %wide.load117
  %wide.load120 = load <16 x i8>, ptr %i.an, align 16, !tbaa !34, !noalias !211
  %wide.load121 = load <16 x i8>, ptr %i.ao, align 16, !tbaa !34, !noalias !211
  %i.ux = shl <16 x i8> %wide.load120, splat (i8 4)
  %i.uy = shl <16 x i8> %wide.load121, splat (i8 4)
  %i.uz = or <16 x i8> %i.uv, %i.ux
  %i.va = or <16 x i8> %i.uw, %i.uy
  %wide.load122 = load <16 x i8>, ptr %i.ap, align 16, !tbaa !34, !noalias !211
  %wide.load123 = load <16 x i8>, ptr %i.aq, align 16, !tbaa !34, !noalias !211
  %i.vb = shl <16 x i8> %wide.load122, splat (i8 6)
  %i.vc = shl <16 x i8> %wide.load123, splat (i8 6)
  %i.vd = or <16 x i8> %i.uz, %i.vb
  %i.ve = or <16 x i8> %i.va, %i.vc
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ky, i64 64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ky, i64 80
  store <16 x i8> %i.vd, ptr %i.vf, align 2, !tbaa !34, !alias.scope !209
  store <16 x i8> %i.ve, ptr %i.vg, align 2, !tbaa !34, !alias.scope !209
  %i.vh = getelementptr inbounds nuw i8, ptr %.0136174.i.us, i64 1024
  %indvars.iv.next216.i.us = add nuw nsw i64 %indvars.iv215.i.us, 1 ; 2 uses
  %exitcond218.not.i.us = icmp eq i64 %indvars.iv.next216.i.us, %wide.trip.count.i
  br i1 %exitcond218.not.i.us, label %quantize_row_q3_K_impl.exit.loopexit.us, label %.preheader155.i.us, !llvm.loop !206

quantize_row_q3_K_impl.exit.loopexit.us:          ; preds = %.preheader154.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !211
  %i.vi = getelementptr inbounds [4 x i8], ptr %.02034.us, i64 %3
  %i.vj = getelementptr inbounds nuw i8, ptr %.01935.us, i64 %i.f
  %i.vk = add nuw nsw i64 %.036.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.vk, %2
  br i1 %exitcond.not, label %.loopexit, label %.preheader155.preheader.i.us, !llvm.loop !207

bb.af:                                            ; preds = %bb.a
  %i.vl = mul nsw i64 %3, %2
  tail call void @quantize_row_q3_K_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.vl)
  br label %.loopexit

.loopexit:                                        ; preds = %quantize_row_q3_K_impl.exit.loopexit.us, %.lr.ph, %.preheader, %bb.af
  %i.vm = mul i64 %i.f, %2
  ret i64 %i.vm
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @quantize_row_q4_K_ref(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 27 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x float], align 16            ; 15 uses
  %i.d = alloca [8 x float], align 16             ; 4 uses
  %i.e = alloca [8 x float], align 16             ; 4 uses
  %i.f = sdiv i64 %2, 256                         ; 2 uses
  %i.g = trunc i64 %i.f to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader139.preheader, label %._crit_edge

.preheader139.preheader:                          ; preds = %bb.a
  %wide.trip.count = and i64 %i.f, 2147483647
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.preheader, %.preheader
  %indvars.iv189 = phi i64 [ 0, %.preheader139.preheader ], [ %indvars.iv.next190, %.preheader ] ; 2 uses
  %.0117159 = phi ptr [ %0, %.preheader139.preheader ], [ %i.sz, %.preheader ] ; 41 uses
  br label %.preheader138

._crit_edge:                                      ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.preheader138:                                    ; preds = %.preheader139, %make_qkx2_quants.exit
  %indvars.iv = phi i64 [ 0, %.preheader139 ], [ %indvars.iv.next, %make_qkx2_quants.exit ] ; 4 uses
  %i.ae = phi <2 x float> [ zeroinitializer, %.preheader139 ], [ %i.kj, %make_qkx2_quants.exit ] ; 2 uses
  %i.af = shl nuw nsw i64 %indvars.iv, 5          ; 33 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af ; 8 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !36 ; 2 uses
  %3 = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float 0.000000e+00)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !36 ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %3)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !36 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.al)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load float, ptr %i.ar, align 4, !tbaa !36 ; 2 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.ap)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !36 ; 2 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.ba = load float, ptr %i.az, align 4, !tbaa !36 ; 2 uses
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.ax)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !36 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bb)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !36 ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bf)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !36 ; 2 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bj)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !36 ; 2 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bn)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.br)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.by = load float, ptr %i.bx, align 4, !tbaa !36 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bv)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !36 ; 2 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.bz)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 52
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cd)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !36 ; 2 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.ch)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 60
  %i.co = load float, ptr %i.cn, align 4, !tbaa !36 ; 2 uses
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cl)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !36 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cp)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 68
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !36 ; 2 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.ct)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load float, ptr %i.cz, align 4, !tbaa !36 ; 2 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cx)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 76
  %i.de = load float, ptr %i.dd, align 4, !tbaa !36 ; 2 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.db)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36 ; 2 uses
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.df)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 84
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !36 ; 2 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dj)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dn)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 92
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36 ; 2 uses
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.dr)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !36 ; 2 uses
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.dv)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 100
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !36 ; 2 uses
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.dz)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !36 ; 2 uses
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.ed)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 108
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !36 ; 2 uses
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.eh)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 112 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !36 ; 2 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.el)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 116
  %i.es = load float, ptr %i.er, align 4, !tbaa !36 ; 2 uses
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.ep)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 120
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !36 ; 2 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.et)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 124
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !36 ; 2 uses
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.ex)
  %i.fc = fmul float %i.fb, 3.125000e-02
  %i.fd = tail call float @sqrtf(float noundef %i.fc) #14
  %i.fe = load <4 x float>, ptr %i.ag, align 4, !tbaa !36
  %i.ff = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fe)
  %i.fg = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.fi = fadd <4 x float> %i.fh, %i.ff           ; 2 uses
  store <4 x float> %i.fi, ptr %i.c, align 16, !tbaa !36
  %i.fj = load <4 x float>, ptr %i.av, align 4, !tbaa !36
  %i.fk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fj)
  %i.fl = fadd <4 x float> %i.fh, %i.fk
  store <4 x float> %i.fl, ptr %i.i, align 16, !tbaa !36
  %i.fm = load <4 x float>, ptr %i.bl, align 4, !tbaa !36
  %i.fn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fm)
  %i.fo = fadd <4 x float> %i.fh, %i.fn
  store <4 x float> %i.fo, ptr %i.j, align 16, !tbaa !36
  %i.fp = load <4 x float>, ptr %i.cb, align 4, !tbaa !36
  %i.fq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fp)
  %i.fr = fadd <4 x float> %i.fh, %i.fq
  store <4 x float> %i.fr, ptr %i.k, align 16, !tbaa !36
  %i.fs = load <4 x float>, ptr %i.cr, align 4, !tbaa !36
  %i.ft = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fs)
  %i.fu = fadd <4 x float> %i.fh, %i.ft
  store <4 x float> %i.fu, ptr %i.l, align 16, !tbaa !36
  %i.fv = load <4 x float>, ptr %i.dh, align 4, !tbaa !36
  %i.fw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fv)
  %i.fx = fadd <4 x float> %i.fh, %i.fw
  store <4 x float> %i.fx, ptr %i.m, align 16, !tbaa !36
  %i.fy = load <4 x float>, ptr %i.dx, align 4, !tbaa !36
  %i.fz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fy)
  %i.ga = fadd <4 x float> %i.fh, %i.fz
  store <4 x float> %i.ga, ptr %i.n, align 16, !tbaa !36
  %i.gb = load <4 x float>, ptr %i.en, align 4, !tbaa !36
  %i.gc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gb)
  %i.gd = fadd <4 x float> %i.fh, %i.gc
  store <4 x float> %i.gd, ptr %i.o, align 16, !tbaa !36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.ge = load float, ptr %i.ag, align 4, !tbaa !36, !alias.scope !230 ; 3 uses
  %i.gf = extractelement <4 x float> %i.fi, i64 0 ; 2 uses
  %i.gg = fmul float %i.ge, %i.gf
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.gj = fcmp ogt float %.1174.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.gj, float 0.000000e+00, float %.1174.i ; 6 uses
  %i.gk = fcmp oeq float %.1181.i, %spec.store.select.i
  br i1 %i.gk, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gh, i8 0, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !232
  br label %make_qkx2_quants.exit

bb.c:                                             ; preds = %bb.c, %.preheader138
  %indvars.iv.i = phi i64 [ 1, %.preheader138 ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.0173208.i = phi float [ %i.ge, %.preheader138 ], [ %.1174.i, %bb.c ] ; 2 uses
  %.0180207.i = phi float [ %i.ge, %.preheader138 ], [ %.1181.i, %bb.c ] ; 2 uses
  %.0191206.i = phi float [ %i.gf, %.preheader138 ], [ %i.gr, %bb.c ]
  %.0193204.i = phi float [ %i.gg, %.preheader138 ], [ %i.gs, %bb.c ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !36, !alias.scope !230 ; 5 uses
  %i.gn = fcmp olt float %i.gm, %.0173208.i
  %.1174.i = select i1 %i.gn, float %i.gm, float %.0173208.i ; 3 uses
  %i.go = fcmp ogt float %i.gm, %.0180207.i
  %.1181.i = select i1 %i.go, float %i.gm, float %.0180207.i ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !36, !alias.scope !231 ; 2 uses
  %i.gr = fadd float %.0191206.i, %i.gq           ; 3 uses
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gm, float %.0193204.i) ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
end_hunk_1
begin_hunk_2_@quantize_q4_K:bb.a
  %i.rz = trunc nuw nsw <4 x i32> %i.ry to <4 x i8>
  %i.sa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rq
  store <4 x i8> %i.rz, ptr %i.sa, align 8, !tbaa !34, !noalias !263
  %i.sb = or disjoint i64 %i.qu, 12               ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.sb
  %wide.load.3 = load <4 x float>, ptr %i.sc, align 4, !tbaa !36, !alias.scope !261
  %i.sd = fadd <4 x float> %broadcast.splat, %wide.load.3
  %i.se = fdiv <4 x float> %i.sd, %broadcast.splat63
  %i.sf = fadd <4 x float> %i.se, splat (float f0x4B400000)
  %i.sg = bitcast <4 x float> %i.sf to <4 x i32>
  %i.sh = and <4 x i32> %i.sg, splat (i32 8388607)
  %i.si = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.sh, <4 x i32> splat (i32 4194304))
  %i.sj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.si, <4 x i32> splat (i32 15))
  %i.sk = trunc nuw nsw <4 x i32> %i.sj to <4 x i8>
  %i.sl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sb
  store <4 x i8> %i.sk, ptr %i.sl, align 4, !tbaa !34, !noalias !263
  %i.sm = or disjoint i64 %i.qu, 16               ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.sm
  %wide.load.4 = load <4 x float>, ptr %i.sn, align 4, !tbaa !36, !alias.scope !261
  %i.so = fadd <4 x float> %broadcast.splat, %wide.load.4
  %i.sp = fdiv <4 x float> %i.so, %broadcast.splat63
  %i.sq = fadd <4 x float> %i.sp, splat (float f0x4B400000)
  %i.sr = bitcast <4 x float> %i.sq to <4 x i32>
  %i.ss = and <4 x i32> %i.sr, splat (i32 8388607)
  %i.st = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ss, <4 x i32> splat (i32 4194304))
  %i.su = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.st, <4 x i32> splat (i32 15))
  %i.sv = trunc nuw nsw <4 x i32> %i.su to <4 x i8>
  %i.sw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sm
  store <4 x i8> %i.sv, ptr %i.sw, align 16, !tbaa !34, !noalias !263
  %i.sx = or disjoint i64 %i.qu, 20               ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.sx
  %wide.load.5 = load <4 x float>, ptr %i.sy, align 4, !tbaa !36, !alias.scope !261
  %i.sz = fadd <4 x float> %broadcast.splat, %wide.load.5
  %i.ta = fdiv <4 x float> %i.sz, %broadcast.splat63
  %i.tb = fadd <4 x float> %i.ta, splat (float f0x4B400000)
  %i.tc = bitcast <4 x float> %i.tb to <4 x i32>
  %i.td = and <4 x i32> %i.tc, splat (i32 8388607)
  %i.te = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.td, <4 x i32> splat (i32 4194304))
  %i.tf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.te, <4 x i32> splat (i32 15))
  %i.tg = trunc nuw nsw <4 x i32> %i.tf to <4 x i8>
  %i.th = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sx
  store <4 x i8> %i.tg, ptr %i.th, align 4, !tbaa !34, !noalias !263
  %i.ti = or disjoint i64 %i.qu, 24               ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.ti
  %wide.load.6 = load <4 x float>, ptr %i.tj, align 4, !tbaa !36, !alias.scope !261
  %i.tk = fadd <4 x float> %broadcast.splat, %wide.load.6
  %i.tl = fdiv <4 x float> %i.tk, %broadcast.splat63
  %i.tm = fadd <4 x float> %i.tl, splat (float f0x4B400000)
  %i.tn = bitcast <4 x float> %i.tm to <4 x i32>
  %i.to = and <4 x i32> %i.tn, splat (i32 8388607)
  %i.tp = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.to, <4 x i32> splat (i32 4194304))
  %i.tq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.tp, <4 x i32> splat (i32 15))
  %i.tr = trunc nuw nsw <4 x i32> %i.tq to <4 x i8>
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ti
  store <4 x i8> %i.tr, ptr %i.ts, align 8, !tbaa !34, !noalias !263
  %i.tt = or disjoint i64 %i.qu, 28               ; 2 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.tt
  %wide.load.7 = load <4 x float>, ptr %i.tu, align 4, !tbaa !36, !alias.scope !261
  %i.tv = fadd <4 x float> %broadcast.splat, %wide.load.7
  %i.tw = fdiv <4 x float> %i.tv, %broadcast.splat63
  %i.tx = fadd <4 x float> %i.tw, splat (float f0x4B400000)
  %i.ty = bitcast <4 x float> %i.tx to <4 x i32>
  %i.tz = and <4 x i32> %i.ty, splat (i32 8388607)
  %i.ua = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.tz, <4 x i32> splat (i32 4194304))
  %i.ub = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ua, <4 x i32> splat (i32 15))
  %i.uc = trunc nuw nsw <4 x i32> %i.ub to <4 x i8>
  %i.ud = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tt
  store <4 x i8> %i.uc, ptr %i.ud, align 4, !tbaa !34, !noalias !263
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %vector.body, %get_scale_min_k4.exit.i.us
  %indvars.iv.next192.i.us = add nuw nsw i64 %indvars.iv191.i.us, 1 ; 2 uses
  %exitcond194.not.i.us = icmp eq i64 %indvars.iv.next192.i.us, 8
  br i1 %exitcond194.not.i.us, label %.preheader.i.us, label %bb.o, !llvm.loop !258

.preheader.i.us:                                  ; preds = %.loopexit.i.us
  %i.ue = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.uf = load <16 x i8>, ptr %i.a, align 16, !tbaa !34, !noalias !263
  %i.ug = load <16 x i8>, ptr %i.v, align 16, !tbaa !34, !noalias !263
  %i.uh = shl <16 x i8> %i.ug, splat (i8 4)
  %i.ui = or <16 x i8> %i.uh, %i.uf
  store <16 x i8> %i.ui, ptr %i.ue, align 4, !tbaa !34, !alias.scope !262
  %i.uj = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.uk = load <16 x i8>, ptr %i.w, align 16, !tbaa !34, !noalias !263
  %i.ul = load <16 x i8>, ptr %i.x, align 16, !tbaa !34, !noalias !263
  %i.um = shl <16 x i8> %i.ul, splat (i8 4)
  %i.un = or <16 x i8> %i.um, %i.uk
  store <16 x i8> %i.un, ptr %i.uj, align 4, !tbaa !34, !alias.scope !262
  %i.uo = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.up = load <16 x i8>, ptr %i.y, align 16, !tbaa !34, !noalias !263
  %i.uq = load <16 x i8>, ptr %i.z, align 16, !tbaa !34, !noalias !263
  %i.ur = shl <16 x i8> %i.uq, splat (i8 4)
  %i.us = or <16 x i8> %i.ur, %i.up
  store <16 x i8> %i.us, ptr %i.uo, align 4, !tbaa !34, !alias.scope !262
  %i.ut = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %i.uu = load <16 x i8>, ptr %i.aa, align 16, !tbaa !34, !noalias !263
  %i.uv = load <16 x i8>, ptr %i.ab, align 16, !tbaa !34, !noalias !263
  %i.uw = shl <16 x i8> %i.uv, splat (i8 4)
  %i.ux = or <16 x i8> %i.uw, %i.uu
  store <16 x i8> %i.ux, ptr %i.ut, align 4, !tbaa !34, !alias.scope !262
  %i.uy = getelementptr inbounds nuw i8, ptr %i.nr, i64 80
  %i.uz = load <16 x i8>, ptr %i.ac, align 16, !tbaa !34, !noalias !263
  %i.va = load <16 x i8>, ptr %i.ad, align 16, !tbaa !34, !noalias !263
  %i.vb = shl <16 x i8> %i.va, splat (i8 4)
  %i.vc = or <16 x i8> %i.vb, %i.uz
  store <16 x i8> %i.vc, ptr %i.uy, align 4, !tbaa !34, !alias.scope !262
  %i.vd = getelementptr inbounds nuw i8, ptr %i.nr, i64 96
  %i.ve = load <16 x i8>, ptr %i.ae, align 16, !tbaa !34, !noalias !263
  %i.vf = load <16 x i8>, ptr %i.af, align 16, !tbaa !34, !noalias !263
  %i.vg = shl <16 x i8> %i.vf, splat (i8 4)
  %i.vh = or <16 x i8> %i.vg, %i.ve
  store <16 x i8> %i.vh, ptr %i.vd, align 4, !tbaa !34, !alias.scope !262
  %i.vi = getelementptr inbounds nuw i8, ptr %i.nr, i64 112
  %i.vj = load <16 x i8>, ptr %i.ag, align 16, !tbaa !34, !noalias !263
  %i.vk = load <16 x i8>, ptr %i.ah, align 16, !tbaa !34, !noalias !263
  %i.vl = shl <16 x i8> %i.vk, splat (i8 4)
  %i.vm = or <16 x i8> %i.vl, %i.vj
  store <16 x i8> %i.vm, ptr %i.vi, align 4, !tbaa !34, !alias.scope !262
  %i.vn = getelementptr inbounds nuw i8, ptr %i.nr, i64 128
  %i.vo = load <16 x i8>, ptr %i.ai, align 16, !tbaa !34, !noalias !263
  %i.vp = load <16 x i8>, ptr %i.aj, align 16, !tbaa !34, !noalias !263
  %i.vq = shl <16 x i8> %i.vp, splat (i8 4)
  %i.vr = or <16 x i8> %i.vq, %i.vo
  store <16 x i8> %i.vr, ptr %i.vn, align 4, !tbaa !34, !alias.scope !262
  %i.vs = getelementptr inbounds nuw i8, ptr %.0120161.i.us, i64 1024
  %indvars.iv.next203.i.us = add nuw nsw i64 %indvars.iv202.i.us, 1 ; 2 uses
  %exitcond205.not.i.us = icmp eq i64 %indvars.iv.next203.i.us, %i.k
  br i1 %exitcond205.not.i.us, label %quantize_row_q4_K_impl.exit.loopexit.us, label %.preheader141.i.us, !llvm.loop !259

quantize_row_q4_K_impl.exit.loopexit.us:          ; preds = %.preheader.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !263
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.02029.us, i64 %3
  %i.vu = getelementptr inbounds nuw i8, ptr %.01930.us, i64 %i.i
  %i.vv = add nuw nsw i64 %.031.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.vv, %2
  br i1 %exitcond.not, label %.loopexit, label %.preheader141.preheader.i.us, !llvm.loop !260

bb.r:                                             ; preds = %bb.a
  %i.vw = mul nsw i64 %3, %2
  tail call void @quantize_row_q4_K_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.vw)
  br label %.loopexit

.loopexit:                                        ; preds = %quantize_row_q4_K_impl.exit.loopexit.us, %.lr.ph, %.preheader, %bb.r
  %i.vx = mul i64 %i.i, %2
  ret i64 %i.vx
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @quantize_row_q5_K_ref(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 15 uses
  %i.b = alloca [8 x float], align 16             ; 4 uses
  %i.c = alloca [8 x float], align 16             ; 4 uses
  %i.d = alloca [32 x float], align 16            ; 15 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = sdiv i64 %2, 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.g = icmp sgt i64 %2, 255
  br i1 %i.g, label %.preheader165.preheader, label %._crit_edge

.preheader165.preheader:                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.preheader, %bb.ad
  %indvars.iv216 = phi i64 [ 0, %.preheader165.preheader ], [ %indvars.iv.next217, %bb.ad ] ; 2 uses
  %.0138187 = phi ptr [ %0, %.preheader165.preheader ], [ %i.tc, %bb.ad ] ; 41 uses
  br label %.preheader164

._crit_edge:                                      ; preds = %bb.ad, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.preheader164:                                    ; preds = %.preheader165, %make_qkx2_quants.exit
  %indvars.iv = phi i64 [ 0, %.preheader165 ], [ %indvars.iv.next, %make_qkx2_quants.exit ] ; 4 uses
  %i.o = phi <2 x float> [ zeroinitializer, %.preheader165 ], [ %i.jt, %make_qkx2_quants.exit ] ; 2 uses
  %i.p = shl nuw nsw i64 %indvars.iv, 5           ; 33 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p ; 8 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !36 ; 2 uses
  %3 = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float 0.000000e+00)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !36 ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %3)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !36 ; 2 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.v)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !36 ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.z)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !36 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ad)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !36 ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.ah)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !36 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.al)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !36 ; 2 uses
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.ap)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !36 ; 2 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.at)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !36 ; 2 uses
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.ax)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load float, ptr %i.bd, align 4, !tbaa !36 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bb)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !36 ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bf)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !36 ; 2 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bj)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !36 ; 2 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bn)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.br)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  %i.by = load float, ptr %i.bx, align 4, !tbaa !36 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bv)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !36 ; 2 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.bz)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 68
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cd)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !36 ; 2 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.ch)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 76
  %i.co = load float, ptr %i.cn, align 4, !tbaa !36 ; 2 uses
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cl)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !36 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cp)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 84
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !36 ; 2 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.ct)
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.da = load float, ptr %i.cz, align 4, !tbaa !36 ; 2 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cx)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 92
  %i.de = load float, ptr %i.dd, align 4, !tbaa !36 ; 2 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.db)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36 ; 2 uses
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.df)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 100
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !36 ; 2 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dj)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dn)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 108
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36 ; 2 uses
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.dr)
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 112 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !36 ; 2 uses
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.dv)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 116
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !36 ; 2 uses
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.dz)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 120
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !36 ; 2 uses
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.ed)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 124
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !36 ; 2 uses
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.eh)
  %i.em = fmul float %i.el, 3.125000e-02
  %i.en = tail call float @sqrtf(float noundef %i.em) #14
  %i.eo = load <4 x float>, ptr %i.q, align 4, !tbaa !36
  %i.ep = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.eo)
  %i.eq = insertelement <4 x float> poison, float %i.en, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.es = fadd <4 x float> %i.er, %i.ep           ; 2 uses
  store <4 x float> %i.es, ptr %i.d, align 16, !tbaa !36
  %i.et = load <4 x float>, ptr %i.af, align 4, !tbaa !36
  %i.eu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.et)
  %i.ev = fadd <4 x float> %i.er, %i.eu
  store <4 x float> %i.ev, ptr %i.h, align 16, !tbaa !36
  %i.ew = load <4 x float>, ptr %i.av, align 4, !tbaa !36
  %i.ex = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ew)
  %i.ey = fadd <4 x float> %i.er, %i.ex
  store <4 x float> %i.ey, ptr %i.i, align 16, !tbaa !36
  %i.ez = load <4 x float>, ptr %i.bl, align 4, !tbaa !36
  %i.fa = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ez)
  %i.fb = fadd <4 x float> %i.er, %i.fa
  store <4 x float> %i.fb, ptr %i.j, align 16, !tbaa !36
  %i.fc = load <4 x float>, ptr %i.cb, align 4, !tbaa !36
  %i.fd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fc)
  %i.fe = fadd <4 x float> %i.er, %i.fd
  store <4 x float> %i.fe, ptr %i.k, align 16, !tbaa !36
  %i.ff = load <4 x float>, ptr %i.cr, align 4, !tbaa !36
  %i.fg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ff)
  %i.fh = fadd <4 x float> %i.er, %i.fg
  store <4 x float> %i.fh, ptr %i.l, align 16, !tbaa !36
  %i.fi = load <4 x float>, ptr %i.dh, align 4, !tbaa !36
  %i.fj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fi)
  %i.fk = fadd <4 x float> %i.er, %i.fj
  store <4 x float> %i.fk, ptr %i.m, align 16, !tbaa !36
  %i.fl = load <4 x float>, ptr %i.dx, align 4, !tbaa !36
  %i.fm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.er, %i.fm
  store <4 x float> %i.fn, ptr %i.n, align 16, !tbaa !36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.fo = load float, ptr %i.q, align 4, !tbaa !36, !alias.scope !284 ; 3 uses
  %i.fp = extractelement <4 x float> %i.es, i64 0 ; 2 uses
  %i.fq = fmul float %i.fo, %i.fp
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ft = fcmp ogt float %.1174.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.ft, float 0.000000e+00, float %.1174.i ; 6 uses
  %i.fu = fcmp oeq float %.1181.i, %spec.store.select.i
  br i1 %i.fu, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.fr, i8 0, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !286
  br label %make_qkx2_quants.exit

bb.c:                                             ; preds = %bb.c, %.preheader164
  %indvars.iv.i = phi i64 [ 1, %.preheader164 ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.0173208.i = phi float [ %i.fo, %.preheader164 ], [ %.1174.i, %bb.c ] ; 2 uses
  %.0180207.i = phi float [ %i.fo, %.preheader164 ], [ %.1181.i, %bb.c ] ; 2 uses
  %.0191206.i = phi float [ %i.fp, %.preheader164 ], [ %i.gb, %bb.c ]
  %.0193204.i = phi float [ %i.fq, %.preheader164 ], [ %i.gc, %bb.c ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !36, !alias.scope !284 ; 5 uses
  %i.fx = fcmp olt float %i.fw, %.0173208.i
  %.1174.i = select i1 %i.fx, float %i.fw, float %.0173208.i ; 3 uses
  %i.fy = fcmp ogt float %i.fw, %.0180207.i
  %.1181.i = select i1 %i.fy, float %i.fw, float %.0180207.i ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !36, !alias.scope !285 ; 2 uses
  %i.gb = fadd float %.0191206.i, %i.ga           ; 3 uses
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.fw, float %.0193204.i) ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
end_hunk_2
