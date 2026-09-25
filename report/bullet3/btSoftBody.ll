Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_Z4sortR11btMatrix3x3R9btVector3S0_i:bb.a
  store float %i.gs, ptr %i.en, align 4, !tbaa !253
  %i.gt = load float, ptr %i.er, align 4, !tbaa !253
  %i.gu = fneg float %i.gt
  store float %i.gu, ptr %i.er, align 4, !tbaa !253
  %i.gv = load float, ptr %i.fh, align 4, !tbaa !253
  %i.gw = fneg float %i.gv
  store float %i.gw, ptr %i.fh, align 4, !tbaa !253
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !253
  %i.gz = fneg float %i.gy
  store float %i.gz, ptr %i.gx, align 4, !tbaa !253
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !253
  %i.hc = fneg float %i.hb
  store float %i.hc, ptr %i.ha, align 4, !tbaa !253
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !253
  %i.hf = fneg float %i.he
  store float %i.hf, ptr %i.hd, align 4, !tbaa !253
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q, %bb.p, %bb.k, %bb.l, %bb.h, %bb.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z7processILi1EEvR11btMatrix3x3S1_R9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(48) %3) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.GivensRotation, align 4      ; 8 uses
  %5 = alloca %class.GivensRotation, align 4      ; 8 uses
  %6 = alloca %class.btMatrix2x2, align 16        ; 6 uses
  %7 = alloca %class.btMatrix2x2, align 16        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store i32 0, ptr %4, align 4, !tbaa !397
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !398
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.b, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store i32 0, ptr %5, align 4, !tbaa !397
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !398
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !253
  %i.g = load float, ptr %0, align 4, !tbaa !253
  store float %i.g, ptr %2, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i64 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load <2 x float>, ptr %i.i, align 4, !tbaa !253
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !253
  %i.n = shufflevector <2 x float> %i.l, <2 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.n, ptr %6, align 16, !tbaa !253
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !253
  store float %i.p, ptr %7, align 16, !tbaa !400
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !253
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.r, ptr %i.s, align 4, !tbaa !401
  call void @_Z26singularValueDecompositionRK11btMatrix2x2R14GivensRotationS1_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef f0x37000000)
  %i.t = load <2 x float>, ptr %6, align 16, !tbaa !253
  store <2 x float> %i.t, ptr %i.i, align 4, !tbaa !253
  %i.u = load <2 x float>, ptr %i.k, align 8, !tbaa !253
  store <2 x float> %i.u, ptr %i.j, align 4, !tbaa !253
  %i.v = load <4 x float>, ptr %7, align 16, !tbaa !253
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.w, ptr %i.o, align 4, !tbaa !253
  %i.x = load i32, ptr %4, align 4, !tbaa !397
  %i.y = add nsw i32 %i.x, 1
  %i.z = load i32, ptr %i.a, align 4, !tbaa !398
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = load i32, ptr %5, align 4, !tbaa !397
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !398
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = sext i32 %i.y to i64                    ; 3 uses
  %i.ag = sext i32 %i.aa to i64                   ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !253 ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ag ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !253 ; 2 uses
  %i.al = load float, ptr %i.b, align 4, !tbaa !402 ; 6 uses
  %i.am = load float, ptr %i.c, align 4, !tbaa !403 ; 6 uses
  %i.an = fneg float %i.ak
  %i.ao = fmul float %i.am, %i.an
  %i.ap = call float @llvm.fmuladd.f32(float %i.al, float %i.ai, float %i.ao)
  store float %i.ap, ptr %i.ah, align 4, !tbaa !253
  %i.aq = fmul float %i.ak, %i.al
  %i.ar = call float @llvm.fmuladd.f32(float %i.am, float %i.ai, float %i.aq)
  store float %i.ar, ptr %i.aj, align 4, !tbaa !253
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.af ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !253 ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ag ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !253 ; 2 uses
  %i.ax = fneg float %i.aw
  %i.ay = fmul float %i.am, %i.ax
  %i.az = call float @llvm.fmuladd.f32(float %i.al, float %i.au, float %i.ay)
  store float %i.az, ptr %i.at, align 4, !tbaa !253
  %i.ba = fmul float %i.al, %i.aw
  %i.bb = call float @llvm.fmuladd.f32(float %i.am, float %i.au, float %i.ba)
  store float %i.bb, ptr %i.av, align 4, !tbaa !253
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.af ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !253 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ag ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !253 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = fmul float %i.am, %i.bh
  %i.bj = call float @llvm.fmuladd.f32(float %i.al, float %i.be, float %i.bi)
  store float %i.bj, ptr %i.bd, align 4, !tbaa !253
  %i.bk = fmul float %i.al, %i.bg
  %i.bl = call float @llvm.fmuladd.f32(float %i.am, float %i.be, float %i.bk)
  store float %i.bl, ptr %i.bf, align 4, !tbaa !253
  %i.bm = sext i32 %i.ac to i64                   ; 3 uses
  %i.bn = sext i32 %i.ae to i64                   ; 3 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bm ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !253 ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bn ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !253 ; 2 uses
  %i.bs = load float, ptr %i.e, align 4, !tbaa !402 ; 6 uses
  %i.bt = load float, ptr %i.f, align 4, !tbaa !403 ; 6 uses
  %i.bu = fneg float %i.br
  %i.bv = fmul float %i.bt, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bs, float %i.bp, float %i.bv)
  store float %i.bw, ptr %i.bo, align 4, !tbaa !253
  %i.bx = fmul float %i.br, %i.bs
  %i.by = call float @llvm.fmuladd.f32(float %i.bt, float %i.bp, float %i.bx)
  store float %i.by, ptr %i.bq, align 4, !tbaa !253
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bm ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !253 ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bn ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !253 ; 2 uses
  %i.ce = fneg float %i.cd
  %i.cf = fmul float %i.bt, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.bs, float %i.cb, float %i.cf)
  store float %i.cg, ptr %i.ca, align 4, !tbaa !253
  %i.ch = fmul float %i.bs, %i.cd
  %i.ci = call float @llvm.fmuladd.f32(float %i.bt, float %i.cb, float %i.ch)
  store float %i.ci, ptr %i.cc, align 4, !tbaa !253
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.bm ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !253 ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.bn ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !253 ; 2 uses
  %i.co = fneg float %i.cn
  %i.cp = fmul float %i.bt, %i.co
  %i.cq = call float @llvm.fmuladd.f32(float %i.bs, float %i.cl, float %i.cp)
  store float %i.cq, ptr %i.ck, align 4, !tbaa !253
  %i.cr = fmul float %i.bs, %i.cn
  %i.cs = call float @llvm.fmuladd.f32(float %i.bt, float %i.cl, float %i.cr)
  store float %i.cs, ptr %i.cm, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z26singularValueDecompositionRK11btMatrix2x2R14GivensRotationS1_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !253
  %i.b = load float, ptr %0, align 4, !tbaa !253
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load float, ptr %spec.select.i.i, align 4, !tbaa !253
  %i.d = fadd float %i.b, %i.c                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !253
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !253
  %i.i = fsub float %i.f, %i.h                    ; 3 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.j)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.k) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = fcmp ogt float %sqrt.i, f0x34000000
  br i1 %i.m, label %bb.b, label %_Z18polarDecompositionRK11btMatrix2x2R14GivensRotationS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fneg float %i.i
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r
  br label %_Z18polarDecompositionRK11btMatrix2x2R14GivensRotationS1_.exit

_Z18polarDecompositionRK11btMatrix2x2R14GivensRotationS1_.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi <2 x float> [ %i.s, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 3 uses
  store <2 x float> %storemerge, ptr %i.l, align 4, !tbaa !253
  %.sroa.0.0.copyload = load float, ptr %0, align 4, !tbaa !253 ; 3 uses
  %.sroa.10.0.copyload = load float, ptr %i.g, align 4, !tbaa !253 ; 3 uses
  %.sroa.13.0.copyload = load float, ptr %i.e, align 4, !tbaa !253 ; 2 uses
  %.sroa.16.0.copyload = load float, ptr %spec.select.i.i, align 4, !tbaa !253 ; 3 uses
  %i.t = load i32, ptr %1, align 4, !tbaa !397    ; 3 uses
  %.not = icmp eq i32 %i.t, 0                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !398  ; 3 uses
  %.not91 = icmp eq i32 %i.v, 0                   ; 2 uses
  %.not.not.i.i.not = icmp eq i32 %i.t, 1         ; 4 uses
  %i.w = select i1 %.not.not.i.i.not, float %.sroa.13.0.copyload, float %.sroa.0.0.copyload ; 2 uses
  %i.x = icmp ult i32 %i.t, 2
  %i.y = icmp ult i32 %i.v, 2
  %.not43.not.i.i.not = icmp eq i32 %i.v, 1       ; 4 uses
  %i.z = select i1 %.not43.not.i.i.not, float %.sroa.13.0.copyload, float %.sroa.0.0.copyload ; 2 uses
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %storemerge, i64 1 ; 4 uses
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %storemerge, i64 0 ; 4 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.w, float %i.ac)
  %.sroa.0.1 = select i1 %.not.not.i.i.not, float %.sroa.0.0.copyload, float %i.ae
  %i.af = fmul float %i.ad, %i.z
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.w, float %i.af) ; 2 uses
  %.sroa.0.0 = select i1 %.not43.not.i.i.not, float %.sroa.0.1, float %i.ag ; 2 uses
  %.sroa.speculate.load.false87.sroa.speculated = select i1 %.not.not.i.i.not, float %.sroa.16.0.copyload, float %.sroa.0.0
  %.sroa.speculated88 = select i1 %.not, float %.sroa.10.0.copyload, float %.sroa.speculate.load.false87.sroa.speculated ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated = select i1 %.not43.not.i.i.not, float %.sroa.16.0.copyload, float %i.ag
  %.sroa.speculated = select i1 %.not91, float %.sroa.10.0.copyload, float %.sroa.speculate.load.false.sroa.speculated ; 2 uses
  %i.ah = fneg float %.sroa.speculated
  %i.ai = fmul float %i.ab, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.speculated88, float %i.ai) ; 3 uses
  %.sroa.0.3 = select i1 %i.x, float %.sroa.0.0, float %i.aj
  %.sroa.10.1 = select i1 %.not, float %i.aj, float %.sroa.10.0.copyload
  %i.ak = fmul float %i.ad, %.sroa.speculated
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ab, float %.sroa.speculated88, float %i.ak) ; 3 uses
  %.sroa.0.2 = select i1 %i.y, float %.sroa.0.3, float %i.al ; 6 uses
  %.sroa.10.0 = select i1 %.not91, float %i.al, float %.sroa.10.1 ; 5 uses
  %simplifycfg.merge = select i1 %.not.not.i.i.not, float %i.aj, float %.sroa.16.0.copyload
  %.sroa.16.0 = select i1 %.not43.not.i.i.not, float %i.al, float %simplifycfg.merge ; 4 uses
  %i.am = fcmp oeq float %.sroa.10.0, 0.000000e+00
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z18polarDecompositionRK11btMatrix2x2R14GivensRotationS1_.exit
  store float %.sroa.0.2, ptr %2, align 4, !tbaa !253
  %i.an = insertelement <2 x float> poison, float %.sroa.0.2, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %.sroa.16.0, i64 1
  br label %bb.g

bb.d:                                             ; preds = %_Z18polarDecompositionRK11btMatrix2x2R14GivensRotationS1_.exit
  %i.ap = fsub float %.sroa.0.2, %.sroa.16.0
  %i.aq = fmul float %i.ap, 5.000000e-01          ; 4 uses
  %i.ar = fmul float %.sroa.10.0, %.sroa.10.0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ar) ; 2 uses
  %i.at = fcmp ogt float %i.as, f0x34000000
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %sqrt92 = tail call float @llvm.sqrt.f32(float %i.as) ; 2 uses
  %i.au = fcmp ogt float %i.aq, 0.000000e+00
  %i.av = fneg float %sqrt92
  %.pn.p = select i1 %i.au, float %sqrt92, float %i.av
  %.pn = fadd float %i.aq, %.pn.p
  %.067 = fdiv float %.sroa.10.0, %.pn            ; 3 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %.067, float %.067, float 1.000000e+00)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fdiv float 1.000000e+00, %sqrt          ; 4 uses
  %i.ay = fneg float %.067
  %i.az = fmul float %i.ax, %i.ay                 ; 3 uses
  %i.ba = fmul float %i.ax, 2.000000e+00
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = fmul float %.sroa.10.0, %i.bb           ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ax, i64 1 ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf           ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %.sroa.0.2, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bd, i64 1
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.bk)
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = insertelement <2 x float> poison, float %.sroa.16.0, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bo, <2 x float> %i.bm) ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  store float %i.bq, ptr %2, align 4, !tbaa !253
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store float %.sroa.0.2, ptr %2, align 4, !tbaa !253
  %i.br = insertelement <2 x float> poison, float %.sroa.0.2, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %.sroa.16.0, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.166 = phi float [ %i.az, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.1 = phi float [ %i.ax, %bb.e ], [ 1.000000e+00, %bb.f ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.bt = phi <2 x float> [ %i.bp, %bb.e ], [ %i.bs, %bb.f ], [ %i.ao, %bb.c ] ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 1 ; 3 uses
  store float %i.bu, ptr %i.a, align 4, !tbaa !253
  %i.bv = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.bw = fcmp olt float %i.bv, %i.bu
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.bu, ptr %2, align 4, !tbaa !253
  store float %i.bv, ptr %i.a, align 4, !tbaa !253
  %i.bx = fneg float %.166
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1.sink = phi float [ %i.bx, %bb.h ], [ %.1, %bb.g ] ; 2 uses
  %.166.sink = phi float [ %.1, %bb.h ], [ %.166, %bb.g ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.1.sink, ptr %i.by, align 4, !tbaa !402
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %.166.sink, ptr %i.bz, align 4, !tbaa !403
  %i.ca = fneg float %.166.sink
  %i.cb = load <2 x float>, ptr %i.l, align 4, !tbaa !253 ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %.166.sink, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.ca, i64 1
  %i.ce = fmul <2 x float> %i.cb, %i.cd
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = insertelement <2 x float> poison, float %.1.sink, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ch, <2 x float> %i.cf)
  store <2 x float> %i.ci, ptr %i.l, align 4, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !473  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !262
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #40
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody10updateFaceI10btDbvtNodeEEvPT_bb(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !259  ; 6 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.g = load float, ptr %i.f, align 4
  %i.h = select i1 %3, float %i.g, float f0x37480000 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !316  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load <2 x float>, ptr %i.k, align 8      ; 9 uses
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = load <2 x float>, ptr %.sroa.5121.0..sroa_idx, align 8 ; 4 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br i1 %2, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.i, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.i54

_Z8btSetMinIfEvRT_RKS0_.exit.i.i:                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load float, ptr %i.o, align 8, !tbaa !253 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = load float, ptr %i.r, align 8, !tbaa !253
  %i.t = fmul float %i.q, %i.s
  %i.u = extractelement <2 x float> %i.m, i64 0
  %i.v = fadd float %i.t, %i.u                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !316  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.16126.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !253
  %i.ac = fmul float %i.q, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !316 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.27.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !253
  %i.aj = fmul float %i.q, %i.ai
  %i.ak = load <2 x float>, ptr %i.p, align 8, !tbaa !253
  %i.al = insertelement <2 x float> poison, float %i.q, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.an = fmul <2 x float> %i.am, %i.ak
  %i.ao = fadd <2 x float> %i.an, %i.l            ; 4 uses
  %i.ap = load <2 x float>, ptr %i.y, align 8     ; 5 uses
end_hunk_0
