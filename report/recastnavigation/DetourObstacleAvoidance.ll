Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourObstacleAvoidance?download=true
inline.NumInlined: 71
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN24dtObstacleAvoidanceQuery18sampleVelocityGridEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %7, i64 28, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load float, ptr %i.b, align 4, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %3, ptr %i.e, align 8, !tbaa !44
  %i.f = fcmp ogt float %3, 0.000000e+00
  %i.g = insertelement <2 x float> poison, float %i.c, i64 0
  %i.h = insertelement <2 x float> %i.g, float %3, i64 1
  %i.i = fdiv <2 x float> splat (float 1.000000e+00), %i.h ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  store float %i.j, ptr %i.d, align 4, !tbaa !43
  %i.k = extractelement <2 x float> %i.i, i64 1
  %i.l = select i1 %i.f, float %i.k, float f0x7F7FFFFF
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.l, ptr %i.m, align 4, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !24
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %8, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load float, ptr %5, align 4, !tbaa !24
  %i.q = load float, ptr %0, align 8, !tbaa !46   ; 3 uses
  %i.r = fmul float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !24
  %i.u = fmul float %i.q, %i.t
  %i.v = fmul float %3, 2.000000e+00
  %i.w = fsub float 1.000000e+00, %i.q
  %i.x = fmul float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !71    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = sitofp i32 %i.ab to float               ; 2 uses
  %i.ad = fdiv float %i.x, %i.ac                  ; 5 uses
  %i.ae = fmul float %i.ad, %i.ac
  %i.af = fmul float %i.ae, 5.000000e-01          ; 2 uses
  %.not56 = icmp eq i8 %i.z, 0
  br i1 %.not56, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = fmul float %i.ad, 5.000000e-01
  %i.aj = fadd float %3, %i.ai                    ; 2 uses
  %i.ak = fmul float %i.aj, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.al = phi i8 [ 1, %.preheader.lr.ph ], [ %i.aq, %._crit_edge ]
  %.04053 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %.04152 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.04251 = phi float [ f0x7F7FFFFF, %.preheader.lr.ph ], [ %.143.lcssa, %._crit_edge ] ; 2 uses
  %.not57 = icmp eq i8 %i.al, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.am = uitofp nneg i32 %.04053 to float
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ad, float %i.u)
  %i.ao = fsub float %i.an, %i.af                 ; 4 uses
  %i.ap = fmul float %i.ao, %i.ao
  br label %bb.d

._crit_edge54:                                    ; preds = %._crit_edge, %bb.c
  %.041.lcssa = phi i32 [ 0, %bb.c ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.041.lcssa

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.aq = phi i8 [ 0, %.preheader ], [ %i.be, %bb.g ] ; 2 uses
  %.143.lcssa = phi float [ %.04251, %.preheader ], [ %.3, %bb.g ]
  %.1.lcssa = phi i32 [ %.04152, %.preheader ], [ %.2, %bb.g ] ; 2 uses
  %i.ar = add nuw nsw i32 %.04053, 1              ; 2 uses
  %i.as = zext i8 %i.aq to i32
  %i.at = icmp samesign ult i32 %i.ar, %i.as
  br i1 %i.at, label %.preheader, label %._crit_edge54

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.049 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.g ] ; 2 uses
  %.148 = phi i32 [ %.04152, %.lr.ph ], [ %.2, %bb.g ] ; 2 uses
  %.14347 = phi float [ %.04251, %.lr.ph ], [ %.3, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.au = uitofp nneg i32 %.049 to float
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ad, float %i.r)
  %i.aw = fsub float %i.av, %i.af                 ; 4 uses
  store float %i.aw, ptr %i.a, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !24
  store float %i.ao, ptr %i.ah, align 4, !tbaa !24
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = fadd float %i.ap, %i.ax
  %i.az = fcmp ogt float %i.ay, %i.ak
  br i1 %i.az, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = call noundef float @_ZN24dtObstacleAvoidanceQuery13processSampleEPKffS1_fS1_S1_fP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.a, float noundef %i.ad, ptr noundef %1, float noundef %2, ptr noundef %4, ptr noundef nonnull %5, float noundef %.14347, ptr noundef %8) ; 2 uses
  %i.bb = add nsw i32 %.148, 1                    ; 2 uses
  %i.bc = fcmp olt float %i.ba, %.14347
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.aw, ptr %6, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !24
  store float %i.ao, ptr %i.o, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.3 = phi float [ %.14347, %bb.d ], [ %i.ba, %bb.f ], [ %.14347, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.148, %bb.d ], [ %i.bb, %bb.f ], [ %i.bb, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bd = add nuw nsw i32 %.049, 1                ; 2 uses
  %i.be = load i8, ptr %i.y, align 8, !tbaa !71   ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = icmp samesign ult i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.d, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noundef i32 @_ZN24dtObstacleAvoidanceQuery22sampleVelocityAdaptiveEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [258 x float], align 16           ; 35 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  tail call void @_ZN24dtObstacleAvoidanceQuery7prepareEPKfS1_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %5)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %7, i64 28, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %3, ptr %i.f, align 8, !tbaa !44
  %i.g = fcmp ogt float %3, 0.000000e+00
  %i.h = insertelement <2 x float> poison, float %i.d, i64 0
  %i.i = insertelement <2 x float> %i.h, float %3, i64 1
  %i.j = fdiv <2 x float> splat (float 1.000000e+00), %i.i ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  store float %i.k, ptr %i.e, align 4, !tbaa !43
  %i.l = extractelement <2 x float> %i.j, i64 1
  %i.m = select i1 %i.g, float %i.l, float f0x7F7FFFFF
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.m, ptr %i.n, align 4, !tbaa !45
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !24
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %8, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !72    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.s = load i8, ptr %i.r, align 2, !tbaa !73    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.u = load i8, ptr %i.t, align 1, !tbaa !74    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = icmp eq i8 %i.q, 0
  %i.x = tail call i8 @llvm.umin.i8(i8 %i.q, i8 32)
  %narrow = select i1 %i.w, i8 1, i8 %i.x         ; 3 uses
  %i.y = zext nneg i8 %narrow to i32              ; 2 uses
  %i.z = icmp eq i8 %i.s, 0
  %i.aa = tail call i8 @llvm.umin.i8(i8 %i.s, i8 4)
  %narrow119 = select i1 %i.z, i8 1, i8 %i.aa     ; 13 uses
  %i.ab = zext nneg i8 %narrow119 to i32          ; 14 uses
  %i.ac = uitofp nneg i8 %narrow to float
  %i.ad = fdiv nnan float 1.000000e+00, %i.ac
  %i.ae = fmul nnan float %i.ad, f0x40490FDB
  %i.af = fmul nnan float %i.ae, 2.000000e+00     ; 3 uses
  %i.ag = tail call float @cosf(float noundef %i.af) #10 ; 20 uses
  %i.ah = tail call float @sinf(float noundef %i.af) #10 ; 12 uses
  %i.ai = load float, ptr %5, align 4, !tbaa !24  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !24 ; 3 uses
  %i.al = fmul float %i.ak, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.al) ; 2 uses
  %i.an = fcmp oeq float %i.am, 0.000000e+00
  %i.ao = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.ak, i64 1 ; 3 uses
  br i1 %i.an, label %_Z13dtNormalize2DPf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.am)
  %i.aq = fdiv float 1.000000e+00, %sqrt.i
  %i.ar = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.ap, %i.as
  br label %_Z13dtNormalize2DPf.exit

_Z13dtNormalize2DPf.exit:                         ; preds = %bb.c, %bb.d
  %i.au = phi <2 x float> [ %i.ap, %bb.c ], [ %i.at, %bb.d ] ; 16 uses
  %i.av = fmul nnan float %i.af, 5.000000e-01     ; 2 uses
  %i.aw = tail call float @cosf(float noundef %i.av) #10 ; 2 uses
  %i.ax = tail call float @sinf(float noundef %i.av) #10 ; 2 uses
  %i.ay = fneg float %i.ax
  %i.az = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.aw, i64 1
  %i.bc = fmul <2 x float> %i.az, %i.bb
  %i.bd = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ax, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.bc) ; 11 uses
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !24
  %.not157 = icmp eq i8 %narrow119, 0
  br i1 %.not157, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %_Z13dtNormalize2DPf.exit
  %i.bh = uitofp nneg i8 %narrow119 to float      ; 15 uses
  %i.bi = add nsw i32 %i.y, -1
  %i.bj = icmp samesign ugt i8 %narrow, 2
  %i.bk = fneg float %i.ah                        ; 9 uses
  %i.bl = and i32 %i.y, 1
  %i.bm = icmp eq i32 %i.bl, 0                    ; 2 uses
  br i1 %i.bj, label %.lr.ph.us.preheader, label %.lr.ph127.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph127
  %i.bn = extractelement <2 x float> %i.bg, i64 0
  %i.bo = extractelement <2 x float> %i.au, i64 0
  %i.bp = extractelement <2 x float> %i.bg, i64 1
  %i.bq = extractelement <2 x float> %i.au, i64 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.g
  %.0109126.us = phi i32 [ %i.do, %bb.g ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.0110125.us = phi i32 [ %.2112.us, %bb.g ], [ 1, %.lr.ph.us.preheader ] ; 2 uses
  %i.br = sub nuw nsw i32 %i.ab, %.0109126.us
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = fdiv float %i.bs, %i.bh                 ; 2 uses
  %i.bu = trunc i32 %.0109126.us to i1            ; 2 uses
  %.sroa.speculated198 = select i1 %i.bu, float %i.bn, float %i.bo
  %i.bv = fmul float %i.bt, %.sroa.speculated198  ; 2 uses
  %i.bw = shl nsw i32 %.0110125.us, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bx ; 4 uses
  store float %i.bv, ptr %i.by, align 8, !tbaa !24
  %.sroa.speculated189 = select i1 %i.bu, float %i.bp, float %i.bq
  %i.bz = fmul float %i.bt, %.sroa.speculated189  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !24
  %i.cb = add i32 %.0110125.us, 1
  %i.cc = sext i32 %i.cb to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.e
  %i.cd = phi float [ %i.bz, %.lr.ph.us ], [ %i.cn, %bb.e ]
  %i.ce = phi float [ %i.bv, %.lr.ph.us ], [ %i.ch, %bb.e ]
  %indvars.iv171 = phi i64 [ %i.cc, %.lr.ph.us ], [ %indvars.iv.next172, %bb.e ] ; 3 uses
  %.0106123.us = phi i32 [ 1, %.lr.ph.us ], [ %i.da, %bb.e ]
  %.0107122.us = phi ptr [ %i.by, %.lr.ph.us ], [ %i.cu, %bb.e ] ; 3 uses
  %.0108121.us = phi ptr [ %i.by, %.lr.ph.us ], [ %i.ci, %bb.e ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0108121.us, i64 4
  %i.cg = fmul float %i.ah, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ag, float %i.cg) ; 2 uses
  %.idx206 = shl nsw i64 %indvars.iv171, 3
  %i.ci = getelementptr inbounds i8, ptr %i.a, i64 %.idx206 ; 5 uses
  store float %i.ch, ptr %i.ci, align 8, !tbaa !24
  %i.cj = load float, ptr %.0108121.us, align 4, !tbaa !24
  %i.ck = fneg float %i.cj
  %i.cl = load float, ptr %i.cf, align 4, !tbaa !24
  %i.cm = fmul float %i.ag, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ah, float %i.cm) ; 2 uses
  %i.co = getelementptr i8, ptr %i.ci, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !24
  %i.cp = load float, ptr %.0107122.us, align 4, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.0107122.us, i64 4 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !24
  %i.cs = fmul float %i.cr, %i.bk
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ag, float %i.cs) ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ci, i64 8      ; 3 uses
  store float %i.ct, ptr %i.cu, align 8, !tbaa !24
  %i.cv = load float, ptr %.0107122.us, align 4, !tbaa !24
  %i.cw = load float, ptr %i.cq, align 4, !tbaa !24
  %i.cx = fmul float %i.ag, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ah, float %i.cx) ; 3 uses
  %i.cz = getelementptr i8, ptr %i.ci, i64 12
  store float %i.cy, ptr %i.cz, align 4, !tbaa !24
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.da = add nuw nsw i32 %.0106123.us, 2         ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.bi
  br i1 %i.db, label %bb.e, label %._crit_edge.us

bb.f:                                             ; preds = %._crit_edge.us
  %i.dc = trunc nsw i64 %indvars.iv171 to i32
  %i.dd = fmul float %i.cy, %i.bk
  %i.de = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ag, float %i.dd)
  %i.df = shl nsw i32 %i.dp, 1
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.a, i64 %i.dg ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  store float %i.de, ptr %i.di, align 8, !tbaa !24
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !24
  %i.dk = fmul float %i.ag, %i.cy
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ah, float %i.dk)
  %i.dm = getelementptr i8, ptr %i.dh, i64 12
  store float %i.dl, ptr %i.dm, align 4, !tbaa !24
  %i.dn = add nsw i32 %i.dc, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.us
  %.2112.us = phi i32 [ %i.dn, %bb.f ], [ %i.dp, %._crit_edge.us ] ; 2 uses
  %i.do = add nuw nsw i32 %.0109126.us, 1         ; 2 uses
  %exitcond174.not = icmp eq i32 %i.do, %i.ab
  br i1 %exitcond174.not, label %._crit_edge128, label %.lr.ph.us

._crit_edge.us:                                   ; preds = %bb.e
  %i.dp = trunc nsw i64 %indvars.iv.next172 to i32 ; 2 uses
  br i1 %i.bm, label %bb.f, label %bb.g

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %i.bm, label %.lr.ph127.split.split.us, label %.lr.ph127.split.split

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split
  %i.dq = uitofp nneg i8 %narrow119 to float
  %i.dr = fdiv float %i.dq, %i.bh                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %9 = extractelement <2 x float> %i.au, i64 1
  %10 = extractelement <2 x float> %i.au, i64 0
  %11 = fmul float %i.dr, %9                      ; 2 uses
  %12 = fmul float %i.dr, %10                     ; 2 uses
  store float %12, ptr %i.ds, align 8, !tbaa !24
  store float %11, ptr %i.dt, align 4, !tbaa !24
  %13 = insertelement <2 x float> poison, float %11, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.ag, i64 1
  %i.dx = fmul <2 x float> %14, %i.dw
  %15 = insertelement <2 x float> poison, float %12, i64 0
  %i.dy = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.ah, i64 1
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.ea, <2 x float> %i.dx)
  store <2 x float> %i.eb, ptr %i.du, align 8, !tbaa !24
  %exitcond170.not = icmp eq i8 %narrow119, 1
  br i1 %exitcond170.not, label %._crit_edge128, label %.lr.ph127.split.split.us.1

.lr.ph127.split.split.us.1:                       ; preds = %.lr.ph127.split.split.us
  %i.ec = add nsw i32 %i.ab, -1
  %i.ed = uitofp nneg i32 %i.ec to float
  %i.ee = fdiv float %i.ed, %i.bh                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %16 = extractelement <2 x float> %i.bg, i64 1
  %17 = extractelement <2 x float> %i.bg, i64 0
  %18 = fmul float %i.ee, %16                     ; 2 uses
  %19 = fmul float %i.ee, %17                     ; 2 uses
  store float %19, ptr %i.ef, align 8, !tbaa !24
  store float %18, ptr %i.eg, align 4, !tbaa !24
  %20 = insertelement <2 x float> poison, float %18, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.ag, i64 1
  %i.ek = fmul <2 x float> %21, %i.ej
  %22 = insertelement <2 x float> poison, float %19, i64 0
  %i.el = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.ah, i64 1
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.en, <2 x float> %i.ek)
  store <2 x float> %i.eo, ptr %i.eh, align 8, !tbaa !24
  %exitcond170.not.1 = icmp eq i8 %narrow119, 2
  br i1 %exitcond170.not.1, label %._crit_edge128, label %.lr.ph127.split.split.us.2

.lr.ph127.split.split.us.2:                       ; preds = %.lr.ph127.split.split.us.1
  %i.ep = add nsw i32 %i.ab, -2
  %i.eq = uitofp nneg i32 %i.ep to float
  %i.er = fdiv float %i.eq, %i.bh                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %23 = extractelement <2 x float> %i.au, i64 1
  %24 = extractelement <2 x float> %i.au, i64 0
  %25 = fmul float %i.er, %23                     ; 2 uses
  %26 = fmul float %i.er, %24                     ; 2 uses
  store float %26, ptr %i.es, align 8, !tbaa !24
  store float %25, ptr %i.et, align 4, !tbaa !24
  %27 = insertelement <2 x float> poison, float %25, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.ag, i64 1
  %i.ex = fmul <2 x float> %28, %i.ew
  %29 = insertelement <2 x float> poison, float %26, i64 0
  %i.ey = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.ah, i64 1
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fa, <2 x float> %i.ex)
  store <2 x float> %i.fb, ptr %i.eu, align 8, !tbaa !24
  %exitcond170.not.2 = icmp eq i8 %narrow119, 3
  br i1 %exitcond170.not.2, label %._crit_edge128, label %.lr.ph127.split.split.us.3

.lr.ph127.split.split.us.3:                       ; preds = %.lr.ph127.split.split.us.2
  %i.fc = add nsw i32 %i.ab, -3
  %i.fd = uitofp nneg i32 %i.fc to float
  %i.fe = fdiv float %i.fd, %i.bh                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %30 = extractelement <2 x float> %i.bg, i64 1
  %31 = extractelement <2 x float> %i.bg, i64 0
  %32 = fmul float %i.fe, %30                     ; 2 uses
  %33 = fmul float %i.fe, %31                     ; 2 uses
  store float %33, ptr %i.ff, align 8, !tbaa !24
  store float %32, ptr %i.fg, align 4, !tbaa !24
  %34 = insertelement <2 x float> poison, float %32, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.ag, i64 1
  %i.fk = fmul <2 x float> %35, %i.fj
  %36 = insertelement <2 x float> poison, float %33, i64 0
  %i.fl = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ah, i64 1
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fn, <2 x float> %i.fk)
  store <2 x float> %i.fo, ptr %i.fh, align 8, !tbaa !24
  %exitcond170.not.3 = icmp eq i8 %narrow119, 4
  br i1 %exitcond170.not.3, label %._crit_edge128, label %.lr.ph127.split.split.us.4

.lr.ph127.split.split.us.4:                       ; preds = %.lr.ph127.split.split.us.3
  %i.fp = add nsw i32 %i.ab, -4
  %i.fq = uitofp nneg i32 %i.fp to float
  %i.fr = fdiv float %i.fq, %i.bh                 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %37 = extractelement <2 x float> %i.au, i64 1
  %38 = extractelement <2 x float> %i.au, i64 0
  %39 = fmul float %i.fr, %37                     ; 2 uses
  %40 = fmul float %i.fr, %38                     ; 2 uses
  store float %40, ptr %i.fs, align 8, !tbaa !24
  store float %39, ptr %i.ft, align 4, !tbaa !24
  %41 = insertelement <2 x float> poison, float %39, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.ag, i64 1
  %i.fx = fmul <2 x float> %42, %i.fw
  %43 = insertelement <2 x float> poison, float %40, i64 0
  %i.fy = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.ah, i64 1
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.ga, <2 x float> %i.fx)
  store <2 x float> %i.gb, ptr %i.fu, align 8, !tbaa !24
  %i.gc = add nsw i32 %i.ab, -5
  %i.gd = uitofp nneg i32 %i.gc to float
  %i.ge = fdiv float %i.gd, %i.bh                 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %44 = extractelement <2 x float> %i.bg, i64 1
  %45 = extractelement <2 x float> %i.bg, i64 0
  %46 = fmul float %i.ge, %44                     ; 2 uses
  %47 = fmul float %i.ge, %45                     ; 2 uses
  store float %47, ptr %i.gf, align 8, !tbaa !24
  store float %46, ptr %i.gg, align 4, !tbaa !24
  %48 = insertelement <2 x float> poison, float %46, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.ag, i64 1
  %i.gk = fmul <2 x float> %49, %i.gj
  %50 = insertelement <2 x float> poison, float %47, i64 0
  %i.gl = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.ah, i64 1
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.gn, <2 x float> %i.gk)
  store <2 x float> %i.go, ptr %i.gh, align 8, !tbaa !24
  %i.gp = add nsw i32 %i.ab, -6
  %i.gq = uitofp nneg i32 %i.gp to float
  %i.gr = fdiv float %i.gq, %i.bh                 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %51 = extractelement <2 x float> %i.au, i64 1
  %52 = extractelement <2 x float> %i.au, i64 0
  %53 = fmul float %i.gr, %51                     ; 2 uses
  %54 = fmul float %i.gr, %52                     ; 2 uses
  store float %54, ptr %i.gs, align 8, !tbaa !24
  store float %53, ptr %i.gt, align 4, !tbaa !24
  %55 = insertelement <2 x float> poison, float %53, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.ag, i64 1
  %i.gx = fmul <2 x float> %56, %i.gw
  %57 = insertelement <2 x float> poison, float %54, i64 0
  %i.gy = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.ah, i64 1
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.ha, <2 x float> %i.gx)
  store <2 x float> %i.hb, ptr %i.gu, align 8, !tbaa !24
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %bb.g, %.lr.ph127.split.split, %.lr.ph127.split.split.1, %.lr.ph127.split.split.2, %.lr.ph127.split.split.3, %.lr.ph127.split.split.4, %.lr.ph127.split.split.us, %.lr.ph127.split.split.us.1, %.lr.ph127.split.split.us.2, %.lr.ph127.split.split.us.3, %.lr.ph127.split.split.us.4, %_Z13dtNormalize2DPf.exit
  %.0110.lcssa = phi i32 [ 1, %_Z13dtNormalize2DPf.exit ], [ 8, %.lr.ph127.split.split.4 ], [ 15, %.lr.ph127.split.split.us.4 ], [ 3, %.lr.ph127.split.split.us ], [ 5, %.lr.ph127.split.split.us.1 ], [ 7, %.lr.ph127.split.split.us.2 ], [ 9, %.lr.ph127.split.split.us.3 ], [ 2, %.lr.ph127.split.split ], [ 3, %.lr.ph127.split.split.1 ], [ 4, %.lr.ph127.split.split.2 ], [ 5, %.lr.ph127.split.split.3 ], [ %.2112.us, %bb.g ] ; 2 uses
  %i.hc = load float, ptr %0, align 8, !tbaa !46  ; 2 uses
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul <2 x float> %i.ap, %i.he           ; 2 uses
  %.not158 = icmp eq i8 %i.u, 0
  br i1 %.not158, label %._crit_edge147, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge128
  %i.hg = icmp sgt i32 %.0110.lcssa, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hj = fadd float %3, 1.000000e-03             ; 2 uses
  %i.hk = fmul float %i.hj, %i.hj
  br i1 %i.hg, label %.preheader.us.preheader, label %._crit_edge147

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.hl = fsub float 1.000000e+00, %i.hc
  %i.hm = fmul float %3, %i.hl
  %wide.trip.count = zext nneg i32 %.0110.lcssa to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us152
  %.0101146.us = phi i32 [ %i.if, %._crit_edge.us152 ], [ 0, %.preheader.us.preheader ]
  %.0102145.us = phi i32 [ %.2104.us, %._crit_edge.us152 ], [ 0, %.preheader.us.preheader ]
  %.0105144.us = phi float [ %i.ie, %._crit_edge.us152 ], [ %i.hm, %.preheader.us.preheader ] ; 3 uses
  %i.hn = phi <2 x float> [ %i.id, %._crit_edge.us152 ], [ %i.hf, %.preheader.us.preheader ]
  %i.ho = fdiv float %.0105144.us, 1.000000e+01
  %i.hp = insertelement <2 x float> poison, float %.0105144.us, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %bb.k
  %indvars.iv175 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next176, %bb.k ] ; 2 uses
  %.0100138.us = phi float [ f0x7F7FFFFF, %.preheader.us ], [ %.2.us, %bb.k ] ; 4 uses
  %.1103137.us = phi i32 [ %.0102145.us, %.preheader.us ], [ %.2104.us, %bb.k ] ; 2 uses
  %i.hr = phi <2 x float> [ zeroinitializer, %.preheader.us ], [ %i.id, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.idx207 = shl nuw nsw i64 %indvars.iv175, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx207
  store float 0.000000e+00, ptr %i.hh, align 4, !tbaa !24
  %i.ht = load <2 x float>, ptr %i.hs, align 8, !tbaa !24
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hq, <2 x float> %i.hn) ; 5 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 0
  store float %i.hv, ptr %i.b, align 4, !tbaa !24
  %i.hw = extractelement <2 x float> %i.hu, i64 1
  store float %i.hw, ptr %i.hi, align 4, !tbaa !24
  %i.hx = fmul <2 x float> %i.hu, %i.hu
  %i.hy = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hx)
  %i.hz = fcmp ogt float %i.hy, %i.hk
  br i1 %i.hz, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ia = call noundef float @_ZN24dtObstacleAvoidanceQuery13processSampleEPKffS1_fS1_S1_fP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.b, float noundef %i.ho, ptr noundef %1, float noundef %2, ptr noundef %4, ptr noundef nonnull %5, float noundef %.0100138.us, ptr noundef %8) ; 2 uses
  %i.ib = add nsw i32 %.1103137.us, 1             ; 2 uses
  %i.ic = fcmp olt float %i.ia, %.0100138.us
  br i1 %i.ic, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.2104.us = phi i32 [ %.1103137.us, %bb.h ], [ %i.ib, %bb.j ], [ %i.ib, %bb.i ] ; 3 uses
  %.2.us = phi float [ %.0100138.us, %bb.h ], [ %i.ia, %bb.j ], [ %.0100138.us, %bb.i ]
  %i.id = phi <2 x float> [ %i.hr, %bb.h ], [ %i.hu, %bb.j ], [ %i.hr, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count
  br i1 %exitcond178.not, label %._crit_edge.us152, label %bb.h

._crit_edge.us152:                                ; preds = %bb.k
  %i.ie = fmul float %.0105144.us, 5.000000e-01
  %i.if = add nuw nsw i32 %.0101146.us, 1         ; 2 uses
  %exitcond179.not = icmp eq i32 %i.if, %i.v
  br i1 %exitcond179.not, label %._crit_edge147, label %.preheader.us

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split
  %i.ig = uitofp nneg i8 %narrow119 to float
  %i.ih = fdiv float %i.ig, %i.bh
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ij = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x float> %i.ik, %i.au
  store <2 x float> %i.il, ptr %i.ii, align 8, !tbaa !24
  %exitcond.not = icmp eq i8 %narrow119, 1
  br i1 %exitcond.not, label %._crit_edge128, label %.lr.ph127.split.split.1

.lr.ph127.split.split.1:                          ; preds = %.lr.ph127.split.split
  %i.im = add nsw i32 %i.ab, -1
  %i.in = uitofp nneg i32 %i.im to float
  %i.io = fdiv float %i.in, %i.bh
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.iq = insertelement <2 x float> poison, float %i.io, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.ir, %i.bg
  store <2 x float> %i.is, ptr %i.ip, align 16, !tbaa !24
  %exitcond.not.1 = icmp eq i8 %narrow119, 2
  br i1 %exitcond.not.1, label %._crit_edge128, label %.lr.ph127.split.split.2

.lr.ph127.split.split.2:                          ; preds = %.lr.ph127.split.split.1
  %i.it = add nsw i32 %i.ab, -2
  %i.iu = uitofp nneg i32 %i.it to float
  %i.iv = fdiv float %i.iu, %i.bh
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ix = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.iy, %i.au
  store <2 x float> %i.iz, ptr %i.iw, align 8, !tbaa !24
  %exitcond.not.2 = icmp eq i8 %narrow119, 3
  br i1 %exitcond.not.2, label %._crit_edge128, label %.lr.ph127.split.split.3

.lr.ph127.split.split.3:                          ; preds = %.lr.ph127.split.split.2
  %i.ja = add nsw i32 %i.ab, -3
  %i.jb = uitofp nneg i32 %i.ja to float
  %i.jc = fdiv float %i.jb, %i.bh
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.je = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.jf, %i.bg
  store <2 x float> %i.jg, ptr %i.jd, align 16, !tbaa !24
  %exitcond.not.3 = icmp eq i8 %narrow119, 4
  br i1 %exitcond.not.3, label %._crit_edge128, label %.lr.ph127.split.split.4

.lr.ph127.split.split.4:                          ; preds = %.lr.ph127.split.split.3
  %i.jh = add nsw i32 %i.ab, -4
  %i.ji = uitofp nneg i32 %i.jh to float
  %i.jj = fdiv float %i.ji, %i.bh
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.jl = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = fmul <2 x float> %i.jm, %i.au
  store <2 x float> %i.jn, ptr %i.jk, align 8, !tbaa !24
  %i.jo = add nsw i32 %i.ab, -5
  %i.jp = uitofp nneg i32 %i.jo to float
  %i.jq = fdiv float %i.jp, %i.bh
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.js = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x float> %i.jt, %i.bg
  store <2 x float> %i.ju, ptr %i.jr, align 16, !tbaa !24
  %i.jv = add nsw i32 %i.ab, -6
  %i.jw = uitofp nneg i32 %i.jv to float
  %i.jx = fdiv float %i.jw, %i.bh
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.jz = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x float> %i.ka, %i.au
  store <2 x float> %i.kb, ptr %i.jy, align 8, !tbaa !24
  br label %._crit_edge128

._crit_edge147:                                   ; preds = %._crit_edge.us152, %.preheader.lr.ph, %._crit_edge128
  %.0102.lcssa = phi i32 [ 0, %._crit_edge128 ], [ 0, %.preheader.lr.ph ], [ %.2104.us, %._crit_edge.us152 ]
  %i.kc = phi <2 x float> [ %i.hf, %._crit_edge128 ], [ zeroinitializer, %.preheader.lr.ph ], [ %i.id, %._crit_edge.us152 ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ke = extractelement <2 x float> %i.kc, i64 0
  store float %i.ke, ptr %6, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.kd, align 4, !tbaa !24
  %i.kf = extractelement <2 x float> %i.kc, i64 1
  store float %i.kf, ptr %i.o, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0102.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

end_hunk_0
