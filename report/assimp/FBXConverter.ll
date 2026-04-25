inline.NumInlined: 7594
inline.NumDeleted: 2896
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  br i1 %.not192202, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %.promoted314 = load float, ptr %i.z, align 4
  %.promoted305 = load float, ptr %i.w, align 4
  %i.cc = load <2 x float>, ptr %i.x, align 4
  %i.cd = load <2 x float>, ptr %i.aa, align 4    ; 2 uses
  %12 = load <13 x float>, ptr %i.v, align 4
  %13 = shufflevector <13 x float> %12, <13 x float> poison, <8 x i32> <i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %.promoted341 = load float, ptr %i.ai, align 4
  %.promoted344 = load float, ptr %i.aj, align 4
  %14 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x float> %14, float %.promoted305, i64 0
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  %16 = insertelement <2 x float> poison, float %.promoted, i64 0
  %i.cf = insertelement <2 x float> %16, float %.promoted314, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ab
  %i.cg = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x float> %i.cg, ptr %i.v, align 4
  %i.ch = extractelement <2 x float> %i.fi, i64 1
  store float %i.ch, ptr %i.z, align 4
  %17 = shufflevector <2 x float> %i.fk, <2 x float> %i.fm, <2 x i32> <i32 1, i32 3>
  store <2 x float> %17, ptr %i.aa, align 4
  store <4 x float> %23, ptr %i.ac, align 4
  store <4 x float> %i.fx, ptr %i.ag, align 4
  %.pre226 = load ptr, ptr %i.s, align 8
  %i.ci = extractelement <2 x float> %i.fi, i64 0
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.cj = phi ptr [ %i.cb, %bb.x ], [ %.pre226, %._crit_edge.loopexit ]
  %.lcssa200 = phi float [ %.promoted, %bb.x ], [ %i.ci, %._crit_edge.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ %2, %bb.x ], [ %i.do, %._crit_edge.loopexit ] ; 4 uses
  store float %.lcssa200, ptr %9, align 4
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
          to label %bb.ac unwind label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %i.cm = phi float [ %i.ga, %bb.ab ], [ %.promoted344, %.lr.ph.preheader ] ; 2 uses
  %i.cn = phi float [ %i.fz, %bb.ab ], [ %.promoted341, %.lr.ph.preheader ] ; 2 uses
  %.072204 = phi ptr [ %i.do, %bb.ab ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0184.0203 = phi ptr [ %i.fy, %bb.ab ], [ %i.ca, %.lr.ph.preheader ] ; 4 uses
  %i.co = phi <2 x float> [ %i.fm, %bb.ab ], [ %i.ce, %.lr.ph.preheader ] ; 6 uses
  %i.cp = phi <2 x float> [ %i.fk, %bb.ab ], [ %15, %.lr.ph.preheader ] ; 6 uses
  %i.cq = phi <8 x float> [ %28, %bb.ab ], [ %13, %.lr.ph.preheader ] ; 18 uses
  %i.cr = phi <2 x float> [ %i.fi, %bb.ab ], [ %i.cf, %.lr.ph.preheader ] ; 5 uses
  %i.cs = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %.not83 = icmp eq ptr %.072204, %2
end_hunk_3
begin_hunk_4_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  store float %i.dd, ptr %i.z, align 4
  %i.de = extractelement <2 x float> %i.cp, i64 1
  store float %i.de, ptr %i.aa, align 4
  %18 = extractelement <2 x float> %i.co, i64 1
  store float %18, ptr %i.ab, align 4
  %i.df = extractelement <8 x float> %i.cq, i64 2
  store float %i.df, ptr %i.ac, align 4
  %i.dg = extractelement <8 x float> %i.cq, i64 3
  store float %i.dg, ptr %i.ad, align 4
  %i.dh = extractelement <8 x float> %i.cq, i64 4
  store float %i.dh, ptr %i.ae, align 4
  %i.di = extractelement <8 x float> %i.cq, i64 5
  store float %i.di, ptr %i.af, align 4
  %i.dj = extractelement <8 x float> %i.cq, i64 6
  store float %i.dj, ptr %i.ag, align 4
  %i.dk = extractelement <8 x float> %i.cq, i64 7
  store float %i.dk, ptr %i.ah, align 4
  store float %i.cn, ptr %i.ai, align 4
  store float %i.cm, ptr %i.aj, align 4
  br label %.body

bb.ab:                                            ; preds = %.lr.ph, %bb.z
end_hunk_4
begin_hunk_5_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  %i.ff = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.cp, <2 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.co, <2 x float> %i.fg) ; 3 uses
  %i.fj = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.co, <2 x float> %i.et) ; 2 uses
  %i.fl = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.co, <2 x float> %i.ev) ; 2 uses
  %i.fn = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %19 = fmul <4 x float> %i.dt, %i.fn
  %20 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %20, <4 x float> %19)
  %21 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %21, <4 x float> %i.fo)
  %22 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %23 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %22, <4 x float> %i.fp) ; 3 uses
  %24 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.fq = fmul <4 x float> %i.dt, %24
  %25 = shufflevector <8 x float> %i.cq, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %25, <4 x float> %i.fq)
  %i.fs = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.ft, <4 x float> %i.fr)
  %i.fv = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.fw, <4 x float> %i.fu) ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0184.0203, i64 16 ; 2 uses
  %.not192 = icmp eq ptr %i.fy, %i.cb
  %i.fz = extractelement <4 x float> %i.fx, i64 2
  %i.ga = extractelement <4 x float> %i.fx, i64 3
  %26 = shufflevector <4 x float> %i.ew, <4 x float> %23, <4 x i32> <i32 1, i32 0, i32 4, i32 5>
  %27 = shufflevector <4 x float> %23, <4 x float> %i.fx, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %28 = shufflevector <4 x float> %26, <4 x float> %27, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not192, label %._crit_edge.loopexit, label %.lr.ph

bb.ac:                                            ; preds = %._crit_edge
end_hunk_5
begin_hunk_6_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
.lr.ph210.preheader:                              ; preds = %bb.ae
  %i.gi = load <2 x float>, ptr %i.v, align 4     ; 2 uses
  %i.gj = load <2 x float>, ptr %i.x, align 4
  %i.gk = load <2 x float>, ptr %i.aa, align 4    ; 2 uses
  %29 = load <10 x float>, ptr %i.y, align 4
  %30 = shufflevector <10 x float> %29, <10 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9>
  %.promoted364 = load float, ptr %i.ai, align 4
  %.promoted365 = load float, ptr %i.aj, align 4
  %31 = shufflevector <2 x float> %i.gk, <2 x float> %i.gi, <2 x i32> <i32 0, i32 3>
  %32 = shufflevector <2 x float> %i.gk, <2 x float> %i.gj, <2 x i32> <i32 1, i32 2>
  %33 = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gl = insertelement <2 x float> %33, float %.lcssa200, i64 0
  %.promoted472 = load float, ptr %9, align 1
  %.promoted475 = load <4 x float>, ptr %i.x, align 1
  %.promoted478 = load float, ptr %i.ab, align 1
end_hunk_6
begin_hunk_7_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  %i.gp = phi <4 x float> [ %i.ij, %bb.ak ], [ %.promoted481, %.lr.ph210.preheader ]
  %i.gq = phi float [ %i.if, %bb.ak ], [ %.promoted478, %.lr.ph210.preheader ]
  %i.gr = phi <4 x float> [ %i.ie, %bb.ak ], [ %.promoted475, %.lr.ph210.preheader ]
  %i.gs = phi float [ %68, %bb.ak ], [ %.promoted472, %.lr.ph210.preheader ]
  %i.gt = phi float [ %80, %bb.ak ], [ %.promoted365, %.lr.ph210.preheader ]
  %34 = phi float [ %79, %bb.ak ], [ %.promoted364, %.lr.ph210.preheader ]
  %.173208.a = phi ptr [ %i.hi, %bb.ak ], [ %.072.lcssa, %.lr.ph210.preheader ] ; 4 uses
  %.sroa.0180.0207 = phi ptr [ %i.io, %bb.ak ], [ %i.gg, %.lr.ph210.preheader ] ; 4 uses
  %i.gu = phi <2 x float> [ %i.id, %bb.ak ], [ %32, %.lr.ph210.preheader ] ; 4 uses
  %i.gv = phi <2 x float> [ %i.ib, %bb.ak ], [ %31, %.lr.ph210.preheader ] ; 5 uses
  %35 = phi <8 x float> [ %i.ip, %bb.ak ], [ %30, %.lr.ph210.preheader ] ; 9 uses
  %36 = phi <2 x float> [ %i.hu, %bb.ak ], [ %i.gl, %.lr.ph210.preheader ] ; 5 uses
  %i.gw = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.not80 = icmp eq ptr %.173208.a, %2
  br i1 %.not80, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph210
  %i.gx = getelementptr inbounds nuw i8, ptr %.173208.a, i64 1104
  store i32 1, ptr %i.gx, align 8
  %i.gy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #31
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gz = getelementptr inbounds nuw i8, ptr %.173208.a, i64 1112 ; 2 uses
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %.sroa.0180.0207, align 8
  store ptr null, ptr %.sroa.0180.0207, align 8
  %i.hb = load ptr, ptr %i.gz, align 8
  store ptr %i.ha, ptr %i.hb, align 8
  br label %bb.ak
end_hunk_7
begin_hunk_8_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  store float %i.gq, ptr %i.ab, align 1
  store <4 x float> %i.gp, ptr %i.ac, align 1
  store <4 x float> %i.go, ptr %i.ag, align 1
  %i.hd = extractelement <2 x float> %36, i64 1
  store float %i.hd, ptr %i.v, align 4
  %i.he = extractelement <2 x float> %i.gv, i64 1
  store float %i.he, ptr %i.w, align 4
  br label %.loopexit.split-lp

bb.ak:                                            ; preds = %.lr.ph210, %bb.ai
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1096
  store ptr %.173208.a, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.hf, align 8            ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1028
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 1044
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 1060
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 1076
  %i.hn = load <4 x float>, ptr %i.hk, align 4    ; 6 uses
  %37 = load <4 x float>, ptr %i.hj, align 4      ; 6 uses
  %i.ho = load <4 x float>, ptr %i.hl, align 4    ; 6 uses
  %38 = load <4 x float>, ptr %i.hm, align 4      ; 6 uses
  %39 = shufflevector <8 x float> %35, <8 x float> poison, <2 x i32> <i32 1, i32 poison>
  %40 = shufflevector <2 x float> %39, <2 x float> %36, <2 x i32> <i32 0, i32 3>
  %41 = shufflevector <4 x float> %i.hn, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %42 = fmul <2 x float> %40, %41
  %43 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %44 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %45 = shufflevector <4 x float> %43, <4 x float> %44, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison> ; 2 uses
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %47 = fmul <4 x float> %46, %i.hn
  %48 = shufflevector <4 x float> %45, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %49 = shufflevector <4 x float> %i.hn, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hp = fmul <2 x float> %48, %49
  %50 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <4 x float> %50, <4 x float> %44, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison> ; 2 uses
  %52 = shufflevector <4 x float> %51, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %53 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %52, <4 x float> %47)
  %54 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %55 = shufflevector <4 x float> %51, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %56 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %55, <2 x float> %42)
  %57 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %57, <2 x float> %55, <2 x float> %i.hp)
  %58 = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %59 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %58, <4 x float> %53)
  %60 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %61 = shufflevector <4 x float> %i.hn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %62 = fmul <2 x float> %60, %61
  %63 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hr = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> %i.hr, <2 x float> %62)
  %64 = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ht = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %65 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %64, <2 x float> %i.ht, <2 x float> %i.hs)
  %66 = shufflevector <4 x float> %38, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %67 = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %67, <2 x float> %65) ; 3 uses
  %i.hv = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.gv, <2 x float> %56)
  %i.hx = shufflevector <4 x float> %i.ho, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.gv, <2 x float> %i.hq)
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %i.gw, <4 x float> %59) ; 2 uses
  %i.ia = shufflevector <4 x float> %38, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ib = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.gu, <2 x float> %i.hw) ; 2 uses
  %i.ic = shufflevector <4 x float> %38, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.id = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.gu, <2 x float> %i.hy) ; 2 uses
  %68 = extractelement <2 x float> %i.hu, i64 0   ; 2 uses
  %i.ie = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.if = extractelement <2 x float> %i.id, i64 0 ; 2 uses
  %69 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ig = fmul <4 x float> %i.hn, %69
  %70 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %70, <4 x float> %i.ig)
  %71 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %71, <4 x float> %i.ih)
  %72 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %72, <4 x float> %i.ii) ; 4 uses
  %73 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ik = fmul <4 x float> %i.hn, %73
  %74 = shufflevector <8 x float> %35, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.il = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %74, <4 x float> %i.ik)
  %75 = insertelement <4 x float> poison, float %34, i64 0
  %76 = shufflevector <4 x float> %75, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %76, <4 x float> %i.il)
  %77 = insertelement <4 x float> poison, float %i.gt, i64 0
  %78 = shufflevector <4 x float> %77, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %78, <4 x float> %i.im) ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0180.0207, i64 16 ; 2 uses
  %.not193 = icmp eq ptr %i.io, %i.gh
  %79 = extractelement <4 x float> %i.in, i64 2
  %80 = extractelement <4 x float> %i.in, i64 3
  %81 = shufflevector <4 x float> %i.hz, <4 x float> %i.ij, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %82 = shufflevector <4 x float> %i.ij, <4 x float> %i.in, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ip = shufflevector <4 x float> %81, <4 x float> %82, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not193, label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit125.loopexit, label %.lr.ph210

bb.al:                                            ; preds = %bb.ad
end_hunk_8
begin_hunk_9_@_ZN6Assimp3FBX12FBXConverter12ConvertNodesEmP6aiNodeS3_RK12aiMatrix4x4tIfE:bb.a
  br label %_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit125

_ZNSt6vectorIN6Assimp3FBX12FBXConverter13PotentialNodeESaIS3_EE5clearEv.exit125.loopexit: ; preds = %bb.ak
  store float %68, ptr %9, align 1
  store <4 x float> %i.ie, ptr %i.x, align 1
  store float %i.if, ptr %i.ab, align 1
  store <4 x float> %i.ij, ptr %i.ac, align 1
end_hunk_9
begin_hunk_10_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 11 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 8 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 3, i32 1> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_11
begin_hunk_12_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.er = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.es = fmul <4 x float> %i.er, %i.dt
  %i.et = insertelement <4 x float> poison, float %i.n, i64 0
  %i.eu = insertelement <4 x float> %1, float %i.n, i64 0 ; 2 uses
  %3 = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %3, float %i.n, i64 2
  %i.ew = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %4, <4 x float> %i.es) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ez = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
end_hunk_13
begin_hunk_14_@_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_:bb.a
  %i.agb = insertelement <4 x float> %i.aga, float %i.afx, i64 1
  %i.agc = insertelement <4 x float> %i.agb, float %i.afw, i64 2
  %i.agd = shufflevector <4 x float> %i.aez, <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 3, i32 7>
  %i.age = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, float %i.abo, i64 2 ; 2 uses
  %i.agf = fadd <4 x float> %i.age, <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.agg = insertelement <2 x float> poison, float %i.abo, i64 0
  %i.agh = insertelement <2 x float> %i.agg, float %i.acw, i64 1
  %i.agi = insertelement <2 x float> poison, float %i.adt, i64 0
end_hunk_14
