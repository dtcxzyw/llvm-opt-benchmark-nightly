Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512bf16?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.gkr = trunc i64 %indvars.iv8522 to i32
  %i.gks = mul i32 %i.gkd, %i.gkr
  %.reass7985.us.us.us = add i32 %i.gks, %invariant.op7984 ; 3 uses
  %i.gkt = icmp slt i32 %.reass7985.us.us.us, 0
  br i1 %i.gkt, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.gku = srem i32 %.reass7985.us.us.us, %i.gkf
  %i.gkv = sdiv i32 %.reass7985.us.us.us, %i.gkf  ; 2 uses
  %.not2092.us.us.us = icmp eq i32 %i.gku, 0
  %.not2093.us.us.us = icmp slt i32 %i.gkv, %i.ekt
  %or.cond9011 = select i1 %.not2092.us.us.us, i1 %.not2093.us.us.us, i1 false
  br i1 %or.cond9011, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dp

_ZN4ncnn3MatD2Ev.exit.us.us.us:                   ; preds = %bb.do
  %i.gkw = load i32, ptr %i.eks, align 4, !tbaa !22, !noalias !269
  %i.gkx = load ptr, ptr %0, align 8, !tbaa !19, !noalias !269
  %i.gky = load i64, ptr %i.elk, align 8, !tbaa !17, !noalias !269
  %i.gkz = mul i64 %i.gky, %indvars.iv8532
  %i.gla = load i64, ptr %i.ell, align 8, !tbaa !24, !noalias !269 ; 2 uses
  %i.glb = mul i64 %i.gkz, %i.gla
  %i.glc = getelementptr inbounds nuw i8, ptr %i.gkx, i64 %i.glb
  %i.gld = sext i32 %i.gkw to i64
  %i.gle = mul nsw i64 %i.gld, %i.gkp
  %i.glf = mul i64 %i.gle, %i.gla
  %i.glg = getelementptr inbounds nuw i8, ptr %i.glc, i64 %i.glf
  %i.glh = sext i32 %i.gkv to i64
  %i.gli = getelementptr inbounds [2 x i8], ptr %i.glg, i64 %i.glh
  %i.glj = load i16, ptr %i.gli, align 2, !tbaa !28
  %i.glk = zext i16 %i.glj to i32
  %i.gll = shl nuw i32 %i.glk, 16
  %i.glm = bitcast i32 %i.gll to float
  %i.gln = getelementptr inbounds nuw [2 x i8], ptr %i.gkq, i64 %indvars.iv8522
  %i.glo = load i16, ptr %i.gln, align 2, !tbaa !28
  %i.glp = zext i16 %i.glo to i32
  %i.glq = shl nuw i32 %i.glp, 16
  %i.glr = bitcast i32 %i.glq to float
  %i.gls = fmul fast float %i.glr, %i.glm
  %i.glt = fadd fast float %i.gls, %.1118647981.us.us.us
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us, %bb.do, %bb.dn
  %.131866.us.us.us = phi nsz float [ %.1118647981.us.us.us, %bb.dn ], [ %.1118647981.us.us.us, %bb.do ], [ %i.glt, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %indvars.iv.next8523 = add nuw nsw i64 %indvars.iv8522, 1 ; 2 uses
  %exitcond8526.not = icmp eq i64 %indvars.iv.next8523, %i.gkh
  br i1 %exitcond8526.not, label %..loopexit6861_crit_edge.us.us.us, label %bb.dn, !llvm.loop !209

..loopexit6861_crit_edge.us.us.us:                ; preds = %bb.dp, %bb.dm, %bb.dl
  %.15.us.us.us = phi nsz float [ %.1018637986.us.us.us, %bb.dl ], [ %.1018637986.us.us.us, %bb.dm ], [ %.131866.us.us.us, %bb.dp ] ; 3 uses
  %indvars.iv.next8528 = add nuw nsw i64 %indvars.iv8527, 1 ; 2 uses
  %exitcond8531.not = icmp eq i64 %indvars.iv.next8528, %wide.trip.count8530
  br i1 %exitcond8531.not, label %._crit_edge7989.split.us.us.us, label %bb.dl, !llvm.loop !210

._crit_edge7989.split.us.us.us:                   ; preds = %..loopexit6861_crit_edge.us.us.us
  %i.glu = getelementptr inbounds [2 x i8], ptr %.418527996.us.us, i64 %i.fpr
  %indvars.iv.next8533 = add nuw nsw i64 %indvars.iv8532, 1 ; 2 uses
  %i.glv = trunc nuw i64 %indvars.iv.next8533 to i32
  %i.glw = icmp sgt i32 %i.ekr, %i.glv
  br i1 %i.glw, label %.preheader6870.us.us, label %._crit_edge7999, !llvm.loop !211

._crit_edge7999:                                  ; preds = %._crit_edge7989.split.us.us.us, %.preheader6870.lr.ph, %.preheader6875
  %.91862.lcssa = phi float [ %.11854.lcssa, %.preheader6875 ], [ %.11854.lcssa, %.preheader6870.lr.ph ], [ %.15.us.us.us, %._crit_edge7989.split.us.us.us ] ; 13 uses
  switch i32 %i.fpe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.dq
    i32 2, label %bb.dr
    i32 3, label %bb.ds
    i32 4, label %bb.dt
    i32 5, label %bb.du
    i32 6, label %bb.dv
  ]

bb.dq:                                            ; preds = %._crit_edge7999
  %i.glx = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.91862.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dr:                                            ; preds = %._crit_edge7999
  %i.gly = load ptr, ptr %11, align 8, !tbaa !19
  %i.glz = load float, ptr %i.gly, align 4, !tbaa !30
  %i.gma = fcmp fast ogt float %.91862.lcssa, 0.000000e+00
  %i.gmb = select fast i1 %i.gma, float 1.000000e+00, float %i.glz
  %i.gmc = fmul fast float %i.gmb, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ds:                                            ; preds = %._crit_edge7999
  %i.gmd = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.gme = load float, ptr %i.gmd, align 4, !tbaa !30
  %i.gmf = getelementptr inbounds nuw i8, ptr %i.gmd, i64 4
  %i.gmg = load float, ptr %i.gmf, align 4, !tbaa !30
  %spec.select6777 = call nnan ninf nsz float @llvm.maxnum.f32(float %.91862.lcssa, float %i.gme)
  %spec.select6778 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select6777, float %i.gmg)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dt:                                            ; preds = %._crit_edge7999
  %.sroa.speculated6275 = call nnan ninf nsz float @llvm.minnum.f32(float %.91862.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated6275, float f0xC2B0C0A5)
  %i.gmh = fneg fast float %.sroa.speculated
  %i.gmi = call fast float @llvm.exp.f32(float %i.gmh)
  %i.gmj = fadd fast float %i.gmi, 1.000000e+00
  %i.gmk = fdiv fast float 1.000000e+00, %i.gmj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.du:                                            ; preds = %._crit_edge7999
  %i.gml = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.91862.lcssa)
  %i.gmm = fadd fast float %i.gml, 1.000000e+00
  %i.gmn = call fast float @llvm.log.f32(float %i.gmm)
  %i.gmo = call fast float @llvm.tanh.f32(float %i.gmn)
  %i.gmp = fmul fast float %i.gmo, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dv:                                            ; preds = %._crit_edge7999
  %i.gmq = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.gmr = load float, ptr %i.gmq, align 4, !tbaa !30 ; 3 uses
  %i.gms = getelementptr inbounds nuw i8, ptr %i.gmq, i64 4
  %i.gmt = load float, ptr %i.gms, align 4, !tbaa !30 ; 2 uses
  %i.gmu = fneg fast float %i.gmt
  %i.gmv = fdiv fast float %i.gmu, %i.gmr         ; 2 uses
  %i.gmw = fcmp fast olt float %.91862.lcssa, %i.gmv
  br i1 %i.gmw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gmx = fdiv fast float 1.000000e+00, %i.gmr
  %i.gmy = fadd fast float %i.gmv, %i.gmx
  %i.gmz = fcmp fast ogt float %.91862.lcssa, %i.gmy
  br i1 %i.gmz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.gna = fmul fast float %i.gmr, %.91862.lcssa
  %i.gnb = fadd fast float %i.gna, %i.gmt
  %i.gnc = fmul fast float %i.gnb, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ds, %bb.dv, %._crit_edge7999, %bb.dq, %bb.dr, %bb.dt, %bb.du, %bb.dw, %bb.dx
  %.16534 = phi nsz float [ %.91862.lcssa, %._crit_edge7999 ], [ %i.glx, %bb.dq ], [ %i.gmc, %bb.dr ], [ 0.000000e+00, %bb.dv ], [ %spec.select6778, %bb.ds ], [ %i.gmk, %bb.dt ], [ %i.gmp, %bb.du ], [ %i.gnc, %bb.dx ], [ %.91862.lcssa, %bb.dw ]
  %i.gnd = bitcast float %.16534 to i32
  %i.gne = lshr i32 %i.gnd, 16
  %i.gnf = trunc nuw i32 %i.gne to i16
  store i16 %i.gnf, ptr %.118718010, align 2, !tbaa !28
  %i.gng = getelementptr inbounds nuw i8, ptr %.118718010, i64 2 ; 2 uses
  %i.gnh = add nuw nsw i32 %.018688011, 1         ; 2 uses
  %exitcond8535.not = icmp eq i32 %i.gnh, %i.ekx
  br i1 %exitcond8535.not, label %._crit_edge8012, label %bb.cs, !llvm.loop !212
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not2530 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2530, label %._crit_edge2532, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !23
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc.preheader, label %._crit_edge2532

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge2529.split
  %indvars.iv = phi i64 [ %i.aa, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge2529.split ] ; 3 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !15
  %.fr = freeze i32 %i.ac                         ; 5 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !16
  %i.ae = mul i32 %i.ad, %.fr                     ; 14 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !22  ; 6 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !23  ; 5 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !22  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader2304.lr.ph, label %._crit_edge2529.split

.preheader2304.lr.ph:                             ; preds = %.noexc
  %i.ak = shl nsw i64 %indvars.iv, 4              ; 2 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !15  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = icmp sgt i32 %i.ae, 15
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.ar = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.al)
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  br i1 %i.am, label %.preheader2304.preheader, label %._crit_edge2529.split

.preheader2304.preheader:                         ; preds = %.preheader2304.lr.ph
  %i.au = load ptr, ptr %4, align 8, !tbaa !19, !noalias !316
  %i.av = load i64, ptr %i.s, align 8, !tbaa !17, !noalias !316
  %i.aw = trunc nsw i64 %i.ak to i32
  %i.ax = sdiv i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !24, !noalias !316
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = add i32 %i.ae, -16                      ; 3 uses
  %i.be = lshr i32 %i.bd, 3
  %i.bf = and i32 %i.be, 536870910
  %narrow = add nuw nsw i32 %i.bf, 2
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = and i32 %i.bd, -16
  %i.bi = add nuw i32 %i.bh, 16
  %i.bj = sext i32 %i.ae to i64
  %i.bk = and i32 %i.bd, -16
  %i.bl = add i32 %i.bk, 16
  %i.bm = add i32 %i.ae, -8
  %i.bn = add i32 %i.ae, -4
  %i.bo = add i32 %i.ae, -2
  %invariant.op = add nsw i64 %i.bj, -15
  br label %.preheader2304

.preheader2304:                                   ; preds = %.preheader2304.preheader, %._crit_edge
  %.08132528 = phi i32 [ %.neg2284, %._crit_edge ], [ 0, %.preheader2304.preheader ]
  %.08142527 = phi ptr [ %.5819, %._crit_edge ], [ %i.bc, %.preheader2304.preheader ]
  %.neg2284 = add nuw nsw i32 %.08132528, 1       ; 7 uses
  br label %bb.c

._crit_edge2529.split:                            ; preds = %._crit_edge, %.preheader2304.lr.ph, %.noexc
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond2612.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond2612.not, label %._crit_edge2532, label %.noexc, !llvm.loop !272

._crit_edge:                                      ; preds = %.thread2265
  %exitcond2610.not = icmp eq i32 %.neg2284, %i.ai
  br i1 %exitcond2610.not, label %._crit_edge2529.split, label %.preheader2304, !llvm.loop !273

bb.c:                                             ; preds = %.preheader2304, %.thread2265
  %.08122526 = phi i32 [ 0, %.preheader2304 ], [ %i.bfj, %.thread2265 ] ; 6 uses
  %.18152525 = phi ptr [ %.08142527, %.preheader2304 ], [ %.5819, %.thread2265 ] ; 29 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %.not851 = icmp eq ptr %i.bp, null
  br i1 %.not851, label %.noexc1013, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ak
  %i.br = load <16 x float>, ptr %i.bq, align 1, !tbaa !26
  br label %.noexc1013

.noexc1013:                                       ; preds = %bb.c, %bb.d
  %.02205 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.br, %bb.d ] ; 3 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !19, !noalias !318 ; 2 uses
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !17, !noalias !318
  %i.bu = mul i64 %i.bt, %indvars.iv
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !24, !noalias !318
  %i.bw = mul i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw ; 2 uses
  br i1 %i.an, label %.preheader2299.lr.ph, label %.preheader2303

.preheader2299.lr.ph:                             ; preds = %.noexc1013
  %i.by = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  %.neg2286 = add nuw nsw i32 %.08122526, 1
  %i.ca = load i32, ptr %15, align 4, !tbaa !9
  %i.cb = shl i32 %i.ca, 8
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  br i1 %i.bz, label %.preheader2299.lr.ph.split.us, label %.preheader2299.preheader

.preheader2299.preheader:                         ; preds = %.preheader2299.lr.ph
  %i.cd = mul nsw i64 %i.bg, %i.cc
  %i.ce = getelementptr i8, ptr %i.bs, i64 %i.bw
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.cd
  br label %.preheader2303

.preheader2299.lr.ph.split.us:                    ; preds = %.preheader2299.lr.ph
  %i.cf = load i32, ptr %8, align 4, !tbaa !9
  %i.cg = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2325.us = sub i32 %.neg2284, %i.cg
  br label %.preheader2299.us

.preheader2299.us:                                ; preds = %._crit_edge.us, %.preheader2299.lr.ph.split.us
  %indvars.iv2562 = phi i64 [ %indvars.iv.next2563, %._crit_edge.us ], [ 0, %.preheader2299.lr.ph.split.us ] ; 20 uses
  %.07422336.us = phi ptr [ %i.zm, %._crit_edge.us ], [ %i.bx, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07472335.us = phi <16 x float> [ %.us-phi2331.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07522334.us = phi <16 x float> [ %.us-phi2330.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07822333.us = phi <16 x float> [ %.us-phi2329.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.122062332.us = phi <16 x float> [ %.us-phi2328.us, %._crit_edge.us ], [ %.02205, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %i.ch = or disjoint i64 %indvars.iv2562, 15
  %i.ci = or disjoint i64 %indvars.iv2562, 1
  %i.cj = or disjoint i64 %indvars.iv2562, 2
  %i.ck = or disjoint i64 %indvars.iv2562, 3
  %i.cl = or disjoint i64 %indvars.iv2562, 4
  %i.cm = or disjoint i64 %indvars.iv2562, 5
  %i.cn = or disjoint i64 %indvars.iv2562, 6
  %i.co = or disjoint i64 %indvars.iv2562, 7
  %i.cp = or disjoint i64 %indvars.iv2562, 8
  %i.cq = or disjoint i64 %indvars.iv2562, 9
  %i.cr = or disjoint i64 %indvars.iv2562, 10
  %i.cs = or disjoint i64 %indvars.iv2562, 11
  %i.ct = or disjoint i64 %indvars.iv2562, 12
  %i.cu = or disjoint i64 %indvars.iv2562, 13
  %i.cv = or disjoint i64 %indvars.iv2562, 14
  %i.cw = lshr exact i64 %indvars.iv2562, 2       ; 4 uses
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = or disjoint i64 %i.cw, 2
  %i.cz = or disjoint i64 %i.cw, 3
  %i.da = lshr exact i64 %indvars.iv2562, 3       ; 2 uses
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = lshr exact i64 %indvars.iv2562, 4
  br i1 %i.ap, label %.lr.ph2321.split.us.us, label %._crit_edge.us

.lr.ph2321.split.us.us:                           ; preds = %.preheader2299.us, %.loopexit2294.us.us
  %.07402320.us.us = phi i32 [ %i.zl, %.loopexit2294.us.us ], [ 0, %.preheader2299.us ] ; 3 uses
  %.17482319.us.us = phi <16 x float> [ %.10.us.us, %.loopexit2294.us.us ], [ %.07472335.us, %.preheader2299.us ] ; 4 uses
  %.17532318.us.us = phi <16 x float> [ %.10762.us.us, %.loopexit2294.us.us ], [ %.07522334.us, %.preheader2299.us ] ; 4 uses
  %.17832317.us.us = phi <16 x float> [ %.10792.us.us, %.loopexit2294.us.us ], [ %.07822333.us, %.preheader2299.us ] ; 4 uses
  %.222072316.us.us = phi <16 x float> [ %.82211.us.us, %.loopexit2294.us.us ], [ %.122062332.us, %.preheader2299.us ] ; 4 uses
  %i.dd = mul nsw i32 %i.cf, %.07402320.us.us
  %.reass2326.us.us = add i32 %i.dd, %invariant.op2325.us ; 3 uses
  %i.de = icmp slt i32 %.reass2326.us.us, 0
  br i1 %i.de, label %.loopexit2294.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph2321.split.us.us
  %i.df = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.dg = srem i32 %.reass2326.us.us, %i.df
  %i.dh = sdiv i32 %.reass2326.us.us, %i.df       ; 2 uses
  %.not883.us.us = icmp eq i32 %i.dg, 0
  %.not884.us.us = icmp slt i32 %i.dh, %i.ag
  %or.cond = select i1 %.not883.us.us, i1 %.not884.us.us, i1 false
  br i1 %or.cond, label %.preheader2293.us.us, label %.loopexit2294.us.us

.preheader2293.us.us:                             ; preds = %bb.e
  %i.di = load i32, ptr %11, align 4, !tbaa !9    ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.us.us, label %.loopexit2294.us.us

.lr.ph.us.us:                                     ; preds = %.preheader2293.us.us
  %i.dk = load i32, ptr %12, align 4, !tbaa !9
  %i.dl = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us.us = sub i32 %.neg2286, %i.dl
  %i.dm = mul nuw nsw i32 %i.di, %.07402320.us.us
  %i.dn = sext i32 %i.dh to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread2238.us.us.us, %.lr.ph.us.us
  %indvars.iv2558 = phi i64 [ %indvars.iv.next2559, %.thread2238.us.us.us ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.27492308.us.us.us = phi <16 x float> [ %.8.us.us.us, %.thread2238.us.us.us ], [ %.17482319.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27542307.us.us.us = phi <16 x float> [ %.8760.us.us.us, %.thread2238.us.us.us ], [ %.17532318.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27842306.us.us.us = phi <16 x float> [ %.8790.us.us.us, %.thread2238.us.us.us ], [ %.17832317.us.us, %.lr.ph.us.us ] ; 4 uses
  %.322082305.us.us.us = phi <16 x float> [ %.7.us.us.us, %.thread2238.us.us.us ], [ %.222072316.us.us, %.lr.ph.us.us ] ; 4 uses
  %i.do = trunc i64 %indvars.iv2558 to i32
  %i.dp = mul i32 %i.dk, %i.do
  %.reass.us.us.us = add i32 %i.dp, %invariant.op.us.us ; 3 uses
  %i.dq = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.dq, label %.thread2238.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = load i32, ptr %14, align 4, !tbaa !9    ; 2 uses
  %i.ds = srem i32 %.reass.us.us.us, %i.dr
  %i.dt = sdiv i32 %.reass.us.us.us, %i.dr        ; 5 uses
  %.not885.us.us.us = icmp eq i32 %i.ds, 0
  %.not886.us.us.us = icmp slt i32 %i.dt, %i.af
  %or.cond2783 = select i1 %.not885.us.us.us, i1 %.not886.us.us.us, i1 false
  br i1 %or.cond2783, label %.split.us.us.us, label %.thread2238.us.us.us

.split.us.us.us:                                  ; preds = %bb.g
  %i.du = trunc i64 %indvars.iv2558 to i32
  %i.dv = add i32 %i.dm, %i.du
  %i.dw = shl nsw i32 %i.dv, 8
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.07422336.us, i64 %i.dx ; 16 uses
  switch i32 %i.aq, label %.thread2238.us.us.us [
    i32 4, label %.noexc1011.us.us.us
    i32 3, label %.noexc1009.us.us.us
    i32 2, label %.noexc1005.us.us.us
    i32 0, label %.noexc997.us.us.us
  ]

.noexc997.us.us.us:                               ; preds = %.split.us.us.us
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !319
  %i.ea = load ptr, ptr %3, align 8, !tbaa !19, !noalias !319 ; 9 uses
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !319 ; 9 uses
  %i.ec = mul i64 %i.eb, %indvars.iv2562
  %i.ed = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !319 ; 10 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %i.eg, %i.dn
  %i.ei = mul i64 %i.eh, %i.ed                    ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = sext i32 %i.dt to i64                   ; 16 uses
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !28
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 16
  %i.ep = insertelement <16 x i32> poison, i32 %i.eo, i64 0
  %i.eq = bitcast <16 x i32> %i.ep to <16 x float>
  %i.er = shufflevector <16 x float> %i.eq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.es = mul i64 %i.eb, %i.ci
  %i.et = mul i64 %i.es, %i.ed
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ei
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ek
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !28
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <16 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <16 x i32> %i.fa to <16 x float>
  %i.fc = shufflevector <16 x float> %i.fb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fd = mul i64 %i.eb, %i.cj
  %i.fe = mul i64 %i.fd, %i.ed
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ei
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.fg, i64 %i.ek
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !28
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 16
  %i.fl = insertelement <16 x i32> poison, i32 %i.fk, i64 0
  %i.fm = bitcast <16 x i32> %i.fl to <16 x float>
  %i.fn = shufflevector <16 x float> %i.fm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fo = mul i64 %i.eb, %i.ck
  %i.fp = mul i64 %i.fo, %i.ed
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ei
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ek
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !28
  %i.fu = zext i16 %i.ft to i32
  %i.fv = shl nuw i32 %i.fu, 16
  %i.fw = insertelement <16 x i32> poison, i32 %i.fv, i64 0
  %i.fx = bitcast <16 x i32> %i.fw to <16 x float>
  %i.fy = shufflevector <16 x float> %i.fx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fz = mul i64 %i.eb, %i.cl
  %i.ga = mul i64 %i.fz, %i.ed
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ei
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.ek
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !28
  %i.gf = zext i16 %i.ge to i32
  %i.gg = shl nuw i32 %i.gf, 16
  %i.gh = insertelement <16 x i32> poison, i32 %i.gg, i64 0
  %i.gi = bitcast <16 x i32> %i.gh to <16 x float>
  %i.gj = shufflevector <16 x float> %i.gi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gk = mul i64 %i.eb, %i.cm
  %i.gl = mul i64 %i.gk, %i.ed
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ei
  %i.go = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.ek
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !28
  %i.gq = zext i16 %i.gp to i32
  %i.gr = shl nuw i32 %i.gq, 16
  %i.gs = insertelement <16 x i32> poison, i32 %i.gr, i64 0
  %i.gt = bitcast <16 x i32> %i.gs to <16 x float>
  %i.gu = shufflevector <16 x float> %i.gt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gv = mul i64 %i.eb, %i.cn
  %i.gw = mul i64 %i.gv, %i.ed
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ei
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.ek
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !28
  %i.hb = zext i16 %i.ha to i32
  %i.hc = shl nuw i32 %i.hb, 16
  %i.hd = insertelement <16 x i32> poison, i32 %i.hc, i64 0
  %i.he = bitcast <16 x i32> %i.hd to <16 x float>
  %i.hf = shufflevector <16 x float> %i.he, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hg = mul i64 %i.eb, %i.co
  %i.hh = mul i64 %i.hg, %i.ed
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.ei
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.ek
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !28
end_hunk_0
