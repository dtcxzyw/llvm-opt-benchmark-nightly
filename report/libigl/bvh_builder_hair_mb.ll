Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_:bb.a
  %i.ay = zext i32 %i.ax to i64
  %i.az = add i64 %.sroa.4662.1122, %i.ay         ; 2 uses
  %bc298 = bitcast <4 x float> %i.ac to <4 x i32>
  %i.ba = extractelement <4 x i32> %bc298, i64 3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ult i64 %.sroa.5264.1121, %i.bb
  %.sroa.5264.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.5264.1121, i64 %i.bb) ; 2 uses
  %i.bd = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %i.be = shufflevector <2 x i1> %i.bd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.ar, <2 x float> %i.p ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.134.i133, i64 80 ; 3 uses
  %.not.i = icmp ugt ptr %i.bg, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph, !prof !46, !llvm.loop !620

.lr.ph177:                                        ; preds = %.critedge.i.preheader, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11
  %.1.i176 = phi ptr [ %i.cw, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.0.i, %.critedge.i.preheader ] ; 14 uses
  %.sroa.021.1175 = phi <4 x float> [ %i.ce, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.021.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.8.1174 = phi <4 x float> [ %i.cf, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.8.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.14.1173 = phi <4 x float> [ %i.cg, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.14.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.20.1172 = phi <4 x float> [ %i.ch, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.20.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.26.1171 = phi <4 x float> [ %i.ci, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.26.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.32.1170 = phi <4 x float> [ %i.cj, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.32.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.40.1169 = phi i64 [ %i.cq, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.40.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.46.1168 = phi i64 [ %i.cr, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.46.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.52.1167 = phi i64 [ %.sroa.52.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.52.0, %.critedge.i.preheader ] ; 4 uses
  %.sroa.63.1164 = phi float [ %i.cm, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.63.0, %.critedge.i.preheader ] ; 4 uses
  %.sroa.68.1163 = phi float [ %i.cp, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.68.0, %.critedge.i.preheader ] ; 4 uses
  %i.bh = phi <2 x float> [ %i.cv, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %i.m, %.critedge.i.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i176, i64 12
  %i.bj = load i32, ptr %i.bi, align 4
  %.not = icmp eq i32 %i.bj, %i.k
  %i.bk = load <4 x float>, ptr %.1.i176, align 16, !noalias !35 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i176, i64 16
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !noalias !35 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i176, i64 32
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !noalias !35 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i176, i64 48
  %i.bq = load <4 x float>, ptr %i.bp, align 16, !noalias !35 ; 4 uses
  %i.br = fmul <4 x float> %i.bo, splat (float 5.000000e-01)
  %i.bs = fmul <4 x float> %i.bk, splat (float 5.000000e-01)
  %i.bt = fadd <4 x float> %i.bs, %i.br
  %i.bu = fmul <4 x float> %i.bq, splat (float 5.000000e-01)
  %i.bv = fmul <4 x float> %i.bm, splat (float 5.000000e-01)
  %i.bw = fadd <4 x float> %i.bv, %i.bu
  %i.bx = fadd <4 x float> %i.bt, %i.bw           ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i176, i64 64
  %i.bz = load <2 x float>, ptr %i.by, align 16   ; 7 uses
  %bc301 = bitcast <4 x float> %i.bo to <4 x i32>
  %i.ca = extractelement <4 x i32> %bc301, i64 3
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %bc302 = bitcast <4 x float> %i.bq to <4 x i32>
  %i.cc = extractelement <4 x i32> %bc302, i64 3
  %i.cd = zext i32 %i.cc to i64                   ; 4 uses
  br i1 %.not, label %.critedge37.i, label %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11, !prof !40

_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11: ; preds = %.lr.ph177
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.021.1175, <4 x float> %i.bk) ; 2 uses
  %i.cf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1174, <4 x float> %i.bm) ; 2 uses
  %i.cg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1173, <4 x float> %i.bo) ; 2 uses
  %i.ch = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1172, <4 x float> %i.bq) ; 2 uses
  %i.ci = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1171, <4 x float> %i.bx) ; 2 uses
  %i.cj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1170, <4 x float> %i.bx) ; 2 uses
  %i.ck = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  %i.cl = fcmp olt float %.sroa.63.1164, %i.ck
  %i.cm = select i1 %i.cl, float %.sroa.63.1164, float %i.ck ; 2 uses
  %i.cn = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.co = fcmp olt float %.sroa.68.1163, %i.cn
  %i.cp = select i1 %i.co, float %i.cn, float %.sroa.68.1163 ; 2 uses
  %i.cq = add i64 %.sroa.40.1169, 1
  %i.cr = add i64 %.sroa.46.1168, %i.cb           ; 2 uses
  %i.cs = icmp ult i64 %.sroa.52.1167, %i.cd
  %i.ct = insertelement <2 x i1> poison, i1 %i.cs, i64 0
  %i.cu = shufflevector <2 x i1> %i.ct, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cv = select <2 x i1> %i.cu, <2 x float> %i.bz, <2 x float> %i.bh ; 2 uses
  %.sroa.52.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.52.1167, i64 %i.cd) ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.1.i176, i64 -80 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.cw
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSH_3SetENS_11OBBNodeMB_tISB_Li4EE6CreateENSL_3SetEZNS7_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESY_RSW_S17_EUlRKS1_E_ZNS16_15splitByGeometryESY_S17_S17_EUlRS6_S19_E_EEmPT_mmRT0_S1G_RKT1_RKT2_.exit, label %.lr.ph177, !prof !46, !llvm.loop !621

.critedge37.i:                                    ; preds = %.lr.ph177
  %i.cx = getelementptr inbounds nuw i8, ptr %.1.i176, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i176, i64 32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1.i176, i64 48 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i176, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1.i176, i64 68
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.040.1.lcssa, <4 x float> %i.bk)
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.843.1.lcssa, <4 x float> %i.bm)
  %i.de = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1446.1.lcssa, <4 x float> %i.bo)
  %i.df = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2049.1.lcssa, <4 x float> %i.bq)
  %i.dg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2652.1.lcssa, <4 x float> %i.bx)
  %i.dh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3255.1.lcssa, <4 x float> %i.bx)
  %i.di = fcmp olt <2 x float> %i.v, %i.bz
  %i.dj = shufflevector <2 x float> %i.v, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.dk = shufflevector <2 x float> %i.bz, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.dl = select <2 x i1> %i.di, <2 x float> %i.dj, <2 x float> %i.dk
  %i.dm = add i64 %.sroa.4059.1.lcssa, 1
  %i.dn = add i64 %.sroa.4662.1.lcssa, %i.cb
  %i.do = icmp ult i64 %.sroa.5264.1.lcssa, %i.cd
  %.sroa.5264.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.5264.1.lcssa, i64 %i.cd)
  %i.dp = insertelement <2 x i1> poison, i1 %i.do, i64 0
  %i.dq = shufflevector <2 x i1> %i.dp, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.bz, <2 x float> %i.u
  %i.ds = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !635 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.du = load <4 x float>, ptr %i.dt, align 16, !noalias !636 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32 ; 2 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 16, !noalias !637 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 48 ; 2 uses
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !noalias !638 ; 4 uses
  %i.dz = fmul <4 x float> %i.dw, splat (float 5.000000e-01)
  %i.ea = fmul <4 x float> %i.ds, splat (float 5.000000e-01)
  %i.eb = fadd <4 x float> %i.ea, %i.dz
  %i.ec = fmul <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ed = fmul <4 x float> %i.du, splat (float 5.000000e-01)
  %i.ee = fadd <4 x float> %i.ed, %i.ec
  %i.ef = fadd <4 x float> %i.eb, %i.ee           ; 2 uses
  %i.eg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.021.1175, <4 x float> %i.ds)
  %i.eh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1174, <4 x float> %i.du)
  %i.ei = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1173, <4 x float> %i.dw)
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1172, <4 x float> %i.dy)
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1171, <4 x float> %i.ef)
  %i.el = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1170, <4 x float> %i.ef)
  %i.em = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 68
  %i.eo = load <2 x float>, ptr %i.em, align 16   ; 4 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.eq = fcmp olt float %.sroa.63.1164, %i.ep
  %i.er = select i1 %i.eq, float %.sroa.63.1164, float %i.ep
  %i.es = extractelement <2 x float> %i.eo, i64 1 ; 2 uses
  %i.et = fcmp olt float %.sroa.68.1163, %i.es
  %i.eu = select i1 %i.et, float %i.es, float %.sroa.68.1163
  %i.ev = add i64 %.sroa.40.1169, 1
  %bc303 = bitcast <4 x float> %i.dw to <4 x i32>
  %i.ew = extractelement <4 x i32> %bc303, i64 3
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add i64 %.sroa.46.1168, %i.ex
  %bc304 = bitcast <4 x float> %i.dy to <4 x i32>
  %i.ez = extractelement <4 x i32> %bc304, i64 3
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = icmp ult i64 %.sroa.52.1167, %i.fa
  %i.fc = insertelement <2 x i1> poison, i1 %i.fb, i64 0
  %i.fd = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.eo, <2 x float> %i.bh
  %.sroa.52.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.52.1167, i64 %i.fa)
  store <4 x float> %i.bk, ptr %.134.i.lcssa, align 16
  %i.ff = load <4 x float>, ptr %i.cx, align 16
  store <4 x float> %i.ff, ptr %i.dt, align 16
  %i.fg = load <4 x float>, ptr %i.cy, align 16
  store <4 x float> %i.fg, ptr %i.dv, align 16
  %i.fh = load <4 x float>, ptr %i.cz, align 16
  store <4 x float> %i.fh, ptr %i.dx, align 16
  %i.fi = load float, ptr %i.da, align 16
  store float %i.fi, ptr %i.em, align 16
  %i.fj = load float, ptr %i.db, align 4
  store float %i.fj, ptr %i.en, align 4
  store <4 x float> %i.ds, ptr %.1.i176, align 16
  store <4 x float> %i.du, ptr %i.cx, align 16
  store <4 x float> %i.dw, ptr %i.cy, align 16
  store <4 x float> %i.dy, ptr %i.cz, align 16
  store <2 x float> %i.eo, ptr %i.da, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 80
  br label %bb.b, !llvm.loop !630

_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSH_3SetENS_11OBBNodeMB_tISB_Li4EE6CreateENSL_3SetEZNS7_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESY_RSW_S17_EUlRKS1_E_ZNS16_15splitByGeometryESY_S17_S17_EUlRS6_S19_E_EEmPT_mmRT0_S1G_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11
  %.sroa.68.1.lcssa = phi float [ %i.cp, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.68.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.63.1.lcssa = phi float [ %i.cm, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.63.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.52.1.lcssa = phi i64 [ %.sroa.52.2, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.52.0, %.critedge.i.preheader ]
  %.sroa.46.1.lcssa = phi i64 [ %i.cr, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.46.0, %.critedge.i.preheader ]
  %.sroa.32.1.lcssa = phi <4 x float> [ %i.cj, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.32.0, %.critedge.i.preheader ]
  %.sroa.26.1.lcssa = phi <4 x float> [ %i.ci, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.26.0, %.critedge.i.preheader ]
  %.sroa.20.1.lcssa = phi <4 x float> [ %i.ch, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.20.0, %.critedge.i.preheader ]
  %.sroa.14.1.lcssa = phi <4 x float> [ %i.cg, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.14.0, %.critedge.i.preheader ]
  %.sroa.8.1.lcssa = phi <4 x float> [ %i.cf, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.8.0, %.critedge.i.preheader ]
  %.sroa.021.1.lcssa = phi <4 x float> [ %i.ce, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %.sroa.021.0, %.critedge.i.preheader ]
  %i.fl = phi <2 x float> [ %i.cv, %_ZZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryESR_RSP_S10_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKNS_9PrimRefMBEE_clES16_S19_.exit11 ], [ %i.m, %.critedge.i.preheader ]
  %i.fm = ptrtoint ptr %.134.i.lcssa to i64
  %i.fn = ptrtoint ptr %i.h to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = sdiv exact i64 %i.fo, 80                ; 2 uses
  %i.fq = load ptr, ptr %i.e, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.fr, align 8 ; 3 uses
  store <4 x float> %.sroa.040.1.lcssa, ptr %2, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %.sroa.843.1.lcssa, ptr %i.fs, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x float> %.sroa.1446.1.lcssa, ptr %i.ft, align 16
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> %.sroa.2049.1.lcssa, ptr %i.fu, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x float> %.sroa.2652.1.lcssa, ptr %i.fv, align 16
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> %.sroa.3255.1.lcssa, ptr %i.fw, align 16
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %.sroa.4662.1.lcssa, ptr %i.fz, align 16
  %.sroa.5264.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %.sroa.5264.1.lcssa, ptr %.sroa.5264.112..sroa_idx, align 8
  %.sroa.5766.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.fq, ptr %i.ga, align 16
  store i64 %i.b, ptr %i.fx, align 16
  store i64 %i.fp, ptr %i.fy, align 8
  %i.gb = fcmp olt <2 x float> %i.v, %.sroa.01.0.copyload
  %i.gc = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.gd = shufflevector <2 x float> %i.v, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ge = select <2 x i1> %i.gb, <2 x float> %i.gc, <2 x float> %i.gd
  %4 = shufflevector <2 x float> %i.u, <2 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %.sroa.5766.112..sroa_idx, align 16
  %i.gf = load ptr, ptr %i.e, align 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.fr, align 8 ; 2 uses
  store <4 x float> %.sroa.021.1.lcssa, ptr %3, align 16
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %.sroa.8.1.lcssa, ptr %i.gg, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.gh, align 16
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.gi, align 16
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x float> %.sroa.26.1.lcssa, ptr %i.gj, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x float> %.sroa.32.1.lcssa, ptr %i.gk, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %.sroa.46.1.lcssa, ptr %i.gn, align 16
  %.sroa.52.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.sroa.52.1.lcssa, ptr %.sroa.52.112..sroa_idx, align 8
  %.sroa.57.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x float> %i.fl, ptr %.sroa.57.112..sroa_idx, align 16
  %.sroa.63.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %.sroa.68.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.gf, ptr %i.go, align 16
  store i64 %i.fp, ptr %i.gl, align 16
  store i64 %i.d, ptr %i.gm, align 8
  %.sroa.089.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %i.gp = fcmp olt float %.sroa.63.1.lcssa, %.sroa.089.0.vec.extract
  %i.gq = select i1 %i.gp, float %.sroa.089.0.vec.extract, float %.sroa.63.1.lcssa
  %.sroa.089.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 1 ; 2 uses
  %i.gr = fcmp olt float %.sroa.68.1.lcssa, %.sroa.089.4.vec.extract
  %i.gs = select i1 %i.gr, float %.sroa.68.1.lcssa, float %.sroa.089.4.vec.extract
  store float %i.gq, ptr %.sroa.63.112..sroa_idx, align 8
  store float %i.gs, ptr %.sroa.68.112..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse221BVHBuilderHairMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_25VirtualRecalculatePrimRefENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSA_3SetENS_11OBBNodeMB_tIS4_Li4EE6CreateENSE_3SetEZNS0_23BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackESR_RSP_S10_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 16 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %2, ptr noundef nonnull align 16 dereferenceable(152) %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = add i64 %i.f, %i.d
  %i.h = lshr i64 %i.g, 1                         ; 6 uses
  %i.i = icmp ult i64 %i.d, %i.h
  br i1 %i.i, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph, label %.preheader

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18

.preheader:                                       ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18, %bb.a
  %.sroa.3646.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3646.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3245.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.av, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.2240.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.am, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1838.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.al, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1436.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ak, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1034.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.aj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.632.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ai, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.030.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ah, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.l = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.bb, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.m = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ], [ %i.as, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 3 uses
  %i.n = icmp ult i64 %i.h, %i.f
  br i1 %i.n, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph, label %._crit_edge

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph: ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18
  %.0153 = phi i64 [ %i.d, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.bc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 2 uses
  %.sroa.030.0151 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ah, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.632.0150 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ai, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1034.0149 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.aj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1436.0148 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ak, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1838.0147 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.al, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.2240.0146 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.am, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3245.0144 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.av, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3646.0143 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %.sroa.3646.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 2 uses
  %i.q = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.bb, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.r = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.as, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %.0153 ; 5 uses
  %i.t = load <4 x float>, ptr %i.s, align 16, !noalias !655 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 16, !noalias !656 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load <4 x float>, ptr %i.w, align 16, !noalias !657 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.z = load <4 x float>, ptr %i.y, align 16, !noalias !658 ; 3 uses
  %i.aa = fmul <4 x float> %i.x, splat (float 5.000000e-01)
  %i.ab = fmul <4 x float> %i.t, splat (float 5.000000e-01)
  %i.ac = fadd <4 x float> %i.ab, %i.aa
  %i.ad = fmul <4 x float> %i.z, splat (float 5.000000e-01)
  %i.ae = fmul <4 x float> %i.v, splat (float 5.000000e-01)
  %i.af = fadd <4 x float> %i.ae, %i.ad
  %i.ag = fadd <4 x float> %i.ac, %i.af           ; 2 uses
  %i.ah = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.030.0151, <4 x float> %i.t) ; 2 uses
  %i.ai = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.632.0150, <4 x float> %i.v) ; 2 uses
  %i.aj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1034.0149, <4 x float> %i.x) ; 2 uses
  %i.ak = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1436.0148, <4 x float> %i.z) ; 2 uses
  %i.al = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1838.0147, <4 x float> %i.ag) ; 2 uses
  %i.am = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2240.0146, <4 x float> %i.ag) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.ao = load <2 x float>, ptr %i.an, align 16   ; 4 uses
  %i.ap = fcmp olt <2 x float> %i.r, %i.ao
  %i.aq = shufflevector <2 x float> %i.r, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.ar = shufflevector <2 x float> %i.ao, <2 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.as = select <2 x i1> %i.ap, <2 x float> %i.aq, <2 x float> %i.ar ; 2 uses
  %bc = bitcast <4 x float> %i.x to <4 x i32>
  %i.at = extractelement <4 x i32> %bc, i64 3
  %i.au = zext i32 %i.at to i64
  %i.av = add i64 %.sroa.3245.0144, %i.au         ; 2 uses
  %bc215 = bitcast <4 x float> %i.z to <4 x i32>
  %i.aw = extractelement <4 x i32> %bc215, i64 3
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = icmp samesign ult i64 %.sroa.3646.0143, %i.ax
  %i.az = insertelement <2 x i1> poison, i1 %i.ay, i64 0
  %i.ba = shufflevector <2 x i1> %i.az, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.ao, <2 x float> %i.q ; 2 uses
  %.sroa.3646.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.3646.0143, i64 %i.ax) ; 2 uses
  %i.bc = add nuw nsw i64 %.0153, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.h
  br i1 %exitcond.not, label %.preheader, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, %.preheader
  %.sroa.36.0.lcssa = phi i64 [ 0, %.preheader ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.32.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.dm, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.22.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.dd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.18.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.dc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.14.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.10.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.da, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.022.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.cy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.bd = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader ], [ %i.ds, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.be = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.dj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.bf, align 8 ; 3 uses
  store <4 x float> %.sroa.030.0.lcssa, ptr %2, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %.sroa.632.0.lcssa, ptr %i.bg, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x float> %.sroa.1034.0.lcssa, ptr %i.bh, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> %.sroa.1436.0.lcssa, ptr %i.bi, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x float> %.sroa.1838.0.lcssa, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> %.sroa.2240.0.lcssa, ptr %i.bk, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %.sroa.3245.0.lcssa, ptr %i.bn, align 16
  %.sroa.3646.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %.sroa.3646.0.lcssa, ptr %.sroa.3646.112..sroa_idx, align 8
  %.sroa.3947.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.b, ptr %i.bo, align 16
  store i64 %i.d, ptr %i.bl, align 16
  store i64 %i.h, ptr %i.bm, align 8
  %i.bp = fcmp olt <2 x float> %i.m, %.sroa.01.0.copyload
  %i.bq = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> %i.m, <2 x i32> <i32 0, i32 3>
  %i.br = shufflevector <2 x float> %i.m, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bs = select <2 x i1> %i.bp, <2 x float> %i.bq, <2 x float> %i.br
  %4 = shufflevector <2 x float> %i.l, <2 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %.sroa.3947.112..sroa_idx, align 16
  %i.bt = load ptr, ptr %i.a, align 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bf, align 8 ; 3 uses
  store <4 x float> %.sroa.022.0.lcssa, ptr %3, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.bu, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %.sroa.10.0.lcssa, ptr %i.bv, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %.sroa.14.0.lcssa, ptr %i.bw, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x float> %.sroa.18.0.lcssa, ptr %i.bx, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %.sroa.32.0.lcssa, ptr %i.cb, align 16
  %.sroa.36.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.sroa.36.0.lcssa, ptr %.sroa.36.112..sroa_idx, align 8
  %.sroa.39.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.bt, ptr %i.cc, align 16
  store i64 %i.h, ptr %i.bz, align 16
  store i64 %i.f, ptr %i.ca, align 8
  %i.cd = fcmp olt <2 x float> %i.be, %.sroa.0.0.copyload
  %i.ce = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %i.be, <2 x i32> <i32 0, i32 3>
  %i.cf = shufflevector <2 x float> %i.be, <2 x float> %.sroa.0.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.cg = select <2 x i1> %i.cd, <2 x float> %i.ce, <2 x float> %i.cf
  %5 = shufflevector <2 x float> %i.bd, <2 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %.sroa.39.112..sroa_idx, align 16
  ret void

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit
  %.017179 = phi i64 [ %i.h, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dt, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.022.0178 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.cy, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0177 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.10.0176 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.da, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.14.0175 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.18.0174 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.22.0173 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.32.0171 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dm, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.36.0170 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.ch = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.ds, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.ci = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %.017179 ; 5 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !noalias !659 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !660 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.co = load <4 x float>, ptr %i.cn, align 16, !noalias !661 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cq = load <4 x float>, ptr %i.cp, align 16, !noalias !662 ; 3 uses
  %i.cr = fmul <4 x float> %i.co, splat (float 5.000000e-01)
  %i.cs = fmul <4 x float> %i.ck, splat (float 5.000000e-01)
  %i.ct = fadd <4 x float> %i.cs, %i.cr
  %i.cu = fmul <4 x float> %i.cq, splat (float 5.000000e-01)
  %i.cv = fmul <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.cw = fadd <4 x float> %i.cv, %i.cu
  %i.cx = fadd <4 x float> %i.ct, %i.cw           ; 2 uses
  %i.cy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.022.0178, <4 x float> %i.ck) ; 2 uses
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0177, <4 x float> %i.cm) ; 2 uses
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0176, <4 x float> %i.co) ; 2 uses
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.0175, <4 x float> %i.cq) ; 2 uses
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.0174, <4 x float> %i.cx) ; 2 uses
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.22.0173, <4 x float> %i.cx) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.df = load <2 x float>, ptr %i.de, align 16   ; 4 uses
  %i.dg = fcmp olt <2 x float> %i.ci, %i.df
  %i.dh = shufflevector <2 x float> %i.ci, <2 x float> %i.df, <2 x i32> <i32 0, i32 3>
  %i.di = shufflevector <2 x float> %i.df, <2 x float> %i.ci, <2 x i32> <i32 0, i32 3>
  %i.dj = select <2 x i1> %i.dg, <2 x float> %i.dh, <2 x float> %i.di ; 2 uses
  %bc216 = bitcast <4 x float> %i.co to <4 x i32>
  %i.dk = extractelement <4 x i32> %bc216, i64 3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = add i64 %.sroa.32.0171, %i.dl           ; 2 uses
  %bc217 = bitcast <4 x float> %i.cq to <4 x i32>
  %i.dn = extractelement <4 x i32> %bc217, i64 3
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = icmp samesign ult i64 %.sroa.36.0170, %i.do
  %i.dq = insertelement <2 x i1> poison, i1 %i.dp, i64 0
  %i.dr = shufflevector <2 x i1> %i.dq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.df, <2 x float> %i.ch ; 2 uses
  %.sroa.36.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.36.0170, i64 %i.do) ; 2 uses
  %i.dt = add nuw i64 %.017179, 1                 ; 2 uses
  %exitcond212.not = icmp eq i64 %i.dt, %i.f
  br i1 %exitcond212.not, label %._crit_edge, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, !llvm.loop !6
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12rtcore_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6embree12rtcore_errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27, !inline_history !663
  br label %_ZN6embree12rtcore_errorD2Ev.exit

_ZN6embree12rtcore_errorD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #11, !inline_history !663
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6embree12rtcore_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator.22", align 1 ; 5 uses
  %6 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %7 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = add i64 %2, -1                           ; 2 uses
  %i.d = sub i64 0, %2                            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.r = call noundef i64 @_ZN6embree13TaskScheduler8threadIDEv()
  %i.s = load i64, ptr %i.a, align 8
  %i.t = and i64 %i.s, %i.r                       ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 6 uses
  %i.v = load atomic ptr, ptr %i.u seq_cst, align 8 ; 8 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.thread54, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %i.x = load i64, ptr %1, align 8
  %i.y = add i64 %i.c, %i.x
  %i.z = and i64 %i.y, %i.d                       ; 4 uses
  %i.aa = load atomic i64, ptr %i.v seq_cst, align 8
  %i.ab = add i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac seq_cst, align 8
  %i.ae = icmp ule i64 %i.ab, %i.ad
  %.not27.i = or i1 %3, %i.ae
  br i1 %.not27.i, label %bb.d, label %bb.h, !prof !41

bb.d:                                             ; preds = %bb.c
  %i.af = atomicrmw add ptr %i.v, i64 %i.z seq_cst, align 8 ; 6 uses
  %i.ag = add i64 %i.af, %i.z
  %i.ah = load atomic i64, ptr %i.ac seq_cst, align 8
  %i.ai = icmp ule i64 %i.ag, %i.ah
  %.not28.i = or i1 %3, %i.ai
  br i1 %.not28.i, label %bb.e, label %bb.h, !prof !41

bb.e:                                             ; preds = %bb.d
  %i.aj = load atomic i64, ptr %i.ac seq_cst, align 8
  %i.ak = icmp ugt i64 %i.af, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.f, !prof !40

bb.f:                                             ; preds = %bb.e
  %i.al = icmp ne ptr %i.w, null
  %i.am = load atomic i64, ptr %i.ac seq_cst, align 8
  %i.an = sub i64 %i.am, %i.af
  %i.ao = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.an) ; 2 uses
  store i64 %i.ao, ptr %1, align 8
  %i.ap = add i64 %i.ao, %i.af                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq seq_cst, align 8
  %i.as = icmp ugt i64 %i.ap, %i.ar
  %or.cond.i = and i1 %i.al, %i.as
  br i1 %or.cond.i, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 1360 ; 2 uses
  %i.au = load atomic i64, ptr %i.aq seq_cst, align 8
  %i.av = call noundef i64 @llvm.umax.i64(i64 %i.af, i64 %i.au)
  %i.aw = sub i64 %i.ap, %i.av
  %i.ax = load ptr, ptr %i.at, align 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i64 noundef %i.aw, i1 noundef zeroext true), !inline_history !664
  br label %bb.ab

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.az = load i8, ptr %i.e, align 1, !range !34, !noundef !35
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.thread54, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bb, align 8
  call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.thread54:                                        ; preds = %bb.h, %bb.b
  %i.bc = load i64, ptr %1, align 8
  %i.bd = icmp ugt i64 %i.bc, 2097088
  br i1 %i.bd, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread54
  %i.be = call ptr @__cxa_allocate_exception(i64 48) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_ZZN6embree23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS8_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKS1_E_ZNSA_5splitESE_SH_SI_SI_EUlRS6_SK_E_ZNSA_5splitESE_SH_SI_SI_EUlSM_RKS6_E_E9partitionESM_SM_ENKUlmE_clEm:bb.a
  %i.bw = load <2 x float>, ptr %i.bv, align 16   ; 4 uses
  %i.bx = fcmp olt <2 x float> %i.af, %i.bw
  %i.by = shufflevector <2 x float> %i.af, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ca = select <2 x i1> %i.bx, <2 x float> %i.by, <2 x float> %i.bz ; 2 uses
  %i.cb = add i64 %.sroa.4052.1102, 1             ; 2 uses
  %i.cc = zext i32 %i.bo to i64
  %i.cd = add i64 %.sroa.4554.1101, %i.cc         ; 2 uses
  %i.ce = zext i32 %i.bn to i64                   ; 2 uses
  %i.cf = icmp ult i64 %.sroa.5056.1100, %i.ce
  %i.cg = insertelement <2 x i1> poison, i1 %i.cf, i64 0
  %i.ch = shufflevector <2 x i1> %i.cg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ci = select <2 x i1> %i.ch, <2 x float> %i.bw, <2 x float> %i.ae ; 2 uses
  %.sroa.5056.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.5056.1100, i64 %i.ce) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.134.i109, i64 80 ; 3 uses
  %.not.i = icmp ugt ptr %i.cj, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.c, !prof !46, !llvm.loop !20

bb.d:                                             ; preds = %.lr.ph153, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11
  %.1.i152 = phi ptr [ %.0.i, %.lr.ph153 ], [ %i.ee, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 13 uses
  %.sroa.0.1151 = phi <4 x float> [ %.sroa.0.0, %.lr.ph153 ], [ %i.di, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.8.1150 = phi <4 x float> [ %.sroa.8.0, %.lr.ph153 ], [ %i.dj, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.14.1149 = phi <4 x float> [ %.sroa.14.0, %.lr.ph153 ], [ %i.dk, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.20.1148 = phi <4 x float> [ %.sroa.20.0, %.lr.ph153 ], [ %i.dl, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.26.1147 = phi <4 x float> [ %.sroa.26.0, %.lr.ph153 ], [ %i.dm, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.32.1146 = phi <4 x float> [ %.sroa.32.0, %.lr.ph153 ], [ %i.dn, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.40.1145 = phi i64 [ %.sroa.40.0, %.lr.ph153 ], [ %i.dw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.45.1144 = phi i64 [ %.sroa.45.0, %.lr.ph153 ], [ %i.dy, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.50.1143 = phi i64 [ %.sroa.50.0, %.lr.ph153 ], [ %.sroa.50.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %.sroa.63.1140 = phi float [ %.sroa.63.0, %.lr.ph153 ], [ %i.ds, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %.sroa.69.1139 = phi float [ %.sroa.69.0, %.lr.ph153 ], [ %i.dv, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %i.ck = phi <2 x float> [ %i.t, %.lr.ph153 ], [ %i.ed, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i152, i64 32
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !1950 ; 4 uses
  %i.cn = fmul <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = load <4 x float>, ptr %.1.i152, align 16, !noalias !1951 ; 4 uses
  %i.cp = fmul <4 x float> %i.co, splat (float 5.000000e-01)
  %i.cq = fadd <4 x float> %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i152, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i152, i64 48
  %i.ct = load <4 x float>, ptr %i.cs, align 16, !noalias !1952 ; 4 uses
  %i.cu = fmul <4 x float> %i.ct, splat (float 5.000000e-01)
  %i.cv = load <4 x float>, ptr %i.cr, align 16, !noalias !1953 ; 3 uses
  %i.cw = fmul <4 x float> %i.cv, splat (float 5.000000e-01)
  %i.cx = fadd <4 x float> %i.cu, %i.cw
  %i.cy = fadd <4 x float> %i.cq, %i.cx           ; 5 uses
  %i.cz = fsub <4 x float> %i.cy, %i.bf
  %i.da = fmul <4 x float> %i.bh, %i.cz
  %i.db = fadd <4 x float> %i.da, splat (float -5.000000e-01)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.db)
  %i.dd = icmp sgt <4 x i32> %i.bj, %i.dc
  %i.de = select <4 x i1> %i.dd, <4 x i1> %i.bm, <4 x i1> zeroinitializer
  %i.df = bitcast <4 x i1> %i.de to i4
  %.not80 = icmp eq i4 %i.df, 0
  %bc275 = bitcast <4 x float> %i.cm to <4 x i32>
  %i.dg = extractelement <4 x i32> %bc275, i64 3  ; 2 uses
  %bc276 = bitcast <4 x float> %i.ct to <4 x i32>
  %i.dh = extractelement <4 x i32> %bc276, i64 3  ; 2 uses
  br i1 %.not80, label %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11, label %.critedge37.i, !prof !41

_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11: ; preds = %bb.d
  %i.di = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.1151, <4 x float> %i.co) ; 2 uses
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1150, <4 x float> %i.cv) ; 2 uses
  %i.dk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1149, <4 x float> %i.cm) ; 2 uses
  %i.dl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1148, <4 x float> %i.ct) ; 2 uses
  %i.dm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1147, <4 x float> %i.cy) ; 2 uses
  %i.dn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1146, <4 x float> %i.cy) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i152, i64 64
  %i.dp = load <2 x float>, ptr %i.do, align 16   ; 3 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0 ; 2 uses
  %i.dr = fcmp olt float %.sroa.63.1140, %i.dq
  %i.ds = select i1 %i.dr, float %.sroa.63.1140, float %i.dq ; 2 uses
  %i.dt = extractelement <2 x float> %i.dp, i64 1 ; 2 uses
  %i.du = fcmp olt float %.sroa.69.1139, %i.dt
  %i.dv = select i1 %i.du, float %i.dt, float %.sroa.69.1139 ; 2 uses
  %i.dw = add i64 %.sroa.40.1145, 1               ; 2 uses
  %i.dx = zext i32 %i.dg to i64
  %i.dy = add i64 %.sroa.45.1144, %i.dx           ; 2 uses
  %i.dz = zext i32 %i.dh to i64                   ; 2 uses
  %i.ea = icmp ult i64 %.sroa.50.1143, %i.dz
  %i.eb = insertelement <2 x i1> poison, i1 %i.ea, i64 0
  %i.ec = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.dp, <2 x float> %i.ck ; 2 uses
  %.sroa.50.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.50.1143, i64 %i.dz) ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.1.i152, i64 -80 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.ee
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit, label %bb.d, !prof !46, !llvm.loop !21

.critedge37.i:                                    ; preds = %bb.d
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i152, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.i152, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.i152, i64 48 ; 2 uses
  %i.ei = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.033.1.lcssa, <4 x float> %i.co)
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.836.1.lcssa, <4 x float> %i.cv)
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1439.1.lcssa, <4 x float> %i.cm)
  %i.el = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2042.1.lcssa, <4 x float> %i.ct)
  %i.em = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2645.1.lcssa, <4 x float> %i.cy)
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3248.1.lcssa, <4 x float> %i.cy)
  %i.eo = getelementptr inbounds nuw i8, ptr %.1.i152, i64 64 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1.i152, i64 68
  %i.eq = load <2 x float>, ptr %i.eo, align 4    ; 4 uses
  %i.er = fcmp olt <2 x float> %i.bc, %i.eq
  %i.es = shufflevector <2 x float> %i.bc, <2 x float> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.et = shufflevector <2 x float> %i.eq, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3>
  %i.eu = select <2 x i1> %i.er, <2 x float> %i.es, <2 x float> %i.et
  %i.ev = add i64 %.sroa.4052.1.lcssa, 1
  %i.ew = zext i32 %i.dg to i64
  %i.ex = add i64 %.sroa.4554.1.lcssa, %i.ew
  %i.ey = zext i32 %i.dh to i64                   ; 2 uses
  %i.ez = icmp ult i64 %.sroa.5056.1.lcssa, %i.ey
  %i.fa = insertelement <2 x i1> poison, i1 %i.ez, i64 0
  %i.fb = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.eq, <2 x float> %i.bb
  %.sroa.5056.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.5056.1.lcssa, i64 %i.ey)
  %i.fd = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !1954 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !noalias !1955 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32 ; 2 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !noalias !1956 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 48 ; 2 uses
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !noalias !1957 ; 4 uses
  %i.fk = fmul <4 x float> %i.fh, splat (float 5.000000e-01)
  %i.fl = fmul <4 x float> %i.fd, splat (float 5.000000e-01)
  %i.fm = fadd <4 x float> %i.fl, %i.fk
  %i.fn = fmul <4 x float> %i.fj, splat (float 5.000000e-01)
  %i.fo = fmul <4 x float> %i.ff, splat (float 5.000000e-01)
  %i.fp = fadd <4 x float> %i.fo, %i.fn
  %i.fq = fadd <4 x float> %i.fm, %i.fp           ; 2 uses
  %i.fr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.1151, <4 x float> %i.fd)
  %i.fs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1150, <4 x float> %i.ff)
  %i.ft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1149, <4 x float> %i.fh)
  %i.fu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1148, <4 x float> %i.fj)
  %i.fv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1147, <4 x float> %i.fq)
  %i.fw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1146, <4 x float> %i.fq)
  %i.fx = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 64 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 68
  %i.fz = load <2 x float>, ptr %i.fx, align 16   ; 4 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  %i.gb = fcmp olt float %.sroa.63.1140, %i.ga
  %i.gc = select i1 %i.gb, float %.sroa.63.1140, float %i.ga
  %i.gd = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  %i.ge = fcmp olt float %.sroa.69.1139, %i.gd
  %i.gf = select i1 %i.ge, float %i.gd, float %.sroa.69.1139
  %i.gg = add i64 %.sroa.40.1145, 1
  %bc277 = bitcast <4 x float> %i.fh to <4 x i32>
  %i.gh = extractelement <4 x i32> %bc277, i64 3
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add i64 %.sroa.45.1144, %i.gi
  %bc278 = bitcast <4 x float> %i.fj to <4 x i32>
  %i.gk = extractelement <4 x i32> %bc278, i64 3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = icmp ult i64 %.sroa.50.1143, %i.gl
  %i.gn = insertelement <2 x i1> poison, i1 %i.gm, i64 0
  %i.go = shufflevector <2 x i1> %i.gn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gp = select <2 x i1> %i.go, <2 x float> %i.fz, <2 x float> %i.ck
  %.sroa.50.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.50.1143, i64 %i.gl)
  store <4 x float> %i.co, ptr %.134.i.lcssa, align 16
  %i.gq = load <4 x float>, ptr %i.eg, align 16
  store <4 x float> %i.gq, ptr %i.fe, align 16
  %i.gr = load <4 x float>, ptr %i.ef, align 16
  store <4 x float> %i.gr, ptr %i.fg, align 16
  %i.gs = load <4 x float>, ptr %i.eh, align 16
  store <4 x float> %i.gs, ptr %i.fi, align 16
  %i.gt = load float, ptr %i.eo, align 16
  store float %i.gt, ptr %i.fx, align 16
  %i.gu = load float, ptr %i.ep, align 4
  store float %i.gu, ptr %i.fy, align 4
  store <4 x float> %i.fd, ptr %.1.i152, align 16
  store <4 x float> %i.ff, ptr %i.eg, align 16
  store <4 x float> %i.fh, ptr %i.ef, align 16
  store <4 x float> %i.fj, ptr %i.eh, align 16
  store <2 x float> %i.fz, ptr %i.eo, align 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 80
  br label %bb.b, !llvm.loop !22

_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11
  %.sroa.69.1.lcssa = phi float [ %i.dv, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.69.0, %.critedge.i.preheader ]
  %.sroa.63.1.lcssa = phi float [ %i.ds, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.63.0, %.critedge.i.preheader ]
  %.sroa.50.1.lcssa = phi i64 [ %.sroa.50.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.50.0, %.critedge.i.preheader ]
  %.sroa.45.1.lcssa = phi i64 [ %i.dy, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.45.0, %.critedge.i.preheader ]
  %.sroa.40.1.lcssa = phi i64 [ %i.dw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.40.0, %.critedge.i.preheader ]
  %.sroa.32.1.lcssa = phi <4 x float> [ %i.dn, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.32.0, %.critedge.i.preheader ]
  %.sroa.26.1.lcssa = phi <4 x float> [ %i.dm, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.26.0, %.critedge.i.preheader ]
  %.sroa.20.1.lcssa = phi <4 x float> [ %i.dl, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.20.0, %.critedge.i.preheader ]
  %.sroa.14.1.lcssa = phi <4 x float> [ %i.dk, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.14.0, %.critedge.i.preheader ]
  %.sroa.8.1.lcssa = phi <4 x float> [ %i.dj, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.8.0, %.critedge.i.preheader ]
  %.sroa.0.1.lcssa = phi <4 x float> [ %i.di, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.0.0, %.critedge.i.preheader ]
  %i.gw = phi <2 x float> [ %i.ed, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %i.t, %.critedge.i.preheader ]
  %i.gx = ptrtoint ptr %.134.i.lcssa to i64
  %i.gy = ptrtoint ptr %i.k to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = sdiv exact i64 %i.gz, 80
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %1
  store i64 %i.g, ptr %i.hc, align 8
  %i.hd = sub i64 %i.ha, %i.g
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %1
  store i64 %i.hd, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 3264
  %i.hh = getelementptr inbounds nuw [144 x i8], ptr %i.hg, i64 %1 ; 11 uses
  store <4 x float> %.sroa.033.1.lcssa, ptr %i.hh, align 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x float> %.sroa.836.1.lcssa, ptr %i.hi, align 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store <4 x float> %.sroa.1439.1.lcssa, ptr %i.hj, align 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store <4 x float> %.sroa.2042.1.lcssa, ptr %i.hk, align 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  store <4 x float> %.sroa.2645.1.lcssa, ptr %i.hl, align 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  store <4 x float> %.sroa.3248.1.lcssa, ptr %i.hm, align 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 96
  store i64 0, ptr %i.hn, align 16
  %.sroa.4052.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 104
  store i64 %.sroa.4052.1.lcssa, ptr %.sroa.4052.96..sroa_idx, align 8
  %.sroa.4554.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  store i64 %.sroa.4554.1.lcssa, ptr %.sroa.4554.96..sroa_idx, align 16
  %.sroa.5056.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 120
  store i64 %.sroa.5056.1.lcssa, ptr %.sroa.5056.96..sroa_idx, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 128
  %2 = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %i.ho, align 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 12480
  %i.hq = getelementptr inbounds nuw [144 x i8], ptr %i.hp, i64 %1 ; 13 uses
  store <4 x float> %.sroa.0.1.lcssa, ptr %i.hq, align 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <4 x float> %.sroa.8.1.lcssa, ptr %i.hr, align 16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.hs, align 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.ht, align 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 64
  store <4 x float> %.sroa.26.1.lcssa, ptr %i.hu, align 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  store <4 x float> %.sroa.32.1.lcssa, ptr %i.hv, align 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 96
  store i64 0, ptr %i.hw, align 16
  %.sroa.40.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 104
  store i64 %.sroa.40.1.lcssa, ptr %.sroa.40.96..sroa_idx, align 8
  %.sroa.45.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  store i64 %.sroa.45.1.lcssa, ptr %.sroa.45.96..sroa_idx, align 16
  %.sroa.50.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 120
  store i64 %.sroa.50.1.lcssa, ptr %.sroa.50.96..sroa_idx, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 128
  store <2 x float> %i.gw, ptr %i.hx, align 16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 136
  store float %.sroa.63.1.lcssa, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 140
  store float %.sroa.69.1.lcssa, ptr %i.hz, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.183, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #11 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #11
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #11 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.10)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !47
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvRKSX_S17_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvRKSX_S17_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.128", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref.121", align 8   ; 7 uses
  %10 = alloca %"class.embree::Ref.121", align 8  ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !17 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
end_hunk_1
