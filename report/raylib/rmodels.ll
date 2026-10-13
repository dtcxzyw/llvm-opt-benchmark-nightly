Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@cgltf_free:bb.a
  %i.agx = load ptr, ptr %i.abl, align 8
  %i.agy = getelementptr inbounds nuw [80 x i8], ptr %i.agx, i64 %.0541826
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 24
  %i.aha = load ptr, ptr %i.agz, align 8
  %i.ahb = getelementptr inbounds nuw [64 x i8], ptr %i.aha, i64 %.0539821
  %.val578 = load ptr, ptr %i.e, align 8
  %.val579 = load ptr, ptr %i.g, align 8
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 40
  %.val580 = load ptr, ptr %i.ahc, align 8
  tail call void %.val578(ptr noundef %.val579, ptr noundef %.val580) #54, !inline_history !31
  %i.ahd = add nuw i64 %.0539821, 1               ; 2 uses
  %i.ahe = load ptr, ptr %i.abl, align 8          ; 3 uses
  %i.ahf = getelementptr inbounds nuw [80 x i8], ptr %i.ahe, i64 %.0541826
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 32
  %i.ahh = load i64, ptr %i.ahg, align 8
  %i.ahi = icmp ult i64 %i.ahd, %i.ahh
  br i1 %i.ahi, label %.lr.ph823, label %._crit_edge824

._crit_edge833:                                   ; preds = %bb.x, %._crit_edge829
  %i.ahj = load ptr, ptr %i.e, align 8
  %i.ahk = load ptr, ptr %i.g, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ahm = load ptr, ptr %i.ahl, align 8
  tail call void %i.ahj(ptr noundef %i.ahk, ptr noundef %i.ahm) #54
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aho = load ptr, ptr %i.ahn, align 8          ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ahq = load i64, ptr %i.ahp, align 8          ; 2 uses
  %.not.i718 = icmp eq i64 %i.ahq, 0
  br i1 %.not.i718, label %cgltf_free_extensions.exit722, label %.lr.ph.i719

.lr.ph.i719:                                      ; preds = %._crit_edge833, %.lr.ph.i719
  %.013.i720 = phi i64 [ %i.ahz, %.lr.ph.i719 ], [ 0, %._crit_edge833 ] ; 2 uses
  %i.ahr = load ptr, ptr %i.e, align 8
  %i.ahs = load ptr, ptr %i.g, align 8
  %i.aht = getelementptr inbounds nuw [16 x i8], ptr %i.aho, i64 %.013.i720 ; 2 uses
  %i.ahu = load ptr, ptr %i.aht, align 8
  tail call void %i.ahr(ptr noundef %i.ahs, ptr noundef %i.ahu) #54, !inline_history !30
  %i.ahv = load ptr, ptr %i.e, align 8
  %i.ahw = load ptr, ptr %i.g, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahy = load ptr, ptr %i.ahx, align 8
  tail call void %i.ahv(ptr noundef %i.ahw, ptr noundef %i.ahy) #54, !inline_history !30
  %i.ahz = add nuw i64 %.013.i720, 1              ; 2 uses
  %exitcond.not.i721 = icmp eq i64 %i.ahz, %i.ahq
  br i1 %exitcond.not.i721, label %cgltf_free_extensions.exit722, label %.lr.ph.i719

cgltf_free_extensions.exit722:                    ; preds = %.lr.ph.i719, %._crit_edge833
  %i.aia = load ptr, ptr %i.e, align 8
  %i.aib = load ptr, ptr %i.g, align 8
  tail call void %i.aia(ptr noundef %i.aib, ptr noundef %i.aho) #54, !inline_history !30
  %.val = load ptr, ptr %i.e, align 8
  %.val570 = load ptr, ptr %i.g, align 8
  %i.aic = getelementptr i8, ptr %0, i64 360
  %.val571 = load ptr, ptr %i.aic, align 8
  tail call void %.val(ptr noundef %.val570, ptr noundef %.val571) #54, !inline_history !31
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.aie = load i64, ptr %i.aid, align 8
  %.not866 = icmp eq i64 %i.aie, 0
  br i1 %.not866, label %._crit_edge836, label %.lr.ph835

.lr.ph835:                                        ; preds = %cgltf_free_extensions.exit722
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph832, %bb.x
  %.0538830 = phi i64 [ 0, %.lr.ph832 ], [ %i.aio, %bb.x ] ; 3 uses
  %i.aig = load ptr, ptr %i.e, align 8
  %i.aih = load ptr, ptr %i.g, align 8
  %i.aii = load ptr, ptr %i.ada, align 8
  %i.aij = getelementptr inbounds nuw [32 x i8], ptr %i.aii, i64 %.0538830
  %i.aik = load ptr, ptr %i.aij, align 8
  tail call void %i.aig(ptr noundef %i.aih, ptr noundef %i.aik) #54
  %i.ail = load ptr, ptr %i.ada, align 8
  %i.aim = getelementptr inbounds nuw [32 x i8], ptr %i.ail, i64 %.0538830
  %.val572 = load ptr, ptr %i.e, align 8
  %.val573 = load ptr, ptr %i.g, align 8
  %i.ain = getelementptr i8, ptr %i.aim, i64 24
  %.val574 = load ptr, ptr %i.ain, align 8
  tail call void %.val572(ptr noundef %.val573, ptr noundef %.val574) #54, !inline_history !31
  %i.aio = add nuw i64 %.0538830, 1               ; 2 uses
  %i.aip = load i64, ptr %i.acy, align 8
  %i.aiq = icmp ult i64 %i.aio, %i.aip
  br i1 %i.aiq, label %bb.x, label %._crit_edge833

._crit_edge836:                                   ; preds = %bb.y, %cgltf_free_extensions.exit722
  %i.air = load ptr, ptr %i.e, align 8
  %i.ais = load ptr, ptr %i.g, align 8
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aiu = load ptr, ptr %i.ait, align 8
  tail call void %i.air(ptr noundef %i.ais, ptr noundef %i.aiu) #54
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.aiw = load i64, ptr %i.aiv, align 8
  %.not867 = icmp eq i64 %i.aiw, 0
  br i1 %.not867, label %._crit_edge840, label %.lr.ph839

.lr.ph839:                                        ; preds = %._crit_edge836
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph835, %bb.y
  %.0537834 = phi i64 [ 0, %.lr.ph835 ], [ %i.ajd, %bb.y ] ; 2 uses
  %i.aiy = load ptr, ptr %i.e, align 8
  %i.aiz = load ptr, ptr %i.g, align 8
  %i.aja = load ptr, ptr %i.aif, align 8
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.aja, i64 %.0537834
  %i.ajc = load ptr, ptr %i.ajb, align 8
  tail call void %i.aiy(ptr noundef %i.aiz, ptr noundef %i.ajc) #54
  %i.ajd = add nuw i64 %.0537834, 1               ; 2 uses
  %i.aje = load i64, ptr %i.aid, align 8
  %i.ajf = icmp ult i64 %i.ajd, %i.aje
  br i1 %i.ajf, label %bb.y, label %._crit_edge836

._crit_edge840:                                   ; preds = %bb.z, %._crit_edge836
  %i.ajg = load ptr, ptr %i.e, align 8
  %i.ajh = load ptr, ptr %i.g, align 8
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ajj = load ptr, ptr %i.aji, align 8
  tail call void %i.ajg(ptr noundef %i.ajh, ptr noundef %i.ajj) #54
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ajn = load i64, ptr %i.ajm, align 8
  tail call void %spec.select(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %i.ajl, i64 noundef %i.ajn) #54
  %i.ajo = load ptr, ptr %i.e, align 8
  %i.ajp = load ptr, ptr %i.g, align 8
  tail call void %i.ajo(ptr noundef %i.ajp, ptr noundef nonnull %0) #54
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph839, %bb.z
  %.0837 = phi i64 [ 0, %.lr.ph839 ], [ %i.ajv, %bb.z ] ; 2 uses
  %i.ajq = load ptr, ptr %i.e, align 8
  %i.ajr = load ptr, ptr %i.g, align 8
  %i.ajs = load ptr, ptr %i.aix, align 8
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %.0837
  %i.aju = load ptr, ptr %i.ajt, align 8
  tail call void %i.ajq(ptr noundef %i.ajr, ptr noundef %i.aju) #54
  %i.ajv = add nuw i64 %.0837, 1                  ; 2 uses
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
  %i.ar = insertelement <4 x float> poison, float %i.x, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.s, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.am, i64 3
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.av = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.aw = insertelement <4 x float> %i.av, float %i.u, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.h, i64 3
  %i.ay = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, float %i.ak, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.ab, i64 2
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.ax, <4 x float> %i.az) ; 4 uses
  %i.bb = insertelement <4 x float> %i.ba, float 1.000000e+00, i64 3
  %i.bc = insertelement <4 x float> %i.bb, float %i.aa, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.ac, i64 2
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ah, <4 x float> %i.bd)
  %i.bf = fmul <4 x float> %i.aj, %i.be
  %i.bg = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ba, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bh = insertelement <2 x float> poison, float %i.z, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.w, i64 1
  %i.bj = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.bm = insertelement <2 x float> %i.bl, float %i.an, i64 1
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bm)
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bg, <4 x float> %i.bo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.bq = fmul <4 x float> %i.ap, %i.bp
  %2 = fneg float %i.an
  %i.br = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.x, i64 1
  %i.bt = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = insertelement <2 x float> %i.bt, float %i.u, i64 0
  %i.bv = insertelement <2 x float> %i.bl, float %2, i64 0
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bv)
  %i.bx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bz = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ba, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cc = fmul <4 x float> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = load <2 x float>, ptr %i.d, align 8
  store <4 x float> %i.bf, ptr %1, align 4
  store <4 x float> %i.bq, ptr %i.al, align 4
  store <4 x float> %i.cc, ptr %i.aq, align 4
  %i.cf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.f, i64 2
  %i.cg = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ch, ptr %i.cd, align 4
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
  %.promoted = load float, ptr %1, align 4
  %.promoted42 = load float, ptr %i.c, align 4
  %.promoted44 = load float, ptr %i.e, align 4
  %.promoted45 = load float, ptr %i.f, align 4
  %.promoted47 = load float, ptr %i.h, align 4
  %.promoted48 = load float, ptr %i.i, align 4
  %.promoted50 = load float, ptr %i.a, align 4
  %.promoted51 = load float, ptr %i.k, align 4
  %.promoted52 = load float, ptr %i.l, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %cgltf_node_transform_local.exit
  %i.m = phi float [ %.promoted52, %.lr.ph ], [ %i.ey, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.n = phi float [ %.promoted51, %.lr.ph ], [ %i.fg, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.o = phi float [ %.promoted50, %.lr.ph ], [ %i.ff, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.p = phi float [ %.promoted49, %.lr.ph ], [ %i.ew, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.q = phi float [ %.promoted48, %.lr.ph ], [ %i.fe, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.r = phi float [ %.promoted47, %.lr.ph ], [ %i.fd, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.s = phi float [ %.promoted46, %.lr.ph ], [ %i.ev, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.t = phi float [ %.promoted45, %.lr.ph ], [ %i.fc, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.u = phi float [ %.promoted44, %.lr.ph ], [ %i.fb, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.v = phi float [ %.promoted43, %.lr.ph ], [ %i.eu, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.w = phi float [ %.promoted42, %.lr.ph ], [ %i.fa, %cgltf_node_transform_local.exit ] ; 2 uses
  %i.x = phi float [ %.promoted, %.lr.ph ], [ %i.ez, %cgltf_node_transform_local.exit ] ; 2 uses
  %.040 = phi ptr [ %.038, %.lr.ph ], [ %.0, %cgltf_node_transform_local.exit ] ; 19 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.040, i64 92
  %i.z = load i32, ptr %i.y, align 4
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.040, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 144
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 152
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 160
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 168
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 176
  %i.ab = load <2 x float>, ptr %i.aa, align 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ac = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 8
  %i.ad = load <2 x float>, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.21.0.copyload = load float, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 184
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 188
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 192
  %i.ae = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %.sroa.14.0.copyload, i64 1
  br label %cgltf_node_transform_local.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.040, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %.040, i64 100
  %i.ai = getelementptr inbounds nuw i8, ptr %.040, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %.040, i64 108
  %i.ak = getelementptr inbounds nuw i8, ptr %.040, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %.040, i64 120
  %i.am = load float, ptr %i.al, align 4          ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.040, i64 124
  %i.ao = getelementptr inbounds nuw i8, ptr %.040, i64 132
  %i.ap = load <2 x float>, ptr %i.aj, align 4    ; 3 uses
  %i.aq = load <2 x float>, ptr %i.ak, align 4    ; 4 uses
  %i.ar = load float, ptr %i.ao, align 4          ; 2 uses
  %i.as = fmul <2 x float> %i.ap, splat (float 2.000000e+00) ; 5 uses
  %i.at = extractelement <2 x float> %i.as, i64 1 ; 2 uses
  %i.au = fneg float %i.at                        ; 2 uses
  %i.av = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.au, float %i.av, float 1.000000e+00)
  %i.ax = extractelement <2 x float> %i.aq, i64 1
  %i.ay = fmul float %i.ax, 2.000000e+00          ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.ay, %i.am                 ; 2 uses
  %i.bb = insertelement <2 x float> %i.as, float %i.az, i64 1 ; 2 uses
  %i.bc = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.aw, i64 1
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.aq, <2 x float> %i.bd)
  %i.bf = fmul float %i.at, %i.am                 ; 2 uses
  %i.bg = fneg float %i.bf
  %i.bh = extractelement <2 x float> %i.as, i64 0 ; 2 uses
  %i.bi = fneg float %i.ba
  %i.bj = fneg float %i.bh
  %i.bk = extractelement <2 x float> %i.ap, i64 0
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bk, float 1.000000e+00) ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bl, i64 1
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.aq, <2 x float> %i.bn)
  %i.bp = fmul float %i.bh, %i.am                 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.an, align 4    ; 3 uses
  %i.br = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bp, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.bu, <2 x float> %i.bw)
  %i.by = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x float> %i.bo, %i.by
  %i.ca = fmul <2 x float> %i.bx, %i.bq
  %i.cb = fneg float %i.bp
  %i.cc = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.cb, i64 1
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.bu, <2 x float> %i.cd)
  %i.cf = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.ce, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.au, float %i.av, float %i.bl)
  %i.cj = fmul float %i.ci, %i.ar
  br label %cgltf_node_transform_local.exit

cgltf_node_transform_local.exit:                  ; preds = %bb.c, %bb.d
  %.sroa.28.0.in = phi ptr [ %i.ai, %bb.d ], [ %.sroa.28.0..sroa_idx, %bb.c ]
  %.sroa.26.0.in = phi ptr [ %i.ah, %bb.d ], [ %.sroa.26.0..sroa_idx, %bb.c ]
  %.sroa.24.0.in = phi ptr [ %i.ag, %bb.d ], [ %.sroa.24.0..sroa_idx, %bb.c ]
  %.sroa.21.0 = phi float [ %i.cj, %bb.d ], [ %.sroa.21.0.copyload, %bb.c ]
  %i.ck = phi <2 x float> [ %i.ch, %bb.d ], [ %i.ad, %bb.c ] ; 4 uses
  %i.cl = phi <2 x float> [ %i.bt, %bb.d ], [ %i.ab, %bb.c ] ; 4 uses
  %i.cm = phi <2 x float> [ %i.bz, %bb.d ], [ %i.ac, %bb.c ] ; 4 uses
  %i.cn = phi <2 x float> [ %i.ca, %bb.d ], [ %i.af, %bb.c ] ; 2 uses
  %.sroa.24.0 = load float, ptr %.sroa.24.0.in, align 8
  %.sroa.26.0 = load float, ptr %.sroa.26.0.in, align 4
  %.sroa.28.0 = load float, ptr %.sroa.28.0.in, align 8
  %i.co = insertelement <2 x float> poison, float %i.w, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cm, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.x, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cl, <2 x float> %i.cq)
  %i.cu = insertelement <2 x float> poison, float %i.v, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.ck, <2 x float> %i.ct) ; 3 uses
  store <2 x float> %i.cw, ptr %1, align 4
  %i.cx = insertelement <2 x float> poison, float %i.t, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.cm, %i.cy
  %i.da = insertelement <2 x float> poison, float %i.u, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cl, <2 x float> %i.cz)
  %i.dd = insertelement <2 x float> poison, float %i.s, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.ck, <2 x float> %i.dc) ; 3 uses
  store <2 x float> %i.df, ptr %i.e, align 4
  %i.dg = insertelement <2 x float> poison, float %i.q, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.cm, %i.dh
  %i.dj = insertelement <2 x float> poison, float %i.r, i64 0
end_hunk_0
begin_hunk_1_@LoadModelAnimations:bb.a
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dl, i64 76
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = load ptr, ptr %i.bq, align 8
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv443.i
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw [40 x i8], ptr %i.ka, i64 %indvars.iv440.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 28 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4
  %i.ke = call float @llvm.fmuladd.f32(float %i.jv, float %i.jx, float %i.kd)
  store float %i.ke, ptr %i.kc, align 4
  %i.kf = add nsw i32 %.8.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9.i = phi i32 [ %i.kf, %bb.w ], [ %.8.i, %bb.v ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.kh = load float, ptr %i.kg, align 4
  %i.ki = load ptr, ptr %i.bq, align 8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv443.i
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = getelementptr inbounds nuw [40 x i8], ptr %i.kk, i64 %indvars.iv440.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  store float %i.kh, ptr %i.km, align 4
  %i.kn = and i32 %i.dt, 256
  %.not384.i = icmp eq i32 %i.kn, 0
  br i1 %.not384.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ko = sext i32 %.9.i to i64
  %i.kp = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2
  %i.kr = uitofp i16 %i.kq to float
  %i.ks = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.kt = load float, ptr %i.ks, align 4
  %i.ku = load ptr, ptr %i.bq, align 8
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv443.i
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds nuw [40 x i8], ptr %i.kw, i64 %indvars.iv440.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4
  %i.la = call float @llvm.fmuladd.f32(float %i.kr, float %i.kt, float %i.kz)
  store float %i.la, ptr %i.ky, align 4
  %i.lb = add nsw i32 %.9.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.10.i = phi i32 [ %i.lb, %bb.y ], [ %.9.i, %bb.x ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.ld = load float, ptr %i.lc, align 4
  %i.le = load ptr, ptr %i.bq, align 8
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv443.i
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %indvars.iv440.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 36
  store float %i.ld, ptr %i.li, align 4
  %i.lj = and i32 %i.dt, 512
  %.not385.i = icmp eq i32 %i.lj, 0
  br i1 %.not385.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lk = sext i32 %.10.i to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2
  %i.ln = uitofp i16 %i.lm to float
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dl, i64 84
  %i.lp = load float, ptr %i.lo, align 4
  %i.lq = load ptr, ptr %i.bq, align 8
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv443.i
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw [40 x i8], ptr %i.ls, i64 %indvars.iv440.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 36 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4
  %i.lw = call float @llvm.fmuladd.f32(float %i.ln, float %i.lp, float %i.lv)
  store float %i.lw, ptr %i.lu, align 4
  %i.lx = add nsw i32 %.10.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.11.i = phi i32 [ %i.lx, %bb.aa ], [ %.10.i, %bb.z ] ; 2 uses
  %i.ly = load ptr, ptr %i.bq, align 8
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv443.i
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw [40 x i8], ptr %i.ma, i64 %indvars.iv440.i ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 12 ; 2 uses
  %i.md = load <2 x float>, ptr %i.mc, align 4    ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 20 ; 2 uses
  %i.mf = load <2 x float>, ptr %i.me, align 4    ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.md, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.md, %i.md
  %i.mg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.mh = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %.sroa.0.0.vec.extract.i.i, float %i.mg)
  %.sroa.7.8.vec.extract.i.i = extractelement <2 x float> %i.mf, i64 0 ; 2 uses
  %i.mi = call float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract.i.i, float %.sroa.7.8.vec.extract.i.i, float %i.mh)
  %.sroa.7.12.vec.extract.i.i = extractelement <2 x float> %i.mf, i64 1 ; 2 uses
  %i.mj = call float @llvm.fmuladd.f32(float %.sroa.7.12.vec.extract.i.i, float %.sroa.7.12.vec.extract.i.i, float %i.mi) ; 2 uses
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.mj)
  %i.mk = fcmp oeq float %i.mj, 0.000000e+00
  %i.ml = fdiv float 1.000000e+00, %sqrt.i.i
  %i.mm = select i1 %i.mk, float 1.000000e+00, float %i.ml
  %i.mn = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mp = fmul <2 x float> %i.md, %i.mo
  %i.mq = fmul <2 x float> %i.mf, %i.mo
  store <2 x float> %i.mp, ptr %i.mc, align 4
  store <2 x float> %i.mq, ptr %i.me, align 4
  %indvars.iv.next441.i = add nuw nsw i64 %indvars.iv440.i, 1 ; 2 uses
  %i.mr = load i32, ptr %i.o, align 4             ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = icmp samesign ult i64 %indvars.iv.next441.i, %i.ms
  br i1 %i.mt, label %.lr.ph412.i, label %._crit_edge413.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge418.i
  %i.mu = phi i32 [ %i.na, %._crit_edge418.i ], [ %i.dh, %.preheader.lr.ph.i ] ; 2 uses
  %i.mv = phi i32 [ %i.nb, %._crit_edge418.i ], [ %i.dh, %.preheader.lr.ph.i ] ; 2 uses
  %indvars.iv451.i = phi i64 [ %indvars.iv.next452.i, %._crit_edge418.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph417.i, label %._crit_edge418.i

._crit_edge420.i:                                 ; preds = %._crit_edge418.i, %.preheader.lr.ph.i, %.preheader406.i
  call void @free(ptr noundef %i.bj) #54
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 1 ; 2 uses
  %i.mx = load i32, ptr %i.aa, align 4
  %i.my = zext i32 %i.mx to i64
  %i.mz = icmp samesign ult i64 %indvars.iv.next457.i, %i.my
  br i1 %i.mz, label %bb.h, label %._crit_edge424.i

._crit_edge418.i:                                 ; preds = %bb.ad, %.preheader.i
  %i.na = phi i32 [ %i.mu, %.preheader.i ], [ %i.ri, %bb.ad ]
  %i.nb = phi i32 [ %i.mv, %.preheader.i ], [ %i.ri, %bb.ad ]
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond455.not.i = icmp eq i64 %indvars.iv.next452.i, %i.bo
  br i1 %exitcond455.not.i, label %._crit_edge420.i, label %.preheader.i, !llvm.loop !186

.lr.ph417.i:                                      ; preds = %.preheader.i, %bb.ad
  %i.nc = phi i32 [ %i.ri, %bb.ad ], [ %i.mu, %.preheader.i ]
  %indvars.iv448.i = phi i64 [ %indvars.iv.next449.i, %bb.ad ], [ 0, %.preheader.i ] ; 6 uses
  %i.nd = getelementptr inbounds nuw [36 x i8], ptr %i.bj, i64 %indvars.iv448.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load i32, ptr %i.ne, align 4            ; 2 uses
  %i.ng = icmp sgt i32 %i.nf, -1
  br i1 %i.ng, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph417.i
  %i.nh = load ptr, ptr %i.bq, align 8
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv451.i
  %i.nj = load ptr, ptr %i.ni, align 8            ; 2 uses
  %i.nk = getelementptr inbounds nuw [40 x i8], ptr %i.nj, i64 %indvars.iv448.i ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 12 ; 2 uses
  %i.nm = zext nneg i32 %i.nf to i64              ; 4 uses
  %i.nn = getelementptr inbounds nuw [40 x i8], ptr %i.nj, i64 %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.np = load <2 x float>, ptr %i.no, align 4    ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 20
  %i.nr = load <2 x float>, ptr %i.nq, align 4    ; 5 uses
  %i.ns = load <2 x float>, ptr %i.nl, align 4    ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nk, i64 20 ; 2 uses
  %i.nu = load <2 x float>, ptr %i.nt, align 4    ; 5 uses
  %i.nv = shufflevector <2 x float> %i.np, <2 x float> %i.nr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.nw = fneg <2 x float> %i.nv                  ; 2 uses
  %i.nx = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ny = fmul <2 x float> %i.nx, %i.ns
  %i.nz = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.oa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> %i.nz, <2 x float> %i.ny)
  %i.ob = shufflevector <2 x float> %i.nu, <2 x float> %i.ns, <2 x i32> <i32 0, i32 2>
  %i.oc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nv, <2 x float> %i.ob, <2 x float> %i.oa)
  %i.od = shufflevector <2 x float> %i.nr, <2 x float> %i.np, <2 x i32> <i32 0, i32 2>
  %i.oe = fneg <2 x float> %i.od
  %i.of = shufflevector <2 x float> %i.ns, <2 x float> %i.nu, <2 x i32> <i32 1, i32 2>
  %i.og = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oe, <2 x float> %i.of, <2 x float> %i.oc)
  %i.oh = shufflevector <2 x float> %i.nr, <2 x float> %i.np, <2 x i32> <i32 1, i32 2>
  %i.oi = fneg <2 x float> %i.ns
  %i.oj = shufflevector <2 x float> %i.nu, <2 x float> %i.oi, <2 x i32> <i32 0, i32 2>
  %i.ok = fmul <2 x float> %i.oh, %i.oj
  %i.ol = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nr, <2 x float> %i.nz, <2 x float> %i.ok)
  %i.om = shufflevector <2 x float> %i.np, <2 x float> %i.nw, <2 x i32> <i32 0, i32 2>
  %i.on = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.om, <2 x float> %i.on, <2 x float> %i.ol)
  %i.op = shufflevector <2 x float> %i.ns, <2 x float> %i.nu, <2 x i32> <i32 0, i32 2>
  %i.oq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nw, <2 x float> %i.op, <2 x float> %i.oo)
  store <2 x float> %i.og, ptr %i.nl, align 4
  store <2 x float> %i.oq, ptr %i.nt, align 4
  %i.or = load ptr, ptr %i.bq, align 8
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %indvars.iv451.i
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  %i.ou = getelementptr inbounds nuw [40 x i8], ptr %i.ot, i64 %indvars.iv448.i ; 3 uses
  %i.ov = getelementptr inbounds nuw [40 x i8], ptr %i.ot, i64 %i.nm ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  %.sroa.020.0.copyload.i = load <2 x float>, ptr %i.ou, align 4 ; 4 uses
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %.sroa.221.0.copyload.i = load float, ptr %.sroa.221.0..sroa_idx.i, align 4 ; 3 uses
  %i.ox = load <2 x float>, ptr %i.ow, align 4    ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 20
  %i.oz = load <2 x float>, ptr %i.oy, align 4    ; 4 uses
  %.sroa.092.0.vec.extract.i.i = extractelement <2 x float> %.sroa.020.0.copyload.i, i64 0 ; 2 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %i.ox, i64 0 ; 6 uses
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %i.ox, i64 1 ; 8 uses
  %i.pa = fneg float %.sroa.01.4.vec.extract.i.i  ; 2 uses
  %.sroa.25.8.vec.extract.i.i = extractelement <2 x float> %i.oz, i64 0 ; 7 uses
  %i.pb = fneg float %.sroa.25.8.vec.extract.i.i  ; 3 uses
  %.sroa.092.4.vec.extract.i.i = extractelement <2 x float> %.sroa.020.0.copyload.i, i64 1 ; 2 uses
  %.sroa.25.12.vec.extract.i.i = extractelement <2 x float> %i.oz, i64 1 ; 4 uses
  %i.pc = fmul float %.sroa.25.12.vec.extract.i.i, %.sroa.25.12.vec.extract.i.i
  %i.pd = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i, float %.sroa.01.0.vec.extract.i.i, float %i.pc)
  %i.pe = call float @llvm.fmuladd.f32(float %i.pa, float %.sroa.01.4.vec.extract.i.i, float %i.pd)
  %i.pf = call float @llvm.fmuladd.f32(float %i.pb, float %.sroa.25.8.vec.extract.i.i, float %i.pe)
  %i.pg = fmul float %.sroa.01.0.vec.extract.i.i, 2.000000e+00 ; 4 uses
  %i.ph = fmul float %.sroa.25.12.vec.extract.i.i, 2.000000e+00 ; 4 uses
  %i.pi = fmul float %i.ph, %i.pb
  %i.pj = call float @llvm.fmuladd.f32(float %i.pg, float %.sroa.01.4.vec.extract.i.i, float %i.pi)
  %9 = fneg float %.sroa.01.0.vec.extract.i.i
  %i.pk = shufflevector <2 x float> %.sroa.020.0.copyload.i, <2 x float> %i.ox, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.pl = insertelement <4 x float> poison, float %i.pj, i64 0
  %i.pm = insertelement <4 x float> %i.pl, float %i.ph, i64 1
  %i.pn = insertelement <4 x float> %i.pm, float %i.pg, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %9, i64 3
  %i.pp = fmul <4 x float> %i.pk, %i.po
  %i.pq = shufflevector <2 x float> %.sroa.020.0.copyload.i, <2 x float> %i.oz, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.pr = shufflevector <2 x float> %i.oz, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ps = insertelement <4 x float> %i.pr, float %i.pf, i64 0
  %i.pt = insertelement <4 x float> %i.ps, float %i.pg, i64 1
  %i.pu = insertelement <4 x float> %i.pt, float %i.ph, i64 2
  %i.pv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pq, <4 x float> %i.pu, <4 x float> %i.pp) ; 4 uses
  %i.pw = extractelement <4 x float> %i.pv, i64 0
  %i.px = extractelement <4 x float> %i.pv, i64 1
  %i.py = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i, float %i.px, float %i.pw)
  %.sroa.0103.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.py, i64 0
  %i.pz = extractelement <4 x float> %i.pv, i64 3 ; 2 uses
  %i.qa = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i, float %.sroa.01.4.vec.extract.i.i, float %i.pz)
  %i.qb = call float @llvm.fmuladd.f32(float %i.pb, float %.sroa.25.8.vec.extract.i.i, float %i.qa)
  %i.qc = fmul float %.sroa.092.4.vec.extract.i.i, %i.qb
  %i.qd = extractelement <4 x float> %i.pv, i64 2
  %i.qe = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i, float %i.qd, float %i.qc)
  %i.qf = fmul float %.sroa.25.12.vec.extract.i.i, -2.000000e+00 ; 2 uses
  %i.qg = fmul float %.sroa.01.4.vec.extract.i.i, 2.000000e+00
  %i.qh = fmul float %i.qg, %.sroa.25.8.vec.extract.i.i ; 2 uses
  %i.qi = call float @llvm.fmuladd.f32(float %i.qf, float %.sroa.01.0.vec.extract.i.i, float %i.qh)
  %i.qj = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i, float %i.qi, float %i.qe)
  %.sroa.0103.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0103.0.vec.insert.i.i, float %i.qj, i64 1
  %i.qk = fmul float %i.pg, %.sroa.25.8.vec.extract.i.i
  %i.ql = call float @llvm.fmuladd.f32(float %i.qf, float %.sroa.01.4.vec.extract.i.i, float %i.qk)
  %i.qm = call float @llvm.fmuladd.f32(float %i.ph, float %.sroa.01.0.vec.extract.i.i, float %i.qh)
  %i.qn = fmul float %.sroa.092.4.vec.extract.i.i, %i.qm
  %i.qo = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i, float %i.ql, float %i.qn)
  %i.qp = call float @llvm.fmuladd.f32(float %i.pa, float %.sroa.01.4.vec.extract.i.i, float %i.pz)
  %i.qq = call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i.i, float %.sroa.25.8.vec.extract.i.i, float %i.qp)
  %i.qr = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i, float %i.qq, float %i.qo)
  store <2 x float> %.sroa.0103.4.vec.insert.i.i, ptr %i.ou, align 4
  store float %i.qr, ptr %.sroa.221.0..sroa_idx.i, align 4
  %i.qs = load ptr, ptr %i.bq, align 8
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv451.i
  %i.qu = load ptr, ptr %i.qt, align 8            ; 2 uses
  %i.qv = getelementptr inbounds nuw [40 x i8], ptr %i.qu, i64 %indvars.iv448.i ; 3 uses
  %i.qw = getelementptr inbounds nuw [40 x i8], ptr %i.qu, i64 %i.nm ; 2 uses
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.qv, align 4
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 4
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.qw, align 4
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %.sroa.211.0.copyload.i = load float, ptr %.sroa.211.0..sroa_idx.i, align 4
  %i.qx = fadd <2 x float> %.sroa.012.0.copyload.i, %.sroa.010.0.copyload.i
  %i.qy = fadd float %.sroa.213.0.copyload.i, %.sroa.211.0.copyload.i
  store <2 x float> %i.qx, ptr %i.qv, align 4
  store float %i.qy, ptr %.sroa.213.0..sroa_idx.i, align 4
  %i.qz = load ptr, ptr %i.bq, align 8
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv451.i
  %i.rb = load ptr, ptr %i.ra, align 8            ; 2 uses
  %i.rc = getelementptr inbounds nuw [40 x i8], ptr %i.rb, i64 %indvars.iv448.i ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 28 ; 2 uses
  %i.re = getelementptr inbounds nuw [40 x i8], ptr %i.rb, i64 %i.nm ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 28
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.rd, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rc, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.rf, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.re, i64 36
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4
  %i.rg = fmul <2 x float> %.sroa.03.0.copyload.i, %.sroa.01.0.copyload.i
  %i.rh = fmul float %.sroa.24.0.copyload.i, %.sroa.22.0.copyload.i
  store <2 x float> %i.rg, ptr %i.rd, align 4
  store float %i.rh, ptr %.sroa.24.0..sroa_idx.i, align 4
  %.pre.i = load i32, ptr %i.bh, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph417.i
  %i.ri = phi i32 [ %i.nc, %.lr.ph417.i ], [ %.pre.i, %bb.ac ] ; 4 uses
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 1 ; 2 uses
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv.next449.i, %i.rj
  br i1 %i.rk, label %.lr.ph417.i, label %._crit_edge418.i

LoadModelAnimationsIQM.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %._crit_edge424.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %i.am, %._crit_edge424.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  br label %bb.ae

bb.ae:                                            ; preds = %LoadModelAnimationsIQM.exit, %bb.a
  %.0 = phi ptr [ %.1.i, %LoadModelAnimationsIQM.exit ], [ null, %bb.a ]
  %i.rl = call zeroext i1 @IsFileExtension(ptr noundef %0, ptr noundef nonnull @.str.40) #54
  br i1 %i.rl, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  store i32 0, ptr %i.e, align 4
  %i.rm = call ptr @LoadFileData(ptr noundef %0, ptr noundef nonnull %i.e) #54 ; 3 uses
  %.not.i10 = icmp eq ptr %i.rm, null
  br i1 %.not.i10, label %LoadModelAnimationsM3D.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.rn = call ptr @m3d_load(ptr noundef nonnull %i.rm, ptr noundef nonnull @m3d_loaderhook, ptr noundef nonnull @m3d_freehook, ptr noundef null) ; 12 uses
  %.not287.i = icmp eq ptr %i.rn, null
  br i1 %.not287.i, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 9
  %i.rp = load i8, ptr %i.ro, align 1             ; 2 uses
  %or.cond.i = icmp ugt i8 %i.rp, -65
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.rq = sext i8 %i.rp to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai, %bb.ag
  %i.rr = phi i32 [ %i.rq, %bb.ai ], [ -2, %bb.ag ]
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.389, ptr noundef %0, i32 noundef %i.rr) #54
  br label %.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rn, i64 248 ; 4 uses
  %i.rt = load i32, ptr %i.rs, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rn, i64 104 ; 7 uses
  %i.rv = load i32, ptr %i.ru, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rn, i64 136
  %i.rx = load i32, ptr %i.rw, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.394, ptr noundef %0, i32 noundef %i.rt, i32 noundef %i.rv, i32 noundef %i.rx) #54
  %i.ry = load i32, ptr %i.rs, align 8            ; 2 uses
  %.not288.i = icmp eq i32 %i.ry, 0
  br i1 %.not288.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rz = load i32, ptr %i.ru, align 8
  %.not289.i = icmp eq i32 %i.rz, 0
  br i1 %.not289.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @m3d_free(ptr noundef nonnull %i.rn)
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.sa = zext i32 %i.ry to i64
  %i.sb = call noalias ptr @calloc(i64 noundef %i.sa, i64 noundef 48) #57 ; 2 uses
  %i.sc = load i32, ptr %i.rs, align 8            ; 2 uses
  store i32 %i.sc, ptr %1, align 4
  %.not322.i = icmp eq i32 %i.sc, 0
  br i1 %.not322.i, label %._crit_edge321.i, label %.lr.ph320.i

.lr.ph320.i:                                      ; preds = %bb.am
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rn, i64 256
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 112
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rn, i64 128 ; 7 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rn, i64 56 ; 3 uses
  br label %bb.an

._crit_edge321.i:                                 ; preds = %._crit_edge317.i, %bb.am
  call void @m3d_free(ptr noundef nonnull %i.rn)
  br label %.sink.split.i

bb.an:                                            ; preds = %._crit_edge317.i, %.lr.ph320.i
  %indvars.iv331.i = phi i64 [ 0, %.lr.ph320.i ], [ %indvars.iv.next332.i, %._crit_edge317.i ] ; 4 uses
  %i.sh = load i32, ptr %i.ru, align 8
  %i.si = add i32 %i.sh, 1                        ; 2 uses
  %i.sj = getelementptr inbounds nuw [48 x i8], ptr %i.sb, i64 %indvars.iv331.i ; 5 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  store i32 %i.si, ptr %i.sk, align 8
  %i.sl = zext i32 %i.si to i64
  %i.sm = call noalias ptr @calloc(i64 noundef %i.sl, i64 noundef 36) #57 ; 4 uses
  %i.sn = load ptr, ptr %i.sd, align 8
  %i.so = getelementptr inbounds nuw [24 x i8], ptr %i.sn, i64 %indvars.iv331.i ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8
  %i.sr = udiv i32 %i.sq, 17                      ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 36 ; 3 uses
  store i32 %i.sr, ptr %i.ss, align 4
  %i.st = zext nneg i32 %i.sr to i64
  %i.su = call noalias ptr @calloc(i64 noundef %i.st, i64 noundef 8) #57
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sj, i64 40 ; 27 uses
  store ptr %i.su, ptr %i.sv, align 8
  %i.sw = load ptr, ptr %i.so, align 8
  %i.sx = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.sj, ptr noundef nonnull dereferenceable(1) %i.sw, i64 noundef 31) #54 ; 0 uses
  %i.sy = load i32, ptr %i.sp, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.383, ptr noundef %0, ptr noundef nonnull %i.sj, i32 noundef %i.sr, i32 noundef %i.sy) #54
  %i.sz = load i32, ptr %i.ru, align 8            ; 2 uses
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %.lr.ph.preheader.i58, label %._crit_edge.i

.lr.ph.preheader.i58:                             ; preds = %bb.an
  %.pre.i59 = load ptr, ptr %i.se, align 8
  %i.tb = zext nneg i32 %i.sz to i64              ; 2 uses
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i58
  %indvars.iv.i61 = phi i64 [ 0, %.lr.ph.preheader.i58 ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 3 uses
  %i.tc = getelementptr inbounds nuw [104 x i8], ptr %.pre.i59, i64 %indvars.iv.i61 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 8
  %i.te = getelementptr inbounds nuw [36 x i8], ptr %i.sm, i64 %indvars.iv.i61 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  store i32 %i.td, ptr %i.tf, align 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.th = load ptr, ptr %i.tg, align 8
end_hunk_1
begin_hunk_2_@LoadModelAnimations:bb.a
  %.not290.i = icmp eq ptr %i.tw, null
  br i1 %.not290.i, label %bb.aq, label %.preheader.i11

.preheader.i11:                                   ; preds = %.lr.ph316.i
  %i.tx = load i32, ptr %i.ru, align 8
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %.lr.ph311.i, label %._crit_edge312.i

.lr.ph311.i:                                      ; preds = %.preheader.i11, %bb.ap
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %bb.ap ], [ 0, %.preheader.i11 ] ; 18 uses
  %i.tz = load ptr, ptr %i.sf, align 8
  %i.ua = getelementptr inbounds nuw [104 x i8], ptr %i.tw, i64 %indvars.iv325.i ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.uc = load i32, ptr %i.ub, align 8
  %i.ud = zext i32 %i.uc to i64                   ; 3 uses
  %i.ue = getelementptr inbounds nuw [24 x i8], ptr %i.tz, i64 %i.ud
  %i.uf = load float, ptr %i.ue, align 4
  %i.ug = load float, ptr %i.sg, align 8
  %i.uh = fmul float %i.uf, %i.ug
  %i.ui = load ptr, ptr %i.sv, align 8
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv328.i
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = getelementptr inbounds nuw [40 x i8], ptr %i.uk, i64 %indvars.iv325.i
  store float %i.uh, ptr %i.ul, align 4
  %i.um = load ptr, ptr %i.sf, align 8
  %i.un = getelementptr inbounds nuw [24 x i8], ptr %i.um, i64 %i.ud
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.up = load float, ptr %i.uo, align 4
  %i.uq = load float, ptr %i.sg, align 8
  %i.ur = fmul float %i.up, %i.uq
  %i.us = load ptr, ptr %i.sv, align 8
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %indvars.iv328.i
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = getelementptr inbounds nuw [40 x i8], ptr %i.uu, i64 %indvars.iv325.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  store float %i.ur, ptr %i.uw, align 4
  %i.ux = load ptr, ptr %i.sf, align 8
  %i.uy = getelementptr inbounds nuw [24 x i8], ptr %i.ux, i64 %i.ud
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load float, ptr %i.uz, align 4
  %i.vb = load float, ptr %i.sg, align 8
  %i.vc = fmul float %i.va, %i.vb
  %i.vd = load ptr, ptr %i.sv, align 8
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv328.i
  %i.vf = load ptr, ptr %i.ve, align 8
  %i.vg = getelementptr inbounds nuw [40 x i8], ptr %i.vf, i64 %indvars.iv325.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store float %i.vc, ptr %i.vh, align 4
  %i.vi = load ptr, ptr %i.sf, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ua, i64 20
  %i.vk = load i32, ptr %i.vj, align 4
  %i.vl = zext i32 %i.vk to i64                   ; 4 uses
  %i.vm = getelementptr inbounds nuw [24 x i8], ptr %i.vi, i64 %i.vl
  %i.vn = load float, ptr %i.vm, align 4
  %i.vo = load ptr, ptr %i.sv, align 8
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %indvars.iv328.i
  %i.vq = load ptr, ptr %i.vp, align 8
  %i.vr = getelementptr inbounds nuw [40 x i8], ptr %i.vq, i64 %indvars.iv325.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 12
  store float %i.vn, ptr %i.vs, align 4
  %i.vt = load ptr, ptr %i.sf, align 8
  %i.vu = getelementptr inbounds nuw [24 x i8], ptr %i.vt, i64 %i.vl
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vw = load float, ptr %i.vv, align 4
  %i.vx = load ptr, ptr %i.sv, align 8
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %indvars.iv328.i
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = getelementptr inbounds nuw [40 x i8], ptr %i.vz, i64 %indvars.iv325.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store float %i.vw, ptr %i.wb, align 4
  %i.wc = load ptr, ptr %i.sf, align 8
  %i.wd = getelementptr inbounds nuw [24 x i8], ptr %i.wc, i64 %i.vl
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load float, ptr %i.we, align 4
  %i.wg = load ptr, ptr %i.sv, align 8
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv328.i
  %i.wi = load ptr, ptr %i.wh, align 8
  %i.wj = getelementptr inbounds nuw [40 x i8], ptr %i.wi, i64 %indvars.iv325.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 20
  store float %i.wf, ptr %i.wk, align 4
  %i.wl = load ptr, ptr %i.sf, align 8
  %i.wm = getelementptr inbounds nuw [24 x i8], ptr %i.wl, i64 %i.vl
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = load ptr, ptr %i.sv, align 8
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv328.i
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = getelementptr inbounds nuw [40 x i8], ptr %i.wr, i64 %indvars.iv325.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  store float %i.wo, ptr %i.wt, align 4
  %i.wu = load ptr, ptr %i.sv, align 8
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv328.i
  %i.ww = load ptr, ptr %i.wv, align 8
  %i.wx = getelementptr inbounds nuw [40 x i8], ptr %i.ww, i64 %indvars.iv325.i ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 12 ; 2 uses
  %i.wz = load <2 x float>, ptr %i.wy, align 4    ; 4 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 20 ; 2 uses
  %i.xb = load <2 x float>, ptr %i.xa, align 4    ; 3 uses
  %.sroa.0.0.vec.extract.i.i12 = extractelement <2 x float> %i.wz, i64 0 ; 2 uses
  %foldExtExtBinop152 = fmul <2 x float> %i.wz, %i.wz
  %i.xc = extractelement <2 x float> %foldExtExtBinop152, i64 1
  %i.xd = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i12, float %.sroa.0.0.vec.extract.i.i12, float %i.xc)
  %.sroa.7.8.vec.extract.i.i14 = extractelement <2 x float> %i.xb, i64 0 ; 2 uses
  %i.xe = call float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract.i.i14, float %.sroa.7.8.vec.extract.i.i14, float %i.xd)
  %.sroa.7.12.vec.extract.i.i15 = extractelement <2 x float> %i.xb, i64 1 ; 2 uses
  %i.xf = call float @llvm.fmuladd.f32(float %.sroa.7.12.vec.extract.i.i15, float %.sroa.7.12.vec.extract.i.i15, float %i.xe) ; 2 uses
  %sqrt.i.i16 = call float @llvm.sqrt.f32(float %i.xf)
  %i.xg = fcmp oeq float %i.xf, 0.000000e+00
  %i.xh = fdiv float 1.000000e+00, %sqrt.i.i16
  %i.xi = select i1 %i.xg, float 1.000000e+00, float %i.xh
  %i.xj = insertelement <2 x float> poison, float %i.xi, i64 0
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xl = fmul <2 x float> %i.wz, %i.xk
  %i.xm = fmul <2 x float> %i.xb, %i.xk
  store <2 x float> %i.xl, ptr %i.wy, align 4
  store <2 x float> %i.xm, ptr %i.xa, align 4
  %i.xn = load ptr, ptr %i.sv, align 8
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %indvars.iv328.i
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = getelementptr inbounds nuw [40 x i8], ptr %i.xp, i64 %indvars.iv325.i
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 36
  store float 1.000000e+00, ptr %i.xr, align 4
  %i.xs = load ptr, ptr %i.sv, align 8
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %indvars.iv328.i
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = getelementptr inbounds nuw [40 x i8], ptr %i.xu, i64 %indvars.iv325.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 32
  store float 1.000000e+00, ptr %i.xw, align 4
  %i.xx = load ptr, ptr %i.sv, align 8
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv328.i
  %i.xz = load ptr, ptr %i.xy, align 8
  %i.ya = getelementptr inbounds nuw [40 x i8], ptr %i.xz, i64 %indvars.iv325.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 28
  store float 1.000000e+00, ptr %i.yb, align 4
  %i.yc = getelementptr inbounds nuw [36 x i8], ptr %i.sm, i64 %indvars.iv325.i
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 32 ; 4 uses
  %i.ye = load i32, ptr %i.yd, align 4            ; 2 uses
  %i.yf = icmp sgt i32 %i.ye, -1
  br i1 %i.yf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph311.i
  %i.yg = load ptr, ptr %i.sv, align 8
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %indvars.iv328.i
  %i.yi = load ptr, ptr %i.yh, align 8            ; 2 uses
  %i.yj = getelementptr inbounds nuw [40 x i8], ptr %i.yi, i64 %indvars.iv325.i ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 12 ; 2 uses
  %i.yl = zext nneg i32 %i.ye to i64
  %i.ym = getelementptr inbounds nuw [40 x i8], ptr %i.yi, i64 %i.yl ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 12
  %i.yo = load <2 x float>, ptr %i.yn, align 4    ; 5 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ym, i64 20
  %i.yq = load <2 x float>, ptr %i.yp, align 4    ; 5 uses
  %i.yr = load <2 x float>, ptr %i.yk, align 4    ; 6 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yj, i64 20 ; 2 uses
  %i.yt = load <2 x float>, ptr %i.ys, align 4    ; 5 uses
  %i.yu = shufflevector <2 x float> %i.yo, <2 x float> %i.yq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.yv = fneg <2 x float> %i.yu                  ; 2 uses
  %i.yw = shufflevector <2 x float> %i.yq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yx = fmul <2 x float> %i.yw, %i.yr
  %i.yy = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.yz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yo, <2 x float> %i.yy, <2 x float> %i.yx)
  %i.za = shufflevector <2 x float> %i.yt, <2 x float> %i.yr, <2 x i32> <i32 0, i32 2>
  %i.zb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %i.za, <2 x float> %i.yz)
  %i.zc = shufflevector <2 x float> %i.yq, <2 x float> %i.yo, <2 x i32> <i32 0, i32 2>
  %i.zd = fneg <2 x float> %i.zc
  %i.ze = shufflevector <2 x float> %i.yr, <2 x float> %i.yt, <2 x i32> <i32 1, i32 2>
  %i.zf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zd, <2 x float> %i.ze, <2 x float> %i.zb)
  %i.zg = shufflevector <2 x float> %i.yq, <2 x float> %i.yo, <2 x i32> <i32 1, i32 2>
  %i.zh = fneg <2 x float> %i.yr
  %i.zi = shufflevector <2 x float> %i.yt, <2 x float> %i.zh, <2 x i32> <i32 0, i32 2>
  %i.zj = fmul <2 x float> %i.zg, %i.zi
  %i.zk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yq, <2 x float> %i.yy, <2 x float> %i.zj)
  %i.zl = shufflevector <2 x float> %i.yo, <2 x float> %i.yv, <2 x i32> <i32 0, i32 2>
  %i.zm = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zl, <2 x float> %i.zm, <2 x float> %i.zk)
  %i.zo = shufflevector <2 x float> %i.yr, <2 x float> %i.yt, <2 x i32> <i32 0, i32 2>
  %i.zp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yv, <2 x float> %i.zo, <2 x float> %i.zn)
  store <2 x float> %i.zf, ptr %i.yk, align 4
  store <2 x float> %i.zp, ptr %i.ys, align 4
  %i.zq = load ptr, ptr %i.sv, align 8
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %indvars.iv328.i
  %i.zs = load ptr, ptr %i.zr, align 8            ; 2 uses
  %i.zt = getelementptr inbounds nuw [40 x i8], ptr %i.zs, i64 %indvars.iv325.i ; 3 uses
  %i.zu = load i32, ptr %i.yd, align 4
  %i.zv = sext i32 %i.zu to i64
  %i.zw = getelementptr inbounds [40 x i8], ptr %i.zs, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 12
  %.sroa.020.0.copyload.i29 = load <2 x float>, ptr %i.zt, align 4 ; 4 uses
  %.sroa.221.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 2 uses
  %.sroa.221.0.copyload.i31 = load float, ptr %.sroa.221.0..sroa_idx.i30, align 4 ; 3 uses
  %i.zy = load <2 x float>, ptr %i.zx, align 4    ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 20
  %i.aaa = load <2 x float>, ptr %i.zz, align 4   ; 4 uses
  %.sroa.092.0.vec.extract.i.i32 = extractelement <2 x float> %.sroa.020.0.copyload.i29, i64 0 ; 2 uses
  %.sroa.01.0.vec.extract.i.i33 = extractelement <2 x float> %i.zy, i64 0 ; 6 uses
  %.sroa.01.4.vec.extract.i.i35 = extractelement <2 x float> %i.zy, i64 1 ; 8 uses
  %i.aab = fneg float %.sroa.01.4.vec.extract.i.i35 ; 2 uses
  %.sroa.25.8.vec.extract.i.i36 = extractelement <2 x float> %i.aaa, i64 0 ; 7 uses
  %i.aac = fneg float %.sroa.25.8.vec.extract.i.i36 ; 3 uses
  %.sroa.092.4.vec.extract.i.i37 = extractelement <2 x float> %.sroa.020.0.copyload.i29, i64 1 ; 2 uses
  %.sroa.25.12.vec.extract.i.i34 = extractelement <2 x float> %i.aaa, i64 1 ; 4 uses
  %i.aad = fmul float %.sroa.25.12.vec.extract.i.i34, %.sroa.25.12.vec.extract.i.i34
  %i.aae = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i33, float %.sroa.01.0.vec.extract.i.i33, float %i.aad)
  %i.aaf = call float @llvm.fmuladd.f32(float %i.aab, float %.sroa.01.4.vec.extract.i.i35, float %i.aae)
  %i.aag = call float @llvm.fmuladd.f32(float %i.aac, float %.sroa.25.8.vec.extract.i.i36, float %i.aaf)
  %i.aah = fmul float %.sroa.01.0.vec.extract.i.i33, 2.000000e+00 ; 4 uses
  %i.aai = fmul float %.sroa.25.12.vec.extract.i.i34, 2.000000e+00 ; 4 uses
  %i.aaj = fmul float %i.aai, %i.aac
  %i.aak = call float @llvm.fmuladd.f32(float %i.aah, float %.sroa.01.4.vec.extract.i.i35, float %i.aaj)
  %10 = fneg float %.sroa.01.0.vec.extract.i.i33
  %i.aal = shufflevector <2 x float> %.sroa.020.0.copyload.i29, <2 x float> %i.zy, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.aam = insertelement <4 x float> poison, float %i.aak, i64 0
  %i.aan = insertelement <4 x float> %i.aam, float %i.aai, i64 1
  %i.aao = insertelement <4 x float> %i.aan, float %i.aah, i64 2
  %i.aap = insertelement <4 x float> %i.aao, float %10, i64 3
  %i.aaq = fmul <4 x float> %i.aal, %i.aap
  %i.aar = shufflevector <2 x float> %.sroa.020.0.copyload.i29, <2 x float> %i.aaa, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.aas = shufflevector <2 x float> %i.aaa, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.aat = insertelement <4 x float> %i.aas, float %i.aag, i64 0
  %i.aau = insertelement <4 x float> %i.aat, float %i.aah, i64 1
  %i.aav = insertelement <4 x float> %i.aau, float %i.aai, i64 2
  %i.aaw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aar, <4 x float> %i.aav, <4 x float> %i.aaq) ; 4 uses
  %i.aax = extractelement <4 x float> %i.aaw, i64 0
  %i.aay = extractelement <4 x float> %i.aaw, i64 1
  %i.aaz = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i31, float %i.aay, float %i.aax)
  %.sroa.0103.0.vec.insert.i.i38 = insertelement <2 x float> poison, float %i.aaz, i64 0
  %i.aba = extractelement <4 x float> %i.aaw, i64 3 ; 2 uses
  %i.abb = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i35, float %.sroa.01.4.vec.extract.i.i35, float %i.aba)
  %i.abc = call float @llvm.fmuladd.f32(float %i.aac, float %.sroa.25.8.vec.extract.i.i36, float %i.abb)
  %i.abd = fmul float %.sroa.092.4.vec.extract.i.i37, %i.abc
  %i.abe = extractelement <4 x float> %i.aaw, i64 2
  %i.abf = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i32, float %i.abe, float %i.abd)
  %i.abg = fmul float %.sroa.25.12.vec.extract.i.i34, -2.000000e+00 ; 2 uses
  %i.abh = fmul float %.sroa.01.4.vec.extract.i.i35, 2.000000e+00
  %i.abi = fmul float %i.abh, %.sroa.25.8.vec.extract.i.i36 ; 2 uses
  %i.abj = call float @llvm.fmuladd.f32(float %i.abg, float %.sroa.01.0.vec.extract.i.i33, float %i.abi)
  %i.abk = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i31, float %i.abj, float %i.abf)
  %.sroa.0103.4.vec.insert.i.i39 = insertelement <2 x float> %.sroa.0103.0.vec.insert.i.i38, float %i.abk, i64 1
  %i.abl = fmul float %i.aah, %.sroa.25.8.vec.extract.i.i36
  %i.abm = call float @llvm.fmuladd.f32(float %i.abg, float %.sroa.01.4.vec.extract.i.i35, float %i.abl)
  %i.abn = call float @llvm.fmuladd.f32(float %i.aai, float %.sroa.01.0.vec.extract.i.i33, float %i.abi)
  %i.abo = fmul float %.sroa.092.4.vec.extract.i.i37, %i.abn
  %i.abp = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i32, float %i.abm, float %i.abo)
  %i.abq = call float @llvm.fmuladd.f32(float %i.aab, float %.sroa.01.4.vec.extract.i.i35, float %i.aba)
  %i.abr = call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i.i36, float %.sroa.25.8.vec.extract.i.i36, float %i.abq)
  %i.abs = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i31, float %i.abr, float %i.abp)
  store <2 x float> %.sroa.0103.4.vec.insert.i.i39, ptr %i.zt, align 4
  store float %i.abs, ptr %.sroa.221.0..sroa_idx.i30, align 4
  %i.abt = load ptr, ptr %i.sv, align 8
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %indvars.iv328.i
  %i.abv = load ptr, ptr %i.abu, align 8          ; 2 uses
  %i.abw = getelementptr inbounds nuw [40 x i8], ptr %i.abv, i64 %indvars.iv325.i ; 3 uses
  %i.abx = load i32, ptr %i.yd, align 4
  %i.aby = sext i32 %i.abx to i64
  %i.abz = getelementptr inbounds [40 x i8], ptr %i.abv, i64 %i.aby ; 2 uses
  %.sroa.012.0.copyload.i40 = load <2 x float>, ptr %i.abw, align 4
  %.sroa.213.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.abw, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i42 = load float, ptr %.sroa.213.0..sroa_idx.i41, align 4
  %.sroa.010.0.copyload.i43 = load <2 x float>, ptr %i.abz, align 4
  %.sroa.211.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %.sroa.211.0.copyload.i45 = load float, ptr %.sroa.211.0..sroa_idx.i44, align 4
  %i.aca = fadd <2 x float> %.sroa.012.0.copyload.i40, %.sroa.010.0.copyload.i43
  %i.acb = fadd float %.sroa.213.0.copyload.i42, %.sroa.211.0.copyload.i45
  store <2 x float> %i.aca, ptr %i.abw, align 4
  store float %i.acb, ptr %.sroa.213.0..sroa_idx.i41, align 4
  %i.acc = load ptr, ptr %i.sv, align 8
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %indvars.iv328.i
  %i.ace = load ptr, ptr %i.acd, align 8          ; 2 uses
  %i.acf = getelementptr inbounds nuw [40 x i8], ptr %i.ace, i64 %indvars.iv325.i ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 28 ; 2 uses
  %i.ach = load i32, ptr %i.yd, align 4
  %i.aci = sext i32 %i.ach to i64
  %i.acj = getelementptr inbounds [40 x i8], ptr %i.ace, i64 %i.aci ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 28
  %.sroa.03.0.copyload.i52 = load <2 x float>, ptr %i.acg, align 4
  %.sroa.24.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.acf, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i54 = load float, ptr %.sroa.24.0..sroa_idx.i53, align 4
  %.sroa.01.0.copyload.i55 = load <2 x float>, ptr %i.ack, align 4
  %.sroa.22.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.acj, i64 36
  %.sroa.22.0.copyload.i57 = load float, ptr %.sroa.22.0..sroa_idx.i56, align 4
  %i.acl = fmul <2 x float> %.sroa.03.0.copyload.i52, %.sroa.01.0.copyload.i55
  %i.acm = fmul float %.sroa.24.0.copyload.i54, %.sroa.22.0.copyload.i57
  store <2 x float> %i.acl, ptr %i.acg, align 4
  store float %i.acm, ptr %.sroa.24.0..sroa_idx.i53, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph311.i
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 3 uses
  %i.acn = load i32, ptr %i.ru, align 8
  %i.aco = sext i32 %i.acn to i64
  %i.acp = icmp slt i64 %indvars.iv.next326.i, %i.aco
  br i1 %i.acp, label %.lr.ph311.i, label %._crit_edge312.i

._crit_edge312.i:                                 ; preds = %bb.ap, %.preheader.i11
  %.0278.lcssa.i = phi i64 [ 0, %.preheader.i11 ], [ %indvars.iv.next326.i, %bb.ap ] ; 10 uses
  %i.acq = load ptr, ptr %i.sv, align 8
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv328.i
  %i.acs = load ptr, ptr %i.acr, align 8
  %i.act = getelementptr inbounds nuw [40 x i8], ptr %i.acs, i64 %.0278.lcssa.i
  store float 0.000000e+00, ptr %i.act, align 4
  %i.acu = load ptr, ptr %i.sv, align 8
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv328.i
  %i.acw = load ptr, ptr %i.acv, align 8
  %i.acx = getelementptr inbounds nuw [40 x i8], ptr %i.acw, i64 %.0278.lcssa.i
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  store float 0.000000e+00, ptr %i.acy, align 4
  %i.acz = load ptr, ptr %i.sv, align 8
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %indvars.iv328.i
  %i.adb = load ptr, ptr %i.ada, align 8
  %i.adc = getelementptr inbounds nuw [40 x i8], ptr %i.adb, i64 %.0278.lcssa.i
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store float 0.000000e+00, ptr %i.add, align 4
  %i.ade = load ptr, ptr %i.sv, align 8
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %indvars.iv328.i
  %i.adg = load ptr, ptr %i.adf, align 8
  %i.adh = getelementptr inbounds nuw [40 x i8], ptr %i.adg, i64 %.0278.lcssa.i
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 12
  store float 0.000000e+00, ptr %i.adi, align 4
  %i.adj = load ptr, ptr %i.sv, align 8
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %indvars.iv328.i
  %i.adl = load ptr, ptr %i.adk, align 8
  %i.adm = getelementptr inbounds nuw [40 x i8], ptr %i.adl, i64 %.0278.lcssa.i
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  store float 0.000000e+00, ptr %i.adn, align 4
  %i.ado = load ptr, ptr %i.sv, align 8
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %indvars.iv328.i
  %i.adq = load ptr, ptr %i.adp, align 8
  %i.adr = getelementptr inbounds nuw [40 x i8], ptr %i.adq, i64 %.0278.lcssa.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 20
  store float 0.000000e+00, ptr %i.ads, align 4
  %i.adt = load ptr, ptr %i.sv, align 8
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %indvars.iv328.i
  %i.adv = load ptr, ptr %i.adu, align 8
  %i.adw = getelementptr inbounds nuw [40 x i8], ptr %i.adv, i64 %.0278.lcssa.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 24
  store float 1.000000e+00, ptr %i.adx, align 4
  %i.ady = load ptr, ptr %i.sv, align 8
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %indvars.iv328.i
  %i.aea = load ptr, ptr %i.adz, align 8
  %i.aeb = getelementptr inbounds nuw [40 x i8], ptr %i.aea, i64 %.0278.lcssa.i
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 28
  store float 1.000000e+00, ptr %i.aec, align 4
  %i.aed = load ptr, ptr %i.sv, align 8
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %indvars.iv328.i
  %i.aef = load ptr, ptr %i.aee, align 8
  %i.aeg = getelementptr inbounds nuw [40 x i8], ptr %i.aef, i64 %.0278.lcssa.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 32
  store float 1.000000e+00, ptr %i.aeh, align 4
  %i.aei = load ptr, ptr %i.sv, align 8
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.aei, i64 %indvars.iv328.i
  %i.aek = load ptr, ptr %i.aej, align 8
  %i.ael = getelementptr inbounds nuw [40 x i8], ptr %i.aek, i64 %.0278.lcssa.i
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 36
  store float 1.000000e+00, ptr %i.aem, align 4
  call void @free(ptr noundef nonnull %i.tw) #54
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge312.i, %.lr.ph316.i
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 1 ; 2 uses
  %i.aen = load i32, ptr %i.ss, align 4
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = icmp slt i64 %indvars.iv.next329.i, %i.aeo
  br i1 %i.aep, label %.lr.ph316.i, label %._crit_edge317.i

._crit_edge317.i:                                 ; preds = %bb.aq, %._crit_edge.i
  call void @free(ptr noundef %i.sm) #54
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 1 ; 2 uses
  %i.aeq = load i32, ptr %i.rs, align 8
  %i.aer = zext i32 %i.aeq to i64
  %i.aes = icmp samesign ult i64 %indvars.iv.next332.i, %i.aer
  br i1 %i.aes, label %bb.an, label %._crit_edge321.i

.sink.split.i:                                    ; preds = %._crit_edge321.i, %bb.al, %.critedge.i
  %.0.ph.i = phi ptr [ %i.sb, %._crit_edge321.i ], [ null, %bb.al ], [ null, %.critedge.i ]
  call void @UnloadFileData(ptr noundef nonnull %i.rm) #54
  br label %LoadModelAnimationsM3D.exit

LoadModelAnimationsM3D.exit:                      ; preds = %bb.af, %.sink.split.i
  %.0.i = phi ptr [ null, %bb.af ], [ %.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #54
  br label %bb.ar

bb.ar:                                            ; preds = %LoadModelAnimationsM3D.exit, %bb.ae
  %.1 = phi ptr [ %.0.i, %LoadModelAnimationsM3D.exit ], [ %.0, %bb.ae ]
  %i.aet = call zeroext i1 @IsFileExtension(ptr noundef %0, ptr noundef nonnull @.str.94) #54
  br i1 %i.aet, label %bb.as, label %bb.cj

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i32 0, ptr %i.a, align 4
  %i.aeu = call ptr @LoadFileData(ptr noundef %0, ptr noundef nonnull %i.a) #54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.aev = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @LoadFileGLTFCallback, ptr %i.aev, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @ReleaseFileGLTFCallback, ptr %i.aew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store ptr null, ptr %i.b, align 8
  %i.aex = load i32, ptr %i.a, align 4
  %i.aey = sext i32 %i.aex to i64
  %i.aez = call i32 @cgltf_parse(ptr noundef nonnull %2, ptr noundef %i.aeu, i64 noundef %i.aey, ptr noundef nonnull %i.b)
  %.not.i63 = icmp eq i32 %i.aez, 0
  br i1 %.not.i63, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.349, ptr noundef %0) #54
  store i32 0, ptr %1, align 4
  br label %LoadModelAnimationsGLTF.exit
end_hunk_2
begin_hunk_3_@UpdateModelAnimation:bb.a
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %indvars.iv ; 8 uses
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.am, align 4 ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4 ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.ao, align 4
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4
  %i.ap = fsub <2 x float> %.sroa.034.0.copyload, %.sroa.036.0.copyload
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ap, <2 x float> %.sroa.036.0.copyload)
  %i.ar = fsub float %.sroa.235.0.copyload, %.sroa.237.0.copyload
  %i.as = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.ar, float %.sroa.237.0.copyload)
  store <2 x float> %i.aq, ptr %i.ak, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store float %i.as, ptr %.sroa.439.0..sroa_idx, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.au = load ptr, ptr %i.ab, align 8
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load ptr, ptr %i.ad, align 8
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load <2 x float>, ptr %i.aw, align 4    ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 7 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4    ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bf = load <2 x float>, ptr %i.be, align 4    ; 4 uses
  %.sroa.054.0.vec.extract.i = extractelement <2 x float> %i.ba, i64 0
  %.sroa.023.0.vec.extract.i = extractelement <2 x float> %i.bd, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ba, %i.bd
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bh = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i, float %.sroa.023.0.vec.extract.i, float %i.bg)
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %i.bc, i64 0
  %.sroa.12.8.vec.extract.i = extractelement <2 x float> %i.bf, i64 0
  %i.bi = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i, float %.sroa.12.8.vec.extract.i, float %i.bh)
  %.sroa.9.12.vec.extract.i = extractelement <2 x float> %i.bc, i64 1
  %.sroa.12.12.vec.extract.i = extractelement <2 x float> %i.bf, i64 1
  %i.bj = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i, float %.sroa.12.12.vec.extract.i, float %i.bi) ; 3 uses
  %i.bk = fcmp olt float %i.bj, 0.000000e+00      ; 3 uses
  %i.bl = fneg <2 x float> %i.bd
  %i.bm = fneg <2 x float> %i.bf
  %i.bn = fneg float %i.bj
  %.0.i79 = select i1 %i.bk, float %i.bn, float %i.bj ; 5 uses
  %.sroa.023.0.i = select i1 %i.bk, <2 x float> %i.bl, <2 x float> %i.bd ; 3 uses
  %.sroa.12.0.i = select i1 %i.bk, <2 x float> %i.bm, <2 x float> %i.bf ; 3 uses
  %i.bo = tail call float @llvm.fabs.f32(float %.0.i79)
  %i.bp = fcmp ult float %i.bo, 1.000000e+00
  br i1 %i.bp, label %bb.h, label %QuaternionSlerp.exit

bb.h:                                             ; preds = %bb.g
  %i.bq = fcmp ogt float %.0.i79, f0x3F733333
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = fsub <2 x float> %.sroa.12.0.i, %i.bc
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.br, <2 x float> %i.bc) ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bv = fsub <2 x float> %.sroa.023.0.i, %i.ba
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bv, <2 x float> %i.ba) ; 4 uses
  %foldExtExtBinop451 = fmul <2 x float> %i.bw, %i.bw
  %i.bx = extractelement <2 x float> %foldExtExtBinop451, i64 1
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bz)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.ca) ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cb)
  %i.cc = fcmp oeq float %i.cb, 0.000000e+00
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ce = select i1 %i.cc, float 1.000000e+00, float %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x float> %i.bw, %i.cg
  %i.ci = fmul <2 x float> %i.bs, %i.cg
  br label %QuaternionSlerp.exit

bb.j:                                             ; preds = %bb.h
  %i.cj = tail call float @acosf(float noundef %.0.i79) #54 ; 2 uses
  %i.ck = fneg float %.0.i79
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %.0.i79, float 1.000000e+00)
  %i.cm = tail call float @sqrtf(float noundef %i.cl) #54 ; 2 uses
  %i.cn = tail call float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp olt float %i.cn, f0x358637BD
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cp = fmul <2 x float> %.sroa.023.0.i, splat (float 5.000000e-01)
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cp)
  %i.cr = fmul <2 x float> %.sroa.12.0.i, splat (float 5.000000e-01)
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cr)
  br label %QuaternionSlerp.exit

bb.l:                                             ; preds = %bb.j
  %i.ct = fmul float %i.ae, %i.cj
  %i.cu = tail call float @sinf(float noundef %i.ct) #54
  %i.cv = fmul float %.0.i, %i.cj
  %i.cw = tail call float @sinf(float noundef %i.cv) #54
  %i.cx = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x float> %i.cy, %i.da           ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = fmul <2 x float> %.sroa.023.0.i, %i.dc
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dg = fmul <2 x float> %.sroa.12.0.i, %i.dc
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.de, <2 x float> %i.dg)
  br label %QuaternionSlerp.exit

QuaternionSlerp.exit:                             ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.pn87.i = phi <2 x float> [ %i.ba, %bb.g ], [ %i.ch, %bb.i ], [ %i.cq, %bb.k ], [ %i.df, %bb.l ] ; 7 uses
  %.pn85.i = phi <2 x float> [ %i.bc, %bb.g ], [ %i.ci, %bb.i ], [ %i.cs, %bb.k ], [ %i.dh, %bb.l ] ; 5 uses
  store <2 x float> %.pn87.i, ptr %i.at, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store <2 x float> %.pn85.i, ptr %.sroa.429.0..sroa_idx, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ak, i64 28 ; 2 uses
  %i.dj = load ptr, ptr %i.ab, align 8
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %indvars.iv ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = load ptr, ptr %i.ad, align 8
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.dl, align 4 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4 ; 2 uses
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.do, align 4
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %.sroa.224.0.copyload = load float, ptr %.sroa.224.0..sroa_idx, align 4
  %i.dp = fsub <2 x float> %.sroa.023.0.copyload, %.sroa.025.0.copyload
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.dp, <2 x float> %.sroa.025.0.copyload)
  store <2 x float> %i.dq, ptr %i.di, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %indvars.iv ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dz = shufflevector <2 x float> %.pn87.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ea = fmul <2 x float> %.pn87.i, %.pn87.i     ; 2 uses
  %i.eb = fmul <2 x float> %i.dz, %.pn85.i        ; 4 uses
  %i.ec = fmul <2 x float> %.pn87.i, %.pn85.i     ; 3 uses
  %shift = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop453 = fsub <2 x float> %i.ec, %shift
  %i.ed = extractelement <2 x float> %foldExtExtBinop453, i64 0
  %shift455 = shufflevector <2 x float> %.pn87.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop456 = fmul <2 x float> %.pn87.i, %shift455 ; 2 uses
  %i.ee = shufflevector <2 x float> %foldExtExtBinop456, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ef = extractelement <2 x float> %foldExtExtBinop456, i64 0
  %i.eg = shufflevector <2 x float> %.pn85.i, <2 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.eh = shufflevector <2 x float> %.pn85.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float 1.000000e+00, i64 3
  %i.ej = fmul <4 x float> %i.eg, %i.ei           ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> %i.ee, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.em = fadd <4 x float> %i.el, %i.ej           ; 2 uses
  %i.en = extractelement <4 x float> %i.ej, i64 1
  %i.eo = fsub float %i.ef, %i.en
  %i.ep = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.eq = insertelement <4 x float> %i.ep, float %i.ed, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.eo, i64 2
  %i.es = fmul <4 x float> %i.er, splat (float 2.000000e+00) ; 4 uses
  %i.et = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ec)
  %shift458 = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop459 = fsub <2 x float> %i.eb, %shift458
  %i.eu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ea)
  %i.ev = load float, ptr %i.ak, align 4          ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ex = load float, ptr %i.ew, align 4          ; 2 uses
  %i.ey = load float, ptr %.sroa.439.0..sroa_idx, align 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.fa = fsub float %.sroa.224.0.copyload, %.sroa.226.0.copyload
  %i.fb = shufflevector <4 x float> %i.aj, <4 x float> %i.em, <4 x i32> <i32 4, i32 6, i32 poison, i32 3>
  %i.fc = insertelement <4 x float> %i.fb, float %i.eu, i64 2
  %i.fd = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float poison>, float %i.fa, i64 3
  %i.fe = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.sroa.226.0.copyload, i64 3
  %i.ff = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.fd, <4 x float> %i.fe) ; 6 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 3
  store float %i.fg, ptr %.sroa.4.0..sroa_idx, align 4
  %i.fh = load float, ptr %i.ds, align 4          ; 3 uses
  %i.fi = load float, ptr %i.dt, align 4          ; 3 uses
  %i.fj = load float, ptr %i.du, align 4          ; 3 uses
  %i.fk = load <2 x float>, ptr %i.dv, align 4    ; 6 uses
  %i.fl = load <2 x float>, ptr %i.dw, align 4    ; 6 uses
  %i.fm = fmul <2 x float> %i.fk, %i.fk           ; 3 uses
  %foldExtExtBinop461 = fmul <2 x float> %i.fl, %i.fl ; 2 uses
  %shift463 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop464 = fmul <2 x float> %i.fk, %shift463 ; 2 uses
  %shift466 = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop467 = fmul <2 x float> %shift466, %i.fl ; 2 uses
  %shift469 = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop470 = fadd <2 x float> %shift469, %foldExtExtBinop461
  %i.fn = extractelement <2 x float> %foldExtExtBinop470, i64 0
  %3 = tail call float @llvm.fmuladd.f32(float %i.fn, float -2.000000e+00, float 1.000000e+00)
  %foldExtExtBinop472 = fadd <2 x float> %foldExtExtBinop464, %foldExtExtBinop467
  %i.fo = extractelement <2 x float> %foldExtExtBinop472, i64 0
  %i.fp = fmul float %i.fo, 2.000000e+00
  %foldExtExtBinop474 = fsub <2 x float> %foldExtExtBinop464, %foldExtExtBinop467
  %i.fq = extractelement <2 x float> %foldExtExtBinop474, i64 0
  %i.fr = fmul float %i.fq, 2.000000e+00
  %foldExtExtBinop476 = fadd <2 x float> %i.fm, %foldExtExtBinop461
  %i.fs = extractelement <2 x float> %foldExtExtBinop476, i64 0
  %4 = tail call float @llvm.fmuladd.f32(float %i.fs, float -2.000000e+00, float 1.000000e+00)
  %i.ft = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fm)
  %i.fu = fmul float %i.fi, 0.000000e+00
  %i.fv = fadd float %i.fu, 0.000000e+00          ; 4 uses
  %5 = tail call float @llvm.fmuladd.f32(float %i.fj, float 0.000000e+00, float 0.000000e+00)
  %i.fw = fadd float %5, 0.000000e+00             ; 3 uses
  %i.fx = load <2 x float>, ptr %i.dr, align 4    ; 3 uses
  %i.fy = load float, ptr %i.dx, align 4
  %i.fz = load float, ptr %i.dy, align 4          ; 4 uses
  %i.ga = extractelement <2 x float> %i.fx, i64 0
  %i.gb = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ge = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.fk, %i.ge           ; 4 uses
  %i.gg = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gh = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x float> %i.gg, %i.gh           ; 4 uses
  %i.gj = fadd <2 x float> %i.gf, %i.gi
  %i.gk = fsub <2 x float> %i.gf, %i.gi
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <2 x i32> <i32 0, i32 3>
  %i.gm = fmul <2 x float> %i.gl, splat (float 2.000000e+00) ; 4 uses
  %6 = insertelement <2 x float> poison, float %i.fr, i64 0
  %7 = insertelement <2 x float> %6, float %4, i64 1 ; 2 uses
  %8 = fmul <2 x float> %7, zeroinitializer       ; 2 uses
  %9 = insertelement <2 x float> poison, float %3, i64 0
  %i.gn = insertelement <2 x float> %9, float %i.fp, i64 1 ; 3 uses
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> zeroinitializer, <2 x float> %8) ; 2 uses
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> zeroinitializer, <2 x float> %i.go)
  %i.gq = fadd <2 x float> %i.gp, zeroinitializer ; 3 uses
  %i.gr = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gn, <2 x float> %8)
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> zeroinitializer, <2 x float> %i.gt)
  %i.gv = fadd <2 x float> %i.gu, zeroinitializer ; 5 uses
  %i.gw = fmul <2 x float> %i.gv, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %10 = extractelement <2 x float> %i.gv, i64 0
  %shift478 = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop479 = fadd <2 x float> %i.gv, %shift478
  %11 = extractelement <2 x float> %foldExtExtBinop479, i64 0
  %i.gx = extractelement <2 x float> %i.gv, i64 1
  %12 = tail call float @llvm.fmuladd.f32(float %10, float 0.000000e+00, float %i.gx)
  %i.gy = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x float> %i.gz, %7
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> zeroinitializer, <2 x float> %i.ha)
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> zeroinitializer, <2 x float> %i.hb)
  %i.hd = fadd <2 x float> %i.hc, zeroinitializer ; 4 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1
  %i.hf = fmul float %i.he, 0.000000e+00          ; 2 uses
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fadd float %i.hg, %i.hf
  %i.hi = fmul <2 x float> %i.gq, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.hj = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.hj)
  %i.hl = load <2 x float>, ptr %i.di, align 4
  %i.hm = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.hn = shufflevector <2 x float> %i.hl, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.ho = shufflevector <3 x float> <float 0.000000e+00, float 0.000000e+00, float poison>, <3 x float> %i.hn, <3 x i32> <i32 0, i32 1, i32 4> ; 3 uses
  %i.hp = fmul <3 x float> %i.hm, %i.ho
  %i.hq = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hr = fmul <3 x float> %i.hq, %i.ho
  %i.hs = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.ht = fmul <3 x float> %i.hs, %i.ho
  %i.hu = shufflevector <3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, <3 x float> %i.hn, <3 x i32> <i32 0, i32 3, i32 2> ; 3 uses
  %i.hv = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> zeroinitializer
  %i.hw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hu, <3 x float> %i.hv, <3 x float> %i.hp) ; 2 uses
  %i.hx = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> zeroinitializer
  %i.hy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hu, <3 x float> %i.hx, <3 x float> %i.hr) ; 2 uses
  %i.hz = shufflevector <4 x float> %i.es, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ia = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hu, <3 x float> %i.hz, <3 x float> %i.ht) ; 2 uses
  %13 = shufflevector <3 x float> %i.ia, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <2 x float> %i.gv, <2 x float> %i.hd, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %15 = shufflevector <4 x float> %14, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %16 = shufflevector <2 x float> %i.gw, <2 x float> %i.hd, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %17 = insertelement <4 x float> %16, float %i.hf, i64 2
  %18 = shufflevector <4 x float> %17, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> zeroinitializer, <4 x float> %18) ; 4 uses
  %20 = extractelement <4 x float> %19, i64 3
  %i.ib = fadd float %20, 0.000000e+00            ; 4 uses
  %i.ic = insertelement <2 x float> poison, float %i.et, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> %foldExtExtBinop459, <2 x i32> <i32 0, i32 2>
  %i.ie = fmul <2 x float> %i.id, splat (float 2.000000e+00) ; 3 uses
  %i.if = shufflevector <3 x float> %i.hw, <3 x float> %i.hy, <2 x i32> <i32 0, i32 3>
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> zeroinitializer, <2 x float> %i.if)
  %i.ih = fadd <2 x float> %i.ig, zeroinitializer ; 3 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 1
  %i.ij = fmul float %i.ii, 0.000000e+00          ; 2 uses
  %i.ik = extractelement <2 x float> %i.ih, i64 0 ; 3 uses
  %i.il = fadd float %i.ik, %i.ij
  %21 = insertelement <4 x float> poison, float %i.ib, i64 0
  %i.im = insertelement <2 x float> poison, float %i.il, i64 0
  %i.in = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ev, i64 0
  %i.io = insertelement <2 x float> %i.fx, float %i.fz, i64 0
  %i.ip = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> <i32 3, i32 poison, i32 poison> ; 2 uses
  %i.iq = shufflevector <3 x float> %i.ip, <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5> ; 3 uses
  %i.ir = shufflevector <2 x float> %i.ie, <2 x float> poison, <3 x i32> zeroinitializer
  %i.is = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.iq, <3 x float> %i.ir, <3 x float> %i.hw)
  %i.it = fadd <3 x float> %i.is, zeroinitializer ; 3 uses
  %i.iu = shufflevector <2 x float> %i.ie, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.iv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.iq, <3 x float> %i.iu, <3 x float> %i.hy)
  %i.iw = fadd <3 x float> %i.iv, zeroinitializer ; 2 uses
  %i.ix = shufflevector <4 x float> %i.ff, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.iy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ix, <3 x float> %i.iq, <3 x float> %i.ia)
  %i.iz = fadd <3 x float> %i.iy, zeroinitializer ; 4 uses
  %i.ja = shufflevector <3 x float> %i.ip, <3 x float> %i.hn, <3 x i32> <i32 0, i32 3, i32 4>
  %i.jb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ja, <3 x float> zeroinitializer, <3 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>)
  %i.jc = fadd <3 x float> %i.jb, zeroinitializer ; 4 uses
  %i.jd = fmul <3 x float> %i.iw, zeroinitializer ; 2 uses
  %i.je = fadd <3 x float> %i.it, %i.jd
  %i.jf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.iz, <3 x float> zeroinitializer, <3 x float> %i.je)
  %i.jg = insertelement <3 x float> poison, float %i.ev, i64 0
  %i.jh = shufflevector <3 x float> %i.jg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ji = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jc, <3 x float> %i.jh, <3 x float> %i.jf) ; 3 uses
  %i.jj = extractelement <2 x float> %i.ih, i64 1
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.ik, float 0.000000e+00, float %i.jj)
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.ib, float 0.000000e+00, float %i.jk)
  %i.jm = fadd float %i.jl, %i.ex
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.ik, float 0.000000e+00, float %i.ij) ; 2 uses
  %i.jo = fadd float %i.ib, %i.jn
  %i.jp = fadd float %i.jo, %i.ey
  %foldExtExtBinop481 = fsub <2 x float> %i.gf, %i.gi
  %i.jq = shufflevector <2 x float> %foldExtExtBinop481, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop483 = fadd <2 x float> %i.gf, %i.gi
  %i.jr = shufflevector <2 x float> %foldExtExtBinop483, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.js = extractelement <4 x float> %19, i64 0   ; 2 uses
  %i.jt = extractelement <4 x float> %19, i64 2   ; 2 uses
  %i.ju = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.gm, <2 x float> %i.go)
  %i.jx = fadd <2 x float> %i.jw, zeroinitializer ; 3 uses
  %i.jy = fmul <2 x float> %i.jx, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.jz = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jy, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.jz)
  %i.kb = shufflevector <2 x float> %i.jx, <2 x float> %i.gq, <2 x i32> <i32 0, i32 2>
  %i.kc = shufflevector <2 x float> %i.jy, <2 x float> %i.hi, <2 x i32> <i32 1, i32 3>
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> zeroinitializer, <2 x float> %i.kc) ; 3 uses
  %i.ke = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.kd, <2 x i32> <i32 3, i32 1>
  %i.kf = extractelement <2 x float> %i.kd, i64 0
  %i.kg = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.kh = fmul <4 x float> %i.kg, <float 2.000000e+00, float poison, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.kj = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x float> %i.jr, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.kk = fmul <4 x float> %i.kj, <float 2.000000e+00, float poison, float 1.000000e+00, float -0.000000e+00>
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.km = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.ft, i64 0
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> <float -2.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> <float 1.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>) ; 3 uses
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.kn = insertelement <4 x float> <float poison, float 0.000000e+00, float -0.000000e+00, float 1.000000e+00>, float %i.fi, i64 0
  %24 = fmul <4 x float> %i.kn, %i.kl             ; 2 uses
  %25 = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float -0.000000e+00>, float %i.fh, i64 1
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> %i.ki, <4 x float> %24)
  %i.ko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> zeroinitializer, <4 x float> %26)
  %i.kp = fadd <4 x float> %i.ko, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 3 uses
  %i.kq = extractelement <4 x float> %i.kh, i64 0
  %i.kr = extractelement <4 x float> %24, i64 1
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.kq, float 0.000000e+00, float %i.kr) ; 2 uses
  %27 = extractelement <4 x float> %22, i64 0
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.fj, float %27, float %i.ks)
  %i.ku = fadd float %i.kt, 0.000000e+00          ; 3 uses
  %i.kv = extractelement <4 x float> %i.kp, i64 1 ; 3 uses
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.kv, float 0.000000e+00, float %11)
  %28 = shufflevector <4 x float> %21, <4 x float> %22, <2 x i32> <i32 0, i32 4>
  %i.kx = insertelement <2 x float> %i.im, float %i.ks, i64 1
  %i.ky = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> zeroinitializer, <2 x float> %i.kx)
  %i.kz = fadd <2 x float> %i.ky, %i.in           ; 3 uses
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lb = insertelement <2 x float> %i.la, float %i.fh, i64 1
  %i.lc = fadd float %i.kv, %i.js
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.kv, float 0.000000e+00, float %i.js)
  %i.le = extractelement <4 x float> %i.kp, i64 0 ; 3 uses
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.le, float 0.000000e+00, float %i.hh)
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.ga, float %i.lf) ; 2 uses
  %i.lh = fadd float %i.le, %i.jt
  %i.li = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fz, float %i.lh) ; 3 uses
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.le, float 0.000000e+00, float %i.jt)
  %i.lk = fadd float %i.fv, %i.lj                 ; 3 uses
  %i.ll = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> zeroinitializer, <2 x float> %i.ka)
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gd, <2 x float> %i.ln) ; 4 uses
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> zeroinitializer, <2 x float> %i.hk) ; 2 uses
  %i.lq = fadd <2 x float> %i.gd, %i.lp           ; 2 uses
  %i.lr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lb, <2 x float> zeroinitializer, <2 x float> %i.ke)
  %i.ls = fadd <2 x float> %i.lr, <float 1.000000e+00, float 0.000000e+00> ; 6 uses
  %i.lt = extractelement <2 x float> %i.ls, i64 1 ; 2 uses
  %i.lu = fadd float %i.lt, %i.ld                 ; 4 uses
  %i.lv = shufflevector <2 x float> %i.lo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 4 uses
  %29 = shufflevector <4 x float> %19, <4 x float> %i.lv, <4 x i32> <i32 1, i32 poison, i32 poison, i32 4>
  %30 = insertelement <4 x float> %29, float %12, i64 1
  %i.lw = insertelement <4 x float> %30, float %i.lu, i64 2
  %i.lx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kp, <4 x float> zeroinitializer, <4 x float> %i.lw)
  %i.ly = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 6, i32 7>
  %i.ma = insertelement <4 x float> %i.lz, float %i.fv, i64 0
  %i.mb = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, float %i.fy, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.md = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ma, <4 x float> %i.mc, <4 x float> %i.lx) ; 7 uses
  %i.me = tail call float @llvm.fmuladd.f32(float %i.lt, float %i.fz, float %i.lc) ; 4 uses
  %i.mf = insertelement <2 x float> %i.kz, float %i.ku, i64 0
  %i.mg = fadd <2 x float> %i.mf, %i.kd           ; 2 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fz, float %i.mh) ; 3 uses
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.ku, float 0.000000e+00, float %i.kf)
  %i.mk = fadd float %i.fw, %i.mj                 ; 4 uses
  %i.ml = shufflevector <2 x float> %i.mg, <2 x float> %i.lp, <2 x i32> <i32 1, i32 2>
  %i.mm = fadd <2 x float> %i.io, %i.ml           ; 3 uses
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.mo = fneg float %i.lg                        ; 3 uses
  %i.mp = extractelement <4 x float> %i.md, i64 1
  %i.mq = fmul float %i.mp, %i.mo
  %i.mr = extractelement <2 x float> %i.mm, i64 0
  %i.ms = fneg float %i.mr                        ; 2 uses
  %i.mt = fmul float %i.mk, %i.ms
  %i.mu = insertelement <2 x float> %i.gd, float %i.mi, i64 0
  %i.mv = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.mw = insertelement <2 x float> %i.mv, float %i.kw, i64 1
  %i.mx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.ls, <2 x float> %i.mw) ; 4 uses
  %i.my = extractelement <2 x float> %i.mx, i64 1 ; 2 uses
  %i.mz = extractelement <4 x float> %i.md, i64 0
  %i.na = tail call float @llvm.fmuladd.f32(float %i.my, float %i.mz, float %i.mq) ; 3 uses
  %i.nb = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.nc = insertelement <2 x float> %i.nb, float %i.me, i64 1 ; 2 uses
  %i.nd = fneg <4 x float> %i.md                  ; 4 uses
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nf = fmul <2 x float> %i.nc, %i.ne
  %i.ng = shufflevector <4 x float> %i.md, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nh = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.ni = insertelement <2 x float> %i.nh, float %i.li, i64 1 ; 3 uses
  %i.nj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.ni, <2 x float> %i.nf) ; 5 uses
  %i.nk = fneg <2 x float> %i.lq                  ; 2 uses
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.nm = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nn = insertelement <2 x float> %i.nm, float %i.mi, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.np = fmul <4 x float> %i.no, %i.nl
  %i.nq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lv, <4 x float> %i.mn, <4 x float> %i.np) ; 10 uses
  %i.nr = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x float> %i.ns, %i.nk
  %i.nu = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.nu, <2 x float> %i.nt) ; 5 uses
  %i.nw = extractelement <4 x float> %i.nq, i64 0
  %i.nx = extractelement <2 x float> %i.nv, i64 1
  %i.ny = extractelement <2 x float> %i.nj, i64 0
  %i.nz = fneg float %i.ny                        ; 2 uses
  %i.oa = extractelement <4 x float> %i.nq, i64 2
  %i.ob = extractelement <4 x float> %i.nq, i64 1
  %i.oc = fneg float %i.mk
  %i.od = fneg <2 x float> %i.ni
  %i.oe = extractelement <2 x float> %i.ls, i64 0
  %i.of = fneg float %i.oe
  %i.og = fneg float %i.my
  %i.oh = insertelement <4 x float> poison, float %i.li, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> %i.md, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.oj = shufflevector <4 x float> %i.nq, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ok = shufflevector <2 x float> %i.nv, <2 x float> %i.oj, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ol = shufflevector <2 x float> %i.mx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.om = insertelement <4 x float> %i.ol, float %i.lg, i64 1
  %i.on = insertelement <4 x float> %i.om, float %i.mo, i64 2
  %i.oo = shufflevector <4 x float> %i.on, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.op = shufflevector <2 x float> %i.nv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oq = shufflevector <4 x float> %i.md, <4 x float> %i.op, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.os = shufflevector <4 x float> %i.or, <4 x float> %i.ol, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.ot = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.ou = shufflevector <2 x float> %i.od, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ov = shufflevector <4 x float> %i.ot, <4 x float> %i.ou, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.ow = shufflevector <4 x float> %i.op, <4 x float> %i.nq, <2 x i32> <i32 1, i32 6>
  %i.ox = fneg <2 x float> %i.ow                  ; 2 uses
  %i.oy = insertelement <4 x float> poison, float %i.me, i64 0
  %i.oz = shufflevector <4 x float> %i.oy, <4 x float> %i.md, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %i.pa = shufflevector <2 x float> %i.nv, <2 x float> %i.ox, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pb = fmul <4 x float> %i.oz, %i.pa
  %i.pc = shufflevector <4 x float> %i.os, <4 x float> %i.nd, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> %i.ol, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.pe = shufflevector <4 x float> %i.ol, <4 x float> %i.nq, <4 x i32> <i32 0, i32 poison, i32 1, i32 4>
  %i.pf = insertelement <4 x float> %i.pe, float %i.og, i64 1
  %i.pg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pd, <4 x float> %i.pf, <4 x float> %i.pb)
  %i.ph = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.pi = insertelement <4 x float> %i.ph, float %i.lu, i64 2
  %i.pj = shufflevector <4 x float> %i.pi, <4 x float> %i.nq, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.pk = insertelement <4 x float> %i.nq, float %i.me, i64 3
  %i.pl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pj, <4 x float> %i.pk, <4 x float> %i.pg)
  %i.pm = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.pn = shufflevector <2 x float> %i.mm, <2 x float> %i.lq, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.pp = shufflevector <2 x float> %i.nj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.pq = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.pr = insertelement <4 x float> %i.pq, float %i.of, i64 2
  %i.ps = insertelement <4 x float> %i.pr, float %i.ms, i64 3
  %i.pt = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.pu = shufflevector <2 x float> %i.pt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pv = fmul <2 x float> %i.nc, %i.pu
  %i.pw = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.px = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> %i.ni, <2 x float> %i.pv) ; 6 uses
  %i.py = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pz = insertelement <2 x float> %i.py, float %i.li, i64 0
  %i.qa = fneg <2 x float> %i.pz                  ; 2 uses
  %i.qb = insertelement <2 x float> %i.px, float %i.lu, i64 0
  %i.qc = fmul <2 x float> %i.qb, %i.qa           ; 2 uses
  %i.qd = extractelement <2 x float> %i.qc, i64 0
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.me, float %i.lk, float %i.qd) ; 3 uses
  %i.qf = shufflevector <2 x float> %i.qa, <2 x float> %i.ox, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> %i.ok, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.qh = fmul <4 x float> %i.oi, %i.qg
  %i.qi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oo, <4 x float> %i.os, <4 x float> %i.qh)
  %i.qj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ov, <4 x float> %i.nq, <4 x float> %i.qi)
  %i.qk = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> %i.pp, <4 x i32> <i32 0, i32 4, i32 poison, i32 6> ; 2 uses
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.qn = extractelement <2 x float> %i.mx, i64 0
  %i.qo = extractelement <2 x float> %i.qc, i64 1
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.na, float %i.qn, float %i.qo)
  %i.qq = extractelement <2 x float> %i.px, i64 0
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qq, float %i.nw, float %i.qp)
  %i.qs = extractelement <2 x float> %i.nj, i64 1
  %i.qt = tail call float @llvm.fmuladd.f32(float %i.qs, float %i.nx, float %i.qr)
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.nz, float %i.oa, float %i.qt)
  %i.qv = tail call float @llvm.fmuladd.f32(float %i.qe, float %i.ob, float %i.qu)
  %i.qw = fdiv float 1.000000e+00, %i.qv
  %i.qx = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.qz = fmul <4 x float> %i.qj, %i.qy           ; 4 uses
  %i.ra = fmul <4 x float> %i.pl, %i.qy           ; 4 uses
  %i.rb = fneg <2 x float> %i.px
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.rd = shufflevector <4 x float> %i.pm, <4 x float> %i.rc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.re = shufflevector <2 x float> %i.px, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.rf = shufflevector <4 x float> %i.rd, <4 x float> %i.re, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.rg = fmul <4 x float> %i.mn, %i.rf
  %i.rh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.po, <4 x float> %i.qm, <4 x float> %i.rg)
  %i.ri = shufflevector <2 x float> %i.nj, <2 x float> %i.px, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.rj = insertelement <4 x float> %i.ri, float %i.na, i64 2
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 2> ; 2 uses
  %i.rl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ps, <4 x float> %i.rk, <4 x float> %i.rh)
  %i.rm = fmul <4 x float> %i.rl, %i.qy           ; 4 uses
  %i.rn = shufflevector <2 x float> %i.nj, <2 x float> %i.px, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> %i.rc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.rp = fmul <4 x float> %i.no, %i.ro
  %i.rq = shufflevector <4 x float> %i.ql, <4 x float> %i.lv, <4 x i32> <i32 poison, i32 1, i32 0, i32 5>
  %i.rr = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> %i.rq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.rt = fneg <2 x float> %i.lo
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rv = insertelement <4 x float> %i.ru, float %i.qe, i64 0
  %i.rw = shufflevector <4 x float> %i.rv, <4 x float> %i.lv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> %i.pp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ry = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rs, <4 x float> %i.rx, <4 x float> %i.rp)
  %i.rz = insertelement <4 x float> poison, float %i.oc, i64 0
  %i.sa = insertelement <4 x float> %i.rz, float %i.mk, i64 2
  %i.sb = insertelement <4 x float> %i.sa, float %i.na, i64 3
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.sd = shufflevector <4 x float> %i.rk, <4 x float> %i.re, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.se = insertelement <4 x float> %i.sd, float %i.mi, i64 3
  %i.sf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sc, <4 x float> %i.se, <4 x float> %i.ry)
  %i.sg = fmul <4 x float> %i.sf, %i.qy           ; 4 uses
  %i.sh = shufflevector <3 x float> %i.ji, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.si = fmul <4 x float> %i.sh, %i.ra
  %i.sj = shufflevector <3 x float> %i.ji, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.sk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qz, <4 x float> %i.sj, <4 x float> %i.si)
  %i.sl = shufflevector <3 x float> %i.ji, <3 x float> poison, <4 x i32> zeroinitializer
  %i.sm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rm, <4 x float> %i.sl, <4 x float> %i.sk)
  %i.sn = shufflevector <2 x float> %i.kz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.so = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sg, <4 x float> %i.sn, <4 x float> %i.sm)
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.sp, ptr %i.ez, align 4
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.sq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.it, <3 x float> zeroinitializer, <3 x float> %i.iw)
  %i.sr = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.iz, <3 x float> zeroinitializer, <3 x float> %i.sq)
  %i.ss = insertelement <3 x float> poison, float %i.ex, i64 0
  %i.st = shufflevector <3 x float> %i.ss, <3 x float> poison, <3 x i32> zeroinitializer
  %i.su = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jc, <3 x float> %i.st, <3 x float> %i.sr) ; 3 uses
  %i.sv = shufflevector <3 x float> %i.su, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.sw = fmul <4 x float> %i.sv, %i.ra
  %i.sx = shufflevector <3 x float> %i.su, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.sy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qz, <4 x float> %i.sx, <4 x float> %i.sw)
  %i.sz = shufflevector <3 x float> %i.su, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ta = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rm, <4 x float> %i.sz, <4 x float> %i.sy)
  %i.tb = insertelement <4 x float> poison, float %i.jm, i64 0
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.td = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sg, <4 x float> %i.tc, <4 x float> %i.ta)
  %i.te = shufflevector <4 x float> %i.td, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.te, ptr %.sroa.797.0..sroa_idx, align 4
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.tf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.it, <3 x float> zeroinitializer, <3 x float> %i.jd) ; 2 uses
  %i.tg = fadd <3 x float> %i.iz, %i.tf
  %i.th = insertelement <3 x float> poison, float %i.ey, i64 0
  %i.ti = shufflevector <3 x float> %i.th, <3 x float> poison, <3 x i32> zeroinitializer
  %i.tj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jc, <3 x float> %i.ti, <3 x float> %i.tg) ; 3 uses
  %i.tk = shufflevector <3 x float> %i.tj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
end_hunk_3
begin_hunk_4_@UpdateModelAnimationEx:bb.a

bb.q:                                             ; preds = %bb.o
  %i.gj = fmul float %i.av, %i.fz
  %i.gk = tail call float @sinf(float noundef %i.gj) #54
  %i.gl = fmul float %.0.i169, %i.fz
  %i.gm = tail call float @sinf(float noundef %i.gl) #54
  %i.gn = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gm, i64 1
  %i.gp = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fdiv <2 x float> %i.go, %i.gq           ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gt = fmul <2 x float> %.sroa.023.0.i196, %i.gs
  %i.gu = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.gu, <2 x float> %i.gt)
  %i.gw = fmul <2 x float> %.sroa.12.0.i197, %i.gs
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.gu, <2 x float> %i.gw)
  br label %QuaternionSlerp.exit229

QuaternionSlerp.exit229:                          ; preds = %QuaternionSlerp.exit, %bb.n, %bb.p, %bb.q
  %.pn87.i198 = phi <2 x float> [ %i.eq, %QuaternionSlerp.exit ], [ %i.fx, %bb.n ], [ %i.gg, %bb.p ], [ %i.gv, %bb.q ] ; 4 uses
  %.pn85.i199 = phi <2 x float> [ %i.es, %QuaternionSlerp.exit ], [ %i.fy, %bb.n ], [ %i.gi, %bb.p ], [ %i.gx, %bb.q ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.gy, align 4 ; 2 uses
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 36
  %.sroa.253.0.copyload = load float, ptr %.sroa.253.0..sroa_idx, align 4 ; 2 uses
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.gz, align 4
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 4
  %i.ha = fsub <2 x float> %.sroa.050.0.copyload, %.sroa.052.0.copyload
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ha, <2 x float> %.sroa.052.0.copyload)
  %i.hc = fsub float %.sroa.251.0.copyload, %.sroa.253.0.copyload
  %i.hd = tail call float @llvm.fmuladd.f32(float %.0.i169, float %i.hc, float %.sroa.253.0.copyload)
  %i.he = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %indvars.iv ; 8 uses
  %i.hf = fsub <2 x float> %i.el, %i.bn
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.hf, <2 x float> %i.bn)
  %i.hh = fsub float %i.en, %i.bp
  %i.hi = tail call float @llvm.fmuladd.f32(float %5, float %i.hh, float %i.bp)
  store <2 x float> %i.hg, ptr %i.he, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  store float %i.hi, ptr %.sroa.445.0..sroa_idx, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %.sroa.054.0.vec.extract.i246 = extractelement <2 x float> %.pn87.i, i64 0
  %.sroa.023.0.vec.extract.i247 = extractelement <2 x float> %.pn87.i198, i64 0
  %foldExtExtBinop669 = fmul <2 x float> %.pn87.i, %.pn87.i198
  %i.hk = extractelement <2 x float> %foldExtExtBinop669, i64 1
  %i.hl = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i246, float %.sroa.023.0.vec.extract.i247, float %i.hk)
  %.sroa.9.8.vec.extract.i250 = extractelement <2 x float> %.pn85.i, i64 0
  %.sroa.12.8.vec.extract.i251 = extractelement <2 x float> %.pn85.i199, i64 0
  %i.hm = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i250, float %.sroa.12.8.vec.extract.i251, float %i.hl)
  %.sroa.9.12.vec.extract.i252 = extractelement <2 x float> %.pn85.i, i64 1
  %.sroa.12.12.vec.extract.i253 = extractelement <2 x float> %.pn85.i199, i64 1
  %i.hn = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i252, float %.sroa.12.12.vec.extract.i253, float %i.hm) ; 3 uses
  %i.ho = fcmp olt float %i.hn, 0.000000e+00      ; 3 uses
  %i.hp = fneg <2 x float> %.pn87.i198
  %i.hq = fneg <2 x float> %.pn85.i199
  %i.hr = fneg float %i.hn
  %.0.i254 = select i1 %i.ho, float %i.hr, float %i.hn ; 5 uses
  %.sroa.023.0.i255 = select i1 %i.ho, <2 x float> %i.hp, <2 x float> %.pn87.i198 ; 3 uses
  %.sroa.12.0.i256 = select i1 %i.ho, <2 x float> %i.hq, <2 x float> %.pn85.i199 ; 3 uses
  %i.hs = tail call float @llvm.fabs.f32(float %.0.i254)
  %i.ht = fcmp ult float %i.hs, 1.000000e+00
  br i1 %i.ht, label %bb.r, label %QuaternionSlerp.exit288

bb.r:                                             ; preds = %QuaternionSlerp.exit229
  %i.hu = fcmp ogt float %.0.i254, f0x3F733333
  br i1 %i.hu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hv = fsub <2 x float> %.sroa.12.0.i256, %.pn85.i
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.hv, <2 x float> %.pn85.i) ; 3 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0 ; 2 uses
  %i.hy = extractelement <2 x float> %i.hw, i64 1 ; 2 uses
  %i.hz = fsub <2 x float> %.sroa.023.0.i255, %.pn87.i
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.hz, <2 x float> %.pn87.i) ; 4 uses
  %foldExtExtBinop671 = fmul <2 x float> %i.ia, %i.ia
  %i.ib = extractelement <2 x float> %foldExtExtBinop671, i64 1
  %i.ic = extractelement <2 x float> %i.ia, i64 0 ; 2 uses
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.ib)
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float %i.id)
  %i.if = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.ie) ; 2 uses
  %sqrt.i.i281 = tail call float @llvm.sqrt.f32(float %i.if)
  %i.ig = fcmp oeq float %i.if, 0.000000e+00
  %i.ih = fdiv float 1.000000e+00, %sqrt.i.i281
  %i.ii = select i1 %i.ig, float 1.000000e+00, float %i.ih
  %i.ij = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.il = fmul <2 x float> %i.ia, %i.ik
  %i.im = fmul <2 x float> %i.hw, %i.ik
  br label %QuaternionSlerp.exit288

bb.t:                                             ; preds = %bb.r
  %i.in = tail call float @acosf(float noundef %.0.i254) #54 ; 2 uses
  %i.io = fneg float %.0.i254
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.io, float %.0.i254, float 1.000000e+00)
  %i.iq = tail call float @sqrtf(float noundef %i.ip) #54 ; 2 uses
  %i.ir = tail call float @llvm.fabs.f32(float %i.iq)
  %i.is = fcmp olt float %i.ir, f0x358637BD
  br i1 %i.is, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.it = fmul <2 x float> %.sroa.023.0.i255, splat (float 5.000000e-01)
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn87.i, <2 x float> splat (float 5.000000e-01), <2 x float> %i.it)
  %i.iv = fmul <2 x float> %.sroa.12.0.i256, splat (float 5.000000e-01)
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn85.i, <2 x float> splat (float 5.000000e-01), <2 x float> %i.iv)
  br label %QuaternionSlerp.exit288

bb.v:                                             ; preds = %bb.t
  %i.ix = fmul float %i.ay, %i.in
  %i.iy = tail call float @sinf(float noundef %i.ix) #54
  %i.iz = fmul float %5, %i.in
  %i.ja = tail call float @sinf(float noundef %i.iz) #54
  %i.jb = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.ja, i64 1
  %i.jd = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fdiv <2 x float> %i.jc, %i.je           ; 2 uses
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jh = fmul <2 x float> %.sroa.023.0.i255, %i.jg
  %i.ji = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn87.i, <2 x float> %i.ji, <2 x float> %i.jh)
  %i.jk = fmul <2 x float> %.sroa.12.0.i256, %i.jg
  %i.jl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn85.i, <2 x float> %i.ji, <2 x float> %i.jk)
  br label %QuaternionSlerp.exit288

QuaternionSlerp.exit288:                          ; preds = %QuaternionSlerp.exit229, %bb.s, %bb.u, %bb.v
  %.pn87.i257 = phi <2 x float> [ %.pn87.i, %QuaternionSlerp.exit229 ], [ %i.il, %bb.s ], [ %i.iu, %bb.u ], [ %i.jj, %bb.v ] ; 7 uses
  %.pn85.i258 = phi <2 x float> [ %.pn85.i, %QuaternionSlerp.exit229 ], [ %i.im, %bb.s ], [ %i.iw, %bb.u ], [ %i.jl, %bb.v ] ; 5 uses
  store <2 x float> %.pn87.i257, ptr %i.hj, align 4
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  store <2 x float> %.pn85.i258, ptr %.sroa.435.0..sroa_idx, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.he, i64 28 ; 2 uses
  %i.jn = fsub <2 x float> %i.hb, %i.ed
  %i.jo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.jn, <2 x float> %i.ed)
  %i.jp = fsub float %i.hd, %i.ef
  store <2 x float> %i.jo, ptr %i.jm, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 36
  %i.jq = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %indvars.iv ; 8 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 28
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 36
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jy = shufflevector <2 x float> %.pn87.i257, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jz = fmul <2 x float> %.pn87.i257, %.pn87.i257 ; 2 uses
  %i.ka = fmul <2 x float> %i.jy, %.pn85.i258     ; 4 uses
  %i.kb = fmul <2 x float> %.pn87.i257, %.pn85.i258 ; 3 uses
  %shift = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop673 = fsub <2 x float> %i.kb, %shift
  %i.kc = extractelement <2 x float> %foldExtExtBinop673, i64 0
  %shift675 = shufflevector <2 x float> %.pn87.i257, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop676 = fmul <2 x float> %.pn87.i257, %shift675 ; 2 uses
  %i.kd = shufflevector <2 x float> %foldExtExtBinop676, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ke = extractelement <2 x float> %foldExtExtBinop676, i64 0
  %i.kf = shufflevector <2 x float> %.pn85.i258, <2 x float> %i.ka, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.kg = shufflevector <2 x float> %.pn85.i258, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.kh = insertelement <4 x float> %i.kg, float 1.000000e+00, i64 3
  %i.ki = fmul <4 x float> %i.kf, %i.kh           ; 2 uses
  %i.kj = shufflevector <2 x float> %i.jz, <2 x float> %i.ka, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> %i.kd, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.kl = fadd <4 x float> %i.kk, %i.ki           ; 2 uses
  %i.km = extractelement <4 x float> %i.ki, i64 1
  %i.kn = fsub float %i.ke, %i.km
  %i.ko = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.kp = insertelement <4 x float> %i.ko, float %i.kc, i64 1
  %i.kq = insertelement <4 x float> %i.kp, float %i.kn, i64 2
  %i.kr = fmul <4 x float> %i.kq, splat (float 2.000000e+00) ; 4 uses
  %i.ks = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kb)
  %shift678 = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop679 = fsub <2 x float> %i.ka, %shift678
  %i.kt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jz)
  %i.ku = load float, ptr %i.he, align 4          ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.kw = load float, ptr %i.kv, align 4          ; 2 uses
  %i.kx = load float, ptr %.sroa.445.0..sroa_idx, align 4 ; 2 uses
  %i.ky = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.kz = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.la = insertelement <4 x float> %i.kz, float %i.kt, i64 2
  %i.lb = insertelement <4 x float> %i.la, float %i.jp, i64 3
  %i.lc = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.ef, i64 3
  %i.ld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lb, <4 x float> %i.bh, <4 x float> %i.lc) ; 6 uses
  %i.le = extractelement <4 x float> %i.ld, i64 3
  store float %i.le, ptr %.sroa.4.0..sroa_idx, align 4
  %i.lf = load float, ptr %i.jr, align 4          ; 3 uses
  %i.lg = load float, ptr %i.js, align 4          ; 3 uses
  %i.lh = load float, ptr %i.jt, align 4          ; 3 uses
  %i.li = load <2 x float>, ptr %i.ju, align 4    ; 6 uses
  %i.lj = load <2 x float>, ptr %i.jv, align 4    ; 6 uses
  %i.lk = fmul <2 x float> %i.li, %i.li           ; 3 uses
  %foldExtExtBinop681 = fmul <2 x float> %i.lj, %i.lj ; 2 uses
  %shift683 = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop684 = fmul <2 x float> %i.li, %shift683 ; 2 uses
  %shift686 = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop687 = fmul <2 x float> %shift686, %i.lj ; 2 uses
  %shift689 = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop690 = fadd <2 x float> %shift689, %foldExtExtBinop681
  %i.ll = extractelement <2 x float> %foldExtExtBinop690, i64 0
  %6 = tail call float @llvm.fmuladd.f32(float %i.ll, float -2.000000e+00, float 1.000000e+00)
  %foldExtExtBinop692 = fadd <2 x float> %foldExtExtBinop684, %foldExtExtBinop687
  %i.lm = extractelement <2 x float> %foldExtExtBinop692, i64 0
  %i.ln = fmul float %i.lm, 2.000000e+00
  %foldExtExtBinop694 = fsub <2 x float> %foldExtExtBinop684, %foldExtExtBinop687
  %i.lo = extractelement <2 x float> %foldExtExtBinop694, i64 0
  %i.lp = fmul float %i.lo, 2.000000e+00
  %foldExtExtBinop696 = fadd <2 x float> %i.lk, %foldExtExtBinop681
  %i.lq = extractelement <2 x float> %foldExtExtBinop696, i64 0
  %7 = tail call float @llvm.fmuladd.f32(float %i.lq, float -2.000000e+00, float 1.000000e+00)
  %i.lr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lk)
  %i.ls = fmul float %i.lg, 0.000000e+00
  %i.lt = fadd float %i.ls, 0.000000e+00          ; 4 uses
  %8 = tail call float @llvm.fmuladd.f32(float %i.lh, float 0.000000e+00, float 0.000000e+00)
  %i.lu = fadd float %8, 0.000000e+00             ; 3 uses
  %i.lv = load <2 x float>, ptr %i.jq, align 4    ; 3 uses
  %i.lw = load float, ptr %i.jw, align 4
  %i.lx = load float, ptr %i.jx, align 4          ; 4 uses
  %i.ly = extractelement <2 x float> %i.lv, i64 0
  %i.lz = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.mc = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x float> %i.li, %i.mc           ; 4 uses
  %i.me = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mf = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mg = fmul <2 x float> %i.me, %i.mf           ; 4 uses
  %i.mh = fadd <2 x float> %i.md, %i.mg
  %i.mi = fsub <2 x float> %i.md, %i.mg
  %i.mj = shufflevector <2 x float> %i.mh, <2 x float> %i.mi, <2 x i32> <i32 0, i32 3>
  %i.mk = fmul <2 x float> %i.mj, splat (float 2.000000e+00) ; 4 uses
  %9 = insertelement <2 x float> poison, float %i.lp, i64 0
  %10 = insertelement <2 x float> %9, float %7, i64 1 ; 2 uses
  %11 = fmul <2 x float> %10, zeroinitializer     ; 2 uses
  %12 = insertelement <2 x float> poison, float %6, i64 0
  %i.ml = insertelement <2 x float> %12, float %i.ln, i64 1 ; 3 uses
  %i.mm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> zeroinitializer, <2 x float> %11) ; 2 uses
  %i.mn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> zeroinitializer, <2 x float> %i.mm)
  %i.mo = fadd <2 x float> %i.mn, zeroinitializer ; 3 uses
  %i.mp = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.ml, <2 x float> %11)
  %i.ms = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> zeroinitializer, <2 x float> %i.mr)
  %i.mt = fadd <2 x float> %i.ms, zeroinitializer ; 5 uses
  %i.mu = fmul <2 x float> %i.mt, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %13 = extractelement <2 x float> %i.mt, i64 0
  %shift698 = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop699 = fadd <2 x float> %i.mt, %shift698
  %14 = extractelement <2 x float> %foldExtExtBinop699, i64 0
  %i.mv = extractelement <2 x float> %i.mt, i64 1
  %15 = tail call float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %i.mv)
  %i.mw = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.my = fmul <2 x float> %i.mx, %10
  %i.mz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> zeroinitializer, <2 x float> %i.my)
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> zeroinitializer, <2 x float> %i.mz)
  %i.nb = fadd <2 x float> %i.na, zeroinitializer ; 4 uses
  %i.nc = extractelement <2 x float> %i.nb, i64 1
  %i.nd = fmul float %i.nc, 0.000000e+00          ; 2 uses
  %i.ne = extractelement <2 x float> %i.nb, i64 0
  %i.nf = fadd float %i.ne, %i.nd
  %i.ng = fmul <2 x float> %i.mo, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.nh = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ni = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.nh)
  %i.nj = load <2 x float>, ptr %i.jm, align 4
  %i.nk = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.nl = shufflevector <2 x float> %i.nj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.nm = shufflevector <3 x float> <float 0.000000e+00, float 0.000000e+00, float poison>, <3 x float> %i.nl, <3 x i32> <i32 0, i32 1, i32 4> ; 3 uses
  %i.nn = fmul <3 x float> %i.nk, %i.nm
  %i.no = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.np = fmul <3 x float> %i.no, %i.nm
  %i.nq = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.nr = fmul <3 x float> %i.nq, %i.nm
  %i.ns = shufflevector <3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, <3 x float> %i.nl, <3 x i32> <i32 0, i32 3, i32 2> ; 3 uses
  %i.nt = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> zeroinitializer
  %i.nu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ns, <3 x float> %i.nt, <3 x float> %i.nn) ; 2 uses
  %i.nv = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> zeroinitializer
  %i.nw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ns, <3 x float> %i.nv, <3 x float> %i.np) ; 2 uses
  %i.nx = shufflevector <4 x float> %i.kr, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ny = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ns, <3 x float> %i.nx, <3 x float> %i.nr) ; 2 uses
  %16 = shufflevector <3 x float> %i.ny, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <2 x float> %i.mt, <2 x float> %i.nb, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %18 = shufflevector <4 x float> %17, <4 x float> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %19 = shufflevector <2 x float> %i.mu, <2 x float> %i.nb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %20 = insertelement <4 x float> %19, float %i.nd, i64 2
  %21 = shufflevector <4 x float> %20, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> zeroinitializer, <4 x float> %21) ; 4 uses
  %23 = extractelement <4 x float> %22, i64 3
  %i.nz = fadd float %23, 0.000000e+00            ; 4 uses
  %i.oa = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> %foldExtExtBinop679, <2 x i32> <i32 0, i32 2>
  %i.oc = fmul <2 x float> %i.ob, splat (float 2.000000e+00) ; 3 uses
  %i.od = shufflevector <3 x float> %i.nu, <3 x float> %i.nw, <2 x i32> <i32 0, i32 3>
  %i.oe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> zeroinitializer, <2 x float> %i.od)
  %i.of = fadd <2 x float> %i.oe, zeroinitializer ; 3 uses
  %i.og = extractelement <2 x float> %i.of, i64 1
  %i.oh = fmul float %i.og, 0.000000e+00          ; 2 uses
  %i.oi = extractelement <2 x float> %i.of, i64 0 ; 3 uses
  %i.oj = fadd float %i.oi, %i.oh
  %24 = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.ok = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.ol = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ku, i64 0
  %i.om = insertelement <2 x float> %i.lv, float %i.lx, i64 0
  %i.on = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> <i32 3, i32 poison, i32 poison> ; 2 uses
  %i.oo = shufflevector <3 x float> %i.on, <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, <3 x i32> <i32 0, i32 4, i32 5> ; 3 uses
  %i.op = shufflevector <2 x float> %i.oc, <2 x float> poison, <3 x i32> zeroinitializer
  %i.oq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oo, <3 x float> %i.op, <3 x float> %i.nu)
  %i.or = fadd <3 x float> %i.oq, zeroinitializer ; 3 uses
  %i.os = shufflevector <2 x float> %i.oc, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ot = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oo, <3 x float> %i.os, <3 x float> %i.nw)
  %i.ou = fadd <3 x float> %i.ot, zeroinitializer ; 2 uses
  %i.ov = shufflevector <4 x float> %i.ld, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.ow = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ov, <3 x float> %i.oo, <3 x float> %i.ny)
  %i.ox = fadd <3 x float> %i.ow, zeroinitializer ; 4 uses
  %i.oy = shufflevector <3 x float> %i.on, <3 x float> %i.nl, <3 x i32> <i32 0, i32 3, i32 4>
  %i.oz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oy, <3 x float> zeroinitializer, <3 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>)
  %i.pa = fadd <3 x float> %i.oz, zeroinitializer ; 4 uses
  %i.pb = fmul <3 x float> %i.ou, zeroinitializer ; 2 uses
  %i.pc = fadd <3 x float> %i.or, %i.pb
  %i.pd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ox, <3 x float> zeroinitializer, <3 x float> %i.pc)
  %i.pe = insertelement <3 x float> poison, float %i.ku, i64 0
  %i.pf = shufflevector <3 x float> %i.pe, <3 x float> poison, <3 x i32> zeroinitializer
  %i.pg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pa, <3 x float> %i.pf, <3 x float> %i.pd) ; 3 uses
  %i.ph = extractelement <2 x float> %i.of, i64 1
  %i.pi = tail call float @llvm.fmuladd.f32(float %i.oi, float 0.000000e+00, float %i.ph)
  %i.pj = tail call float @llvm.fmuladd.f32(float %i.nz, float 0.000000e+00, float %i.pi)
  %i.pk = fadd float %i.pj, %i.kw
  %i.pl = tail call float @llvm.fmuladd.f32(float %i.oi, float 0.000000e+00, float %i.oh) ; 2 uses
  %i.pm = fadd float %i.nz, %i.pl
  %i.pn = fadd float %i.pm, %i.kx
  %foldExtExtBinop701 = fsub <2 x float> %i.md, %i.mg
  %i.po = shufflevector <2 x float> %foldExtExtBinop701, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop703 = fadd <2 x float> %i.md, %i.mg
  %i.pp = shufflevector <2 x float> %foldExtExtBinop703, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.pq = extractelement <4 x float> %22, i64 0   ; 2 uses
  %i.pr = extractelement <4 x float> %22, i64 2   ; 2 uses
  %i.ps = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pt, <2 x float> %i.mk, <2 x float> %i.mm)
  %i.pv = fadd <2 x float> %i.pu, zeroinitializer ; 3 uses
  %i.pw = fmul <2 x float> %i.pv, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.px = shufflevector <2 x float> %i.pv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.py = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.px)
  %i.pz = shufflevector <2 x float> %i.pv, <2 x float> %i.mo, <2 x i32> <i32 0, i32 2>
  %i.qa = shufflevector <2 x float> %i.pw, <2 x float> %i.ng, <2 x i32> <i32 1, i32 3>
  %i.qb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pz, <2 x float> zeroinitializer, <2 x float> %i.qa) ; 3 uses
  %i.qc = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.qb, <2 x i32> <i32 3, i32 1>
  %i.qd = extractelement <2 x float> %i.qb, i64 0
  %i.qe = shufflevector <4 x float> %i.po, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.qf = fmul <4 x float> %i.qe, <float 2.000000e+00, float poison, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.qh = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x float> %i.pp, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.qi = fmul <4 x float> %i.qh, <float 2.000000e+00, float poison, float 1.000000e+00, float -0.000000e+00>
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.qk = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.lr, i64 0
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qk, <4 x float> <float -2.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> <float 1.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>) ; 3 uses
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ql = insertelement <4 x float> <float poison, float 0.000000e+00, float -0.000000e+00, float 1.000000e+00>, float %i.lg, i64 0
  %27 = fmul <4 x float> %i.ql, %i.qj             ; 2 uses
  %28 = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float -0.000000e+00>, float %i.lf, i64 1
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %i.qg, <4 x float> %27)
  %i.qm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> zeroinitializer, <4 x float> %29)
  %i.qn = fadd <4 x float> %i.qm, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 3 uses
  %i.qo = extractelement <4 x float> %i.qf, i64 0
  %i.qp = extractelement <4 x float> %27, i64 1
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.qo, float 0.000000e+00, float %i.qp) ; 2 uses
  %30 = extractelement <4 x float> %25, i64 0
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.lh, float %30, float %i.qq)
  %i.qs = fadd float %i.qr, 0.000000e+00          ; 3 uses
  %i.qt = extractelement <4 x float> %i.qn, i64 1 ; 3 uses
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.qt, float 0.000000e+00, float %14)
  %31 = shufflevector <4 x float> %24, <4 x float> %25, <2 x i32> <i32 0, i32 4>
  %i.qv = insertelement <2 x float> %i.ok, float %i.qq, i64 1
  %i.qw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> zeroinitializer, <2 x float> %i.qv)
  %i.qx = fadd <2 x float> %i.qw, %i.ol           ; 3 uses
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qz = insertelement <2 x float> %i.qy, float %i.lf, i64 1
  %i.ra = fadd float %i.qt, %i.pq
  %i.rb = tail call float @llvm.fmuladd.f32(float %i.qt, float 0.000000e+00, float %i.pq)
  %i.rc = extractelement <4 x float> %i.qn, i64 0 ; 3 uses
  %i.rd = tail call float @llvm.fmuladd.f32(float %i.rc, float 0.000000e+00, float %i.nf)
  %i.re = tail call float @llvm.fmuladd.f32(float %i.lt, float %i.ly, float %i.rd) ; 2 uses
  %i.rf = fadd float %i.rc, %i.pr
  %i.rg = tail call float @llvm.fmuladd.f32(float %i.lt, float %i.lx, float %i.rf) ; 3 uses
  %i.rh = tail call float @llvm.fmuladd.f32(float %i.rc, float 0.000000e+00, float %i.pr)
  %i.ri = fadd float %i.lt, %i.rh                 ; 3 uses
  %i.rj = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rk, <2 x float> zeroinitializer, <2 x float> %i.py)
  %i.rm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.mb, <2 x float> %i.rl) ; 4 uses
  %i.rn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qy, <2 x float> zeroinitializer, <2 x float> %i.ni) ; 2 uses
  %i.ro = fadd <2 x float> %i.mb, %i.rn           ; 2 uses
  %i.rp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qz, <2 x float> zeroinitializer, <2 x float> %i.qc)
  %i.rq = fadd <2 x float> %i.rp, <float 1.000000e+00, float 0.000000e+00> ; 6 uses
  %i.rr = extractelement <2 x float> %i.rq, i64 1 ; 2 uses
  %i.rs = fadd float %i.rr, %i.rb                 ; 4 uses
  %i.rt = shufflevector <2 x float> %i.rm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 4 uses
  %32 = shufflevector <4 x float> %22, <4 x float> %i.rt, <4 x i32> <i32 1, i32 poison, i32 poison, i32 4>
  %33 = insertelement <4 x float> %32, float %15, i64 1
  %i.ru = insertelement <4 x float> %33, float %i.rs, i64 2
  %i.rv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qn, <4 x float> zeroinitializer, <4 x float> %i.ru)
  %i.rw = shufflevector <2 x float> %i.rq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 6, i32 7>
  %i.ry = insertelement <4 x float> %i.rx, float %i.lt, i64 0
  %i.rz = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, float %i.lw, i64 0
  %i.sa = shufflevector <4 x float> %i.rz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.sb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ry, <4 x float> %i.sa, <4 x float> %i.rv) ; 7 uses
  %i.sc = tail call float @llvm.fmuladd.f32(float %i.rr, float %i.lx, float %i.ra) ; 4 uses
  %i.sd = insertelement <2 x float> %i.qx, float %i.qs, i64 0
  %i.se = fadd <2 x float> %i.sd, %i.qb           ; 2 uses
  %i.sf = extractelement <2 x float> %i.se, i64 0
  %i.sg = tail call float @llvm.fmuladd.f32(float %i.lu, float %i.lx, float %i.sf) ; 3 uses
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.qs, float 0.000000e+00, float %i.qd)
  %i.si = fadd float %i.lu, %i.sh                 ; 4 uses
  %i.sj = shufflevector <2 x float> %i.se, <2 x float> %i.rn, <2 x i32> <i32 1, i32 2>
  %i.sk = fadd <2 x float> %i.om, %i.sj           ; 3 uses
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.sm = fneg float %i.re                        ; 3 uses
  %i.sn = extractelement <4 x float> %i.sb, i64 1
  %i.so = fmul float %i.sn, %i.sm
  %i.sp = extractelement <2 x float> %i.sk, i64 0
  %i.sq = fneg float %i.sp                        ; 2 uses
  %i.sr = fmul float %i.si, %i.sq
  %i.ss = insertelement <2 x float> %i.mb, float %i.sg, i64 0
  %i.st = insertelement <2 x float> poison, float %i.sr, i64 0
  %i.su = insertelement <2 x float> %i.st, float %i.qu, i64 1
  %i.sv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ss, <2 x float> %i.rq, <2 x float> %i.su) ; 4 uses
  %i.sw = extractelement <2 x float> %i.sv, i64 1 ; 2 uses
  %i.sx = extractelement <4 x float> %i.sb, i64 0
  %i.sy = tail call float @llvm.fmuladd.f32(float %i.sw, float %i.sx, float %i.so) ; 3 uses
  %i.sz = insertelement <2 x float> poison, float %i.rs, i64 0
  %i.ta = insertelement <2 x float> %i.sz, float %i.sc, i64 1 ; 2 uses
  %i.tb = fneg <4 x float> %i.sb                  ; 4 uses
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> poison, <2 x i32> zeroinitializer
  %i.td = fmul <2 x float> %i.ta, %i.tc
  %i.te = shufflevector <4 x float> %i.sb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tf = insertelement <2 x float> poison, float %i.ri, i64 0
  %i.tg = insertelement <2 x float> %i.tf, float %i.rg, i64 1 ; 3 uses
  %i.th = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.te, <2 x float> %i.tg, <2 x float> %i.td) ; 5 uses
  %i.ti = fneg <2 x float> %i.ro                  ; 2 uses
  %i.tj = shufflevector <2 x float> %i.ti, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.tk = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.tl = insertelement <2 x float> %i.tk, float %i.sg, i64 0
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.tn = fmul <4 x float> %i.tm, %i.tj
  %i.to = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rt, <4 x float> %i.sl, <4 x float> %i.tn) ; 10 uses
  %i.tp = insertelement <2 x float> poison, float %i.si, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x float> %i.tq, %i.ti
  %i.ts = shufflevector <2 x float> %i.rq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rm, <2 x float> %i.ts, <2 x float> %i.tr) ; 5 uses
  %i.tu = extractelement <4 x float> %i.to, i64 0
  %i.tv = extractelement <2 x float> %i.tt, i64 1
  %i.tw = extractelement <2 x float> %i.th, i64 0
  %i.tx = fneg float %i.tw                        ; 2 uses
  %i.ty = extractelement <4 x float> %i.to, i64 2
  %i.tz = extractelement <4 x float> %i.to, i64 1
  %i.ua = fneg float %i.si
  %i.ub = fneg <2 x float> %i.tg
  %i.uc = extractelement <2 x float> %i.rq, i64 0
  %i.ud = fneg float %i.uc
  %i.ue = fneg float %i.sw
  %i.uf = insertelement <4 x float> poison, float %i.rg, i64 0
  %i.ug = shufflevector <4 x float> %i.uf, <4 x float> %i.sb, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.uh = shufflevector <4 x float> %i.to, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ui = shufflevector <2 x float> %i.tt, <2 x float> %i.uh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.uj = shufflevector <2 x float> %i.sv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.uk = insertelement <4 x float> %i.uj, float %i.re, i64 1
  %i.ul = insertelement <4 x float> %i.uk, float %i.sm, i64 2
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.un = shufflevector <2 x float> %i.tt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uo = shufflevector <4 x float> %i.sb, <4 x float> %i.un, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> %i.to, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> %i.uj, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.ur = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.us = shufflevector <2 x float> %i.ub, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ut = shufflevector <4 x float> %i.ur, <4 x float> %i.us, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.uu = shufflevector <4 x float> %i.un, <4 x float> %i.to, <2 x i32> <i32 1, i32 6>
  %i.uv = fneg <2 x float> %i.uu                  ; 2 uses
  %i.uw = insertelement <4 x float> poison, float %i.sc, i64 0
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> %i.sb, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %i.uy = shufflevector <2 x float> %i.tt, <2 x float> %i.uv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uz = fmul <4 x float> %i.ux, %i.uy
  %i.va = shufflevector <4 x float> %i.uq, <4 x float> %i.tb, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> %i.uj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vc = shufflevector <4 x float> %i.uj, <4 x float> %i.to, <4 x i32> <i32 0, i32 poison, i32 1, i32 4>
  %i.vd = insertelement <4 x float> %i.vc, float %i.ue, i64 1
  %i.ve = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vb, <4 x float> %i.vd, <4 x float> %i.uz)
  %i.vf = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.vg = insertelement <4 x float> %i.vf, float %i.rs, i64 2
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> %i.to, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.vi = insertelement <4 x float> %i.to, float %i.sc, i64 3
  %i.vj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vh, <4 x float> %i.vi, <4 x float> %i.ve)
  %i.vk = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.vl = shufflevector <2 x float> %i.sk, <2 x float> %i.ro, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.vm = shufflevector <4 x float> %i.vl, <4 x float> %i.tj, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.vn = shufflevector <2 x float> %i.th, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.vo = shufflevector <2 x float> %i.rq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.vp = insertelement <4 x float> %i.vo, float %i.ud, i64 2
  %i.vq = insertelement <4 x float> %i.vp, float %i.sq, i64 3
  %i.vr = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = fmul <2 x float> %i.ta, %i.vs
  %i.vu = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vu, <2 x float> %i.tg, <2 x float> %i.vt) ; 6 uses
  %i.vw = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vx = insertelement <2 x float> %i.vw, float %i.rg, i64 0
  %i.vy = fneg <2 x float> %i.vx                  ; 2 uses
  %i.vz = insertelement <2 x float> %i.vv, float %i.rs, i64 0
  %i.wa = fmul <2 x float> %i.vz, %i.vy           ; 2 uses
  %i.wb = extractelement <2 x float> %i.wa, i64 0
  %i.wc = tail call float @llvm.fmuladd.f32(float %i.sc, float %i.ri, float %i.wb) ; 3 uses
  %i.wd = shufflevector <2 x float> %i.vy, <2 x float> %i.uv, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.we = shufflevector <4 x float> %i.wd, <4 x float> %i.ui, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wf = fmul <4 x float> %i.ug, %i.we
  %i.wg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.um, <4 x float> %i.uq, <4 x float> %i.wf)
  %i.wh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ut, <4 x float> %i.to, <4 x float> %i.wg)
  %i.wi = insertelement <4 x float> poison, float %i.wc, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> %i.vn, <4 x i32> <i32 0, i32 4, i32 poison, i32 6> ; 2 uses
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.wl = extractelement <2 x float> %i.sv, i64 0
  %i.wm = extractelement <2 x float> %i.wa, i64 1
  %i.wn = tail call float @llvm.fmuladd.f32(float %i.sy, float %i.wl, float %i.wm)
  %i.wo = extractelement <2 x float> %i.vv, i64 0
  %i.wp = tail call float @llvm.fmuladd.f32(float %i.wo, float %i.tu, float %i.wn)
  %i.wq = extractelement <2 x float> %i.th, i64 1
  %i.wr = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.tv, float %i.wp)
  %i.ws = tail call float @llvm.fmuladd.f32(float %i.tx, float %i.ty, float %i.wr)
  %i.wt = tail call float @llvm.fmuladd.f32(float %i.wc, float %i.tz, float %i.ws)
  %i.wu = fdiv float 1.000000e+00, %i.wt
  %i.wv = insertelement <4 x float> poison, float %i.wu, i64 0
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.wx = fmul <4 x float> %i.wh, %i.ww           ; 4 uses
  %i.wy = fmul <4 x float> %i.vj, %i.ww           ; 4 uses
  %i.wz = fneg <2 x float> %i.vv
  %i.xa = shufflevector <2 x float> %i.wz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xb = shufflevector <4 x float> %i.vk, <4 x float> %i.xa, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.xc = shufflevector <2 x float> %i.vv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xd = shufflevector <4 x float> %i.xb, <4 x float> %i.xc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xe = fmul <4 x float> %i.sl, %i.xd
  %i.xf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vm, <4 x float> %i.wk, <4 x float> %i.xe)
  %i.xg = shufflevector <2 x float> %i.th, <2 x float> %i.vv, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.xh = insertelement <4 x float> %i.xg, float %i.sy, i64 2
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 2> ; 2 uses
  %i.xj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.xi, <4 x float> %i.xf)
  %i.xk = fmul <4 x float> %i.xj, %i.ww           ; 4 uses
  %i.xl = shufflevector <2 x float> %i.th, <2 x float> %i.vv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.xm = shufflevector <4 x float> %i.xl, <4 x float> %i.xa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xn = fmul <4 x float> %i.tm, %i.xm
  %i.xo = shufflevector <4 x float> %i.wj, <4 x float> %i.rt, <4 x i32> <i32 poison, i32 1, i32 0, i32 5>
  %i.xp = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> %i.xo, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.xr = fneg <2 x float> %i.rm
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.xt = insertelement <4 x float> %i.xs, float %i.wc, i64 0
  %i.xu = shufflevector <4 x float> %i.xt, <4 x float> %i.rt, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.xv = shufflevector <4 x float> %i.xu, <4 x float> %i.vn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.xw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xq, <4 x float> %i.xv, <4 x float> %i.xn)
  %i.xx = insertelement <4 x float> poison, float %i.ua, i64 0
  %i.xy = insertelement <4 x float> %i.xx, float %i.si, i64 2
  %i.xz = insertelement <4 x float> %i.xy, float %i.sy, i64 3
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.yb = shufflevector <4 x float> %i.xi, <4 x float> %i.xc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.yc = insertelement <4 x float> %i.yb, float %i.sg, i64 3
  %i.yd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ya, <4 x float> %i.yc, <4 x float> %i.xw)
  %i.ye = fmul <4 x float> %i.yd, %i.ww           ; 4 uses
  %i.yf = shufflevector <3 x float> %i.pg, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yg = fmul <4 x float> %i.yf, %i.wy
  %i.yh = shufflevector <3 x float> %i.pg, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wx, <4 x float> %i.yh, <4 x float> %i.yg)
  %i.yj = shufflevector <3 x float> %i.pg, <3 x float> poison, <4 x i32> zeroinitializer
  %i.yk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xk, <4 x float> %i.yj, <4 x float> %i.yi)
  %i.yl = shufflevector <2 x float> %i.qx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ym = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ye, <4 x float> %i.yl, <4 x float> %i.yk)
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.yn, ptr %i.ky, align 4
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.yo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.or, <3 x float> zeroinitializer, <3 x float> %i.ou)
  %i.yp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ox, <3 x float> zeroinitializer, <3 x float> %i.yo)
  %i.yq = insertelement <3 x float> poison, float %i.kw, i64 0
  %i.yr = shufflevector <3 x float> %i.yq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ys = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pa, <3 x float> %i.yr, <3 x float> %i.yp) ; 3 uses
  %i.yt = shufflevector <3 x float> %i.ys, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yu = fmul <4 x float> %i.yt, %i.wy
  %i.yv = shufflevector <3 x float> %i.ys, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wx, <4 x float> %i.yv, <4 x float> %i.yu)
  %i.yx = shufflevector <3 x float> %i.ys, <3 x float> poison, <4 x i32> zeroinitializer
  %i.yy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xk, <4 x float> %i.yx, <4 x float> %i.yw)
  %i.yz = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.za = shufflevector <4 x float> %i.yz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ye, <4 x float> %i.za, <4 x float> %i.yy)
  %i.zc = shufflevector <4 x float> %i.zb, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.zc, ptr %.sroa.7306.0..sroa_idx, align 4
  %.sroa.11310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.zd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.or, <3 x float> zeroinitializer, <3 x float> %i.pb) ; 2 uses
  %i.ze = fadd <3 x float> %i.ox, %i.zd
  %i.zf = insertelement <3 x float> poison, float %i.kx, i64 0
  %i.zg = shufflevector <3 x float> %i.zf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.zh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pa, <3 x float> %i.zg, <3 x float> %i.ze) ; 3 uses
  %i.zi = shufflevector <3 x float> %i.zh, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
end_hunk_4
