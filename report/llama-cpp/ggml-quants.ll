Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@quantize_iq2_xs:bb.a
  %i.agm = and i32 %spec.store.select.i.i.us, 2139095040
  %i.agn = add nuw i32 %i.agm, 125829120
  %i.ago = bitcast i32 %i.agn to float
  %i.agp = fadd float %i.agi, %i.ago
  %i.agq = bitcast float %i.agp to i32            ; 2 uses
  %i.agr = lshr i32 %i.agq, 13
  %i.ags = and i32 %i.agr, 31744
  %i.agt = and i32 %i.agq, 4095
  %i.agu = add nuw nsw i32 %i.ags, %i.agt
  %i.agv = lshr i32 %i.agj, 16
  %i.agw = and i32 %i.agv, 32768
  %i.agx = icmp ugt i32 %i.agk, -16777216
  %i.agy = select i1 %i.agx, i32 32256, i32 %i.agu
  %i.agz = or i32 %i.agy, %i.agw
  %i.aha = trunc nuw i32 %i.agz to i16
  store i16 %i.aha, ptr %i.bu, align 2, !tbaa !57, !alias.scope !650, !noalias !653
  %i.ahb = fdiv float 1.000000e+00, %i.agf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %bb.z
  %indvars.iv486.i.us = phi i64 [ 0, %bb.z ], [ %indvars.iv.next487.i.us, %bb.ad ] ; 5 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv486.i.us
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !36, !noalias !652
  %i.ahe = tail call float @llvm.fmuladd.f32(float %i.ahb, float %i.ahd, float -1.000000e+00)
  %i.ahf = fmul float %i.ahe, 5.000000e-01
  %i.ahg = fadd float %i.ahf, f0x4B400000
  %i.ahh = bitcast float %i.ahg to i32
  %i.ahi = and i32 %i.ahh, 8388607
  %i.ahj = tail call i32 @llvm.usub.sat.i32(i32 %i.ahi, i32 4194304)
  %i.ahk = tail call i32 @llvm.umin.i32(i32 %i.ahj, i32 15) ; 2 uses
  %i.ahl = and i64 %indvars.iv486.i.us, 1
  %i.ahm = icmp eq i64 %i.ahl, 0
  br i1 %i.ahm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ahn = lshr i64 %indvars.iv486.i.us, 1
  %i.aho = and i64 %i.ahn, 2147483647
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.aho ; 2 uses
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  %.tr.i.us = trunc nuw nsw i32 %i.ahk to i8
  %i.ahr = shl nuw i8 %.tr.i.us, 4
  %i.ahs = or i8 %i.ahq, %i.ahr
  store i8 %i.ahs, ptr %i.ahp, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.aht = trunc nuw nsw i32 %i.ahk to i8
  %i.ahu = lshr exact i64 %indvars.iv486.i.us, 1
  %i.ahv = and i64 %i.ahu, 2147483647
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ahv
  store i8 %i.aht, ptr %i.ahw, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next487.i.us = add nuw nsw i64 %indvars.iv486.i.us, 1 ; 2 uses
  %exitcond489.not.i.us = icmp eq i64 %indvars.iv.next487.i.us, 16
  br i1 %exitcond489.not.i.us, label %bb.ae, label %bb.aa, !llvm.loop !646

bb.ae:                                            ; preds = %bb.ad
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.ahx, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !653
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %indvars.iv.next491.i.us = add nuw nsw i64 %indvars.iv490.i.us, 1 ; 2 uses
  %exitcond493.not.i.us = icmp eq i64 %indvars.iv.next491.i.us, %i.i
  br i1 %exitcond493.not.i.us, label %quantize_row_iq2_xs_impl.exit.loopexit.us, label %bb.f, !llvm.loop !647

quantize_row_iq2_xs_impl.exit.loopexit.us:        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !652
  %i.ahy = getelementptr inbounds [4 x i8], ptr %.01659.us64, i64 %3
  %i.ahz = getelementptr inbounds nuw i8, ptr %.01560.us63, i64 %i.an
  %i.aia = add nuw nsw i64 %.061.us62, 1          ; 2 uses
  %exitcond92.not = icmp eq i64 %i.aia, %2
  br i1 %exitcond92.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !648

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.aib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 32), align 16, !tbaa !77, !noalias !652
  %i.aic = icmp eq ptr %i.aib, null
  br i1 %i.aic, label %.split.us65.loopexit86, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.aid = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 24), align 8, !tbaa !74, !noalias !652
  %.not348.i.us79 = icmp eq ptr %i.aid, null
  br i1 %.not348.i.us79, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split67.us

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.aie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 40), align 8, !tbaa !79, !noalias !652
  %.not349.i.us80 = icmp eq ptr %i.aie, null
  br i1 %.not349.i.us80, label %.lr.ph.split.split.split.us.split.split.us, label %._crit_edge

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split69.us

._crit_edge:                                      ; preds = %quantize_row_iq2_xs_impl.exit.loopexit.us, %.lr.ph.split.split.split.us.split, %bb.c
  %i.aif = mul i64 %2, 74
  %i.aig = mul i64 %i.aif, %i.i
  ret i64 %i.aig

.split.us65.loopexit86:                           ; preds = %.lr.ph.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split.us65

.split.us65:                                      ; preds = %.lr.ph.split.split.us, %.split.us65.loopexit86
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3481, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !652
  unreachable

.split67.us:                                      ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3482, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !652
  unreachable

.split69.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.us.split.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3483, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !652
  unreachable

.split71.us:                                      ; preds = %.loopexit357.i.us, %.preheader352.1.i.us
  %.0290401.lcssa.wide.i.sroa.phi.us = phi ptr [ %i.c, %.loopexit357.i.us ], [ %.0290401.lcssa.wide.i.sroa.gep30, %.preheader352.1.i.us ] ; 8 uses
  %.lcssa413.lcssa.i.us = phi i16 [ %i.aey, %.loopexit357.i.us ], [ %i.afo, %.preheader352.1.i.us ]
  %i.aih = zext i16 %.lcssa413.lcssa.i.us to i32
  %i.aii = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.aih), !noalias !652 ; 0 uses
  %i.aij = load i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, align 1, !tbaa !34, !noalias !652
  %i.aik = sext i8 %i.aij to i32
  %i.ail = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aik), !noalias !652 ; 0 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 1
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !34, !noalias !652
  %i.aio = sext i8 %i.ain to i32
  %i.aip = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aio), !noalias !652 ; 0 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 2
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !34, !noalias !652
  %i.ais = sext i8 %i.air to i32
  %i.ait = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ais), !noalias !652 ; 0 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 3
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !34, !noalias !652
  %i.aiw = sext i8 %i.aiv to i32
  %i.aix = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aiw), !noalias !652 ; 0 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 4
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !34, !noalias !652
  %i.aja = sext i8 %i.aiz to i32
  %i.ajb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aja), !noalias !652 ; 0 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 5
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !34, !noalias !652
  %i.aje = sext i8 %i.ajd to i32
  %i.ajf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aje), !noalias !652 ; 0 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 6
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !34, !noalias !652
  %i.aji = sext i8 %i.ajh to i32
  %i.ajj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aji), !noalias !652 ; 0 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 7
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !34, !noalias !652
  %i.ajm = sext i8 %i.ajl to i32
  %i.ajn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ajm), !noalias !652 ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10), !noalias !652 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3624, ptr noundef nonnull @.str.19) #24, !noalias !652
  unreachable

.split74.us:                                      ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3628, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !652
  unreachable
}

; Function Attrs: nounwind uwtable
define void @iq3xs_init_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !47
  switch i32 %0, label %bb.b [
    i32 512, label %iq3_data_index.exit
    i32 256, label %iq3_data_index.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3693, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #24
  unreachable

iq3_data_index.exit:                              ; preds = %bb.a, %bb.a
  %i.k = icmp ne i32 %0, 256
  %i.l = zext i1 %i.k to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr @iq3_data, i64 %i.l ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.lr.ph.preheader, label %bb.n

.lr.ph.preheader:                                 ; preds = %iq3_data_index.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 4096, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %1 = icmp eq i32 %0, 256                        ; 2 uses
  %i.o = select i1 %1, i32 2, i32 3
  store i32 %i.o, ptr %i.c, align 4, !tbaa !47
  %i.p = select i1 %1, ptr @iq3xs_init_impl.kgrid_256, ptr @iq3xs_init_impl.kgrid_512 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.q = zext nneg i32 %0 to i64                  ; 5 uses
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #25 ; 5 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.q, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index
  %wide.load = load <8 x i16>, ptr %i.u, align 16, !tbaa !58 ; 2 uses
  %i.v = trunc <8 x i16> %wide.load to <8 x i8>   ; 2 uses
  %i.w = shl <8 x i8> %i.v, splat (i8 1)
  %i.x = lshr <8 x i8> %i.v, splat (i8 2)
  %i.y = shufflevector <8 x i8> %i.w, <8 x i8> %i.x, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = and <16 x i8> %i.y, splat (i8 14)
  %i.aa = or disjoint <16 x i8> %i.z, splat (i8 1)
  %i.ab = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ac = lshr <16 x i16> %i.ab, <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %i.ad = trunc <16 x i16> %i.ac to <16 x i8>
  %i.ae = and <16 x i8> %i.ad, splat (i8 14)
  %i.af = or disjoint <16 x i8> %i.ae, splat (i8 1)
  %interleaved.vec = shufflevector <16 x i8> %i.aa, <16 x i8> %i.af, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec, ptr %i.t, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !656

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %.lr.ph56.preheader, label %.lr.ph.preheader82

.lr.ph.preheader82:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader82, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader82 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !58 ; 4 uses
  %.tr = trunc i16 %i.aj to i8
  %i.ak = shl i8 %.tr, 1
  %i.al = trunc i16 %i.aj to i8
  %i.am = lshr i8 %i.al, 2
  %sh.diff = lshr i16 %i.aj, 5
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %sh.diff77 = lshr i16 %i.aj, 8
  %tr.sh.diff78 = trunc nuw i16 %sh.diff77 to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.ak, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.am, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %tr.sh.diff, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %tr.sh.diff78, i64 3
  %i.ar = and <4 x i8> %i.aq, splat (i8 14)
  %i.as = or disjoint <4 x i8> %i.ar, splat (i8 1)
  store <4 x i8> %i.as, ptr %i.ah, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph, !llvm.loop !657

.lr.ph56.preheader:                               ; preds = %.lr.ph, %middle.block
  store ptr %i.s, ptr %i.d, align 8, !tbaa !76
  store ptr %i.s, ptr %i.m, align 8, !tbaa !83
  %i.at = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 4 uses
  store ptr %i.at, ptr %i.e, align 8, !tbaa !76
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.at, i8 -1, i64 16384, i1 false), !tbaa !47
  br label %.lr.ph56

._crit_edge57:                                    ; preds = %.lr.ph56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.av = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 2 uses
  store ptr %i.av, ptr %i.g, align 8, !tbaa !76
  %.not47 = icmp eq ptr %i.av, null
  br i1 %.not47, label %bb.c, label %bb.d

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv68 = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next69, %.lr.ph56 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv68
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.ax to i16
  %i.ay = trunc i32 %i.ax to i16
  %i.az = lshr i16 %i.ay, 8
  %.sroa.5.0.extract.shift = lshr i32 %i.ax, 16
  %.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.5.0.extract.shift to i16
  %.sroa.6.0.extract.shift = lshr i32 %i.ax, 24
  %.sroa.6.0.extract.trunc = trunc nuw nsw i32 %.sroa.6.0.extract.shift to i16
  %i.ba = and i16 %.sroa.0.0.extract.trunc, 255
  %i.bb = and i16 %.sroa.5.0.extract.trunc, 255
  %i.bc = insertelement <4 x i16> poison, i16 %i.ba, i64 0
  %i.bd = insertelement <4 x i16> %i.bc, i16 %i.az, i64 1
  %i.be = insertelement <4 x i16> %i.bd, i16 %i.bb, i64 2
  %i.bf = insertelement <4 x i16> %i.be, i16 %.sroa.6.0.extract.trunc, i64 3
  %i.bg = add nsw <4 x i16> %i.bf, splat (i16 -1)
  %i.bh = sdiv <4 x i16> %i.bg, splat (i16 2)
  %i.bi = shl nuw <4 x i16> %i.bh, <i16 0, i16 3, i16 6, i16 9>
  %i.bj = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.bi)
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bk
  %i.bm = trunc nuw nsw i64 %indvars.iv68 to i32
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !47
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %i.q
  br i1 %exitcond72.not, label %._crit_edge57, label %.lr.ph56, !llvm.loop !658

bb.c:                                             ; preds = %._crit_edge57
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3795, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #24
  unreachable

bb.d:                                             ; preds = %._crit_edge57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i32 0, ptr %i.h, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 0, ptr %i.i, align 4, !tbaa !47
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 8, ptr nonnull @iq3xs_init_impl.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.h)
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !47
  %i.bo = load i32, ptr %i.i, align 4, !tbaa !47
  %i.bp = add nsw i32 %i.bo, %i.bn
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 1
  %i.bs = call noalias ptr @malloc(i64 noundef %i.br) #25 ; 2 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !78
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.bu = call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 4 uses
  store ptr %i.bu, ptr %i.j, align 8, !tbaa !76
  %.not48 = icmp eq ptr %i.bu, null
  br i1 %.not48, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.bw = load ptr, ptr %i.g, align 8             ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3846, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #24
  unreachable

bb.f:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @iq3xs_init_impl.omp_outlined.23, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.c)
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !76
  call void @free(ptr noundef %i.bx) #14
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !76
  call void @free(ptr noundef %i.by) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.n

bb.g:                                             ; preds = %bb.m, %.preheader
  %indvars.iv73 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next74.1, %bb.m ] ; 5 uses
  %.04058 = phi i32 [ 0, %.preheader ], [ %.1.1, %bb.m ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv73
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !47
  %i.cb = icmp sgt i32 %i.ca, -1
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv73 ; 2 uses
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.cc, align 4, !tbaa !47
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %.04058, ptr %i.cc, align 4, !tbaa !47
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv73
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !47
  %i.cf = add i32 %.04058, 1
  %i.cg = add i32 %i.cf, %i.ce
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %.04058, %bb.h ], [ %i.cg, %bb.i ] ; 3 uses
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next74
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47
  %i.cj = icmp sgt i32 %i.ci, -1
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next74 ; 2 uses
  br i1 %i.cj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.1, ptr %i.ck, align 4, !tbaa !47
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next74
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !47
  %i.cn = add i32 %.1, 1
  %i.co = add i32 %i.cn, %i.cm
end_hunk_0
