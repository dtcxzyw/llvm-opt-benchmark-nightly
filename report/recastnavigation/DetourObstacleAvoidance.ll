Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourObstacleAvoidance?download=true
inline.NumInlined: 71
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN24dtObstacleAvoidanceQuery13processSampleEPKffS1_fS1_S1_fP28dtObstacleAvoidanceDebugData:bb.a
  %i.fo = extractelement <2 x float> %i.fl, i64 1
  %i.fp = fmul float %i.ag, %i.fo                 ; 2 uses
  %i.fq = fadd float %i.q, %i.ac
  %i.fr = fadd float %i.fq, %i.fn
  %i.fs = fadd float %i.fr, %i.fp                 ; 4 uses
  %.not99 = icmp eq ptr %8, null
  br i1 %.not99, label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ft = load i32, ptr %8, align 8, !tbaa !22    ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !21
  %.not.i = icmp slt i32 %i.ft, %i.fv
  br i1 %.not.i, label %bb.l, label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit

bb.l:                                             ; preds = %bb.k
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !14
  %i.fy = mul nsw i32 %i.ft, 3
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fz ; 3 uses
  store float %i.d, ptr %i.ga, align 4, !tbaa !24
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store float %i.gc, ptr %i.gd, align 4, !tbaa !24
  %i.ge = load float, ptr %i.h, align 4, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store float %i.ge, ptr %i.gf, align 4, !tbaa !24
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !15
  %i.gi = sext i32 %i.ft to i64                   ; 6 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gi
  store float %2, ptr %i.gj, align 4, !tbaa !24
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !16
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gi
  store float %i.fs, ptr %i.gm, align 4, !tbaa !24
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !17
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gi
  store float %i.q, ptr %i.gp, align 4, !tbaa !24
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !18
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gi
  store float %i.ac, ptr %i.gs, align 4, !tbaa !24
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !19
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gi
  store float %i.fn, ptr %i.gv, align 4, !tbaa !24
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !20
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.gi
  store float %i.fp, ptr %i.gy, align 4, !tbaa !24
  %i.gz = add nsw i32 %i.ft, 1
  store i32 %i.gz, ptr %8, align 8, !tbaa !22
  br label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit

_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit: ; preds = %bb.e, %bb.j, %bb.l, %bb.k, %._crit_edge, %bb.a
  %.790 = phi float [ %7, %bb.a ], [ %i.fs, %bb.l ], [ %7, %bb.j ], [ %i.fs, %._crit_edge ], [ %i.fs, %bb.k ], [ %7, %bb.e ]
  ret float %.790
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define noundef i32 @_ZN24dtObstacleAvoidanceQuery18sampleVelocityGridEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  tail call void @_ZN24dtObstacleAvoidanceQuery7prepareEPKfS1_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %5)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %7, i64 28, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load float, ptr %i.b, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %3, ptr %i.e, align 8, !tbaa !43
  %i.f = fcmp ogt float %3, 0.000000e+00
  %i.g = insertelement <2 x float> poison, float %i.c, i64 0
  %i.h = insertelement <2 x float> %i.g, float %3, i64 1
  %i.i = fdiv <2 x float> splat (float 1.000000e+00), %i.h ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  store float %i.j, ptr %i.d, align 4, !tbaa !42
  %i.k = extractelement <2 x float> %i.i, i64 1
  %i.l = select i1 %i.f, float %i.k, float f0x7F7FFFFF
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.l, ptr %i.m, align 4, !tbaa !40
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
  %i.q = load float, ptr %0, align 8, !tbaa !44   ; 3 uses
  %i.r = fmul float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !24
  %i.u = fmul float %i.q, %i.t
  %i.v = fmul float %3, 2.000000e+00
  %i.w = fsub float 1.000000e+00, %i.q
  %i.x = fmul float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !63    ; 2 uses
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
  %i.be = load i8, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = icmp samesign ult i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.d, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noundef i32 @_ZN24dtObstacleAvoidanceQuery22sampleVelocityAdaptiveEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [258 x float], align 16           ; 42 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  tail call void @_ZN24dtObstacleAvoidanceQuery7prepareEPKfS1_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %5)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %7, i64 28, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %3, ptr %i.f, align 8, !tbaa !43
  %i.g = fcmp ogt float %3, 0.000000e+00
  %i.h = insertelement <2 x float> poison, float %i.d, i64 0
  %i.i = insertelement <2 x float> %i.h, float %3, i64 1
  %i.j = fdiv <2 x float> splat (float 1.000000e+00), %i.i ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  store float %i.k, ptr %i.e, align 4, !tbaa !42
  %i.l = extractelement <2 x float> %i.j, i64 1
  %i.m = select i1 %i.g, float %i.l, float f0x7F7FFFFF
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.m, ptr %i.n, align 4, !tbaa !40
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !24
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %_Z13dtNormalize2DPf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %8, align 8, !tbaa !22
  br label %_Z13dtNormalize2DPf.exit

_Z13dtNormalize2DPf.exit:                         ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.s = load i8, ptr %i.r, align 2, !tbaa !65    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = icmp eq i8 %i.q, 0
  %i.x = tail call i8 @llvm.umin.i8(i8 %i.q, i8 32)
  %narrow = select i1 %i.w, i8 1, i8 %i.x         ; 3 uses
  %i.y = icmp eq i8 %i.s, 0
  %i.z = tail call i8 @llvm.umin.i8(i8 %i.s, i8 4)
  %narrow119 = select i1 %i.y, i8 1, i8 %i.z      ; 13 uses
  %i.aa = zext nneg i8 %narrow119 to i32          ; 14 uses
  %i.ab = uitofp nneg i8 %narrow to float
  %i.ac = fdiv nnan float 1.000000e+00, %i.ab
  %i.ad = fmul nnan float %i.ac, f0x40490FDB
  %i.ae = fmul nnan float %i.ad, 2.000000e+00     ; 3 uses
  %i.af = tail call float @cosf(float noundef %i.ae) #10 ; 20 uses
  %i.ag = tail call float @sinf(float noundef %i.ae) #10 ; 12 uses
  %i.ah = load float, ptr %5, align 4, !tbaa !24  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !24 ; 5 uses
  %i.ak = fmul float %i.aj, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ak)
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #10 ; 2 uses
  %i.an = fcmp oeq float %i.am, 0.000000e+00      ; 2 uses
  %i.ao = fdiv float 1.000000e+00, %i.am          ; 2 uses
  %i.ap = fmul nnan float %i.ae, 5.000000e-01     ; 2 uses
  %i.aq = tail call float @cosf(float noundef %i.ap) #10 ; 2 uses
  %i.ar = tail call float @sinf(float noundef %i.ap) #10 ; 2 uses
  %i.as = fneg float %i.ar
  %9 = fmul float %i.ah, %i.ao
  %10 = fmul float %i.aj, %i.ao
  %.sroa.0.0 = select i1 %i.an, float %i.ah, float %9 ; 11 uses
  %.sroa.8.0 = select i1 %i.an, float %i.aj, float %10 ; 11 uses
  %11 = fmul float %.sroa.8.0, %i.as
  %12 = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float %i.aq, float %11) ; 7 uses
  %13 = fmul float %.sroa.8.0, %i.aq
  %14 = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float %i.ar, float %13) ; 7 uses
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !24
  %.not157 = icmp eq i8 %narrow119, 0
  br i1 %.not157, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %_Z13dtNormalize2DPf.exit
  %i.at = zext nneg i8 %narrow to i32             ; 2 uses
  %i.au = uitofp nneg i8 %narrow119 to float      ; 15 uses
  %i.av = add nsw i32 %i.at, -1
  %i.aw = icmp samesign ugt i8 %narrow, 2
  %i.ax = fneg float %i.ag                        ; 9 uses
  %i.ay = and i32 %i.at, 1
  %i.az = icmp eq i32 %i.ay, 0                    ; 2 uses
  br i1 %i.aw, label %.lr.ph.us, label %.lr.ph127.split

.lr.ph.us:                                        ; preds = %.lr.ph127, %bb.e
  %.0109126.us = phi i32 [ %i.cx, %bb.e ], [ 0, %.lr.ph127 ] ; 3 uses
  %.0110125.us = phi i32 [ %.2112.us, %bb.e ], [ 1, %.lr.ph127 ] ; 2 uses
  %i.ba = sub nuw nsw i32 %i.aa, %.0109126.us
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = fdiv float %i.bb, %i.au                 ; 2 uses
  %i.bd = trunc i32 %.0109126.us to i1            ; 2 uses
  %.sroa.speculated198 = select i1 %i.bd, float %12, float %.sroa.0.0
  %i.be = fmul float %i.bc, %.sroa.speculated198  ; 2 uses
  %i.bf = shl nsw i32 %.0110125.us, 1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bg ; 4 uses
  store float %i.be, ptr %i.bh, align 8, !tbaa !24
  %.sroa.speculated189 = select i1 %i.bd, float %14, float %.sroa.8.0
  %i.bi = fmul float %i.bc, %.sroa.speculated189  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !24
  %i.bk = add i32 %.0110125.us, 1
  %i.bl = sext i32 %i.bk to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %i.bm = phi float [ %i.bi, %.lr.ph.us ], [ %i.bw, %bb.c ]
  %i.bn = phi float [ %i.be, %.lr.ph.us ], [ %i.bq, %bb.c ]
  %indvars.iv171 = phi i64 [ %i.bl, %.lr.ph.us ], [ %indvars.iv.next172, %bb.c ] ; 3 uses
  %.0106123.us = phi i32 [ 1, %.lr.ph.us ], [ %i.cj, %bb.c ]
  %.0107122.us = phi ptr [ %i.bh, %.lr.ph.us ], [ %i.cd, %bb.c ] ; 3 uses
  %.0108121.us = phi ptr [ %i.bh, %.lr.ph.us ], [ %i.br, %bb.c ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0108121.us, i64 4
  %i.bp = fmul float %i.ag, %i.bm
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.af, float %i.bp) ; 2 uses
  %.idx206 = shl nsw i64 %indvars.iv171, 3
  %i.br = getelementptr inbounds i8, ptr %i.a, i64 %.idx206 ; 5 uses
  store float %i.bq, ptr %i.br, align 8, !tbaa !24
  %i.bs = load float, ptr %.0108121.us, align 4, !tbaa !24
  %i.bt = fneg float %i.bs
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !24
  %i.bv = fmul float %i.af, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ag, float %i.bv) ; 2 uses
  %i.bx = getelementptr i8, ptr %i.br, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !24
  %i.by = load float, ptr %.0107122.us, align 4, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %.0107122.us, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !24
  %i.cb = fmul float %i.ca, %i.ax
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.by, float %i.af, float %i.cb) ; 2 uses
  %i.cd = getelementptr i8, ptr %i.br, i64 8      ; 3 uses
  store float %i.cc, ptr %i.cd, align 8, !tbaa !24
  %i.ce = load float, ptr %.0107122.us, align 4, !tbaa !24
  %i.cf = load float, ptr %i.bz, align 4, !tbaa !24
  %i.cg = fmul float %i.af, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ag, float %i.cg) ; 3 uses
  %i.ci = getelementptr i8, ptr %i.br, i64 12
  store float %i.ch, ptr %i.ci, align 4, !tbaa !24
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.cj = add nuw nsw i32 %.0106123.us, 2         ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.av
  br i1 %i.ck, label %bb.c, label %._crit_edge.us

bb.d:                                             ; preds = %._crit_edge.us
  %i.cl = trunc nsw i64 %indvars.iv171 to i32
  %i.cm = fmul float %i.ch, %i.ax
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.af, float %i.cm)
  %i.co = shl nsw i32 %i.cy, 1
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [4 x i8], ptr %i.a, i64 %i.cp ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  store float %i.cn, ptr %i.cr, align 8, !tbaa !24
  %i.cs = load float, ptr %i.cd, align 4, !tbaa !24
  %i.ct = fmul float %i.af, %i.ch
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.ag, float %i.ct)
  %i.cv = getelementptr i8, ptr %i.cq, i64 12
  store float %i.cu, ptr %i.cv, align 4, !tbaa !24
  %i.cw = add nsw i32 %i.cl, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.us
  %.2112.us = phi i32 [ %i.cw, %bb.d ], [ %i.cy, %._crit_edge.us ] ; 2 uses
  %i.cx = add nuw nsw i32 %.0109126.us, 1         ; 2 uses
  %exitcond174.not = icmp eq i32 %i.cx, %i.aa
  br i1 %exitcond174.not, label %._crit_edge128, label %.lr.ph.us

._crit_edge.us:                                   ; preds = %bb.c
  %i.cy = trunc nsw i64 %indvars.iv.next172 to i32 ; 2 uses
  br i1 %i.az, label %bb.d, label %bb.e

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %i.az, label %.lr.ph127.split.split.us, label %.lr.ph127.split.split

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split
  %i.cz = uitofp nneg i8 %narrow119 to float
  %i.da = fdiv float %i.cz, %i.au                 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.de = fmul float %i.da, %.sroa.0.0            ; 2 uses
  store float %i.de, ptr %i.db, align 8, !tbaa !24
  %i.df = fmul float %i.da, %.sroa.8.0            ; 2 uses
  store float %i.df, ptr %i.dc, align 4, !tbaa !24
  %i.dg = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.af, i64 1
  %i.dk = fmul <2 x float> %i.dh, %i.dj
  %i.dl = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x float> poison, float %i.af, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.ag, i64 1
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.do, <2 x float> %i.dk)
  store <2 x float> %i.dp, ptr %i.dd, align 8, !tbaa !24
  %exitcond170.not = icmp eq i8 %narrow119, 1
  br i1 %exitcond170.not, label %._crit_edge128, label %.lr.ph127.split.split.us.1

.lr.ph127.split.split.us.1:                       ; preds = %.lr.ph127.split.split.us
  %i.dq = add nsw i32 %i.aa, -1
  %i.dr = uitofp nneg i32 %i.dq to float
  %i.ds = fdiv float %i.dr, %i.au                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dw = fmul float %i.ds, %12                   ; 2 uses
  store float %i.dw, ptr %i.dt, align 8, !tbaa !24
  %i.dx = fmul float %i.ds, %14                   ; 2 uses
  store float %i.dx, ptr %i.du, align 4, !tbaa !24
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.af, i64 1
  %i.ec = fmul <2 x float> %i.dz, %i.eb
  %i.ed = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <2 x float> poison, float %i.af, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ag, i64 1
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eg, <2 x float> %i.ec)
  store <2 x float> %i.eh, ptr %i.dv, align 8, !tbaa !24
  %exitcond170.not.1 = icmp eq i8 %narrow119, 2
  br i1 %exitcond170.not.1, label %._crit_edge128, label %.lr.ph127.split.split.us.2

.lr.ph127.split.split.us.2:                       ; preds = %.lr.ph127.split.split.us.1
  %i.ei = add nsw i32 %i.aa, -2
  %i.ej = uitofp nneg i32 %i.ei to float
  %i.ek = fdiv float %i.ej, %i.au                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.eo = fmul float %i.ek, %.sroa.0.0            ; 2 uses
  store float %i.eo, ptr %i.el, align 8, !tbaa !24
  %i.ep = fmul float %i.ek, %.sroa.8.0            ; 2 uses
  store float %i.ep, ptr %i.em, align 4, !tbaa !24
  %i.eq = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.af, i64 1
  %i.eu = fmul <2 x float> %i.er, %i.et
  %i.ev = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.ag, i64 1
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ey, <2 x float> %i.eu)
  store <2 x float> %i.ez, ptr %i.en, align 8, !tbaa !24
  %exitcond170.not.2 = icmp eq i8 %narrow119, 3
  br i1 %exitcond170.not.2, label %._crit_edge128, label %.lr.ph127.split.split.us.3

.lr.ph127.split.split.us.3:                       ; preds = %.lr.ph127.split.split.us.2
  %i.fa = add nsw i32 %i.aa, -3
  %i.fb = uitofp nneg i32 %i.fa to float
  %i.fc = fdiv float %i.fb, %i.au                 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.fg = fmul float %i.fc, %12                   ; 2 uses
  store float %i.fg, ptr %i.fd, align 8, !tbaa !24
  %i.fh = fmul float %i.fc, %14                   ; 2 uses
  store float %i.fh, ptr %i.fe, align 4, !tbaa !24
  %i.fi = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.af, i64 1
  %i.fm = fmul <2 x float> %i.fj, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x float> poison, float %i.af, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.ag, i64 1
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fq, <2 x float> %i.fm)
  store <2 x float> %i.fr, ptr %i.ff, align 8, !tbaa !24
  %exitcond170.not.3 = icmp eq i8 %narrow119, 4
  br i1 %exitcond170.not.3, label %._crit_edge128, label %.lr.ph127.split.split.us.4

.lr.ph127.split.split.us.4:                       ; preds = %.lr.ph127.split.split.us.3
  %i.fs = add nsw i32 %i.aa, -4
  %i.ft = uitofp nneg i32 %i.fs to float
  %i.fu = fdiv float %i.ft, %i.au                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.fy = fmul float %i.fu, %.sroa.0.0            ; 2 uses
  store float %i.fy, ptr %i.fv, align 8, !tbaa !24
  %i.fz = fmul float %i.fu, %.sroa.8.0            ; 2 uses
  store float %i.fz, ptr %i.fw, align 4, !tbaa !24
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.af, i64 1
  %i.ge = fmul <2 x float> %i.gb, %i.gd
  %i.gf = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = insertelement <2 x float> poison, float %i.af, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %i.ag, i64 1
  %i.gj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gi, <2 x float> %i.ge)
  store <2 x float> %i.gj, ptr %i.fx, align 8, !tbaa !24
  %i.gk = add nuw nsw i32 %i.aa, -5
  %i.gl = uitofp nneg i32 %i.gk to float
  %i.gm = fdiv float %i.gl, %i.au                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.gq = fmul float %i.gm, %12                   ; 2 uses
  store float %i.gq, ptr %i.gn, align 8, !tbaa !24
  %i.gr = fmul float %i.gm, %14                   ; 2 uses
  store float %i.gr, ptr %i.go, align 4, !tbaa !24
  %i.gs = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.af, i64 1
  %i.gw = fmul <2 x float> %i.gt, %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.ag, i64 1
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.ha, <2 x float> %i.gw)
  store <2 x float> %i.hb, ptr %i.gp, align 8, !tbaa !24
  %i.hc = add nuw nsw i32 %i.aa, -6
  %i.hd = uitofp nneg i32 %i.hc to float
  %i.he = fdiv float %i.hd, %i.au                 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.hi = fmul float %i.he, %.sroa.0.0            ; 2 uses
  store float %i.hi, ptr %i.hf, align 8, !tbaa !24
  %i.hj = fmul float %i.he, %.sroa.8.0            ; 2 uses
  store float %i.hj, ptr %i.hg, align 4, !tbaa !24
  %i.hk = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.hn = insertelement <2 x float> %i.hm, float %i.af, i64 1
  %i.ho = fmul <2 x float> %i.hl, %i.hn
  %i.hp = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = insertelement <2 x float> poison, float %i.af, i64 0
  %i.hs = insertelement <2 x float> %i.hr, float %i.ag, i64 1
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hs, <2 x float> %i.ho)
  store <2 x float> %i.ht, ptr %i.hh, align 8, !tbaa !24
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %bb.e, %.lr.ph127.split.split, %.lr.ph127.split.split.1, %.lr.ph127.split.split.2, %.lr.ph127.split.split.3, %.lr.ph127.split.split.4, %.lr.ph127.split.split.us, %.lr.ph127.split.split.us.1, %.lr.ph127.split.split.us.2, %.lr.ph127.split.split.us.3, %.lr.ph127.split.split.us.4, %_Z13dtNormalize2DPf.exit
  %.0110.lcssa = phi i32 [ 1, %_Z13dtNormalize2DPf.exit ], [ 8, %.lr.ph127.split.split.4 ], [ 15, %.lr.ph127.split.split.us.4 ], [ 3, %.lr.ph127.split.split.us ], [ 5, %.lr.ph127.split.split.us.1 ], [ 7, %.lr.ph127.split.split.us.2 ], [ 9, %.lr.ph127.split.split.us.3 ], [ 2, %.lr.ph127.split.split ], [ 3, %.lr.ph127.split.split.1 ], [ 4, %.lr.ph127.split.split.2 ], [ 5, %.lr.ph127.split.split.3 ], [ %.2112.us, %bb.e ] ; 2 uses
  %i.hu = load float, ptr %0, align 8, !tbaa !44  ; 2 uses
  %15 = insertelement <2 x float> poison, float %i.ah, i64 0
  %16 = insertelement <2 x float> %15, float %i.aj, i64 1
  %i.hv = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %16, %i.hw             ; 2 uses
  %.not158 = icmp eq i8 %i.u, 0
  br i1 %.not158, label %._crit_edge147, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge128
  %i.hy = icmp sgt i32 %.0110.lcssa, 0
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ib = fadd float %3, 1.000000e-03             ; 2 uses
  %i.ic = fmul float %i.ib, %i.ib
  br i1 %i.hy, label %.preheader.us.preheader, label %._crit_edge147

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.id = fsub float 1.000000e+00, %i.hu
  %i.ie = fmul float %3, %i.id
  %wide.trip.count = zext nneg i32 %.0110.lcssa to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us152
  %.0101146.us = phi i32 [ %i.ix, %._crit_edge.us152 ], [ 0, %.preheader.us.preheader ]
  %.0102145.us = phi i32 [ %.2104.us, %._crit_edge.us152 ], [ 0, %.preheader.us.preheader ]
  %.0105144.us = phi float [ %i.iw, %._crit_edge.us152 ], [ %i.ie, %.preheader.us.preheader ] ; 3 uses
  %i.if = phi <2 x float> [ %i.iv, %._crit_edge.us152 ], [ %i.hx, %.preheader.us.preheader ]
  %i.ig = fdiv float %.0105144.us, 1.000000e+01
  %i.ih = insertelement <2 x float> poison, float %.0105144.us, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv175 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next176, %bb.i ] ; 2 uses
  %.0100138.us = phi float [ f0x7F7FFFFF, %.preheader.us ], [ %.2.us, %bb.i ] ; 4 uses
  %.1103137.us = phi i32 [ %.0102145.us, %.preheader.us ], [ %.2104.us, %bb.i ] ; 2 uses
  %i.ij = phi <2 x float> [ zeroinitializer, %.preheader.us ], [ %i.iv, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %.idx207 = shl nuw nsw i64 %indvars.iv175, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx207
  store float 0.000000e+00, ptr %i.hz, align 4, !tbaa !24
  %i.il = load <2 x float>, ptr %i.ik, align 8, !tbaa !24
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.ii, <2 x float> %i.if) ; 5 uses
  %i.in = extractelement <2 x float> %i.im, i64 0
  store float %i.in, ptr %i.b, align 4, !tbaa !24
  %i.io = extractelement <2 x float> %i.im, i64 1
  store float %i.io, ptr %i.ia, align 4, !tbaa !24
  %i.ip = fmul <2 x float> %i.im, %i.im
  %i.iq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ip)
  %i.ir = fcmp ogt float %i.iq, %i.ic
  br i1 %i.ir, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.is = call noundef float @_ZN24dtObstacleAvoidanceQuery13processSampleEPKffS1_fS1_S1_fP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.b, float noundef %i.ig, ptr noundef %1, float noundef %2, ptr noundef %4, ptr noundef nonnull %5, float noundef %.0100138.us, ptr noundef %8) ; 2 uses
  %i.it = add nsw i32 %.1103137.us, 1             ; 2 uses
  %i.iu = fcmp olt float %i.is, %.0100138.us
  br i1 %i.iu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.2104.us = phi i32 [ %.1103137.us, %bb.f ], [ %i.it, %bb.h ], [ %i.it, %bb.g ] ; 3 uses
  %.2.us = phi float [ %.0100138.us, %bb.f ], [ %i.is, %bb.h ], [ %.0100138.us, %bb.g ]
  %i.iv = phi <2 x float> [ %i.ij, %bb.f ], [ %i.im, %bb.h ], [ %i.ij, %bb.g ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count
  br i1 %exitcond178.not, label %._crit_edge.us152, label %bb.f

._crit_edge.us152:                                ; preds = %bb.i
  %i.iw = fmul float %.0105144.us, 5.000000e-01
  %i.ix = add nuw nsw i32 %.0101146.us, 1         ; 2 uses
  %exitcond179.not = icmp eq i32 %i.ix, %i.v
  br i1 %exitcond179.not, label %._crit_edge147, label %.preheader.us

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split
  %i.iy = uitofp nneg i8 %narrow119 to float
  %i.iz = fdiv float %i.iy, %i.au                 ; 2 uses
  %17 = fmul float %i.iz, %.sroa.0.0
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %17, ptr %i.ja, align 8, !tbaa !24
  %18 = fmul float %i.iz, %.sroa.8.0
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %18, ptr %19, align 4, !tbaa !24
  %exitcond.not = icmp eq i8 %narrow119, 1
  br i1 %exitcond.not, label %._crit_edge128, label %.lr.ph127.split.split.1

.lr.ph127.split.split.1:                          ; preds = %.lr.ph127.split.split
  %i.jb = add nsw i32 %i.aa, -1
  %i.jc = uitofp nneg i32 %i.jb to float
  %i.jd = fdiv float %i.jc, %i.au                 ; 2 uses
  %20 = fmul float %i.jd, %12
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float %20, ptr %i.je, align 16, !tbaa !24
  %21 = fmul float %i.jd, %14
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %21, ptr %22, align 4, !tbaa !24
  %exitcond.not.1 = icmp eq i8 %narrow119, 2
  br i1 %exitcond.not.1, label %._crit_edge128, label %.lr.ph127.split.split.2

.lr.ph127.split.split.2:                          ; preds = %.lr.ph127.split.split.1
  %i.jf = add nsw i32 %i.aa, -2
  %i.jg = uitofp nneg i32 %i.jf to float
  %i.jh = fdiv float %i.jg, %i.au                 ; 2 uses
  %23 = fmul float %i.jh, %.sroa.0.0
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %23, ptr %i.ji, align 8, !tbaa !24
  %24 = fmul float %i.jh, %.sroa.8.0
  %25 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float %24, ptr %25, align 4, !tbaa !24
  %exitcond.not.2 = icmp eq i8 %narrow119, 3
  br i1 %exitcond.not.2, label %._crit_edge128, label %.lr.ph127.split.split.3

.lr.ph127.split.split.3:                          ; preds = %.lr.ph127.split.split.2
  %i.jj = add nsw i32 %i.aa, -3
  %i.jk = uitofp nneg i32 %i.jj to float
  %i.jl = fdiv float %i.jk, %i.au                 ; 2 uses
  %26 = fmul float %i.jl, %12
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %26, ptr %i.jm, align 16, !tbaa !24
  %27 = fmul float %i.jl, %14
  %28 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store float %27, ptr %28, align 4, !tbaa !24
  %exitcond.not.3 = icmp eq i8 %narrow119, 4
  br i1 %exitcond.not.3, label %._crit_edge128, label %.lr.ph127.split.split.4

.lr.ph127.split.split.4:                          ; preds = %.lr.ph127.split.split.3
  %i.jn = add nsw i32 %i.aa, -4
  %i.jo = uitofp nneg i32 %i.jn to float
  %i.jp = fdiv float %i.jo, %i.au                 ; 2 uses
  %29 = fmul float %i.jp, %.sroa.0.0
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %29, ptr %i.jq, align 8, !tbaa !24
  %30 = fmul float %i.jp, %.sroa.8.0
  %31 = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %30, ptr %31, align 4, !tbaa !24
  %i.jr = add nuw nsw i32 %i.aa, -5
  %i.js = uitofp nneg i32 %i.jr to float
  %i.jt = fdiv float %i.js, %i.au                 ; 2 uses
  %32 = fmul float %i.jt, %12
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float %32, ptr %i.ju, align 16, !tbaa !24
  %33 = fmul float %i.jt, %14
  %34 = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store float %33, ptr %34, align 4, !tbaa !24
  %i.jv = add nuw nsw i32 %i.aa, -6
  %i.jw = uitofp nneg i32 %i.jv to float
  %i.jx = fdiv float %i.jw, %i.au                 ; 2 uses
  %35 = fmul float %i.jx, %.sroa.0.0
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store float %35, ptr %i.jy, align 8, !tbaa !24
  %36 = fmul float %i.jx, %.sroa.8.0
  %37 = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store float %36, ptr %37, align 4, !tbaa !24
  br label %._crit_edge128

._crit_edge147:                                   ; preds = %._crit_edge.us152, %.preheader.lr.ph, %._crit_edge128
  %.0102.lcssa = phi i32 [ 0, %._crit_edge128 ], [ 0, %.preheader.lr.ph ], [ %.2104.us, %._crit_edge.us152 ]
  %i.jz = phi <2 x float> [ %i.hx, %._crit_edge128 ], [ zeroinitializer, %.preheader.lr.ph ], [ %i.iv, %._crit_edge.us152 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.kb = extractelement <2 x float> %i.jz, i64 0
  store float %i.kb, ptr %6, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.ka, align 4, !tbaa !24
  %i.kc = extractelement <2 x float> %i.jz, i64 1
  store float %i.kc, ptr %i.o, align 4, !tbaa !24
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
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"_ZTS28dtObstacleAvoidanceDebugData", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!14 = !{!13, !12, i64 8}
!15 = !{!13, !12, i64 16}
!16 = !{!13, !12, i64 24}
!17 = !{!13, !12, i64 32}
!18 = !{!13, !12, i64 40}
!19 = !{!13, !12, i64 48}
!20 = !{!13, !12, i64 56}
!21 = !{!13, !8, i64 4}
!22 = !{!13, !8, i64 0}
!23 = !{!"float", !7, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"_ZTS25dtObstacleAvoidanceParams", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27}
!26 = !{!"p1 _ZTS16dtObstacleCircle", !11, i64 0}
!27 = !{!"p1 _ZTS17dtObstacleSegment", !11, i64 0}
!28 = !{!"_ZTS24dtObstacleAvoidanceQuery", !25, i64 0, !23, i64 28, !23, i64 32, !23, i64 36, !8, i64 40, !26, i64 48, !8, i64 56, !8, i64 60, !27, i64 64, !8, i64 72}
!29 = !{!28, !26, i64 48}
!30 = !{!28, !27, i64 64}
!31 = !{!28, !8, i64 40}
!32 = !{!28, !8, i64 56}
!33 = !{!28, !8, i64 60}
!34 = !{!28, !8, i64 72}
!35 = !{!"_ZTS16dtObstacleCircle", !7, i64 0, !7, i64 12, !7, i64 24, !23, i64 36, !7, i64 40, !7, i64 52}
!36 = !{!35, !23, i64 36}
!37 = !{!"bool", !7, i64 0}
!38 = !{!"_ZTS17dtObstacleSegment", !7, i64 0, !7, i64 12, !37, i64 24}
!39 = !{!38, !37, i64 24}
!40 = !{!28, !23, i64 36}
!41 = !{!28, !23, i64 20}
!42 = !{!28, !23, i64 28}
!43 = !{!28, !23, i64 32}
!44 = !{!28, !23, i64 0}
!45 = distinct !{!45, !55, !56}
!46 = distinct !{!46, !56, !55}
!47 = distinct !{!47, !55, !56}
!48 = distinct !{!48, !56, !55}
!49 = distinct !{!49, !55, !56}
!50 = distinct !{!50, !56, !55}
!51 = distinct !{!51, !55, !56}
!52 = distinct !{!52, !56, !55}
!53 = distinct !{!53, !55, !56}
!54 = distinct !{!54, !56, !55}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!28, !23, i64 4}
!58 = !{!28, !23, i64 8}
!59 = !{!28, !23, i64 16}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!28, !23, i64 12}
!63 = !{!28, !7, i64 24}
!64 = !{!28, !7, i64 25}
!65 = !{!28, !7, i64 26}
!66 = !{!28, !7, i64 27}
end_hunk_0
