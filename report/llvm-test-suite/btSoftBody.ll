inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody18initializeClustersEv:bb.a
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k
  %i.bm = fdiv float 1.000000e+00, %i.en          ; 2 uses
  store float %i.bm, ptr %i.h, align 4, !tbaa !447
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !360 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %i.bz = fmul float %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !159
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fadd float %.sroa.015.019.i, %i.bz
  %i.cg = fadd <2 x float> %i.bs, %i.ce
  %indvars.iv.next.i82 = or disjoint i64 %indvars.iv.i81, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !159
  %i.cq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fadd float %i.cf, %i.cn                 ; 3 uses
  %i.cu = fadd <2 x float> %i.cg, %i.cs           ; 3 uses
  %indvars.iv.next.i82.1 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN10btSoftBody18initializeClustersEv:bb.a

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv.i81.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i82.1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %i.db = fmul float %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !159
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %i.dd
  %i.dh = fadd float %.sroa.015.019.i.epil.init, %i.db
  %i.di = fadd <2 x float> %.epil.init, %i.dg
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit: ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa235 = phi float [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader ]
  %.lcssa234 = phi <2 x float> [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.di, %.epil.preheader ]
  %1 = shufflevector <2 x float> %.lcssa234, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit:  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit, %._crit_edge.thread
  %2 = phi float [ %i.bg, %._crit_edge.thread ], [ %i.bm, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit ] ; 2 uses
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.thread ], [ %.lcssa235, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit ]
  %3 = phi <2 x float> [ zeroinitializer, %._crit_edge.thread ], [ %1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit ]
  %i.dj = fmul float %2, %.sroa.015.0.lcssa.i     ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %2, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dl, %3              ; 3 uses
  %i.dn = insertelement <2 x float> %i.dm, float %i.dj, i64 0
  %i.do = insertelement <2 x float> %i.dm, float 0.000000e+00, i64 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 3 uses
end_hunk_4
