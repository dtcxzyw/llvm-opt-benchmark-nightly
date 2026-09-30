Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@quantize_iq2_xs:bb.a
  %i.afk = and i32 %spec.store.select.i.i.us, 2139095040
  %i.afl = add nuw i32 %i.afk, 125829120
  %i.afm = bitcast i32 %i.afl to float
  %i.afn = fadd float %i.afg, %i.afm
  %i.afo = bitcast float %i.afn to i32            ; 2 uses
  %i.afp = lshr i32 %i.afo, 13
  %i.afq = and i32 %i.afp, 31744
  %i.afr = and i32 %i.afo, 4095
  %i.afs = add nuw nsw i32 %i.afq, %i.afr
  %i.aft = lshr i32 %i.afh, 16
  %i.afu = and i32 %i.aft, 32768
  %i.afv = icmp ugt i32 %i.afi, -16777216
  %i.afw = select i1 %i.afv, i32 32256, i32 %i.afs
  %i.afx = or i32 %i.afw, %i.afu
  %i.afy = trunc nuw i32 %i.afx to i16
  store i16 %i.afy, ptr %i.bv, align 2, !tbaa !57, !alias.scope !650, !noalias !653
  %i.afz = fdiv float 1.000000e+00, %i.afd
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
  %indvars.iv486.i.us = phi i64 [ 0, %bb.y ], [ %indvars.iv.next487.i.us, %bb.ac ] ; 5 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv486.i.us
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !36, !noalias !652
  %i.agc = tail call float @llvm.fmuladd.f32(float %i.afz, float %i.agb, float -1.000000e+00)
  %i.agd = fmul float %i.agc, 5.000000e-01
  %i.age = fadd float %i.agd, f0x4B400000
  %i.agf = bitcast float %i.age to i32
  %i.agg = and i32 %i.agf, 8388607
  %i.agh = tail call i32 @llvm.usub.sat.i32(i32 %i.agg, i32 4194304)
  %i.agi = tail call i32 @llvm.umin.i32(i32 %i.agh, i32 15) ; 2 uses
  %i.agj = and i64 %indvars.iv486.i.us, 1
  %i.agk = icmp eq i64 %i.agj, 0
  br i1 %i.agk, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.agl = lshr i64 %indvars.iv486.i.us, 1
  %i.agm = and i64 %i.agl, 2147483647
  %i.agn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.agm ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  %.tr.i.us = trunc nuw nsw i32 %i.agi to i8
  %i.agp = shl nuw i8 %.tr.i.us, 4
  %i.agq = or i8 %i.ago, %i.agp
  store i8 %i.agq, ptr %i.agn, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.agr = trunc nuw nsw i32 %i.agi to i8
  %i.ags = lshr exact i64 %indvars.iv486.i.us, 1
  %i.agt = and i64 %i.ags, 2147483647
  %i.agu = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.agt
  store i8 %i.agr, ptr %i.agu, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next487.i.us = add nuw nsw i64 %indvars.iv486.i.us, 1 ; 2 uses
  %exitcond489.not.i.us = icmp eq i64 %indvars.iv.next487.i.us, 16
  br i1 %exitcond489.not.i.us, label %bb.ad, label %bb.z, !llvm.loop !646

bb.ad:                                            ; preds = %bb.ac
  %i.agv = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.agv, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !653
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.x
  %indvars.iv.next491.i.us = add nuw nsw i64 %indvars.iv490.i.us, 1 ; 2 uses
  %exitcond493.not.i.us = icmp eq i64 %indvars.iv.next491.i.us, %i.i
  br i1 %exitcond493.not.i.us, label %quantize_row_iq2_xs_impl.exit.loopexit.us, label %bb.f, !llvm.loop !647

quantize_row_iq2_xs_impl.exit.loopexit.us:        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !652
  %i.agw = getelementptr inbounds [4 x i8], ptr %.01653.us58, i64 %3
  %i.agx = getelementptr inbounds nuw i8, ptr %.01554.us57, i64 %i.ao
  %i.agy = add nuw nsw i64 %.055.us56, 1          ; 2 uses
  %exitcond86.not = icmp eq i64 %i.agy, %2
  br i1 %exitcond86.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !648

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.agz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 32), align 16, !tbaa !77, !noalias !652
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %.split.us59.loopexit80, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ahb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 24), align 8, !tbaa !74, !noalias !652
  %.not348.i.us73 = icmp eq ptr %i.ahb, null
  br i1 %.not348.i.us73, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split61.us

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.ahc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 40), align 8, !tbaa !79, !noalias !652
  %.not349.i.us74 = icmp eq ptr %i.ahc, null
  br i1 %.not349.i.us74, label %.lr.ph.split.split.split.us.split.split.us, label %._crit_edge

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split63.us

._crit_edge:                                      ; preds = %quantize_row_iq2_xs_impl.exit.loopexit.us, %.lr.ph.split.split.split.us.split, %bb.c
  %i.ahd = mul i64 %2, 74
  %i.ahe = mul i64 %i.ahd, %i.i
  ret i64 %i.ahe

.split.us59.loopexit80:                           ; preds = %.lr.ph.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split.us59

.split.us59:                                      ; preds = %.lr.ph.split.split.us, %.split.us59.loopexit80
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3481, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !652
  unreachable

.split61.us:                                      ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3482, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !652
  unreachable

.split63.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.us.split.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3483, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !652
  unreachable

.split65.us:                                      ; preds = %.loopexit357.i.us, %.preheader352.1.i.us
  %.0290401.lcssa.wide.i.sroa.phi.us = phi ptr [ %i.c, %.loopexit357.i.us ], [ %.0290401.lcssa.wide.i.sroa.gep30, %.preheader352.1.i.us ] ; 8 uses
  %.lcssa413.lcssa.i.us = phi i16 [ %i.adw, %.loopexit357.i.us ], [ %i.aem, %.preheader352.1.i.us ]
  %i.ahf = zext i16 %.lcssa413.lcssa.i.us to i32
  %i.ahg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ahf), !noalias !652 ; 0 uses
  %i.ahh = load i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, align 1, !tbaa !34, !noalias !652
  %i.ahi = sext i8 %i.ahh to i32
  %i.ahj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahi), !noalias !652 ; 0 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 1
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !34, !noalias !652
  %i.ahm = sext i8 %i.ahl to i32
  %i.ahn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahm), !noalias !652 ; 0 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 2
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !34, !noalias !652
  %i.ahq = sext i8 %i.ahp to i32
  %i.ahr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahq), !noalias !652 ; 0 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 3
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !34, !noalias !652
  %i.ahu = sext i8 %i.aht to i32
  %i.ahv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahu), !noalias !652 ; 0 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 4
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !34, !noalias !652
  %i.ahy = sext i8 %i.ahx to i32
  %i.ahz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahy), !noalias !652 ; 0 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 5
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !34, !noalias !652
  %i.aic = sext i8 %i.aib to i32
  %i.aid = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aic), !noalias !652 ; 0 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 6
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !34, !noalias !652
  %i.aig = sext i8 %i.aif to i32
  %i.aih = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aig), !noalias !652 ; 0 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 7
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !34, !noalias !652
  %i.aik = sext i8 %i.aij to i32
  %i.ail = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aik), !noalias !652 ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10), !noalias !652 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3624, ptr noundef nonnull @.str.19) #24, !noalias !652
  unreachable

.split68.us:                                      ; preds = %bb.s
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
  %i.ax = load <4 x i8>, ptr %i.aw, align 4, !tbaa !47
  %i.ay = zext <4 x i8> %i.ax to <4 x i16>
  %i.az = add nsw <4 x i16> %i.ay, splat (i16 -1)
  %i.ba = sdiv <4 x i16> %i.az, splat (i16 2)
  %i.bb = shl nuw <4 x i16> %i.ba, <i16 0, i16 3, i16 6, i16 9>
  %i.bc = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.bb)
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bd
  %i.bf = trunc nuw nsw i64 %indvars.iv68 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !47
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
  %i.bg = load i32, ptr %i.h, align 4, !tbaa !47
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !47
  %i.bi = add nsw i32 %i.bh, %i.bg
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 1
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #25 ; 2 uses
  store ptr %i.bl, ptr %i.f, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.bn = call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 4 uses
  store ptr %i.bn, ptr %i.j, align 8, !tbaa !76
  %.not48 = icmp eq ptr %i.bn, null
  br i1 %.not48, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.bp = load ptr, ptr %i.g, align 8             ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3846, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #24
  unreachable

bb.f:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @iq3xs_init_impl.omp_outlined.23, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.c)
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !76
  call void @free(ptr noundef %i.bq) #14
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !76
  call void @free(ptr noundef %i.br) #14
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
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv73
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !47
  %i.bu = icmp sgt i32 %i.bt, -1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv73 ; 2 uses
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.bv, align 4, !tbaa !47
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %.04058, ptr %i.bv, align 4, !tbaa !47
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv73
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !47
  %i.by = add i32 %.04058, 1
  %i.bz = add i32 %i.by, %i.bx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %.04058, %bb.h ], [ %i.bz, %bb.i ] ; 3 uses
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next74
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !47
  %i.cc = icmp sgt i32 %i.cb, -1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next74 ; 2 uses
  br i1 %i.cc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.1, ptr %i.cd, align 4, !tbaa !47
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next74
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.cg = add i32 %.1, 1
  %i.ch = add i32 %i.cg, %i.cf
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 -1, ptr %i.cd, align 4, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.1 = phi i32 [ %.1, %bb.l ], [ %i.ch, %bb.k ]
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %indvars.iv.next74.1, 4096
  br i1 %exitcond76.not.1, label %bb.f, label %bb.g, !llvm.loop !659

end_hunk_0
