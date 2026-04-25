inline.NumInlined: 7594
inline.NumDeleted: 2896
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  br i1 %.not192202, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %.promoted305 = load float, ptr %i.w, align 4
  %i.cc = load <2 x float>, ptr %i.x, align 4
  %i.cd = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %12 = load <12 x float>, ptr %i.v, align 4      ; 2 uses
  %13 = shufflevector <12 x float> %12, <12 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %.promoted338 = load float, ptr %i.ah, align 4
  %.promoted341 = load float, ptr %i.ai, align 4
  %.promoted344 = load float, ptr %i.aj, align 4
  %14 = insertelement <2 x float> %i.cd, float %.promoted305, i64 0
  %15 = shufflevector <12 x float> %12, <12 x float> poison, <2 x i32> <i32 poison, i32 6>
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %15, <2 x i32> <i32 0, i32 3>
  %16 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cf = insertelement <2 x float> %16, float %.promoted, i64 0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ab
  %17 = extractelement <2 x float> %i.fm, i64 1
  %i.cg = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x float> %i.cg, ptr %i.v, align 4
  %i.ch = extractelement <2 x float> %i.fi, i64 1
  store float %i.ch, ptr %i.z, align 4
  %18 = extractelement <2 x float> %i.fk, i64 1
  store float %18, ptr %i.aa, align 4
  store float %17, ptr %i.ab, align 4
  store <4 x float> %i.fp, ptr %i.ac, align 4
  store <4 x float> %i.fx, ptr %i.ag, align 4
  %.pre226 = load ptr, ptr %i.s, align 8
  %i.ci = extractelement <2 x float> %i.fi, i64 0
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.cj = phi ptr [ %i.cb, %bb.x ], [ %.pre226, %._crit_edge.loopexit ]
  %.lcssa200 = phi float [ %.promoted, %bb.x ], [ %i.ci, %._crit_edge.loopexit ] ; 3 uses
  %.072.lcssa = phi ptr [ %2, %bb.x ], [ %i.do, %._crit_edge.loopexit ] ; 4 uses
  store float %.lcssa200, ptr %9, align 4
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
          to label %bb.ac unwind label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %19 = phi float [ %i.ga, %bb.ab ], [ %.promoted344, %.lr.ph.preheader ] ; 2 uses
  %i.cm = phi float [ %i.fz, %bb.ab ], [ %.promoted341, %.lr.ph.preheader ] ; 2 uses
  %i.cn = phi float [ %31, %bb.ab ], [ %.promoted338, %.lr.ph.preheader ] ; 2 uses
  %.072204 = phi ptr [ %i.do, %bb.ab ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0184.0203 = phi ptr [ %i.fy, %bb.ab ], [ %i.ca, %.lr.ph.preheader ] ; 4 uses
  %i.co = phi <2 x float> [ %i.fm, %bb.ab ], [ %i.ce, %.lr.ph.preheader ] ; 5 uses
  %i.cp = phi <2 x float> [ %i.fk, %bb.ab ], [ %14, %.lr.ph.preheader ] ; 6 uses
  %i.cq = phi <8 x float> [ %36, %bb.ab ], [ %13, %.lr.ph.preheader ] ; 18 uses
  %i.cr = phi <2 x float> [ %i.fi, %bb.ab ], [ %i.cf, %.lr.ph.preheader ] ; 5 uses
  %i.cs = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %.not83 = icmp eq ptr %.072204, %2
end_hunk_3
begin_hunk_4_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  store float %i.dd, ptr %i.z, align 4
  %i.de = extractelement <2 x float> %i.cp, i64 1
  store float %i.de, ptr %i.aa, align 4
  %i.df = extractelement <8 x float> %i.cq, i64 2
  store float %i.df, ptr %i.ab, align 4
  %i.dg = extractelement <8 x float> %i.cq, i64 3
  store float %i.dg, ptr %i.ac, align 4
  %i.dh = extractelement <8 x float> %i.cq, i64 4
  store float %i.dh, ptr %i.ad, align 4
  %i.di = extractelement <8 x float> %i.cq, i64 5
  store float %i.di, ptr %i.ae, align 4
  %i.dj = extractelement <8 x float> %i.cq, i64 6
  store float %i.dj, ptr %i.af, align 4
  %i.dk = extractelement <8 x float> %i.cq, i64 7
  store float %i.dk, ptr %i.ag, align 4
  store float %i.cn, ptr %i.ah, align 4
  store float %i.cm, ptr %i.ai, align 4
  store float %19, ptr %i.aj, align 4
  br label %.body

bb.ab:                                            ; preds = %.lr.ph, %bb.z
end_hunk_4
begin_hunk_5_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  %i.ff = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.cp, <2 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %20 = shufflevector <2 x float> %i.co, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <8 x float> %20, <8 x float> %i.cq, <2 x i32> <i32 0, i32 10>
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %21, <2 x float> %i.fg) ; 3 uses
  %i.fj = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.co, <2 x float> %i.et) ; 2 uses
  %i.fl = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.co, <2 x float> %i.ev) ; 3 uses
  %22 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %23 = fmul <4 x float> %i.dt, %22
  %i.fn = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %24 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.fn, <4 x float> %23)
  %25 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %25, <4 x float> %24)
  %26 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %26, <4 x float> %i.fo) ; 3 uses
  %27 = shufflevector <4 x float> %i.fp, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %28 = insertelement <4 x float> poison, float %i.cn, i64 0
  %29 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = fmul <4 x float> %i.dt, %29
  %30 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %30, <4 x float> %i.fq)
  %i.fs = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.ft, <4 x float> %i.fr)
  %i.fv = insertelement <4 x float> poison, float %19, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.fw, <4 x float> %i.fu) ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0184.0203, i64 16 ; 2 uses
  %.not192 = icmp eq ptr %i.fy, %i.cb
  %31 = extractelement <4 x float> %i.fx, i64 1
  %i.fz = extractelement <4 x float> %i.fx, i64 2
  %i.ga = extractelement <4 x float> %i.fx, i64 3
  %32 = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> %i.ew, <4 x float> %32, <4 x i32> <i32 1, i32 0, i32 5, i32 poison>
  %34 = shufflevector <4 x float> %i.fp, <4 x float> %i.fx, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %35 = shufflevector <4 x float> %33, <4 x float> %34, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %36 = shufflevector <8 x float> %35, <8 x float> %27, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not192, label %._crit_edge.loopexit, label %.lr.ph

bb.ac:                                            ; preds = %._crit_edge
end_hunk_5
begin_hunk_6_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
.lr.ph210.preheader:                              ; preds = %bb.ae
  %i.gi = load <2 x float>, ptr %i.v, align 4     ; 2 uses
  %i.gj = load <2 x float>, ptr %i.x, align 4
  %i.gk = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %.promoted357 = load float, ptr %i.ab, align 4
  %37 = load <8 x float>, ptr %i.ac, align 4
  %38 = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %39 = insertelement <2 x float> %38, float %.lcssa200, i64 1
  %40 = shufflevector <2 x float> %i.gk, <2 x float> %i.gi, <2 x i32> <i32 0, i32 2>
  %41 = shufflevector <2 x float> %i.gk, <2 x float> %i.gi, <2 x i32> <i32 1, i32 3>
  %i.gl = insertelement <2 x float> %38, float %.promoted357, i64 0
  %.promoted476 = load float, ptr %9, align 1
  %.promoted479 = load <4 x float>, ptr %i.x, align 1
  %.promoted482 = load float, ptr %i.ab, align 1
end_hunk_6
begin_hunk_7_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  %i.gp = phi <4 x float> [ %i.ij, %bb.ak ], [ %.promoted485, %.lr.ph210.preheader ]
  %i.gq = phi float [ %i.if, %bb.ak ], [ %.promoted482, %.lr.ph210.preheader ]
  %i.gr = phi <4 x float> [ %i.ie, %bb.ak ], [ %.promoted479, %.lr.ph210.preheader ]
  %i.gs = phi float [ %75, %bb.ak ], [ %.promoted476, %.lr.ph210.preheader ]
  %i.gt = phi float [ %75, %bb.ak ], [ %.lcssa200, %.lr.ph210.preheader ] ; 2 uses
  %.173208 = phi ptr [ %i.hi, %bb.ak ], [ %.072.lcssa, %.lr.ph210.preheader ] ; 4 uses
  %.sroa.0180.0207.a = phi ptr [ %i.io, %bb.ak ], [ %i.gg, %.lr.ph210.preheader ] ; 4 uses
  %42 = phi <2 x float> [ %i.id, %bb.ak ], [ %i.gl, %.lr.ph210.preheader ] ; 5 uses
  %i.gu = phi <2 x float> [ %i.ib, %bb.ak ], [ %41, %.lr.ph210.preheader ] ; 6 uses
  %i.gv = phi <2 x float> [ %i.hs, %bb.ak ], [ %39, %.lr.ph210.preheader ] ; 3 uses
  %43 = phi <2 x float> [ %i.hu, %bb.ak ], [ %40, %.lr.ph210.preheader ] ; 5 uses
  %44 = phi <8 x float> [ %i.ip, %bb.ak ], [ %37, %.lr.ph210.preheader ] ; 8 uses
  %i.gw = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.not80 = icmp eq ptr %.173208, %2
  br i1 %.not80, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph210
  %i.gx = getelementptr inbounds nuw i8, ptr %.173208, i64 1104
  store i32 1, ptr %i.gx, align 8
  %i.gy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #31
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gz = getelementptr inbounds nuw i8, ptr %.173208, i64 1112 ; 2 uses
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %.sroa.0180.0207.a, align 8
  store ptr null, ptr %.sroa.0180.0207.a, align 8
  %i.hb = load ptr, ptr %i.gz, align 8
  store ptr %i.ha, ptr %i.hb, align 8
  br label %bb.ak
end_hunk_7
begin_hunk_8_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  store float %i.gq, ptr %i.ab, align 1
  store <4 x float> %i.gp, ptr %i.ac, align 1
  store <4 x float> %i.go, ptr %i.ag, align 1
  %i.hd = extractelement <2 x float> %43, i64 1
  store float %i.hd, ptr %i.v, align 4
  %i.he = extractelement <2 x float> %i.gu, i64 1
  store float %i.he, ptr %i.w, align 4
  br label %.loopexit.split-lp

bb.ak:                                            ; preds = %.lr.ph210, %bb.ai
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207.a, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1096
  store ptr %.173208, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.hf, align 8            ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1028
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 1044
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 1060
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 1076
  %i.hn = load <4 x float>, ptr %i.hk, align 4    ; 7 uses
  %45 = extractelement <2 x float> %43, i64 1     ; 2 uses
  %46 = extractelement <4 x float> %i.hn, i64 0
  %47 = fmul float %46, %45
  %i.ho = load <4 x float>, ptr %i.hj, align 4    ; 7 uses
  %48 = extractelement <4 x float> %i.ho, i64 0
  %49 = call float @llvm.fmuladd.f32(float %48, float %i.gt, float %47)
  %50 = extractelement <4 x float> %i.hn, i64 1
  %51 = fmul float %45, %50
  %52 = extractelement <4 x float> %i.ho, i64 1
  %53 = call float @llvm.fmuladd.f32(float %52, float %i.gt, float %51)
  %54 = load <4 x float>, ptr %i.hl, align 4      ; 7 uses
  %55 = extractelement <2 x float> %i.gu, i64 1
  %56 = extractelement <4 x float> %54, i64 1
  %57 = call float @llvm.fmuladd.f32(float %56, float %55, float %53)
  %58 = load <4 x float>, ptr %i.hm, align 4      ; 7 uses
  %59 = shufflevector <4 x float> %i.hn, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hp = fmul <2 x float> %43, %59
  %60 = shufflevector <2 x float> %43, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %61 = fmul <4 x float> %60, %i.hn
  %62 = shufflevector <4 x float> %i.hn, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %63 = fmul <2 x float> %43, %62
  %64 = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %65 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %64, <4 x float> %61) ; 2 uses
  %66 = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> zeroinitializer
  %67 = shufflevector <4 x float> %65, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %68 = insertelement <2 x float> %67, float %49, i64 1
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %i.gu, <2 x float> %68)
  %69 = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %70 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> %i.gv, <2 x float> %i.hp)
  %71 = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> %i.gv, <2 x float> %63)
  %73 = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %74 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %73, <4 x float> %65) ; 2 uses
  %i.hr = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %42, <2 x float> %i.hq) ; 2 uses
  %75 = extractelement <2 x float> %i.hs, i64 1   ; 3 uses
  %i.ht = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %76 = shufflevector <4 x float> %74, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %77 = insertelement <2 x float> %76, float %57, i64 1
  %i.hu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %42, <2 x float> %77) ; 2 uses
  %i.hv = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.gu, <2 x float> %70)
  %i.hx = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.gu, <2 x float> %72)
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %i.gw, <4 x float> %74)
  %i.ia = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ib = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %42, <2 x float> %i.hw) ; 2 uses
  %i.ic = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.id = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %42, <2 x float> %i.hy) ; 2 uses
  %i.ie = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.if = extractelement <2 x float> %i.id, i64 0 ; 2 uses
  %78 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ig = fmul <4 x float> %i.hn, %78
  %79 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> zeroinitializer
  %i.ih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %79, <4 x float> %i.ig)
  %80 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %80, <4 x float> %i.ih)
  %81 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %81, <4 x float> %i.ii) ; 3 uses
  %82 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ik = fmul <4 x float> %i.hn, %82
  %83 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.il = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %83, <4 x float> %i.ik)
  %84 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.im = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %84, <4 x float> %i.il)
  %85 = shufflevector <8 x float> %44, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.in = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %85, <4 x float> %i.im) ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207.a, i64 16 ; 2 uses
  %.not193 = icmp eq ptr %i.io, %i.gh
  %i.ip = shufflevector <4 x float> %i.ij, <4 x float> %i.in, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not193, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit125.loopexit, label %.lr.ph210

bb.al:                                            ; preds = %bb.ad
end_hunk_8
begin_hunk_9_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit125

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit125.loopexit: ; preds = %bb.ak
  store float %75, ptr %9, align 1
  store <4 x float> %i.ie, ptr %i.x, align 1
  store float %i.if, ptr %i.ab, align 1
  store <4 x float> %i.ij, ptr %i.ac, align 1
end_hunk_9
begin_hunk_10_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_11
begin_hunk_12_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.er = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.es = fmul <4 x float> %i.er, %i.dt
  %i.et = insertelement <4 x float> poison, float %i.n, i64 0
  %i.eu = insertelement <4 x float> %2, float %i.n, i64 0
  %3 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.eu, <4 x float> %3, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %5 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %5, float %i.n, i64 1
  %i.ew = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %6, <4 x float> %i.es) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ez = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
end_hunk_13
begin_hunk_14_@_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_:bb.a
  %i.agb = insertelement <4 x float> %i.aga, float %i.afx, i64 1
  %i.agc = insertelement <4 x float> %i.agb, float %i.afw, i64 2
  %i.agd = shufflevector <4 x float> %i.aez, <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 3, i32 7>
  %i.age = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float 0.000000e+00>, float %i.abo, i64 2 ; 2 uses
  %i.agf = fadd <4 x float> %i.age, <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.agg = insertelement <2 x float> poison, float %i.abo, i64 0
  %i.agh = insertelement <2 x float> %i.agg, float %i.acw, i64 1
  %i.agi = insertelement <2 x float> poison, float %i.adt, i64 0
end_hunk_14
