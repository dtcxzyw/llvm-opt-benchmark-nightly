Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 186
begin_hunk_0_@cgltf_free:bb.a
  %i.ajw = load i64, ptr %i.aiv, align 8
  %i.ajx = icmp ult i64 %i.ajv, %i.ajw
  br i1 %i.ajx, label %bb.z, label %._crit_edge840

bb.aa:                                            ; preds = %bb.a, %._crit_edge840
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @cgltf_node_transform_local(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load float, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load float, ptr %i.k, align 8            ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.n = load float, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load float, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.r = load float, ptr %i.q, align 4
  %i.s = fmul float %i.h, 2.000000e+00            ; 4 uses
  %i.t = load <2 x float>, ptr %i.i, align 8      ; 4 uses
  %i.u = load float, ptr %i.j, align 4            ; 4 uses
  %i.v = extractelement <2 x float> %i.t, i64 0
  %i.w = fmul float %i.v, 2.000000e+00            ; 4 uses
  %i.x = fneg float %i.w                          ; 2 uses
  %i.y = fmul float %i.u, 2.000000e+00            ; 2 uses
  %i.z = fneg float %i.y                          ; 2 uses
  %i.aa = fmul float %i.y, %i.l                   ; 2 uses
  %i.ab = fmul float %i.w, %i.l                   ; 2 uses
  %i.ac = fneg float %i.ab
  %i.ad = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.z, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.s, i64 1
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ag = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.ah = insertelement <4 x float> %i.ag, float -0.000000e+00, i64 3
  %i.ai = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.n, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ak = fneg float %i.aa
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = fneg float %i.s
  %i.an = fmul float %i.s, %i.l                   ; 2 uses
  %i.ao = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.p, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = fneg float %i.an
  %i.as = insertelement <2 x float> poison, float %i.z, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.w, i64 1
  %i.au = insertelement <2 x float> poison, float %i.u, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.x, i64 1
  %i.ay = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x float> %i.ay, float %i.u, i64 0
  %i.ba = insertelement <4 x float> poison, float %i.x, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.s, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.am, i64 2
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.be = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bf = insertelement <4 x float> %i.be, float %i.h, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.u, i64 3
  %i.bh = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, float %i.ak, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.ab, i64 3
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.bg, <4 x float> %i.bi) ; 4 uses
  %i.bk = insertelement <4 x float> %i.bj, float 1.000000e+00, i64 3
  %i.bl = insertelement <4 x float> %i.bk, float %i.aa, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.ac, i64 2
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ah, <4 x float> %i.bm)
  %i.bo = fmul <4 x float> %i.aj, %i.bn
  %i.bp = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bj, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bq = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.br = insertelement <2 x float> %i.bq, float %i.an, i64 1
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.av, <2 x float> %i.br)
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bp, <4 x float> %i.bt, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bv = fmul <4 x float> %i.ap, %i.bu
  %i.bw = insertelement <2 x float> %i.bq, float %i.ar, i64 0
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.bw)
  %i.by = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ca = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bj, <4 x i32> <i32 7, i32 poison, i32 poison, i32 3>
  %i.cb = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cd = fmul <4 x float> %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cf = load <2 x float>, ptr %i.d, align 8
  store <4 x float> %i.bo, ptr %1, align 4
  store <4 x float> %i.bv, ptr %i.al, align 4
  store <4 x float> %i.cd, ptr %i.aq, align 4
  %i.cg = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.f, i64 2
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ci, ptr %i.ce, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @cgltf_node_transform_world(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 64)) %1) local_unnamed_addr #20 {
bb.a:
  tail call void @cgltf_node_transform_local(ptr noundef %0, ptr noundef %1)
  %.0.in37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.038 = load ptr, ptr %.0.in37, align 8         ; 2 uses
  %.not39 = icmp eq ptr %.038, null
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.promoted43 = load float, ptr %i.d, align 4
  %.promoted46 = load float, ptr %i.g, align 4
  %.promoted49 = load float, ptr %i.j, align 4
  %.promoted42 = load float, ptr %i.c, align 4
  %.promoted = load float, ptr %1, align 4
  %.promoted45 = load float, ptr %i.f, align 4
  %.promoted44 = load float, ptr %i.e, align 4
  %.promoted48 = load float, ptr %i.i, align 4
  %.promoted47 = load float, ptr %i.h, align 4
  %.promoted51 = load float, ptr %i.k, align 4
  %.promoted50 = load float, ptr %i.a, align 4
  %.promoted52 = load float, ptr %i.l, align 4
  %i.m = insertelement <2 x float> poison, float %.promoted43, i64 0
  %i.n = insertelement <2 x float> %i.m, float %.promoted46, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %cgltf_node_transform_local.exit
  %i.o = phi float [ %.promoted52, %.lr.ph ], [ %i.ep, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.p = phi float [ %.promoted51, %.lr.ph ], [ %i.ex, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.q = phi float [ %.promoted50, %.lr.ph ], [ %i.ew, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.r = phi float [ %.promoted49, %.lr.ph ], [ %i.eg, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.s = phi float [ %.promoted48, %.lr.ph ], [ %i.ev, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.t = phi float [ %.promoted47, %.lr.ph ], [ %i.eu, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.u = phi float [ %.promoted45, %.lr.ph ], [ %i.et, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.v = phi float [ %.promoted44, %.lr.ph ], [ %i.es, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.w = phi float [ %.promoted42, %.lr.ph ], [ %i.er, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.x = phi float [ %.promoted, %.lr.ph ], [ %i.eq, %cgltf_node_transform_local.exit ] ; 2 uses
  %.040 = phi ptr [ %.038, %.lr.ph ], [ %.0, %cgltf_node_transform_local.exit ] ; 19 uses
  %i.y = phi <2 x float> [ %i.n, %.lr.ph ], [ %i.ec, %cgltf_node_transform_local.exit ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.040, i64 92
  %i.aa = load i32, ptr %i.z, align 4
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.040, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 144
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 152
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 160
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 168
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 176
  %i.ac = load <2 x float>, ptr %i.ab, align 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ad = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 8
  %i.ae = load <2 x float>, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.21.0.copyload = load float, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 184
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 188
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 192
  %i.af = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.14.0.copyload, i64 1
  br label %cgltf_node_transform_local.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.040, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %.040, i64 100
  %i.aj = getelementptr inbounds nuw i8, ptr %.040, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %.040, i64 108
  %i.al = getelementptr inbounds nuw i8, ptr %.040, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %.040, i64 120
  %i.an = load float, ptr %i.am, align 4          ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.040, i64 124
  %i.ap = getelementptr inbounds nuw i8, ptr %.040, i64 132
  %i.aq = load <2 x float>, ptr %i.ak, align 4    ; 3 uses
  %i.ar = load <2 x float>, ptr %i.al, align 4    ; 4 uses
  %i.as = load float, ptr %i.ap, align 4          ; 2 uses
  %i.at = fmul <2 x float> %i.aq, splat (float 2.000000e+00) ; 5 uses
  %i.au = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.av = fneg float %i.au                        ; 2 uses
  %2 = extractelement <2 x float> %i.aq, i64 1    ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %2, float 1.000000e+00)
  %i.ax = extractelement <2 x float> %i.ar, i64 1
  %i.ay = fmul float %i.ax, 2.000000e+00          ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.ay, %i.an                 ; 2 uses
  %i.bb = fmul float %i.au, %i.an                 ; 2 uses
  %i.bc = insertelement <2 x float> %i.at, float %i.az, i64 1 ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.aw, i64 1
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ar, <2 x float> %i.be)
  %i.bg = fneg float %i.bb
  %i.bh = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.bi = fneg float %i.ba
  %3 = fneg float %i.bh
  %4 = extractelement <2 x float> %i.aq, i64 0
  %5 = tail call float @llvm.fmuladd.f32(float %3, float %4, float 1.000000e+00) ; 2 uses
  %6 = fmul float %i.bh, %i.an                    ; 2 uses
  %7 = insertelement <2 x float> poison, float %i.bi, i64 0
  %8 = insertelement <2 x float> %7, float %5, i64 1
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ar, <2 x float> %8)
  %i.bk = load <2 x float>, ptr %i.ao, align 4    ; 3 uses
  %i.bl = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %6, i64 1
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.bo, <2 x float> %i.bq)
  %i.bs = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.bj, %i.bs
  %i.bu = fmul <2 x float> %i.br, %i.bk
  %i.bv = fneg float %6
  %i.bw = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bv, i64 1
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.bo, <2 x float> %i.bx)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.av, float %2, float %5)
  %i.ca = insertelement <2 x float> poison, float %i.as, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.by, %i.cb
  %i.cd = fmul float %i.bz, %i.as
  br label %cgltf_node_transform_local.exit

cgltf_node_transform_local.exit:                  ; preds = %bb.c, %bb.d
  %.sroa.28.0.in = phi ptr [ %i.aj, %bb.d ], [ %.sroa.28.0..sroa_idx, %bb.c ]
  %.sroa.26.0.in = phi ptr [ %i.ai, %bb.d ], [ %.sroa.26.0..sroa_idx, %bb.c ]
  %.sroa.24.0.in = phi ptr [ %i.ah, %bb.d ], [ %.sroa.24.0..sroa_idx, %bb.c ]
  %.sroa.21.0 = phi float [ %i.cd, %bb.d ], [ %.sroa.21.0.copyload, %bb.c ] ; 3 uses
  %i.ce = phi <2 x float> [ %i.cc, %bb.d ], [ %i.ae, %bb.c ] ; 4 uses
  %i.cf = phi <2 x float> [ %i.bn, %bb.d ], [ %i.ac, %bb.c ] ; 4 uses
  %i.cg = phi <2 x float> [ %i.bt, %bb.d ], [ %i.ad, %bb.c ] ; 4 uses
  %i.ch = phi <2 x float> [ %i.bu, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %.sroa.24.0 = load float, ptr %.sroa.24.0.in, align 8
  %.sroa.26.0 = load float, ptr %.sroa.26.0.in, align 4
  %.sroa.28.0 = load float, ptr %.sroa.28.0.in, align 8
  %i.ci = insertelement <2 x float> poison, float %i.w, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cg, %i.cj
  %i.cl = insertelement <2 x float> poison, float %i.x, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cf, <2 x float> %i.ck)
  %i.co = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.ce, <2 x float> %i.cn) ; 3 uses
  store <2 x float> %i.cp, ptr %1, align 4
  %i.cq = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cg, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.v, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cf, <2 x float> %i.cs)
  %i.cw = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ce, <2 x float> %i.cv) ; 3 uses
  store <2 x float> %i.cx, ptr %i.e, align 4
  %i.cy = insertelement <2 x float> poison, float %i.s, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cg, %i.cz
  %i.db = insertelement <2 x float> poison, float %i.t, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.cf, <2 x float> %i.da)
  %i.de = insertelement <2 x float> poison, float %i.r, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.ce, <2 x float> %i.dd) ; 3 uses
  store <2 x float> %i.dg, ptr %i.h, align 4
  %i.dh = insertelement <2 x float> poison, float %i.p, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cg, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.q, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cf, <2 x float> %i.dj)
  %i.dn = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.do = insertelement <4 x float> poison, float %i.w, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %i.u, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.s, i64 2
  %i.dr = insertelement <4 x float> %i.dq, float %i.p, i64 3
  %i.ds = fmul <4 x float> %i.dn, %i.dr
  %i.dt = insertelement <4 x float> poison, float %i.x, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %i.v, i64 1
  %i.dv = insertelement <4 x float> %i.du, float %i.t, i64 2
  %i.dw = insertelement <4 x float> %i.dv, float %i.q, i64 3
  %i.dx = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.dx, <4 x float> %i.ds) ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %.sroa.21.0, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.ea, <2 x float> %i.eb) ; 3 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  store float %i.ed, ptr %i.d, align 4
  %i.ee = extractelement <2 x float> %i.ec, i64 1
  store float %i.ee, ptr %i.g, align 4
  %i.ef = extractelement <4 x float> %i.dy, i64 2
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.r, float %.sroa.21.0, float %i.ef) ; 2 uses
  store float %i.eg, ptr %i.j, align 4
  %i.eh = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ce, <2 x float> %i.dm)
  %i.ek = extractelement <4 x float> %i.dy, i64 3
  %i.el = tail call float @llvm.fmuladd.f32(float %i.o, float %.sroa.21.0, float %i.ek)
  %i.em = insertelement <2 x float> poison, float %.sroa.24.0, i64 0
  %i.en = insertelement <2 x float> %i.em, float %.sroa.26.0, i64 1
  %i.eo = fadd <2 x float> %i.en, %i.ej           ; 3 uses
  %i.ep = fadd float %.sroa.28.0, %i.el           ; 2 uses
  store <2 x float> %i.eo, ptr %i.a, align 4
  store float %i.ep, ptr %i.b, align 4
  %.0.in = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  %i.eq = extractelement <2 x float> %i.cp, i64 0
  %i.er = extractelement <2 x float> %i.cp, i64 1
  %i.es = extractelement <2 x float> %i.cx, i64 0
  %i.et = extractelement <2 x float> %i.cx, i64 1
  %i.eu = extractelement <2 x float> %i.dg, i64 0
  %i.ev = extractelement <2 x float> %i.dg, i64 1
  %i.ew = extractelement <2 x float> %i.eo, i64 0
  %i.ex = extractelement <2 x float> %i.eo, i64 1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %cgltf_node_transform_local.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @cgltf_buffer_view_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @cgltf_find_accessor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01221 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.01221 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %2
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = add nuw i64 %.01221, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.b
  br i1 %exitcond.not, label %.loopexit, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.e
  %i.o = phi ptr [ %i.n, %bb.e ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %i.o
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @cgltf_accessor_read_float(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull %0, i64 noundef %1) ; 2 uses
  %.not30.not = icmp eq ptr %i.c, null
  br i1 %.not30.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call fastcc i32 @cgltf_element_read_float(ptr noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, ptr noundef %2, i64 noundef %3)
  br label %cgltf_buffer_view_data.exit.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e
end_hunk_0
begin_hunk_1_@_m3dstbi_zlib_decode_malloc_guesssize_headerflag:bb.a
  %i.aad = and i32 %i.zz, 511
  br label %bb.di

bb.de:                                            ; preds = %_m3dstbi__fill_bits.exit.i93.i.i.i
  %trunc.i.i.i.i96.i.i.i = trunc i32 %i.zu to i16
  %rev.i.i.i.i97.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i96.i.i.i)
  %i.aae = zext i16 %rev.i.i.i.i97.i.i.i to i32   ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %bb.de
  %indvars.iv.i.i98.i.i.i = phi i64 [ %indvars.iv.next.i.i99.i.i.i, %bb.df ], [ 10, %bb.de ] ; 6 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.i98.i.i.i
  %i.aag = load i32, ptr %i.aaf, align 4
  %i.aah = icmp sgt i32 %i.aag, %i.aae
  %indvars.iv.next.i.i99.i.i.i = add nuw nsw i64 %indvars.iv.i.i98.i.i.i, 1
  br i1 %i.aah, label %bb.dg, label %bb.df

bb.dg:                                            ; preds = %bb.df
  %i.aai = icmp eq i64 %indvars.iv.i.i98.i.i.i, 16
  br i1 %i.aai, label %.loopexit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aaj = trunc nuw nsw i64 %indvars.iv.i.i98.i.i.i to i32 ; 3 uses
  %i.aak = sub nsw i32 16, %i.aaj
  %i.aal = lshr i32 %i.aae, %i.aak
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i98.i.i.i
  %i.aan = load i16, ptr %i.aam, align 2
  %i.aao = zext i16 %i.aan to i32
  %i.aap = sub nsw i32 %i.aal, %i.aao
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.i.i98.i.i.i
  %i.aar = load i16, ptr %i.aaq, align 2
  %i.aas = zext i16 %i.aar to i32
  %i.aat = add nsw i32 %i.aap, %i.aas
  %i.aau = lshr i32 %i.zu, %i.aaj                 ; 2 uses
  store i32 %i.aau, ptr %i.ab, align 4
  %i.aav = sub nsw i32 %i.zt, %i.aaj              ; 2 uses
  store i32 %i.aav, ptr %i.aa, align 8
  %i.aaw = sext i32 %i.aat to i64
  %i.aax = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.aaw
  %i.aay = load i16, ptr %i.aax, align 2
  %i.aaz = zext i16 %i.aay to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dd
  %.promoted6.i.i112.i.i.i = phi i32 [ %i.aau, %bb.dh ], [ %i.aab, %bb.dd ] ; 2 uses
  %i.aba = phi i32 [ %i.aav, %bb.dh ], [ %i.aac, %bb.dd ] ; 3 uses
  %.0.i95.ph.i.i.i = phi i32 [ %i.aaz, %bb.dh ], [ %i.aad, %bb.dd ] ; 2 uses
  %i.abb = zext nneg i32 %.0.i95.ph.i.i.i to i64  ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr @_m3dstbi__zdist_base, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4          ; 2 uses
  %i.abe = add nsw i32 %.0.i95.ph.i.i.i, -30
  %.not71.i.i.i = icmp ult i32 %i.abe, -26
  br i1 %.not71.i.i.i, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @_m3dstbi__zdist_extra, i64 %i.abb
  %i.abg = load i32, ptr %i.abf, align 4          ; 4 uses
  %i.abh = icmp slt i32 %i.aba, %i.abg
  br i1 %i.abh, label %bb.dk, label %_m3dstbi__zreceive.exit116.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.abi = load ptr, ptr %i.i, align 8
  %.promoted.i.i111.i.i.i = load ptr, ptr %6, align 8
  br label %bb.dl

bb.dl:                                            ; preds = %_m3dstbi__zget8.exit.i.i114.i.i.i, %bb.dk
  %i.abj = phi i32 [ %i.abr, %_m3dstbi__zget8.exit.i.i114.i.i.i ], [ %.promoted6.i.i112.i.i.i, %bb.dk ]
  %i.abk = phi i32 [ %i.abs, %_m3dstbi__zget8.exit.i.i114.i.i.i ], [ %i.aba, %bb.dk ] ; 3 uses
  %i.abl = phi ptr [ %i.abp, %_m3dstbi__zget8.exit.i.i114.i.i.i ], [ %.promoted.i.i111.i.i.i, %bb.dk ] ; 4 uses
  %.not.i.i.i113.i.i.i = icmp ult ptr %i.abl, %i.abi
  br i1 %.not.i.i.i113.i.i.i, label %bb.dm, label %_m3dstbi__zget8.exit.i.i114.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 1 ; 2 uses
  store ptr %i.abm, ptr %6, align 8
  %i.abn = load i8, ptr %i.abl, align 1
  %i.abo = zext i8 %i.abn to i32
  br label %_m3dstbi__zget8.exit.i.i114.i.i.i

_m3dstbi__zget8.exit.i.i114.i.i.i:                ; preds = %bb.dm, %bb.dl
  %i.abp = phi ptr [ %i.abm, %bb.dm ], [ %i.abl, %bb.dl ]
  %.0.i.i.i115.i.i.i = phi i32 [ %i.abo, %bb.dm ], [ 0, %bb.dl ]
  %i.abq = shl i32 %.0.i.i.i115.i.i.i, %i.abk
  %i.abr = or i32 %i.abq, %i.abj                  ; 3 uses
  store i32 %i.abr, ptr %i.ab, align 4
  %i.abs = add nsw i32 %i.abk, 8                  ; 3 uses
  store i32 %i.abs, ptr %i.aa, align 8
  %i.abt = icmp slt i32 %i.abk, 17
  br i1 %i.abt, label %bb.dl, label %_m3dstbi__zreceive.exit116.i.i.i

_m3dstbi__zreceive.exit116.i.i.i:                 ; preds = %_m3dstbi__zget8.exit.i.i114.i.i.i, %bb.dj
  %i.abu = phi i32 [ %i.aba, %bb.dj ], [ %i.abs, %_m3dstbi__zget8.exit.i.i114.i.i.i ]
  %i.abv = phi i32 [ %.promoted6.i.i112.i.i.i, %bb.dj ], [ %i.abr, %_m3dstbi__zget8.exit.i.i114.i.i.i ] ; 2 uses
  %notmask.i110.i.i.i = shl nsw i32 -1, %i.abg
  %i.abw = xor i32 %notmask.i110.i.i.i, -1
  %i.abx = and i32 %i.abv, %i.abw
  %i.aby = lshr i32 %i.abv, %i.abg
  store i32 %i.aby, ptr %i.ab, align 4
  %i.abz = sub nsw i32 %i.abu, %i.abg
  store i32 %i.abz, ptr %i.aa, align 8
  %i.aca = add i32 %i.abx, %i.abd
  br label %bb.dn

bb.dn:                                            ; preds = %_m3dstbi__zreceive.exit116.i.i.i, %bb.di
  %.0.i64.i.i = phi i32 [ %i.aca, %_m3dstbi__zreceive.exit116.i.i.i ], [ %i.abd, %bb.di ] ; 2 uses
  %i.acb = load ptr, ptr %i.j, align 8            ; 2 uses
  %i.acc = ptrtoint ptr %.058.i.i.i to i64
  %i.acd = ptrtoint ptr %i.acb to i64             ; 2 uses
  %i.ace = sub i64 %i.acc, %i.acd                 ; 3 uses
  %i.acf = sext i32 %.0.i64.i.i to i64            ; 3 uses
  %i.acg = icmp slt i64 %i.ace, %i.acf
  br i1 %i.acg, label %.loopexit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ach = sext i32 %.054.i.i.i to i64
  %i.aci = getelementptr inbounds i8, ptr %.058.i.i.i, i64 %i.ach
  %i.acj = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.ack = icmp ugt ptr %i.aci, %i.acj
  br i1 %i.ack, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.acl = load i32, ptr %i.n, align 8
  %.not.i117.i.i.i = icmp eq i32 %i.acl, 0
  br i1 %.not.i117.i.i.i, label %.loopexit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acm = trunc i64 %i.ace to i32
  %i.acn = ptrtoint ptr %i.acj to i64
  %i.aco = sub i64 %i.acn, %i.acd
  %i.acp = trunc i64 %i.aco to i32
  %i.acq = add nsw i32 %.054.i.i.i, %i.acm
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %.0.i118.i.i.i = phi i32 [ %i.acp, %bb.dq ], [ %i.acs, %bb.dr ] ; 3 uses
  %i.acr = icmp sgt i32 %i.acq, %.0.i118.i.i.i
  %i.acs = shl nsw i32 %.0.i118.i.i.i, 1
  br i1 %i.acr, label %bb.dr, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.act = sext i32 %.0.i118.i.i.i to i64         ; 2 uses
  %i.acu = tail call ptr @realloc(ptr noundef %i.acb, i64 noundef %i.act) #52 ; 4 uses
  %i.acv = icmp eq ptr %i.acu, null
  br i1 %i.acv, label %.loopexit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store ptr %i.acu, ptr %i.j, align 8
  %sext.i119.i.i.i = shl i64 %i.ace, 32
  %i.acw = ashr exact i64 %sext.i119.i.i.i, 32
  %i.acx = getelementptr inbounds i8, ptr %i.acu, i64 %i.acw ; 2 uses
  store ptr %i.acx, ptr %i.k, align 8
  %i.acy = getelementptr inbounds i8, ptr %i.acu, i64 %i.act
  store ptr %i.acy, ptr %i.m, align 8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.do
  %.260.i.i.i = phi ptr [ %i.acx, %bb.dt ], [ %.058.i.i.i, %bb.do ] ; 10 uses
  %i.acz = sub nsw i64 0, %i.acf
  %i.ada = getelementptr inbounds i8, ptr %.260.i.i.i, i64 %i.acz ; 6 uses
  %i.adb = icmp eq i32 %.0.i64.i.i, 1
  %.not75.i.i.i = icmp eq i32 %.054.i.i.i, 0      ; 2 uses
  br i1 %i.adb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  br i1 %.not75.i.i.i, label %.loopexit.i.i.i.backedge, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.dv
  %i.adc = load i8, ptr %i.ada, align 1
  %i.add = zext i32 %.054.i.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.260.i.i.i, i8 %i.adc, i64 %i.add, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %.260.i.i.i, i64 1
  %i.ade = add i32 %.054.i.i.i, -1
  %i.adf = zext i32 %i.ade to i64
  %scevgep173.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.adf
  br label %.loopexit.i.i.i.backedge

bb.dw:                                            ; preds = %bb.du
  br i1 %.not75.i.i.i, label %.loopexit.i.i.i.backedge, label %iter.check

iter.check:                                       ; preds = %bb.dw
  %i.adg = zext i32 %.054.i.i.i to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %.054.i.i.i, 4
  %i.adh = add nsw i64 %i.acf, -1
  %diff.check = icmp ult i64 %i.adh, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader138.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check293 = icmp ult i32 %.054.i.i.i, 32
  br i1 %min.iters.check293, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.adi = and i64 %i.adg, 28
  %n.vec = and i64 %i.adg, 4294967264             ; 6 uses
  %i.adj = getelementptr i8, ptr %.260.i.i.i, i64 %n.vec ; 2 uses
  %i.adk = getelementptr i8, ptr %i.ada, i64 %n.vec
  %i.adl = trunc nuw i64 %n.vec to i32
  %i.adm = sub i32 %.054.i.i.i, %i.adl
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.260.i.i.i, i64 %index ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.ada, i64 %index ; 2 uses
  %i.adn = getelementptr i8, ptr %next.gep294, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep294, align 1
  %wide.load295 = load <16 x i8>, ptr %i.adn, align 1
  %i.ado = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load295, ptr %i.ado, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.adp = icmp eq i64 %index.next, %n.vec
  br i1 %i.adp, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.adg
  br i1 %cmp.n, label %.loopexit.i.i.i.backedge, label %vec.epilog.iter.check

.loopexit.i.i.i.backedge:                         ; preds = %.preheader138.i.i.i.prol.loopexit, %.preheader138.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.dw, %.preheader.preheader.i.i.i, %bb.dv, %bb.cs
  %.058.i.i.i.be = phi ptr [ %scevgep173.i.i.i, %.preheader.preheader.i.i.i ], [ %.260.i.i.i, %bb.dv ], [ %i.xl, %bb.cs ], [ %.260.i.i.i, %bb.dw ], [ %i.adq, %vec.epilog.middle.block ], [ %i.adj, %middle.block ], [ %.lcssa343.unr, %.preheader138.i.i.i.prol.loopexit ], [ %i.aey, %.preheader138.i.i.i ]
  br label %.loopexit.i.i.i

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.adi, 0
  br i1 %min.epilog.iters.check, label %.preheader138.i.i.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec298 = and i64 %i.adg, 4294967292          ; 5 uses
  %i.adq = getelementptr i8, ptr %.260.i.i.i, i64 %n.vec298 ; 2 uses
  %i.adr = getelementptr i8, ptr %i.ada, i64 %n.vec298
  %i.ads = trunc nuw i64 %n.vec298 to i32
  %i.adt = sub i32 %.054.i.i.i, %i.ads
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index299 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next303, %vec.epilog.vector.body ] ; 3 uses
  %next.gep300 = getelementptr i8, ptr %.260.i.i.i, i64 %index299
  %next.gep301 = getelementptr i8, ptr %i.ada, i64 %index299
  %wide.load302 = load <4 x i8>, ptr %next.gep301, align 1
  store <4 x i8> %wide.load302, ptr %next.gep300, align 1
  %index.next303 = add nuw i64 %index299, 4       ; 2 uses
  %i.adu = icmp eq i64 %index.next303, %n.vec298
  br i1 %i.adu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n304 = icmp eq i64 %n.vec298, %i.adg
  br i1 %cmp.n304, label %.loopexit.i.i.i.backedge, label %.preheader138.i.i.i.preheader

.preheader138.i.i.i.preheader:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5.i.i.i.ph = phi ptr [ %.260.i.i.i, %iter.check ], [ %i.adj, %vec.epilog.iter.check ], [ %i.adq, %vec.epilog.middle.block ] ; 2 uses
  %.055.i.i.i.ph = phi ptr [ %i.ada, %iter.check ], [ %i.adk, %vec.epilog.iter.check ], [ %i.adr, %vec.epilog.middle.block ] ; 2 uses
  %.2.i.i.i.ph = phi i32 [ %.054.i.i.i, %iter.check ], [ %i.adm, %vec.epilog.iter.check ], [ %i.adt, %vec.epilog.middle.block ] ; 4 uses
  %i.adv = add nsw i32 %.2.i.i.i.ph, -1
  %xtraiter427 = and i32 %.2.i.i.i.ph, 7          ; 2 uses
  %lcmp.mod428.not = icmp eq i32 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %.preheader138.i.i.i.prol.loopexit, label %.preheader138.i.i.i.prol

.preheader138.i.i.i.prol:                         ; preds = %.preheader138.i.i.i.preheader, %.preheader138.i.i.i.prol
  %.5.i.i.i.prol = phi ptr [ %i.ady, %.preheader138.i.i.i.prol ], [ %.5.i.i.i.ph, %.preheader138.i.i.i.preheader ] ; 2 uses
  %.055.i.i.i.prol = phi ptr [ %i.adw, %.preheader138.i.i.i.prol ], [ %.055.i.i.i.ph, %.preheader138.i.i.i.preheader ] ; 2 uses
  %.2.i.i.i.prol = phi i32 [ %i.adz, %.preheader138.i.i.i.prol ], [ %.2.i.i.i.ph, %.preheader138.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader138.i.i.i.prol ], [ 0, %.preheader138.i.i.i.preheader ]
  %i.adw = getelementptr inbounds nuw i8, ptr %.055.i.i.i.prol, i64 1 ; 2 uses
  %i.adx = load i8, ptr %.055.i.i.i.prol, align 1
  %i.ady = getelementptr inbounds nuw i8, ptr %.5.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.adx, ptr %.5.i.i.i.prol, align 1
  %i.adz = add nsw i32 %.2.i.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter427
  br i1 %prol.iter.cmp.not, label %.preheader138.i.i.i.prol.loopexit, label %.preheader138.i.i.i.prol, !llvm.loop !67

.preheader138.i.i.i.prol.loopexit:                ; preds = %.preheader138.i.i.i.prol, %.preheader138.i.i.i.preheader
  %.lcssa343.unr = phi ptr [ poison, %.preheader138.i.i.i.preheader ], [ %i.ady, %.preheader138.i.i.i.prol ]
  %.5.i.i.i.unr = phi ptr [ %.5.i.i.i.ph, %.preheader138.i.i.i.preheader ], [ %i.ady, %.preheader138.i.i.i.prol ]
  %.055.i.i.i.unr = phi ptr [ %.055.i.i.i.ph, %.preheader138.i.i.i.preheader ], [ %i.adw, %.preheader138.i.i.i.prol ]
  %.2.i.i.i.unr = phi i32 [ %.2.i.i.i.ph, %.preheader138.i.i.i.preheader ], [ %i.adz, %.preheader138.i.i.i.prol ]
  %i.aea = icmp ult i32 %i.adv, 7
  br i1 %i.aea, label %.loopexit.i.i.i.backedge, label %.preheader138.i.i.i

.preheader138.i.i.i:                              ; preds = %.preheader138.i.i.i.prol.loopexit, %.preheader138.i.i.i
  %.5.i.i.i = phi ptr [ %i.aey, %.preheader138.i.i.i ], [ %.5.i.i.i.unr, %.preheader138.i.i.i.prol.loopexit ] ; 9 uses
  %.055.i.i.i = phi ptr [ %i.aew, %.preheader138.i.i.i ], [ %.055.i.i.i.unr, %.preheader138.i.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i.i = phi i32 [ %i.aez, %.preheader138.i.i.i ], [ %.2.i.i.i.unr, %.preheader138.i.i.i.prol.loopexit ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 1
  %i.aec = load i8, ptr %.055.i.i.i, align 1
  %i.aed = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 1
  store i8 %i.aec, ptr %.5.i.i.i, align 1
  %i.aee = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 2
  %i.aef = load i8, ptr %i.aeb, align 1
  %i.aeg = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 2
  store i8 %i.aef, ptr %i.aed, align 1
  %i.aeh = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 3
  %i.aei = load i8, ptr %i.aee, align 1
  %i.aej = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 3
  store i8 %i.aei, ptr %i.aeg, align 1
  %i.aek = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 4
  %i.ael = load i8, ptr %i.aeh, align 1
  %i.aem = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 4
  store i8 %i.ael, ptr %i.aej, align 1
  %i.aen = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 5
  %i.aeo = load i8, ptr %i.aek, align 1
  %i.aep = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 5
  store i8 %i.aeo, ptr %i.aem, align 1
  %i.aeq = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 6
  %i.aer = load i8, ptr %i.aen, align 1
  %i.aes = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 6
  store i8 %i.aer, ptr %i.aep, align 1
  %i.aet = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 7
  %i.aeu = load i8, ptr %i.aeq, align 1
  %i.aev = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 7
  store i8 %i.aeu, ptr %i.aes, align 1
  %i.aew = getelementptr inbounds nuw i8, ptr %.055.i.i.i, i64 8
  %i.aex = load i8, ptr %i.aet, align 1
  %i.aey = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 8 ; 2 uses
  store i8 %i.aex, ptr %i.aev, align 1
  %i.aez = add nsw i32 %.2.i.i.i, -8              ; 2 uses
  %.not74.i.i.i.7 = icmp eq i32 %i.aez, 0
  br i1 %.not74.i.i.i.7, label %.loopexit.i.i.i.backedge, label %.preheader138.i.i.i, !llvm.loop !68

_m3dstbi__parse_huffman_block.exit.i.i:           ; preds = %bb.ct
  store ptr %.058.i.i.i, ptr %i.k, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %_m3dstbi__parse_huffman_block.exit.i.i, %_m3dstbi__parse_uncompressed_block.exit.i.i
  %.pr.i.i = phi i32 [ %.pr.i60.i.i, %_m3dstbi__parse_huffman_block.exit.i.i ], [ %.pr.i.i115, %_m3dstbi__parse_uncompressed_block.exit.i.i ]
  %i.afa = phi ptr [ %.058.i.i.i, %_m3dstbi__parse_huffman_block.exit.i.i ], [ %i.gh, %_m3dstbi__parse_uncompressed_block.exit.i.i ] ; 2 uses
  %.pre.i.i.i109 = phi i32 [ %.promoted6.i.i86.i.i.i, %_m3dstbi__parse_huffman_block.exit.i.i ], [ %.pre.i.i.i110, %_m3dstbi__parse_uncompressed_block.exit.i.i ]
  %.not22.i.i = icmp eq i32 %i.de, 0
  br i1 %.not22.i.i, label %thread-pre-split.i.i, label %_m3dstbi__do_zlib.exit

_m3dstbi__do_zlib.exit:                           ; preds = %bb.dx
  %.not12 = icmp eq ptr %3, null
  %.pre113 = load ptr, ptr %i.j, align 8          ; 3 uses
  br i1 %.not12, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_m3dstbi__do_zlib.exit
  %i.afb = ptrtoint ptr %i.afa to i64
  %i.afc = ptrtoint ptr %.pre113 to i64
  %i.afd = sub i64 %i.afb, %i.afc
  %i.afe = trunc i64 %i.afd to i32
  store i32 %i.afe, ptr %3, align 4
  br label %bb.dz

.loopexit:                                        ; preds = %_m3dstbi__compute_huffman_codes.exit.i.i, %bb.ab, %_m3dstbi__zreceive.exit31.i.i, %bb.ac, %bb.ds, %bb.dp, %bb.dn, %bb.dg, %bb.cq, %bb.cn, %bb.ck, %_m3dstbi__zget8.exit11.i.i.i, %_m3dstbi__compute_huffman_codes.exit.thread.i.i, %_m3dstbi__parse_uncompressed_block.exit.thread.i.i
  %i.aff = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.aff) #54
  br label %bb.dz

bb.dz:                                            ; preds = %_m3dstbi__do_zlib.exit, %bb.dy, %bb.a, %.loopexit
  %.0 = phi ptr [ null, %.loopexit ], [ null, %bb.a ], [ %.pre113, %bb.dy ], [ %.pre113, %_m3dstbi__do_zlib.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_m3d_safestr(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not86 = icmp eq i8 %i.a, 0
  br i1 %.not86, label %bb.e, label %.preheader99

.preheader99:                                     ; preds = %bb.b
  %i.b = and i32 %1, 1
  %.not89 = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %.not89, label %.preheader99.split.us, label %.preheader99.split.preheader

.preheader99.split.us:                            ; preds = %.preheader99, %bb.d
  %.0101.us = phi i32 [ %i.g, %bb.d ], [ 0, %.preheader99 ] ; 4 uses
  %.075100.us = phi ptr [ %i.f, %bb.d ], [ %0, %.preheader99 ]
  %i.c = phi i8 [ %.pr.us, %bb.d ], [ %i.a, %.preheader99 ] ; 2 uses
  %.not90.us = icmp eq i8 %i.c, 13
  br i1 %.not90.us, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader99.split.us
  %i.d = icmp ne i8 %i.c, 10
  %i.e = icmp samesign ult i32 %.0101.us, 256
  %or.cond.us = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.us, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.075100.us, i64 1 ; 2 uses
  %i.g = add nuw nsw i32 %.0101.us, 1             ; 2 uses
  %.pr.us = load i8, ptr %i.f, align 1            ; 2 uses
  %.not88.us = icmp eq i8 %.pr.us, 0
  br i1 %.not88.us, label %.critedge, label %.preheader99.split.us

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #56 ; 3 uses
  %.not87 = icmp eq ptr %i.h, null
  br i1 %.not87, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.h, align 1
  br label %bb.r

.preheader99.split:                               ; preds = %.preheader99.split.preheader
end_hunk_1
begin_hunk_2_@par_shapes_clone:bb.a
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.h) #52 ; 2 uses
  store ptr %i.i, ptr %.0, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.j, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = mul nsw i32 %i.o, 3
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.u) #52 ; 2 uses
  store ptr %i.v, ptr %i.q, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.p, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.v, ptr align 2 %i.x, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not33 = icmp eq ptr %i.ac, null
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = mul nsw i32 %i.af, 3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = tail call ptr @realloc(ptr noundef %i.ae, i64 noundef %i.ai) #52 ; 2 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %i.ak = load ptr, ptr %i.ab, align 8
  %i.al = load i32, ptr %i.e, align 8
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aj, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not34 = icmp eq ptr %i.ap, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.e, align 8
  %i.at = shl nsw i32 %i.as, 1
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 2
  %i.aw = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.av) #52 ; 2 uses
  store ptr %i.aw, ptr %i.aq, align 8
  %i.ax = load ptr, ptr %i.ao, align 8
  %i.ay = load i32, ptr %i.e, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aw, ptr align 4 %i.ax, i64 %i.ba, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @par_shapes_unweld(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = mul i32 %i.b, 3                          ; 3 uses
  %i.d = mul nsw i32 %i.b, 9
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp sgt i32 %i.b, 0
  %.pre = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1) ; 3 uses
  %xtraiter = and i32 %smax, 1
  %i.k = icmp slt i32 %i.c, 2
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %smax, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.03236.epil.init = phi ptr [ %i.j, %.lr.ph ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.03335.epil.init = phi ptr [ %i.g, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod56 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.l = load i16, ptr %.03236.epil.init, align 2
  %i.m = zext i16 %i.l to i64
  %.idx.epil = mul nuw nsw i64 %i.m, 12
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.epil ; 3 uses
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.03335.epil.init, i64 4
  store float %i.o, ptr %.03335.epil.init, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.03335.epil.init, i64 8
  store float %i.r, ptr %i.p, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load float, ptr %i.t, align 4
  store float %i.u, ptr %i.s, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  tail call void @free(ptr noundef %.pre) #54
  store ptr %i.g, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.v, align 8
  br i1 %1, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.03236 = phi ptr [ %i.j, %.lr.ph.new ], [ %i.ai, %bb.b ] ; 3 uses
  %.03335 = phi ptr [ %i.g, %.lr.ph.new ], [ %i.at, %bb.b ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.03236, i64 2
  %i.x = load i16, ptr %.03236, align 2
  %i.y = zext i16 %i.x to i64
  %.idx = mul nuw nsw i64 %i.y, 12
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 3 uses
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.03335, i64 4
  store float %i.aa, ptr %.03335, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.03335, i64 8
  store float %i.ad, ptr %i.ab, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.03335, i64 12
  store float %i.ag, ptr %i.ae, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.03236, i64 4 ; 2 uses
  %i.aj = load i16, ptr %i.w, align 2
  %i.ak = zext i16 %i.aj to i64
  %.idx.1 = mul nuw nsw i64 %i.ak, 12
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.1 ; 3 uses
  %i.am = load float, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.03335, i64 16
  store float %i.am, ptr %i.ah, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.03335, i64 20
  store float %i.ap, ptr %i.an, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load float, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.03335, i64 24 ; 2 uses
  store float %i.as, ptr %i.aq, align 4
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

bb.c:                                             ; preds = %._crit_edge
  %i.au = load i32, ptr %i.a, align 8
  %i.av = mul nsw i32 %i.au, 3
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 1
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #56 ; 6 uses
  %i.az = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %iter.check, label %._crit_edge42

iter.check:                                       ; preds = %bb.c
  %i.bb = mul i32 %i.az, 3                        ; 3 uses
  %smax43 = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1) ; 2 uses
  %i.bc = zext nneg i32 %smax43 to i64            ; 5 uses
  %min.iters.check = icmp slt i32 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp slt i32 %i.bb, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, 2147483632              ; 5 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %i.bf = shl nuw nsw i64 %n.vec, 1
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.bh = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %vec.ind, ptr %next.gep, align 2
  store <8 x i16> %step.add, ptr %i.bi, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %._crit_edge42, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.be, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.bc, 2147483644            ; 4 uses
  %i.bk = trunc nuw nsw i64 %n.vec47 to i32
  %i.bl = shl nuw nsw i64 %n.vec47, 1
  %i.bm = getelementptr i8, ptr %i.ay, i64 %i.bl
  %i.bn = trunc i32 %bc.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind49 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.bo = shl i64 %index48, 1
  %next.gep50 = getelementptr i8, ptr %i.ay, i64 %i.bo
  store <4 x i16> %vec.ind49, ptr %next.gep50, align 2
  %index.next51 = add nuw i64 %index48, 4         ; 2 uses
  %vec.ind.next52 = add <4 x i16> %vec.ind49, splat (i16 4)
  %i.bp = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec47, %i.bc
  br i1 %cmp.n53, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039.ph = phi i32 [ 0, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.03038.ph = phi ptr [ %i.ay, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph41

._crit_edge42:                                    ; preds = %.lr.ph41, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bq = load ptr, ptr %i.h, align 8
  tail call void @free(ptr noundef %i.bq) #54
  store ptr %i.ay, ptr %i.h, align 8
  br label %bb.d

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %.039 = phi i32 [ %i.bt, %.lr.ph41 ], [ %.039.ph, %.lr.ph41.preheader ] ; 2 uses
  %.03038 = phi ptr [ %i.bs, %.lr.ph41 ], [ %.03038.ph, %.lr.ph41.preheader ] ; 2 uses
  %i.br = trunc i32 %.039 to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.03038, i64 2
  store i16 %i.br, ptr %.03038, align 2
  %i.bt = add nuw nsw i32 %.039, 1                ; 2 uses
  %exitcond44.not = icmp eq i32 %i.bt, %smax43
  br i1 %exitcond44.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !112

bb.d:                                             ; preds = %._crit_edge42, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @par_shapes_create_subdivided_sphere(i32 noundef %0) local_unnamed_addr #0 {
.lr.ph.i:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #56 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) @par_shapes_create_icosahedron.verts, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i32 20, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(120) %i.e, ptr noundef nonnull align 16 dereferenceable(120) @par_shapes_create_icosahedron.faces, i64 120, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(720) ptr @malloc(i64 noundef 720) #56 ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i
  %.03137.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ai, %bb.a ]
  %.03236.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.z, %bb.a ] ; 4 uses
  %.03335.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.ah, %bb.a ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03236.i, i64 2
  %i.i = load i16, ptr %.03236.i, align 2
  %i.j = zext i16 %i.i to i64
  %.idx.i = mul nuw nsw i64 %i.j, 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.03335.i, i64 8
  %i.m = load <2 x float>, ptr %i.k, align 4
  store <2 x float> %i.m, ptr %.03335.i, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.03335.i, i64 12
  store float %i.o, ptr %i.l, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.03236.i, i64 4
  %i.r = load i16, ptr %i.h, align 2
  %i.s = zext i16 %i.r to i64
  %.idx.i.1 = mul nuw nsw i64 %i.s, 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03335.i, i64 20
  %i.v = load <2 x float>, ptr %i.t, align 4
  store <2 x float> %i.v, ptr %i.p, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.03335.i, i64 24
  store float %i.x, ptr %i.u, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.03236.i, i64 6
  %i.aa = load i16, ptr %i.q, align 2
  %i.ab = zext i16 %i.aa to i64
  %.idx.i.2 = mul nuw nsw i64 %i.ab, 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03335.i, i64 32
  %i.ae = load <2 x float>, ptr %i.ac, align 4
  store <2 x float> %i.ae, ptr %i.y, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.03335.i, i64 36
  store float %i.ag, ptr %i.ad, align 4
  %i.ai = add nuw nsw i32 %.03137.i, 3            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.ai, 60
  br i1 %exitcond.not.i.2, label %par_shapes_unweld.exit, label %bb.a

par_shapes_unweld.exit:                           ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.c) #54
  store ptr %i.g, ptr %i.a, align 8
  store i32 60, ptr %i.b, align 8
  tail call void @free(ptr noundef nonnull %i.e) #54
  %.not26 = icmp eq i32 %0, 0
  br i1 %.not26, label %.lr.ph32, label %.lr.ph

.preheader:                                       ; preds = %par_shapes__subdivide.exit
  %i.aj = mul nsw i32 %i.ap, 12                   ; 2 uses
  store i32 %i.es, ptr %i.d, align 8
  store ptr %i.au, ptr %i.a, align 8
  store i32 %i.aj, ptr %i.b, align 8
  %i.ak = icmp sgt i32 %i.ap, 0
  br i1 %i.ak, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %par_shapes_unweld.exit, %.preheader
  %i.al = phi i32 [ %i.aj, %.preheader ], [ 60, %par_shapes_unweld.exit ]
  %i.am = phi ptr [ %i.au, %.preheader ], [ %i.g, %par_shapes_unweld.exit ] ; 2 uses
  %i.an = phi i32 [ %i.es, %.preheader ], [ 20, %par_shapes_unweld.exit ]
  %wide.trip.count = zext nneg i32 %i.al to i64
  br label %bb.b

.lr.ph:                                           ; preds = %par_shapes_unweld.exit, %par_shapes__subdivide.exit
  %i.ao = phi ptr [ %i.au, %par_shapes__subdivide.exit ], [ %i.g, %par_shapes_unweld.exit ] ; 2 uses
  %i.ap = phi i32 [ %i.es, %par_shapes__subdivide.exit ], [ 20, %par_shapes_unweld.exit ] ; 6 uses
  %.027 = phi i32 [ %i.aq, %par_shapes__subdivide.exit ], [ %0, %par_shapes_unweld.exit ]
  %i.aq = add nsw i32 %.027, -1                   ; 2 uses
  %i.ar = mul nsw i32 %i.ap, 36
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = tail call noalias ptr @calloc(i64 noundef %i.at, i64 noundef 1) #57 ; 5 uses
  %i.av = icmp sgt i32 %i.ap, 0
  br i1 %i.av, label %.lr.ph.i24, label %par_shapes__subdivide.exit

.lr.ph.i24:                                       ; preds = %.lr.ph, %.lr.ph.i24
  %.053.i = phi ptr [ %i.er, %.lr.ph.i24 ], [ %i.au, %.lr.ph ] ; 20 uses
  %.04952.i = phi ptr [ %i.eq, %.lr.ph.i24 ], [ %i.ao, %.lr.ph ] ; 12 uses
  %.05051.i = phi i32 [ %i.ep, %.lr.ph.i24 ], [ 0, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.04952.i, i64 12 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04952.i, i64 24 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.053.i, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %.053.i, i64 24
  %i.ba = load float, ptr %i.aw, align 4
  %i.bb = load float, ptr %.04952.i, align 4
  %i.bc = fmul float %i.bb, 5.000000e-01
  %i.bd = getelementptr inbounds nuw i8, ptr %.04952.i, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04952.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04952.i, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %.04952.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.053.i, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.04952.i, i64 28 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04952.i, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.053.i, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.053.i, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.053.i, i64 36 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.053.i, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.053.i, i64 44 ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bd, align 4
  %i.bq = load <2 x float>, ptr %i.be, align 4
  %i.br = fmul <2 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> splat (float 5.000000e-01), <2 x float> %i.br) ; 3 uses
  store <2 x float> %i.bs, ptr %i.bh, align 4
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = getelementptr inbounds nuw i8, ptr %.053.i, i64 60 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.ba, float 5.000000e-01, float %i.bc) ; 3 uses
  store float %i.bv, ptr %.053.i, align 4
  %i.bw = load float, ptr %i.ax, align 4
  %i.bx = load float, ptr %i.aw, align 4
  %i.by = fmul float %i.bx, 5.000000e-01
  %i.bz = load float, ptr %i.bm, align 4
  %i.ca = load float, ptr %i.bn, align 4
  %i.cb = load <4 x float>, ptr %i.bo, align 4
  %i.cc = load <4 x float>, ptr %i.bu, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.053.i, i64 76 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.053.i, i64 84 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.053.i, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.053.i, i64 92 ; 2 uses
  %i.ch = load <2 x float>, ptr %i.bi, align 4
  %i.ci = load <2 x float>, ptr %i.bd, align 4
  %i.cj = fmul <2 x float> %i.ci, splat (float 5.000000e-01)
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cj) ; 3 uses
  store <2 x float> %i.ck, ptr %i.bk, align 4
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = getelementptr inbounds nuw i8, ptr %.053.i, i64 108 ; 2 uses
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.bw, float 5.000000e-01, float %i.by) ; 3 uses
  store float %i.cn, ptr %i.ay, align 4
  %i.co = load float, ptr %i.bj, align 4
  %i.cp = load float, ptr %i.bg, align 4
  %i.cq = fmul float %i.cp, 5.000000e-01
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.co, float 5.000000e-01, float %i.cq) ; 2 uses
  %i.cs = load <2 x float>, ptr %i.ax, align 4
  %i.ct = load <2 x float>, ptr %.04952.i, align 4
  %i.cu = fmul <2 x float> %i.ct, splat (float 5.000000e-01)
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cu) ; 2 uses
  store <2 x float> %i.cv, ptr %i.az, align 4
  store float %i.cr, ptr %i.bl, align 4
  %i.cw = load float, ptr %.04952.i, align 4
  %i.cx = fadd float %i.cw, %i.bz
  store float %i.cx, ptr %i.bm, align 4
  %i.cy = load float, ptr %i.be, align 4
  %i.cz = fadd float %i.cy, %i.ca
  store float %i.cz, ptr %i.bn, align 4
  %i.da = load float, ptr %i.bg, align 4
  %i.db = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.bv, i64 1
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.de = fadd <4 x float> %i.dd, %i.cb
  store <4 x float> %i.de, ptr %i.bo, align 4
  %i.df = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = insertelement <4 x float> %i.df, float %i.cr, i64 2 ; 2 uses
  %i.dh = insertelement <4 x float> %i.dg, float %i.bv, i64 3
  %i.di = fadd <4 x float> %i.dh, %i.cc
  store <4 x float> %i.di, ptr %i.bu, align 4
  %i.dj = load <2 x float>, ptr %i.cd, align 4
  %i.dk = fadd <2 x float> %i.bs, %i.dj
  store <2 x float> %i.dk, ptr %i.cd, align 4
  %i.dl = load float, ptr %i.aw, align 4
  %i.dm = load float, ptr %i.ce, align 4
  %i.dn = fadd float %i.dl, %i.dm
  store float %i.dn, ptr %i.ce, align 4
  %i.do = load float, ptr %i.bd, align 4
  %i.dp = load float, ptr %i.cf, align 4
  %i.dq = fadd float %i.do, %i.dp
  store float %i.dq, ptr %i.cf, align 4
  %i.dr = load float, ptr %i.bf, align 4
  %i.ds = load <4 x float>, ptr %i.cg, align 4
  %i.dt = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %i.cn, i64 1
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dw = fadd <4 x float> %i.dv, %i.ds
  store <4 x float> %i.dw, ptr %i.cg, align 4
  %i.dx = load <4 x float>, ptr %i.cm, align 4
  %i.dy = insertelement <4 x float> %i.dg, float %i.cn, i64 3
  %i.dz = fadd <4 x float> %i.dy, %i.dx
  store <4 x float> %i.dz, ptr %i.cm, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.053.i, i64 124 ; 2 uses
  %i.eb = load <2 x float>, ptr %i.ea, align 4
  %i.ec = fadd <2 x float> %i.ck, %i.eb
  store <2 x float> %i.ec, ptr %i.ea, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.053.i, i64 132 ; 2 uses
  %i.ee = load float, ptr %i.ax, align 4
  %i.ef = load float, ptr %i.ed, align 4
  %i.eg = fadd float %i.ee, %i.ef
  store float %i.eg, ptr %i.ed, align 4
  %i.eh = load float, ptr %i.bi, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.053.i, i64 136 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = fadd float %i.eh, %i.ej
  store float %i.ek, ptr %i.ei, align 4
  %i.el = load float, ptr %i.bj, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.053.i, i64 140 ; 2 uses
  %i.en = load float, ptr %i.em, align 4
  %i.eo = fadd float %i.el, %i.en
  store float %i.eo, ptr %i.em, align 4
  %i.ep = add nuw nsw i32 %.05051.i, 1            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.04952.i, i64 36
  %i.er = getelementptr inbounds nuw i8, ptr %.053.i, i64 144
  %exitcond.not.i25 = icmp eq i32 %i.ep, %i.ap
  br i1 %exitcond.not.i25, label %par_shapes__subdivide.exit, label %.lr.ph.i24

par_shapes__subdivide.exit:                       ; preds = %.lr.ph.i24, %.lr.ph
  %i.es = shl nsw i32 %i.ap, 2                    ; 4 uses
  tail call void @free(ptr noundef %i.ao) #54
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %par_shapes__normalize3.exit, %.preheader
  %i.et = phi ptr [ %i.au, %.preheader ], [ %i.am, %par_shapes__normalize3.exit ]
  %i.eu = phi i32 [ %i.es, %.preheader ], [ %i.an, %par_shapes__normalize3.exit ] ; 2 uses
  %i.ev = mul nsw i32 %i.eu, 3                    ; 4 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 1
  %i.ey = tail call noalias ptr @malloc(i64 noundef %i.ex) #56 ; 5 uses
  store ptr %i.ey, ptr %i.f, align 8
  %i.ez = icmp sgt i32 %i.eu, 0
  br i1 %i.ez, label %iter.check, label %._crit_edge36

iter.check:                                       ; preds = %._crit_edge
  %wide.trip.count43 = zext nneg i32 %i.ev to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ev, 4
  br i1 %min.iters.check, label %.lr.ph35.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp ult i32 %i.ev, 16
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fa = and i64 %wide.trip.count43, 12
  %n.vec = and i64 %wide.trip.count43, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <8 x i16> %vec.ind, ptr %i.fb, align 2
  store <8 x i16> %step.add, ptr %i.fc, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count43
  br i1 %cmp.n, label %._crit_edge36, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph35.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec54 = and i64 %wide.trip.count43, 2147483644 ; 3 uses
  %i.fe = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.fe, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind56 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index55
  store <4 x i16> %vec.ind56, ptr %i.ff, align 2
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %vec.ind.next58 = add <4 x i16> %vec.ind56, splat (i16 4)
  %i.fg = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %n.vec54, %wide.trip.count43
  br i1 %cmp.n59, label %._crit_edge36, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec54, %vec.epilog.middle.block ]
  br label %.lr.ph35

bb.b:                                             ; preds = %.lr.ph32, %par_shapes__normalize3.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %par_shapes__normalize3.exit ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 3 uses
  %i.fi = load <2 x float>, ptr %i.fh, align 4    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.fi, %i.fi
  %i.fj = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fk = extractelement <2 x float> %i.fi, i64 0 ; 2 uses
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.fj)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4          ; 3 uses
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fl) ; 2 uses
  %i.fp = fcmp ogt float %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.c, label %par_shapes__normalize3.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.fo)
  %i.fq = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.fr = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %i.fi, %i.fs
  store <2 x float> %i.ft, ptr %i.fh, align 4
  %i.fu = fmul float %i.fn, %i.fq
  store float %i.fu, ptr %i.fm, align 4
  br label %par_shapes__normalize3.exit

par_shapes__normalize3.exit:                      ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge36:                                    ; preds = %.lr.ph35, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %i.fv = tail call ptr @par_shapes_weld(ptr noundef nonnull %i.a, float noundef f0x3C23D70A, ptr noundef null) ; 2 uses
  tail call void @free(ptr noundef %i.et) #54
  tail call void @free(ptr noundef %i.ey) #54
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8
  tail call void @free(ptr noundef %i.fx) #54
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8
  tail call void @free(ptr noundef %i.fz) #54
  tail call void @free(ptr noundef nonnull %i.a) #54
  tail call void @par_shapes_compute_normals(ptr noundef %i.fv)
  ret ptr %i.fv

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %.lr.ph35
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph35 ], [ %indvars.iv40.ph, %.lr.ph35.preheader ] ; 3 uses
  %i.ga = trunc i64 %indvars.iv40 to i16
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv40
  store i16 %i.ga, ptr %i.gb, align 2
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !115
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @par_shapes_create_rock(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 36 uses
  %i.b = tail call ptr @par_shapes_create_subdivided_sphere(i32 noundef %1) ; 4 uses
  %i.c = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 9 uses
  %.not.i = icmp eq ptr %calloc.i, null           ; 2 uses
  br i1 %.not.i, label %par__simplex_noise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #56 ; 4 uses
  store ptr %i.d, ptr %calloc.i, align 8
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.f = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #56 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8
  %.not9.i.i = icmp eq ptr %i.f, null
  br i1 %.not9.i.i, label %bb.d, label %vector.body

vector.body:                                      ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %i.a, align 16
  store <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> <i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23>, ptr %i.h, align 16
  store <8 x i16> <i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39>, ptr %i.j, align 16
  store <8 x i16> <i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47>, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> <i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55>, ptr %i.l, align 16
  store <8 x i16> <i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <8 x i16> <i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71>, ptr %i.n, align 16
  store <8 x i16> <i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79>, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <8 x i16> <i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87>, ptr %i.p, align 16
  store <8 x i16> <i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95>, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <8 x i16> <i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103>, ptr %i.r, align 16
  store <8 x i16> <i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111>, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <8 x i16> <i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119>, ptr %i.t, align 16
  store <8 x i16> <i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127>, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <8 x i16> <i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135>, ptr %i.v, align 16
  store <8 x i16> <i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143>, ptr %i.w, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <8 x i16> <i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151>, ptr %i.x, align 16
  store <8 x i16> <i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159>, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <8 x i16> <i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167>, ptr %i.z, align 16
  store <8 x i16> <i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175>, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <8 x i16> <i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183>, ptr %i.ab, align 16
  store <8 x i16> <i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191>, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <8 x i16> <i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199>, ptr %i.ad, align 16
  store <8 x i16> <i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207>, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <8 x i16> <i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215>, ptr %i.af, align 16
  store <8 x i16> <i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223>, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <8 x i16> <i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231>, ptr %i.ah, align 16
  store <8 x i16> <i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239>, ptr %i.ai, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <8 x i16> <i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247>, ptr %i.aj, align 16
  store <8 x i16> <i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255>, ptr %i.ak, align 16
  %i.al = mul i64 %i.c, 793875393913628917
  %i.am = add i64 %i.al, -7280499659394350823
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #54
end_hunk_2
begin_hunk_3_@_m3dstbi__create_png_image_raw:bb.a
  %lcmp.mod1666.not = icmp eq i32 %xtraiter1665, 0
  %lcmp.mod1667 = icmp ne i32 %xtraiter1665, 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph836, %.loopexit734
  %indvars.iv974 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next975, %.loopexit734 ] ; 3 uses
  %.0548834 = phi i32 [ %4, %.lr.ph836 ], [ %.1549, %.loopexit734 ]
  %.0551833 = phi i32 [ %i.i, %.lr.ph836 ], [ %.1552, %.loopexit734 ] ; 17 uses
  %.0579831 = phi ptr [ %1, %.lr.ph836 ], [ %.11590, %.loopexit734 ] ; 3 uses
  %i.cn = load ptr, ptr %i.u, align 8             ; 7 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 4 uses
  %i.cp = trunc i64 %indvars.iv974 to i32
  %i.cq = mul i32 %i.e, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 10 uses
  %i.cs = getelementptr i8, ptr %i.cn, i64 %i.cr  ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0579831, i64 1 ; 9 uses
  %i.cu = load i8, ptr %.0579831, align 1         ; 3 uses
  %i.cv = icmp ult i8 %i.cu, 5
  br i1 %i.cv, label %bb.l, label %.loopexit713.sink.split

bb.l:                                             ; preds = %bb.k
  %.1552 = select i1 %i.aq, i32 1, i32 %.0551833  ; 30 uses
  %.1549 = select i1 %i.aq, i32 %i.af, i32 %.0548834 ; 2 uses
  %.0537 = getelementptr i8, ptr %i.cs, i64 %.0537.idx ; 3 uses
  %i.cw = getelementptr i8, ptr %.0537, i64 %i.ap ; 4 uses
  %i.cx = icmp eq i64 %indvars.iv974, 0
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = zext nneg i8 %i.cu to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0528.in = phi i8 [ %i.da, %bb.m ], [ %i.cu, %bb.l ] ; 3 uses
  %i.db = icmp sgt i32 %.1552, 0                  ; 8 uses
  br i1 %i.db, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %.1552 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 12 uses
  switch i8 %.0528.in, label %bb.v [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
  ]

bb.o:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1
  %.narrow648 = add i8 %i.dj, %i.dh
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = lshr i8 %i.dn, 1
  %.narrow646 = add i8 %i.do, %i.dl
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1
  %.narrow644 = add i8 %i.ds, %i.dq
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1
  br label %.sink.split

bb.u:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv
  %i.dw = load i8, ptr %i.dv, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.sink = phi i8 [ %i.dd, %bb.o ], [ %i.df, %bb.p ], [ %.narrow648, %bb.q ], [ %.narrow646, %bb.r ], [ %.narrow644, %bb.s ], [ %i.du, %bb.t ], [ %i.dw, %bb.u ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0537, i64 %indvars.iv
  store i8 %.sink, ptr %i.dx, align 1
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.n
  br i1 %i.as, label %bb.w, label %bb.z

bb.w:                                             ; preds = %._crit_edge
  br i1 %.not612, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds i8, ptr %i.cs, i64 %i.au
  store i8 -1, ptr %i.dy, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dz = getelementptr inbounds i8, ptr %i.ct, i64 %i.au
  %i.ea = getelementptr inbounds i8, ptr %i.cs, i64 %i.av
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.pre992 = sext i32 %.0551833 to i64            ; 2 uses
  br i1 %.not612, label %._crit_edge991, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds i8, ptr %i.cs, i64 %.pre992 ; 2 uses
  store i8 -1, ptr %i.eb, align 1
  %i.ec = getelementptr i8, ptr %i.eb, i64 1
  store i8 -1, ptr %i.ec, align 1
  br label %._crit_edge991

._crit_edge991:                                   ; preds = %bb.aa, %bb.ab
  %i.ed = getelementptr inbounds i8, ptr %i.ct, i64 %.pre992
  %i.ee = getelementptr inbounds i8, ptr %i.cs, i64 %i.at
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %.0579831, i64 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.0537, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge991, %bb.ac, %bb.y
  %.sink1041 = phi i64 [ %i.at, %._crit_edge991 ], [ 1, %bb.ac ], [ %i.av, %bb.y ] ; 9 uses
  %.1580 = phi ptr [ %i.ed, %._crit_edge991 ], [ %i.ef, %bb.ac ], [ %i.dz, %bb.y ] ; 62 uses
  %.1538 = phi ptr [ %i.ee, %._crit_edge991 ], [ %i.eg, %bb.ac ], [ %i.ea, %bb.y ] ; 95 uses
  %.15381076 = ptrtoaddr ptr %.1538 to i64        ; 10 uses
  %.15801077 = ptrtoaddr ptr %.1580 to i64        ; 6 uses
  %i.eh = getelementptr i8, ptr %i.cw, i64 %.sink1041 ; 24 uses
  br i1 %or.cond, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ei = add i32 %.1549, -1
  %i.ej = mul i32 %i.ei, %.1552                   ; 26 uses
  switch i8 %.0528.in, label %.loopexit723 [
    i8 0, label %bb.af
    i8 1, label %.preheader722
    i8 2, label %.preheader724
    i8 3, label %.preheader726
    i8 4, label %.preheader728
    i8 5, label %.preheader730
    i8 6, label %.preheader732
  ]

.preheader732:                                    ; preds = %bb.ae
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %iter.check1251, label %.loopexit723

iter.check1251:                                   ; preds = %.preheader732
  %i.el = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count947 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1236 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1236, label %.lr.ph820.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %iter.check1251
  %i.em = sub i64 %.15801077, %.15381076
  %diff.check1233 = icmp ugt i64 %i.em, -32
  %i.en = add nsw i64 %i.el, -1
  %diff.check1234 = icmp ult i64 %i.en, 31
  %conflict.rdx1235 = or i1 %diff.check1233, %diff.check1234
  br i1 %conflict.rdx1235, label %.lr.ph820.preheader, label %vector.main.loop.iter.check1237

vector.main.loop.iter.check1237:                  ; preds = %vector.memcheck1232
  %min.iters.check1238 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1238, label %vec.epilog.ph1255, label %vector.ph1239

vector.ph1239:                                    ; preds = %vector.main.loop.iter.check1237
  %i.eo = and i64 %wide.trip.count947, 28
  %n.vec1240 = and i64 %wide.trip.count947, 2147483616 ; 4 uses
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.ph1239, %vector.body1241
  %index1242 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1247, %vector.body1241 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1242 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load1243 = load <16 x i8>, ptr %i.ep, align 1
  %wide.load1244 = load <16 x i8>, ptr %i.eq, align 1
  %i.er = sub nsw i64 %index1242, %i.el
  %i.es = getelementptr inbounds i8, ptr %.1538, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load1245 = load <16 x i8>, ptr %i.es, align 1
  %wide.load1246 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = add <16 x i8> %wide.load1245, %wide.load1243
  %i.ev = add <16 x i8> %wide.load1246, %wide.load1244
  %i.ew = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1242 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <16 x i8> %i.eu, ptr %i.ew, align 1
  store <16 x i8> %i.ev, ptr %i.ex, align 1
  %index.next1247 = add nuw i64 %index1242, 32    ; 2 uses
  %i.ey = icmp eq i64 %index.next1247, %n.vec1240
  br i1 %i.ey, label %middle.block1248, label %vector.body1241, !llvm.loop !283

middle.block1248:                                 ; preds = %vector.body1241
  %cmp.n1249 = icmp eq i64 %n.vec1240, %wide.trip.count947
  br i1 %cmp.n1249, label %.loopexit723, label %vec.epilog.iter.check1253

vec.epilog.iter.check1253:                        ; preds = %middle.block1248
  %min.epilog.iters.check1254 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check1254, label %.lr.ph820.preheader, label %vec.epilog.ph1255, !prof !15

vec.epilog.ph1255:                                ; preds = %vector.main.loop.iter.check1237, %vec.epilog.iter.check1253
  %vec.epilog.resume.val1250 = phi i64 [ %n.vec1240, %vec.epilog.iter.check1253 ], [ 0, %vector.main.loop.iter.check1237 ]
  %n.vec1256 = and i64 %wide.trip.count947, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1257

vec.epilog.vector.body1257:                       ; preds = %vec.epilog.vector.body1257, %vec.epilog.ph1255
  %index1258 = phi i64 [ %vec.epilog.resume.val1250, %vec.epilog.ph1255 ], [ %index.next1261, %vec.epilog.vector.body1257 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1258
  %wide.load1259 = load <4 x i8>, ptr %i.ez, align 1
  %i.fa = sub nsw i64 %index1258, %i.el
  %i.fb = getelementptr inbounds i8, ptr %.1538, i64 %i.fa
  %wide.load1260 = load <4 x i8>, ptr %i.fb, align 1
  %i.fc = add <4 x i8> %wide.load1260, %wide.load1259
  %i.fd = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1258
  store <4 x i8> %i.fc, ptr %i.fd, align 1
  %index.next1261 = add nuw i64 %index1258, 4     ; 2 uses
  %i.fe = icmp eq i64 %index.next1261, %n.vec1256
  br i1 %i.fe, label %vec.epilog.middle.block1262, label %vec.epilog.vector.body1257, !llvm.loop !284

vec.epilog.middle.block1262:                      ; preds = %vec.epilog.vector.body1257
  %cmp.n1263 = icmp eq i64 %n.vec1256, %wide.trip.count947
  br i1 %cmp.n1263, label %.loopexit723, label %.lr.ph820.preheader

.lr.ph820.preheader:                              ; preds = %iter.check1251, %vector.memcheck1232, %vec.epilog.iter.check1253, %vec.epilog.middle.block1262
  %indvars.iv944.ph = phi i64 [ 0, %iter.check1251 ], [ 0, %vector.memcheck1232 ], [ %n.vec1240, %vec.epilog.iter.check1253 ], [ %n.vec1256, %vec.epilog.middle.block1262 ] ; 6 uses
  %xtraiter1668 = and i64 %wide.trip.count947, 1
  %lcmp.mod1669.not = icmp eq i64 %xtraiter1668, 0
  br i1 %lcmp.mod1669.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

.lr.ph820.prol:                                   ; preds = %.lr.ph820.preheader
  %i.ff = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944.ph
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sub nsw i64 %indvars.iv944.ph, %i.el
  %i.fi = getelementptr inbounds i8, ptr %.1538, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %.narrow632.prol = add i8 %i.fj, %i.fg
  %i.fk = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944.ph
  store i8 %.narrow632.prol, ptr %i.fk, align 1
  %indvars.iv.next945.prol = or disjoint i64 %indvars.iv944.ph, 1
  br label %.lr.ph820.prol.loopexit

.lr.ph820.prol.loopexit:                          ; preds = %.lr.ph820.prol, %.lr.ph820.preheader
  %indvars.iv944.unr = phi i64 [ %indvars.iv944.ph, %.lr.ph820.preheader ], [ %indvars.iv.next945.prol, %.lr.ph820.prol ]
  %i.fl = add nsw i64 %wide.trip.count947, -1
  %i.fm = icmp eq i64 %indvars.iv944.ph, %i.fl
  br i1 %i.fm, label %.loopexit723, label %.lr.ph820

.preheader730:                                    ; preds = %bb.ae
  %i.fn = icmp sgt i32 %i.ej, 0
  br i1 %i.fn, label %iter.check1218, label %.loopexit723

iter.check1218:                                   ; preds = %.preheader730
  %i.fo = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count952 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1203 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1203, label %.lr.ph822.preheader, label %vector.memcheck1199

vector.memcheck1199:                              ; preds = %iter.check1218
  %i.fp = sub i64 %.15801077, %.15381076
  %diff.check1200 = icmp ugt i64 %i.fp, -32
  %i.fq = add nsw i64 %i.fo, -1
  %diff.check1201 = icmp ult i64 %i.fq, 31
  %conflict.rdx1202 = or i1 %diff.check1200, %diff.check1201
  br i1 %conflict.rdx1202, label %.lr.ph822.preheader, label %vector.main.loop.iter.check1204

vector.main.loop.iter.check1204:                  ; preds = %vector.memcheck1199
  %min.iters.check1205 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1205, label %vec.epilog.ph1222, label %vector.ph1206

vector.ph1206:                                    ; preds = %vector.main.loop.iter.check1204
  %i.fr = and i64 %wide.trip.count952, 28
  %n.vec1207 = and i64 %wide.trip.count952, 2147483616 ; 4 uses
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.ph1206, %vector.body1208
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1214, %vector.body1208 ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1209 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load1210 = load <16 x i8>, ptr %i.fs, align 1
  %wide.load1211 = load <16 x i8>, ptr %i.ft, align 1
  %i.fu = sub nsw i64 %index1209, %i.fo
  %i.fv = getelementptr inbounds i8, ptr %.1538, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load1212 = load <16 x i8>, ptr %i.fv, align 1
  %wide.load1213 = load <16 x i8>, ptr %i.fw, align 1
  %i.fx = lshr <16 x i8> %wide.load1212, splat (i8 1)
  %i.fy = lshr <16 x i8> %wide.load1213, splat (i8 1)
  %i.fz = add <16 x i8> %i.fx, %wide.load1210
  %i.ga = add <16 x i8> %i.fy, %wide.load1211
  %i.gb = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1209 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <16 x i8> %i.fz, ptr %i.gb, align 1
  store <16 x i8> %i.ga, ptr %i.gc, align 1
  %index.next1214 = add nuw i64 %index1209, 32    ; 2 uses
  %i.gd = icmp eq i64 %index.next1214, %n.vec1207
  br i1 %i.gd, label %middle.block1215, label %vector.body1208, !llvm.loop !285

middle.block1215:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %n.vec1207, %wide.trip.count952
  br i1 %cmp.n1216, label %.loopexit723, label %vec.epilog.iter.check1220

vec.epilog.iter.check1220:                        ; preds = %middle.block1215
  %min.epilog.iters.check1221 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check1221, label %.lr.ph822.preheader, label %vec.epilog.ph1222, !prof !15

vec.epilog.ph1222:                                ; preds = %vector.main.loop.iter.check1204, %vec.epilog.iter.check1220
  %vec.epilog.resume.val1217 = phi i64 [ %n.vec1207, %vec.epilog.iter.check1220 ], [ 0, %vector.main.loop.iter.check1204 ]
  %n.vec1223 = and i64 %wide.trip.count952, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1224

vec.epilog.vector.body1224:                       ; preds = %vec.epilog.vector.body1224, %vec.epilog.ph1222
  %index1225 = phi i64 [ %vec.epilog.resume.val1217, %vec.epilog.ph1222 ], [ %index.next1228, %vec.epilog.vector.body1224 ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1225
  %wide.load1226 = load <4 x i8>, ptr %i.ge, align 1
  %i.gf = sub nsw i64 %index1225, %i.fo
  %i.gg = getelementptr inbounds i8, ptr %.1538, i64 %i.gf
  %wide.load1227 = load <4 x i8>, ptr %i.gg, align 1
  %i.gh = lshr <4 x i8> %wide.load1227, splat (i8 1)
  %i.gi = add <4 x i8> %i.gh, %wide.load1226
  %i.gj = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1225
  store <4 x i8> %i.gi, ptr %i.gj, align 1
  %index.next1228 = add nuw i64 %index1225, 4     ; 2 uses
  %i.gk = icmp eq i64 %index.next1228, %n.vec1223
  br i1 %i.gk, label %vec.epilog.middle.block1229, label %vec.epilog.vector.body1224, !llvm.loop !286

vec.epilog.middle.block1229:                      ; preds = %vec.epilog.vector.body1224
  %cmp.n1230 = icmp eq i64 %n.vec1223, %wide.trip.count952
  br i1 %cmp.n1230, label %.loopexit723, label %.lr.ph822.preheader

.lr.ph822.preheader:                              ; preds = %iter.check1218, %vector.memcheck1199, %vec.epilog.iter.check1220, %vec.epilog.middle.block1229
  %indvars.iv949.ph = phi i64 [ 0, %iter.check1218 ], [ 0, %vector.memcheck1199 ], [ %n.vec1207, %vec.epilog.iter.check1220 ], [ %n.vec1223, %vec.epilog.middle.block1229 ] ; 6 uses
  %xtraiter1671 = and i64 %wide.trip.count952, 1
  %lcmp.mod1672.not = icmp eq i64 %xtraiter1671, 0
  br i1 %lcmp.mod1672.not, label %.lr.ph822.prol.loopexit, label %.lr.ph822.prol

.lr.ph822.prol:                                   ; preds = %.lr.ph822.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv949.ph
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = sub nsw i64 %indvars.iv949.ph, %i.fo
  %i.go = getelementptr inbounds i8, ptr %.1538, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = lshr i8 %i.gp, 1
  %.narrow634.prol = add i8 %i.gq, %i.gm
  %i.gr = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv949.ph
  store i8 %.narrow634.prol, ptr %i.gr, align 1
  %indvars.iv.next950.prol = or disjoint i64 %indvars.iv949.ph, 1
  br label %.lr.ph822.prol.loopexit

.lr.ph822.prol.loopexit:                          ; preds = %.lr.ph822.prol, %.lr.ph822.preheader
  %indvars.iv949.unr = phi i64 [ %indvars.iv949.ph, %.lr.ph822.preheader ], [ %indvars.iv.next950.prol, %.lr.ph822.prol ]
  %i.gs = add nsw i64 %wide.trip.count952, -1
  %i.gt = icmp eq i64 %indvars.iv949.ph, %i.gs
  br i1 %i.gt, label %.loopexit723, label %.lr.ph822

.preheader728:                                    ; preds = %bb.ae
  %i.gu = icmp sgt i32 %i.ej, 0
  br i1 %i.gu, label %iter.check1183, label %.loopexit723

iter.check1183:                                   ; preds = %.preheader728
  %i.gv = sext i32 %.1552 to i64                  ; 5 uses
  %wide.trip.count957 = zext nneg i32 %i.ej to i64 ; 6 uses
  %min.iters.check1168 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1168, label %.lr.ph824.preheader, label %vector.memcheck1160

vector.memcheck1160:                              ; preds = %iter.check1183
  %i.gw = sub i64 %.15801077, %.15381076
  %diff.check1161 = icmp ugt i64 %i.gw, -16
  %i.gx = add nsw i64 %i.gv, -1
  %diff.check1162 = icmp ult i64 %i.gx, 15
  %conflict.rdx1163 = or i1 %diff.check1161, %diff.check1162
  %i.gy = add i64 %i.ao, %.15381076
  %i.gz = add nsw i64 %.sink1041, %.0537.idx
  %i.ha = add i64 %i.gz, %i.co
  %i.hb = add i64 %i.ha, %i.cr
  %i.hc = sub i64 %i.hb, %i.gy
  %diff.check1164 = icmp ugt i64 %i.hc, -16
  %conflict.rdx1165 = or i1 %conflict.rdx1163, %diff.check1164
  %i.hd = add i64 %i.aw, %.15381076
  %i.he = add i64 %i.hd, %i.gv
  %i.hf = add i64 %.sink1041, %i.co
  %i.hg = add i64 %i.hf, %i.cr
  %i.hh = sub i64 %i.hg, %i.he
  %diff.check1166 = icmp ugt i64 %i.hh, -16
  %conflict.rdx1167 = or i1 %conflict.rdx1165, %diff.check1166
  br i1 %conflict.rdx1167, label %.lr.ph824.preheader, label %vector.main.loop.iter.check1169

vector.main.loop.iter.check1169:                  ; preds = %vector.memcheck1160
  %min.iters.check1170 = icmp ult i32 %i.ej, 16
  br i1 %min.iters.check1170, label %vec.epilog.ph1187, label %vector.ph1171

vector.ph1171:                                    ; preds = %vector.main.loop.iter.check1169
  %i.hi = and i64 %wide.trip.count957, 12
  %n.vec1172 = and i64 %wide.trip.count957, 2147483632 ; 4 uses
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.ph1171, %vector.body1173
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1179, %vector.body1173 ] ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1174
  %wide.load1175 = load <16 x i8>, ptr %i.hj, align 1
  %i.hk = sub nsw i64 %index1174, %i.gv           ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.1538, i64 %i.hk
  %wide.load1176 = load <16 x i8>, ptr %i.hl, align 1 ; 2 uses
  %i.hm = zext <16 x i8> %wide.load1176 to <16 x i32> ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1174
  %wide.load1177 = load <16 x i8>, ptr %i.hn, align 1 ; 2 uses
  %i.ho = zext <16 x i8> %wide.load1177 to <16 x i32> ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.eh, i64 %i.hk
  %wide.load1178 = load <16 x i8>, ptr %i.hp, align 1 ; 2 uses
  %i.hq = zext <16 x i8> %wide.load1178 to <16 x i32> ; 2 uses
  %i.hr = add nuw nsw <16 x i32> %i.ho, %i.hm
  %i.hs = sub nsw <16 x i32> %i.hr, %i.hq         ; 3 uses
  %i.ht = sub nsw <16 x i32> %i.hs, %i.hm
  %i.hu = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ht, i1 true) ; 2 uses
  %i.hv = sub nsw <16 x i32> %i.hs, %i.ho
  %i.hw = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.hv, i1 true) ; 2 uses
  %i.hx = sub nsw <16 x i32> %i.hs, %i.hq
  %i.hy = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.hx, i1 true) ; 2 uses
  %i.hz = icmp samesign ugt <16 x i32> %i.hu, %i.hw
  %i.ia = icmp samesign ugt <16 x i32> %i.hu, %i.hy
  %i.ib = select <16 x i1> %i.hz, <16 x i1> splat (i1 true), <16 x i1> %i.ia
  %i.ic = icmp samesign ugt <16 x i32> %i.hw, %i.hy
  %i.id = select <16 x i1> %i.ic, <16 x i8> %wide.load1178, <16 x i8> %wide.load1177
  %i.ie = select <16 x i1> %i.ib, <16 x i8> %i.id, <16 x i8> %wide.load1176
  %i.if = add <16 x i8> %i.ie, %wide.load1175
  %i.ig = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1174
  store <16 x i8> %i.if, ptr %i.ig, align 1
  %index.next1179 = add nuw i64 %index1174, 16    ; 2 uses
  %i.ih = icmp eq i64 %index.next1179, %n.vec1172
  br i1 %i.ih, label %middle.block1180, label %vector.body1173, !llvm.loop !287

middle.block1180:                                 ; preds = %vector.body1173
  %cmp.n1181 = icmp eq i64 %n.vec1172, %wide.trip.count957
  br i1 %cmp.n1181, label %.loopexit723, label %vec.epilog.iter.check1185

vec.epilog.iter.check1185:                        ; preds = %middle.block1180
  %min.epilog.iters.check1186 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check1186, label %.lr.ph824.preheader, label %vec.epilog.ph1187, !prof !16

vec.epilog.ph1187:                                ; preds = %vector.main.loop.iter.check1169, %vec.epilog.iter.check1185
  %vec.epilog.resume.val1182 = phi i64 [ %n.vec1172, %vec.epilog.iter.check1185 ], [ 0, %vector.main.loop.iter.check1169 ]
  %n.vec1188 = and i64 %wide.trip.count957, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1189

vec.epilog.vector.body1189:                       ; preds = %vec.epilog.vector.body1189, %vec.epilog.ph1187
  %index1190 = phi i64 [ %vec.epilog.resume.val1182, %vec.epilog.ph1187 ], [ %index.next1195, %vec.epilog.vector.body1189 ] ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1190
  %wide.load1191 = load <4 x i8>, ptr %i.ii, align 1
  %i.ij = sub nsw i64 %index1190, %i.gv           ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.1538, i64 %i.ij
  %wide.load1192 = load <4 x i8>, ptr %i.ik, align 1 ; 2 uses
  %i.il = zext <4 x i8> %wide.load1192 to <4 x i32> ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1190
  %wide.load1193 = load <4 x i8>, ptr %i.im, align 1 ; 2 uses
  %i.in = zext <4 x i8> %wide.load1193 to <4 x i32> ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.eh, i64 %i.ij
  %wide.load1194 = load <4 x i8>, ptr %i.io, align 1 ; 2 uses
  %i.ip = zext <4 x i8> %wide.load1194 to <4 x i32> ; 2 uses
  %i.iq = add nuw nsw <4 x i32> %i.in, %i.il
  %i.ir = sub nsw <4 x i32> %i.iq, %i.ip          ; 3 uses
  %i.is = sub nsw <4 x i32> %i.ir, %i.il
  %i.it = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.is, i1 true) ; 2 uses
  %i.iu = sub nsw <4 x i32> %i.ir, %i.in
  %i.iv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iu, i1 true) ; 2 uses
  %i.iw = sub nsw <4 x i32> %i.ir, %i.ip
  %i.ix = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.iw, i1 true) ; 2 uses
  %i.iy = icmp samesign ugt <4 x i32> %i.it, %i.iv
  %i.iz = icmp samesign ugt <4 x i32> %i.it, %i.ix
  %i.ja = select <4 x i1> %i.iy, <4 x i1> splat (i1 true), <4 x i1> %i.iz
  %i.jb = icmp samesign ugt <4 x i32> %i.iv, %i.ix
  %i.jc = select <4 x i1> %i.jb, <4 x i8> %wide.load1194, <4 x i8> %wide.load1193
  %i.jd = select <4 x i1> %i.ja, <4 x i8> %i.jc, <4 x i8> %wide.load1192
  %i.je = add <4 x i8> %i.jd, %wide.load1191
  %i.jf = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1190
  store <4 x i8> %i.je, ptr %i.jf, align 1
  %index.next1195 = add nuw i64 %index1190, 4     ; 2 uses
  %i.jg = icmp eq i64 %index.next1195, %n.vec1188
  br i1 %i.jg, label %vec.epilog.middle.block1196, label %vec.epilog.vector.body1189, !llvm.loop !288

vec.epilog.middle.block1196:                      ; preds = %vec.epilog.vector.body1189
  %cmp.n1197 = icmp eq i64 %n.vec1188, %wide.trip.count957
  br i1 %cmp.n1197, label %.loopexit723, label %.lr.ph824.preheader

.lr.ph824.preheader:                              ; preds = %iter.check1183, %vector.memcheck1160, %vec.epilog.iter.check1185, %vec.epilog.middle.block1196
  %indvars.iv954.ph = phi i64 [ 0, %iter.check1183 ], [ 0, %vector.memcheck1160 ], [ %n.vec1172, %vec.epilog.iter.check1185 ], [ %n.vec1188, %vec.epilog.middle.block1196 ]
  br label %.lr.ph824

.preheader726:                                    ; preds = %bb.ae
  %i.jh = icmp sgt i32 %i.ej, 0
  br i1 %i.jh, label %iter.check1145, label %.loopexit723

iter.check1145:                                   ; preds = %.preheader726
  %i.ji = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count962 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1128 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check1128, label %.lr.ph826.preheader, label %vector.memcheck1122

vector.memcheck1122:                              ; preds = %iter.check1145
  %i.jj = sub i64 %.15801077, %.15381076
  %diff.check1123 = icmp ugt i64 %i.jj, -32
  %i.jk = add i64 %i.ao, %.15381076
  %i.jl = add nsw i64 %.sink1041, %.0537.idx
  %i.jm = add i64 %i.jl, %i.co
  %i.jn = add i64 %i.jm, %i.cr
  %i.jo = sub i64 %i.jn, %i.jk
  %diff.check1124 = icmp ugt i64 %i.jo, -32
  %conflict.rdx1125 = or i1 %diff.check1123, %diff.check1124
  %i.jp = add nsw i64 %i.ji, -1
  %diff.check1126 = icmp ult i64 %i.jp, 31
  %conflict.rdx1127 = or i1 %conflict.rdx1125, %diff.check1126
  br i1 %conflict.rdx1127, label %.lr.ph826.preheader, label %vector.main.loop.iter.check1129

vector.main.loop.iter.check1129:                  ; preds = %vector.memcheck1122
  %min.iters.check1130 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1130, label %vec.epilog.ph1149, label %vector.ph1131

vector.ph1131:                                    ; preds = %vector.main.loop.iter.check1129
  %i.jq = and i64 %wide.trip.count962, 24
  %n.vec1132 = and i64 %wide.trip.count962, 2147483616 ; 4 uses
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.ph1131, %vector.body1133
  %index1134 = phi i64 [ 0, %vector.ph1131 ], [ %index.next1141, %vector.body1133 ] ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1134 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %wide.load1135 = load <16 x i8>, ptr %i.jr, align 1
  %wide.load1136 = load <16 x i8>, ptr %i.js, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1134 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load1137 = load <16 x i8>, ptr %i.jt, align 1
  %wide.load1138 = load <16 x i8>, ptr %i.ju, align 1
  %i.jv = zext <16 x i8> %wide.load1137 to <16 x i16>
  %i.jw = zext <16 x i8> %wide.load1138 to <16 x i16>
  %i.jx = sub nsw i64 %index1134, %i.ji
  %i.jy = getelementptr inbounds i8, ptr %.1538, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %wide.load1139 = load <16 x i8>, ptr %i.jy, align 1
  %wide.load1140 = load <16 x i8>, ptr %i.jz, align 1
  %i.ka = zext <16 x i8> %wide.load1139 to <16 x i16>
  %i.kb = zext <16 x i8> %wide.load1140 to <16 x i16>
  %i.kc = add nuw nsw <16 x i16> %i.ka, %i.jv
  %i.kd = add nuw nsw <16 x i16> %i.kb, %i.jw
  %i.ke = lshr <16 x i16> %i.kc, splat (i16 1)
  %i.kf = lshr <16 x i16> %i.kd, splat (i16 1)
  %i.kg = trunc nuw <16 x i16> %i.ke to <16 x i8>
  %i.kh = trunc nuw <16 x i16> %i.kf to <16 x i8>
  %i.ki = add <16 x i8> %wide.load1135, %i.kg
  %i.kj = add <16 x i8> %wide.load1136, %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1134 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <16 x i8> %i.ki, ptr %i.kk, align 1
  store <16 x i8> %i.kj, ptr %i.kl, align 1
  %index.next1141 = add nuw i64 %index1134, 32    ; 2 uses
  %i.km = icmp eq i64 %index.next1141, %n.vec1132
  br i1 %i.km, label %middle.block1142, label %vector.body1133, !llvm.loop !289

middle.block1142:                                 ; preds = %vector.body1133
  %cmp.n1143 = icmp eq i64 %n.vec1132, %wide.trip.count962
  br i1 %cmp.n1143, label %.loopexit723, label %vec.epilog.iter.check1147

vec.epilog.iter.check1147:                        ; preds = %middle.block1142
  %min.epilog.iters.check1148 = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check1148, label %.lr.ph826.preheader, label %vec.epilog.ph1149, !prof !359

vec.epilog.ph1149:                                ; preds = %vector.main.loop.iter.check1129, %vec.epilog.iter.check1147
  %vec.epilog.resume.val1144 = phi i64 [ %n.vec1132, %vec.epilog.iter.check1147 ], [ 0, %vector.main.loop.iter.check1129 ]
  %n.vec1150 = and i64 %wide.trip.count962, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body1151

vec.epilog.vector.body1151:                       ; preds = %vec.epilog.vector.body1151, %vec.epilog.ph1149
  %index1152 = phi i64 [ %vec.epilog.resume.val1144, %vec.epilog.ph1149 ], [ %index.next1156, %vec.epilog.vector.body1151 ] ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1152
  %wide.load1153 = load <8 x i8>, ptr %i.kn, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1152
  %wide.load1154 = load <8 x i8>, ptr %i.ko, align 1
  %i.kp = zext <8 x i8> %wide.load1154 to <8 x i16>
  %i.kq = sub nsw i64 %index1152, %i.ji
  %i.kr = getelementptr inbounds i8, ptr %.1538, i64 %i.kq
  %wide.load1155 = load <8 x i8>, ptr %i.kr, align 1
  %i.ks = zext <8 x i8> %wide.load1155 to <8 x i16>
  %i.kt = add nuw nsw <8 x i16> %i.ks, %i.kp
  %i.ku = lshr <8 x i16> %i.kt, splat (i16 1)
  %i.kv = trunc nuw <8 x i16> %i.ku to <8 x i8>
  %i.kw = add <8 x i8> %wide.load1153, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1152
  store <8 x i8> %i.kw, ptr %i.kx, align 1
  %index.next1156 = add nuw i64 %index1152, 8     ; 2 uses
  %i.ky = icmp eq i64 %index.next1156, %n.vec1150
  br i1 %i.ky, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1151, !llvm.loop !290

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1151
  %cmp.n1158 = icmp eq i64 %n.vec1150, %wide.trip.count962
  br i1 %cmp.n1158, label %.loopexit723, label %.lr.ph826.preheader

.lr.ph826.preheader:                              ; preds = %iter.check1145, %vector.memcheck1122, %vec.epilog.iter.check1147, %vec.epilog.middle.block1157
  %indvars.iv959.ph = phi i64 [ 0, %iter.check1145 ], [ 0, %vector.memcheck1122 ], [ %n.vec1132, %vec.epilog.iter.check1147 ], [ %n.vec1150, %vec.epilog.middle.block1157 ] ; 7 uses
  %xtraiter1674 = and i64 %wide.trip.count962, 1
  %lcmp.mod1675.not = icmp eq i64 %xtraiter1674, 0
  br i1 %lcmp.mod1675.not, label %.lr.ph826.prol.loopexit, label %.lr.ph826.prol

.lr.ph826.prol:                                   ; preds = %.lr.ph826.preheader
  %i.kz = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv959.ph
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv959.ph
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = zext i8 %i.lc to i16
  %i.le = sub nsw i64 %indvars.iv959.ph, %i.ji
  %i.lf = getelementptr inbounds i8, ptr %.1538, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = zext i8 %i.lg to i16
  %i.li = add nuw nsw i16 %i.lh, %i.ld
  %i.lj = lshr i16 %i.li, 1
  %.tr637.prol = trunc nuw i16 %i.lj to i8
  %.narrow638.prol = add i8 %i.la, %.tr637.prol
  %i.lk = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv959.ph
  store i8 %.narrow638.prol, ptr %i.lk, align 1
  %indvars.iv.next960.prol = or disjoint i64 %indvars.iv959.ph, 1
  br label %.lr.ph826.prol.loopexit

.lr.ph826.prol.loopexit:                          ; preds = %.lr.ph826.prol, %.lr.ph826.preheader
  %indvars.iv959.unr = phi i64 [ %indvars.iv959.ph, %.lr.ph826.preheader ], [ %indvars.iv.next960.prol, %.lr.ph826.prol ]
  %i.ll = add nsw i64 %wide.trip.count962, -1
  %i.lm = icmp eq i64 %indvars.iv959.ph, %i.ll
  br i1 %i.lm, label %.loopexit723, label %.lr.ph826

.preheader724:                                    ; preds = %bb.ae
  %i.ln = icmp sgt i32 %i.ej, 0
  br i1 %i.ln, label %iter.check1108, label %.loopexit723

iter.check1108:                                   ; preds = %.preheader724
  %wide.trip.count967 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check1093 = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check1093, label %.lr.ph828.preheader, label %vector.memcheck1089

vector.memcheck1089:                              ; preds = %iter.check1108
  %i.lo = sub i64 %.15801077, %.15381076
  %diff.check1090 = icmp ugt i64 %i.lo, -32
  %i.lp = add i64 %i.ao, %.15381076
  %i.lq = add nsw i64 %.sink1041, %.0537.idx
  %i.lr = add i64 %i.lq, %i.co
  %i.ls = add i64 %i.lr, %i.cr
  %i.lt = sub i64 %i.ls, %i.lp
  %diff.check1091 = icmp ugt i64 %i.lt, -32
  %conflict.rdx1092 = or i1 %diff.check1090, %diff.check1091
  br i1 %conflict.rdx1092, label %.lr.ph828.preheader, label %vector.main.loop.iter.check1094

vector.main.loop.iter.check1094:                  ; preds = %vector.memcheck1089
  %min.iters.check1095 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1095, label %vec.epilog.ph1112, label %vector.ph1096

vector.ph1096:                                    ; preds = %vector.main.loop.iter.check1094
  %i.lu = and i64 %wide.trip.count967, 28
  %n.vec1097 = and i64 %wide.trip.count967, 2147483616 ; 4 uses
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.ph1096, %vector.body1098
  %index1099 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1104, %vector.body1098 ] ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1099 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load1100 = load <16 x i8>, ptr %i.lv, align 1
  %wide.load1101 = load <16 x i8>, ptr %i.lw, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1099 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %wide.load1102 = load <16 x i8>, ptr %i.lx, align 1
  %wide.load1103 = load <16 x i8>, ptr %i.ly, align 1
  %i.lz = add <16 x i8> %wide.load1102, %wide.load1100
  %i.ma = add <16 x i8> %wide.load1103, %wide.load1101
  %i.mb = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1099 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store <16 x i8> %i.lz, ptr %i.mb, align 1
  store <16 x i8> %i.ma, ptr %i.mc, align 1
  %index.next1104 = add nuw i64 %index1099, 32    ; 2 uses
  %i.md = icmp eq i64 %index.next1104, %n.vec1097
  br i1 %i.md, label %middle.block1105, label %vector.body1098, !llvm.loop !291

middle.block1105:                                 ; preds = %vector.body1098
  %cmp.n1106 = icmp eq i64 %n.vec1097, %wide.trip.count967
  br i1 %cmp.n1106, label %.loopexit723, label %vec.epilog.iter.check1110

vec.epilog.iter.check1110:                        ; preds = %middle.block1105
  %min.epilog.iters.check1111 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check1111, label %.lr.ph828.preheader, label %vec.epilog.ph1112, !prof !15

vec.epilog.ph1112:                                ; preds = %vector.main.loop.iter.check1094, %vec.epilog.iter.check1110
  %vec.epilog.resume.val1107 = phi i64 [ %n.vec1097, %vec.epilog.iter.check1110 ], [ 0, %vector.main.loop.iter.check1094 ]
  %n.vec1113 = and i64 %wide.trip.count967, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1114

vec.epilog.vector.body1114:                       ; preds = %vec.epilog.vector.body1114, %vec.epilog.ph1112
  %index1115 = phi i64 [ %vec.epilog.resume.val1107, %vec.epilog.ph1112 ], [ %index.next1118, %vec.epilog.vector.body1114 ] ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1115
  %wide.load1116 = load <4 x i8>, ptr %i.me, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index1115
  %wide.load1117 = load <4 x i8>, ptr %i.mf, align 1
  %i.mg = add <4 x i8> %wide.load1117, %wide.load1116
  %i.mh = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1115
  store <4 x i8> %i.mg, ptr %i.mh, align 1
  %index.next1118 = add nuw i64 %index1115, 4     ; 2 uses
  %i.mi = icmp eq i64 %index.next1118, %n.vec1113
  br i1 %i.mi, label %vec.epilog.middle.block1119, label %vec.epilog.vector.body1114, !llvm.loop !292

vec.epilog.middle.block1119:                      ; preds = %vec.epilog.vector.body1114
  %cmp.n1120 = icmp eq i64 %n.vec1113, %wide.trip.count967
  br i1 %cmp.n1120, label %.loopexit723, label %.lr.ph828.preheader

.lr.ph828.preheader:                              ; preds = %iter.check1108, %vector.memcheck1089, %vec.epilog.iter.check1110, %vec.epilog.middle.block1119
  %indvars.iv964.ph = phi i64 [ 0, %iter.check1108 ], [ 0, %vector.memcheck1089 ], [ %n.vec1097, %vec.epilog.iter.check1110 ], [ %n.vec1113, %vec.epilog.middle.block1119 ] ; 3 uses
  %xtraiter1677 = and i64 %wide.trip.count967, 3  ; 2 uses
  %lcmp.mod1678.not = icmp eq i64 %xtraiter1677, 0
  br i1 %lcmp.mod1678.not, label %.lr.ph828.prol.loopexit, label %.lr.ph828.prol

.lr.ph828.prol:                                   ; preds = %.lr.ph828.preheader, %.lr.ph828.prol
  %indvars.iv964.prol = phi i64 [ %indvars.iv.next965.prol, %.lr.ph828.prol ], [ %indvars.iv964.ph, %.lr.ph828.preheader ] ; 4 uses
  %prol.iter1679 = phi i64 [ %prol.iter1679.next, %.lr.ph828.prol ], [ 0, %.lr.ph828.preheader ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv964.prol
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv964.prol
  %i.mm = load i8, ptr %i.ml, align 1
  %.narrow640.prol = add i8 %i.mm, %i.mk
  %i.mn = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv964.prol
  store i8 %.narrow640.prol, ptr %i.mn, align 1
  %indvars.iv.next965.prol = add nuw nsw i64 %indvars.iv964.prol, 1 ; 2 uses
  %prol.iter1679.next = add i64 %prol.iter1679, 1 ; 2 uses
  %prol.iter1679.cmp.not = icmp eq i64 %prol.iter1679.next, %xtraiter1677
  br i1 %prol.iter1679.cmp.not, label %.lr.ph828.prol.loopexit, label %.lr.ph828.prol, !llvm.loop !293

.lr.ph828.prol.loopexit:                          ; preds = %.lr.ph828.prol, %.lr.ph828.preheader
  %indvars.iv964.unr = phi i64 [ %indvars.iv964.ph, %.lr.ph828.preheader ], [ %indvars.iv.next965.prol, %.lr.ph828.prol ]
  %i.mo = sub nsw i64 %indvars.iv964.ph, %wide.trip.count967
  %i.mp = icmp ugt i64 %i.mo, -4
  br i1 %i.mp, label %.loopexit723, label %.lr.ph828

.preheader722:                                    ; preds = %bb.ae
  %i.mq = icmp sgt i32 %i.ej, 0
  br i1 %i.mq, label %iter.check, label %.loopexit723

iter.check:                                       ; preds = %.preheader722
  %i.mr = sext i32 %.1552 to i64                  ; 6 uses
  %wide.trip.count972 = zext nneg i32 %i.ej to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check, label %.lr.ph830.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ms = sub i64 %.15801077, %.15381076
  %diff.check = icmp ugt i64 %i.ms, -32
  %i.mt = add nsw i64 %i.mr, -1
  %diff.check1078 = icmp ult i64 %i.mt, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1078
  br i1 %conflict.rdx, label %.lr.ph830.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1079 = icmp ult i32 %i.ej, 32
  br i1 %min.iters.check1079, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mu = and i64 %wide.trip.count972, 28
  %n.vec = and i64 %wide.trip.count972, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.1580, i64 %index ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load = load <16 x i8>, ptr %i.mv, align 1
  %wide.load1080 = load <16 x i8>, ptr %i.mw, align 1
  %i.mx = sub nsw i64 %index, %i.mr
  %i.my = getelementptr inbounds i8, ptr %.1538, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %wide.load1081 = load <16 x i8>, ptr %i.my, align 1
  %wide.load1082 = load <16 x i8>, ptr %i.mz, align 1
  %i.na = add <16 x i8> %wide.load1081, %wide.load
  %i.nb = add <16 x i8> %wide.load1082, %wide.load1080
  %i.nc = getelementptr inbounds nuw i8, ptr %.1538, i64 %index ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <16 x i8> %i.na, ptr %i.nc, align 1
  store <16 x i8> %i.nb, ptr %i.nd, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ne = icmp eq i64 %index.next, %n.vec
  br i1 %i.ne, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count972
  br i1 %cmp.n, label %.loopexit723, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph830.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1083 = and i64 %wide.trip.count972, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1084 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1087, %vec.epilog.vector.body ] ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.1580, i64 %index1084
  %wide.load1085 = load <4 x i8>, ptr %i.nf, align 1
  %i.ng = sub nsw i64 %index1084, %i.mr
  %i.nh = getelementptr inbounds i8, ptr %.1538, i64 %i.ng
  %wide.load1086 = load <4 x i8>, ptr %i.nh, align 1
  %i.ni = add <4 x i8> %wide.load1086, %wide.load1085
  %i.nj = getelementptr inbounds nuw i8, ptr %.1538, i64 %index1084
  store <4 x i8> %i.ni, ptr %i.nj, align 1
  %index.next1087 = add nuw i64 %index1084, 4     ; 2 uses
  %i.nk = icmp eq i64 %index.next1087, %n.vec1083
  br i1 %i.nk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !295

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1088 = icmp eq i64 %n.vec1083, %wide.trip.count972
  br i1 %cmp.n1088, label %.loopexit723, label %.lr.ph830.preheader

.lr.ph830.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv969.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1083, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter1680 = and i64 %wide.trip.count972, 1
  %lcmp.mod1681.not = icmp eq i64 %xtraiter1680, 0
  br i1 %lcmp.mod1681.not, label %.lr.ph830.prol.loopexit, label %.lr.ph830.prol

.lr.ph830.prol:                                   ; preds = %.lr.ph830.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv969.ph
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = sub nsw i64 %indvars.iv969.ph, %i.mr
  %i.no = getelementptr inbounds i8, ptr %.1538, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1
  %.narrow642.prol = add i8 %i.np, %i.nm
  %i.nq = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv969.ph
  store i8 %.narrow642.prol, ptr %i.nq, align 1
  %indvars.iv.next970.prol = or disjoint i64 %indvars.iv969.ph, 1
  br label %.lr.ph830.prol.loopexit

.lr.ph830.prol.loopexit:                          ; preds = %.lr.ph830.prol, %.lr.ph830.preheader
  %indvars.iv969.unr = phi i64 [ %indvars.iv969.ph, %.lr.ph830.preheader ], [ %indvars.iv.next970.prol, %.lr.ph830.prol ]
  %i.nr = add nsw i64 %wide.trip.count972, -1
  %i.ns = icmp eq i64 %indvars.iv969.ph, %i.nr
  br i1 %i.ns, label %.loopexit723, label %.lr.ph830

bb.af:                                            ; preds = %bb.ae
  %i.nt = sext i32 %i.ej to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1538, ptr nonnull align 1 %.1580, i64 %i.nt, i1 false)
  br label %.loopexit723

.lr.ph830:                                        ; preds = %.lr.ph830.prol.loopexit, %.lr.ph830
  %indvars.iv969 = phi i64 [ %indvars.iv.next970.1, %.lr.ph830 ], [ %indvars.iv969.unr, %.lr.ph830.prol.loopexit ] ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv969
  %i.nv = load i8, ptr %i.nu, align 1
  %i.nw = sub nsw i64 %indvars.iv969, %i.mr
  %i.nx = getelementptr inbounds i8, ptr %.1538, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1
  %.narrow642 = add i8 %i.ny, %i.nv
  %i.nz = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv969
  store i8 %.narrow642, ptr %i.nz, align 1
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next970
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = sub nsw i64 %indvars.iv.next970, %i.mr
  %i.od = getelementptr inbounds i8, ptr %.1538, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1
  %.narrow642.1 = add i8 %i.oe, %i.ob
  %i.of = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next970
  store i8 %.narrow642.1, ptr %i.of, align 1
  %indvars.iv.next970.1 = add nuw nsw i64 %indvars.iv969, 2 ; 2 uses
  %exitcond973.not.1 = icmp eq i64 %indvars.iv.next970.1, %wide.trip.count972
  br i1 %exitcond973.not.1, label %.loopexit723, label %.lr.ph830, !llvm.loop !296

.lr.ph828:                                        ; preds = %.lr.ph828.prol.loopexit, %.lr.ph828
  %indvars.iv964 = phi i64 [ %indvars.iv.next965.3, %.lr.ph828 ], [ %indvars.iv964.unr, %.lr.ph828.prol.loopexit ] ; 7 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv964
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv964
  %i.oj = load i8, ptr %i.oi, align 1
  %.narrow640 = add i8 %i.oj, %i.oh
  %i.ok = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv964
  store i8 %.narrow640, ptr %i.ok, align 1
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next965
  %i.oo = load i8, ptr %i.on, align 1
  %.narrow640.1 = add i8 %i.oo, %i.om
  %i.op = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965
  store i8 %.narrow640.1, ptr %i.op, align 1
  %indvars.iv.next965.1 = add nuw nsw i64 %indvars.iv964, 2 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.1
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next965.1
  %i.ot = load i8, ptr %i.os, align 1
  %.narrow640.2 = add i8 %i.ot, %i.or
  %i.ou = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.1
  store i8 %.narrow640.2, ptr %i.ou, align 1
  %indvars.iv.next965.2 = add nuw nsw i64 %indvars.iv964, 3 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next965.2
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next965.2
  %i.oy = load i8, ptr %i.ox, align 1
  %.narrow640.3 = add i8 %i.oy, %i.ow
  %i.oz = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next965.2
  store i8 %.narrow640.3, ptr %i.oz, align 1
  %indvars.iv.next965.3 = add nuw nsw i64 %indvars.iv964, 4 ; 2 uses
  %exitcond968.not.3 = icmp eq i64 %indvars.iv.next965.3, %wide.trip.count967
  br i1 %exitcond968.not.3, label %.loopexit723, label %.lr.ph828, !llvm.loop !297

.lr.ph826:                                        ; preds = %.lr.ph826.prol.loopexit, %.lr.ph826
  %indvars.iv959 = phi i64 [ %indvars.iv.next960.1, %.lr.ph826 ], [ %indvars.iv959.unr, %.lr.ph826.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv959
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv959
  %i.pd = load i8, ptr %i.pc, align 1
  %i.pe = zext i8 %i.pd to i16
  %i.pf = sub nsw i64 %indvars.iv959, %i.ji
  %i.pg = getelementptr inbounds i8, ptr %.1538, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1
  %i.pi = zext i8 %i.ph to i16
  %i.pj = add nuw nsw i16 %i.pi, %i.pe
  %i.pk = lshr i16 %i.pj, 1
  %.tr637 = trunc nuw i16 %i.pk to i8
  %.narrow638 = add i8 %i.pb, %.tr637
  %i.pl = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv959
  store i8 %.narrow638, ptr %i.pl, align 1
  %indvars.iv.next960 = add nuw nsw i64 %indvars.iv959, 1 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next960
  %i.pn = load i8, ptr %i.pm, align 1
  %i.po = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next960
  %i.pp = load i8, ptr %i.po, align 1
  %i.pq = zext i8 %i.pp to i16
  %i.pr = sub nsw i64 %indvars.iv.next960, %i.ji
  %i.ps = getelementptr inbounds i8, ptr %.1538, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = zext i8 %i.pt to i16
  %i.pv = add nuw nsw i16 %i.pu, %i.pq
  %i.pw = lshr i16 %i.pv, 1
  %.tr637.1 = trunc nuw i16 %i.pw to i8
  %.narrow638.1 = add i8 %i.pn, %.tr637.1
  %i.px = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next960
  store i8 %.narrow638.1, ptr %i.px, align 1
  %indvars.iv.next960.1 = add nuw nsw i64 %indvars.iv959, 2 ; 2 uses
  %exitcond963.not.1 = icmp eq i64 %indvars.iv.next960.1, %wide.trip.count962
  br i1 %exitcond963.not.1, label %.loopexit723, label %.lr.ph826, !llvm.loop !298

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %.lr.ph824
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %.lr.ph824 ], [ %indvars.iv954.ph, %.lr.ph824.preheader ] ; 5 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv954
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = sub nsw i64 %indvars.iv954, %i.gv       ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %.1538, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1             ; 2 uses
  %i.qd = zext i8 %i.qc to i32                    ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv954
  %i.qf = load i8, ptr %i.qe, align 1             ; 2 uses
  %i.qg = zext i8 %i.qf to i32                    ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %i.eh, i64 %i.qa
  %i.qi = load i8, ptr %i.qh, align 1             ; 2 uses
  %i.qj = zext i8 %i.qi to i32                    ; 2 uses
  %i.qk = add nuw nsw i32 %i.qg, %i.qd
  %i.ql = sub nsw i32 %i.qk, %i.qj                ; 3 uses
  %i.qm = sub nsw i32 %i.ql, %i.qd
  %i.qn = tail call i32 @llvm.abs.i32(i32 %i.qm, i1 true) ; 2 uses
  %i.qo = sub nsw i32 %i.ql, %i.qg
  %i.qp = tail call i32 @llvm.abs.i32(i32 %i.qo, i1 true) ; 2 uses
  %i.qq = sub nsw i32 %i.ql, %i.qj
  %i.qr = tail call i32 @llvm.abs.i32(i32 %i.qq, i1 true) ; 2 uses
  %.not.i651 = icmp samesign ugt i32 %i.qn, %i.qp
  %.not20.i652 = icmp samesign ugt i32 %i.qn, %i.qr
  %or.cond.i653 = select i1 %.not.i651, i1 true, i1 %.not20.i652
  %.not21.i = icmp samesign ugt i32 %i.qp, %i.qr
  %i.qs = select i1 %.not21.i, i8 %i.qi, i8 %i.qf
  %.tr635 = select i1 %or.cond.i653, i8 %i.qs, i8 %i.qc
  %.narrow636 = add i8 %.tr635, %i.pz
  %i.qt = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv954
  store i8 %.narrow636, ptr %i.qt, align 1
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 2 uses
  %exitcond958.not = icmp eq i64 %indvars.iv.next955, %wide.trip.count957
  br i1 %exitcond958.not, label %.loopexit723, label %.lr.ph824, !llvm.loop !299

.lr.ph822:                                        ; preds = %.lr.ph822.prol.loopexit, %.lr.ph822
  %indvars.iv949 = phi i64 [ %indvars.iv.next950.1, %.lr.ph822 ], [ %indvars.iv949.unr, %.lr.ph822.prol.loopexit ] ; 5 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv949
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = sub nsw i64 %indvars.iv949, %i.fo
  %i.qx = getelementptr inbounds i8, ptr %.1538, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1
  %i.qz = lshr i8 %i.qy, 1
  %.narrow634 = add i8 %i.qz, %i.qv
  %i.ra = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv949
  store i8 %.narrow634, ptr %i.ra, align 1
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next950
  %i.rc = load i8, ptr %i.rb, align 1
  %i.rd = sub nsw i64 %indvars.iv.next950, %i.fo
  %i.re = getelementptr inbounds i8, ptr %.1538, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = lshr i8 %i.rf, 1
  %.narrow634.1 = add i8 %i.rg, %i.rc
  %i.rh = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv.next950
  store i8 %.narrow634.1, ptr %i.rh, align 1
  %indvars.iv.next950.1 = add nuw nsw i64 %indvars.iv949, 2 ; 2 uses
  %exitcond953.not.1 = icmp eq i64 %indvars.iv.next950.1, %wide.trip.count952
  br i1 %exitcond953.not.1, label %.loopexit723, label %.lr.ph822, !llvm.loop !300

.lr.ph820:                                        ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820
  %indvars.iv944 = phi i64 [ %indvars.iv.next945.1, %.lr.ph820 ], [ %indvars.iv944.unr, %.lr.ph820.prol.loopexit ] ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv944
  %i.rj = load i8, ptr %i.ri, align 1
  %i.rk = sub nsw i64 %indvars.iv944, %i.el
  %i.rl = getelementptr inbounds i8, ptr %.1538, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1
  %.narrow632 = add i8 %i.rm, %i.rj
  %i.rn = getelementptr inbounds nuw i8, ptr %.1538, i64 %indvars.iv944
  store i8 %.narrow632, ptr %i.rn, align 1
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.1580, i64 %indvars.iv.next945
  %i.rp = load i8, ptr %i.ro, align 1
  %i.rq = sub nsw i64 %indvars.iv.next945, %i.el
  %i.rr = getelementptr inbounds i8, ptr %.1538, i64 %i.rq
end_hunk_3
begin_hunk_4_@LoadImageFromCgltfImage:bb.a
  br i1 %i.h, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 97
  br i1 %i.k, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 116
  br i1 %i.n, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 97
  br i1 %i.q, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 58
  br i1 %i.t, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.h, %bb.i
  %i.u = phi i8 [ %.pre, %bb.i ], [ 100, %bb.h ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.h ] ; 3 uses
  switch i8 %i.u, label %bb.i [
    i8 0, label %bb.j
    i8 44, label %bb.k
  ]

bb.i:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.preheader

bb.j:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.369) #54
  br label %bb.aa

bb.k:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #51
  %sext = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext, 32
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %indvars.iv
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.l ], [ %i.y, %bb.k ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv82
  %i.z = load i8, ptr %gep, align 1
  %i.aa = icmp eq i8 %i.z, 61
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = trunc nsw i64 %indvars.iv82 to i32
  %i.ac = mul nsw i32 %i.ab, 3
  %i.ad = sdiv i32 %i.ac, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @LoadFileGLTFCallback, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @ReleaseFileGLTFCallback, ptr %i.af, align 8
  %i.ag = sext i32 %i.ad to i64
  %i.ah = call i32 @cgltf_load_buffer_base64(ptr noundef nonnull %3, i64 noundef %i.ag, ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.aj = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %4, ptr noundef nonnull @.str.9, ptr noundef %i.aj, i32 noundef %i.ad) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @free(ptr noundef %i.aj) #54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.aa

bb.p:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ak = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef nonnull %i.d) #54
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %5, ptr noundef %i.ak) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %bb.aa

bb.q:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 5 uses
  %.not65 = icmp eq ptr %i.am, null
  br i1 %.not65, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 28 uses
  %.not66 = icmp eq ptr %i.aq, null
  br i1 %.not66, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.as = load i64, ptr %i.ar, align 8            ; 14 uses
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #56 ; 8 uses
  %.not76 = icmp eq i64 %i.as, 0
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = load i64, ptr %i.ax, align 8
  %sext92 = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext92, 32              ; 9 uses
  %i.ba = sext i32 %spec.select to i64            ; 28 uses
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bb = add i64 %i.as, -1                       ; 2 uses
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = icmp eq i64 %i.bc, 4294967295
  %i.be = icmp ugt i64 %i.bb, 4294967295
  %i.bf = or i1 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.as
  %i.bg = add nsw i64 %i.as, -1
  %i.bh = mul i64 %i.bg, %i.ba
  %i.bi = getelementptr i8, ptr %i.aq, i64 %i.bh
  %scevgep95 = getelementptr i8, ptr %i.bi, i64 %i.az ; 4 uses
  %scevgep96 = getelementptr i8, ptr %i.aq, i64 %i.az ; 4 uses
  %i.bj = icmp ult ptr %scevgep95, %scevgep96
  %umin = select i1 %i.bj, ptr %scevgep95, ptr %scevgep96
  %i.bk = icmp ugt ptr %scevgep95, %scevgep96
  %umax = select i1 %i.bk, ptr %scevgep95, ptr %scevgep96
  %scevgep97 = getelementptr i8, ptr %umax, i64 1
  %bound0 = icmp ult ptr %i.at, %scevgep97
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.as, 16
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.as, 8
  %n.vec = and i64 %i.as, 8589934576              ; 6 uses
  %i.bm = mul i64 %n.vec, %i.ba
  %i.bn = add i64 %i.az, %i.bm
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = shl nsw i64 %i.ba, 1
  %i.bq = mul nsw i64 %i.ba, 3
  %i.br = shl nsw i64 %i.ba, 2
  %i.bs = mul nsw i64 %i.ba, 5
  %i.bt = mul nsw i64 %i.ba, 6
  %i.bu = mul nsw i64 %i.ba, 7
  %i.bv = shl nsw i64 %i.ba, 3
  %i.bw = mul nsw i64 %i.ba, 9
  %i.bx = mul nsw i64 %i.ba, 10
  %i.by = mul nsw i64 %i.ba, 11
  %i.bz = mul nsw i64 %i.ba, 12
  %i.ca = mul nsw i64 %i.ba, 13
  %i.cb = mul nsw i64 %i.ba, 14
  %i.cc = mul nsw i64 %i.ba, 15
  %invariant.gep109 = getelementptr i8, ptr %i.aq, i64 %i.ba
  %invariant.gep111 = getelementptr i8, ptr %i.aq, i64 %i.bp
  %invariant.gep113 = getelementptr i8, ptr %i.aq, i64 %i.bq
  %invariant.gep115 = getelementptr i8, ptr %i.aq, i64 %i.br
  %invariant.gep117 = getelementptr i8, ptr %i.aq, i64 %i.bs
  %invariant.gep119 = getelementptr i8, ptr %i.aq, i64 %i.bt
  %invariant.gep121 = getelementptr i8, ptr %i.aq, i64 %i.bu
  %invariant.gep123 = getelementptr i8, ptr %i.aq, i64 %i.bv
  %invariant.gep125 = getelementptr i8, ptr %i.aq, i64 %i.bw
  %invariant.gep127 = getelementptr i8, ptr %i.aq, i64 %i.bx
  %invariant.gep129 = getelementptr i8, ptr %i.aq, i64 %i.by
  %invariant.gep131 = getelementptr i8, ptr %i.aq, i64 %i.bz
  %invariant.gep133 = getelementptr i8, ptr %i.aq, i64 %i.ca
  %invariant.gep135 = getelementptr i8, ptr %i.aq, i64 %i.cb
  %invariant.gep137 = getelementptr i8, ptr %i.aq, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = mul i64 %index, %i.ba
  %i.ce = add i64 %i.az, %i.cd                    ; 16 uses
  %i.cf = getelementptr inbounds i8, ptr %i.aq, i64 %i.ce
  %gep110 = getelementptr i8, ptr %invariant.gep109, i64 %i.ce
  %gep112 = getelementptr i8, ptr %invariant.gep111, i64 %i.ce
  %gep114 = getelementptr i8, ptr %invariant.gep113, i64 %i.ce
  %gep116 = getelementptr i8, ptr %invariant.gep115, i64 %i.ce
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %i.ce
  %gep120 = getelementptr i8, ptr %invariant.gep119, i64 %i.ce
  %gep122 = getelementptr i8, ptr %invariant.gep121, i64 %i.ce
  %gep124 = getelementptr i8, ptr %invariant.gep123, i64 %i.ce
  %gep126 = getelementptr i8, ptr %invariant.gep125, i64 %i.ce
  %gep128 = getelementptr i8, ptr %invariant.gep127, i64 %i.ce
  %gep130 = getelementptr i8, ptr %invariant.gep129, i64 %i.ce
  %gep132 = getelementptr i8, ptr %invariant.gep131, i64 %i.ce
  %gep134 = getelementptr i8, ptr %invariant.gep133, i64 %i.ce
  %gep136 = getelementptr i8, ptr %invariant.gep135, i64 %i.ce
  %gep138 = getelementptr i8, ptr %invariant.gep137, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !395
  %i.ch = load i8, ptr %gep110, align 1, !alias.scope !395
  %i.ci = load i8, ptr %gep112, align 1, !alias.scope !395
  %i.cj = load i8, ptr %gep114, align 1, !alias.scope !395
  %i.ck = load i8, ptr %gep116, align 1, !alias.scope !395
  %i.cl = load i8, ptr %gep118, align 1, !alias.scope !395
  %i.cm = load i8, ptr %gep120, align 1, !alias.scope !395
  %i.cn = load i8, ptr %gep122, align 1, !alias.scope !395
  %i.co = load i8, ptr %gep124, align 1, !alias.scope !395
  %i.cp = load i8, ptr %gep126, align 1, !alias.scope !395
  %i.cq = load i8, ptr %gep128, align 1, !alias.scope !395
  %i.cr = load i8, ptr %gep130, align 1, !alias.scope !395
  %i.cs = load i8, ptr %gep132, align 1, !alias.scope !395
  %i.ct = load i8, ptr %gep134, align 1, !alias.scope !395
  %i.cu = load i8, ptr %gep136, align 1, !alias.scope !395
  %i.cv = load i8, ptr %gep138, align 1, !alias.scope !395
  %i.cw = insertelement <16 x i8> poison, i8 %i.cg, i64 0
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 1
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 2
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 3
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 4
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 5
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 6
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 7
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 8
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 9
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 10
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 11
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 12
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 13
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 14
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.at, i64 %index
  store <16 x i8> %i.dl, ptr %i.dm, align 1, !alias.scope !396, !noalias !395
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !397

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.as, 8589934584           ; 5 uses
  %i.do = mul i64 %n.vec100, %i.ba
  %i.dp = add i64 %i.az, %i.do
  %i.dq = trunc i64 %n.vec100 to i32
  %i.dr = shl nsw i64 %i.ba, 1
  %i.ds = mul nsw i64 %i.ba, 3
  %i.dt = shl nsw i64 %i.ba, 2
  %i.du = mul nsw i64 %i.ba, 5
  %i.dv = mul nsw i64 %i.ba, 6
  %i.dw = mul nsw i64 %i.ba, 7
  %invariant.gep139 = getelementptr i8, ptr %i.aq, i64 %i.ba
  %invariant.gep141 = getelementptr i8, ptr %i.aq, i64 %i.dr
  %invariant.gep143 = getelementptr i8, ptr %i.aq, i64 %i.ds
  %invariant.gep145 = getelementptr i8, ptr %i.aq, i64 %i.dt
  %invariant.gep147 = getelementptr i8, ptr %i.aq, i64 %i.du
  %invariant.gep149 = getelementptr i8, ptr %i.aq, i64 %i.dv
  %invariant.gep151 = getelementptr i8, ptr %i.aq, i64 %i.dw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index101 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = mul i64 %index101, %i.ba
  %i.dy = add i64 %i.az, %i.dx                    ; 8 uses
  %i.dz = getelementptr inbounds i8, ptr %i.aq, i64 %i.dy
  %gep140 = getelementptr i8, ptr %invariant.gep139, i64 %i.dy
  %gep142 = getelementptr i8, ptr %invariant.gep141, i64 %i.dy
  %gep144 = getelementptr i8, ptr %invariant.gep143, i64 %i.dy
  %gep146 = getelementptr i8, ptr %invariant.gep145, i64 %i.dy
  %gep148 = getelementptr i8, ptr %invariant.gep147, i64 %i.dy
  %gep150 = getelementptr i8, ptr %invariant.gep149, i64 %i.dy
  %gep152 = getelementptr i8, ptr %invariant.gep151, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !395
  %i.eb = load i8, ptr %gep140, align 1, !alias.scope !395
  %i.ec = load i8, ptr %gep142, align 1, !alias.scope !395
  %i.ed = load i8, ptr %gep144, align 1, !alias.scope !395
  %i.ee = load i8, ptr %gep146, align 1, !alias.scope !395
  %i.ef = load i8, ptr %gep148, align 1, !alias.scope !395
  %i.eg = load i8, ptr %gep150, align 1, !alias.scope !395
  %i.eh = load i8, ptr %gep152, align 1, !alias.scope !395
  %i.ei = insertelement <8 x i8> poison, i8 %i.ea, i64 0
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 1
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 2
  %i.el = insertelement <8 x i8> %i.ek, i8 %i.ed, i64 3
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ee, i64 4
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 5
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 6
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 7
  %i.eq = getelementptr inbounds nuw i8, ptr %i.at, i64 %index101
  store <8 x i8> %i.ep, ptr %i.eq, align 1, !alias.scope !396, !noalias !395
  %index.next102 = add nuw i64 %index101, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next102, %n.vec100
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !393

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %i.as, %n.vec100
  br i1 %cmp.n103, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv85.ph = phi i64 [ %i.az, %iter.check ], [ %i.az, %vector.scevcheck ], [ %i.az, %vector.memcheck ], [ %i.bn, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec100, %vec.epilog.middle.block ]
  %.075.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.bo, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.es = trunc nuw i64 %i.as to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %.lcssa = phi i32 [ 0, %bb.s ], [ %i.es, %._crit_edge.loopexit ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eu = load ptr, ptr %i.et, align 8            ; 4 uses
  %i.ev = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(11) @.str.370) #51
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.u, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ %indvars.iv85.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ex = phi i64 [ %i.fc, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.075 = phi i32 [ %i.fb, %.lr.ph ], [ %.075.ph, %.lr.ph.preheader ]
  %i.ey = getelementptr inbounds i8, ptr %i.aq, i64 %indvars.iv85
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ex
  store i8 %i.ez, ptr %i.fa, align 1
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, %i.ba
  %i.fb = add i32 %.075, 1                        ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp ugt i64 %i.as, %i.fc
  br i1 %i.fd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !394

bb.t:                                             ; preds = %._crit_edge
  %i.fe = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(10) @.str.371) #51
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %6, ptr noundef nonnull @.str.9, ptr noundef %i.at, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.fg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(12) @.str.372) #51
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(11) @.str.373) #51
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  call void @LoadImageFromMemory(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %7, ptr noundef nonnull @.str.374, ptr noundef %i.at, i32 noundef %.lcssa) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fk = tail call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.335, ptr noundef %2, ptr noundef null) #54
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.375, ptr noundef %i.fk) #54
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u
  call void @free(ptr noundef %i.at) #54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.j, %bb.o, %bb.p, %bb.z, %bb.r, %bb.q, %bb.a
  ret void
}

declare void @LoadTextureFromImage(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare void @UnloadImage(ptr noundef byval(%struct.Image) align 8) local_unnamed_addr #34

declare i32 @GetImageColor(ptr noundef byval(%struct.Image) align 8, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: inlinehint nounwind uwtable
declare void @MatrixDecompose(ptr noundef byval(%struct.Matrix) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #36

declare void @LoadImageFromMemory(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #34

declare void @LoadImage(ptr dead_on_unwind writable sret(%struct.Image) align 8, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @GetPoseAtTimeGLTF(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #33 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [3 x float], align 8              ; 6 uses
  %i.d = alloca [3 x float], align 8              ; 8 uses
  %i.e = alloca [3 x float], align 8              ; 12 uses
  %i.f = alloca [4 x float], align 16             ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = alloca [4 x float], align 16             ; 13 uses
  %i.i = icmp ugt i32 %0, 2
  br i1 %i.i, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store float 0.000000e+00, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store float 0.000000e+00, ptr %i.b, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %.thread227

.lr.ph:                                           ; preds = %bb.b
  %i.n = add i64 %i.k, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.p = load i32, ptr %i.o, align 8
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %wide.trip.count = and i64 %i.n, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  br i1 %.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull readonly %1, i64 noundef %indvars.iv) ; 2 uses
  %.not30.not.i = icmp eq ptr %i.w, null
  br i1 %.not30.not.i, label %.thread.i, label %cgltf_accessor_read_float.exit

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.x = load ptr, ptr %i.t, align 8              ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %cgltf_accessor_read_float.exit.thread216, label %bb.e

cgltf_accessor_read_float.exit.thread216:         ; preds = %.thread.i
  store i32 0, ptr %i.a, align 4
  br label %bb.g

bb.e:                                             ; preds = %.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.f, label %cgltf_buffer_view_data.exit.thread33.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i, label %.thread233, label %cgltf_buffer_view_data.exit.i

cgltf_buffer_view_data.exit.i:                    ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  br label %cgltf_buffer_view_data.exit.thread33.i

cgltf_buffer_view_data.exit.thread33.i:           ; preds = %cgltf_buffer_view_data.exit.i, %bb.e
  %.0.i35.i = phi ptr [ %i.ah, %cgltf_buffer_view_data.exit.i ], [ %i.aa, %bb.e ]
  %i.ai = load i64, ptr %i.u, align 8
  %i.aj = load i64, ptr %i.v, align 8
  %i.ak = mul i64 %i.aj, %indvars.iv
  %i.al = getelementptr i8, ptr %.0.i35.i, i64 %i.ai
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  br label %cgltf_accessor_read_float.exit

cgltf_accessor_read_float.exit:                   ; preds = %bb.d, %cgltf_buffer_view_data.exit.thread33.i
  %.sink = phi ptr [ %i.am, %cgltf_buffer_view_data.exit.thread33.i ], [ %i.w, %bb.d ]
  %i.an = load i32, ptr %i.q, align 8
  %i.ao = load i32, ptr %i.r, align 8
  %i.ap = load i32, ptr %i.s, align 4
  %i.aq = call fastcc i32 @cgltf_element_read_float(ptr noundef %.sink, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, ptr noundef nonnull %i.a, i64 noundef 1)
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.thread233, label %bb.g

bb.g:                                             ; preds = %cgltf_accessor_read_float.exit.thread216, %cgltf_accessor_read_float.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  br i1 %.not.i, label %.thread.i185, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull readonly %1, i64 noundef %indvars.iv.next) ; 2 uses
  %.not30.not.i183 = icmp eq ptr %i.ar, null
  br i1 %.not30.not.i183, label %.thread.i185, label %cgltf_accessor_read_float.exit191

.thread.i185:                                     ; preds = %bb.h, %bb.g
  %i.as = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %cgltf_accessor_read_float.exit191.thread221, label %bb.i

cgltf_accessor_read_float.exit191.thread221:      ; preds = %.thread.i185
  store i32 0, ptr %i.b, align 4
  br label %bb.k

bb.i:                                             ; preds = %.thread.i185
end_hunk_4
