inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@Gsm_LPC_Analysis:vector.ph
  %i.a = alloca [9 x i16], align 16               ; 14 uses
  %i.b = alloca [9 x i16], align 16               ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !8 ; 3 uses
  %wide.load115 = load <8 x i16>, ptr %i.c, align 2, !tbaa !8 ; 3 uses
  %i.d = icmp slt <8 x i16> %wide.load, zeroinitializer
  %i.e = icmp slt <8 x i16> %wide.load115, zeroinitializer
  %3 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load)
  %4 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115)
  %i.f = select <8 x i1> %i.d, <8 x i16> %3, <8 x i16> %wide.load
  %i.g = select <8 x i1> %i.e, <8 x i16> %4, <8 x i16> %wide.load115
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.h, align 2, !tbaa !8 ; 3 uses
  %wide.load115.1 = load <8 x i16>, ptr %i.i, align 2, !tbaa !8 ; 3 uses
  %i.j = icmp slt <8 x i16> %wide.load.1, zeroinitializer
  %i.k = icmp slt <8 x i16> %wide.load115.1, zeroinitializer
  %5 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.1)
  %6 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.1)
  %i.l = select <8 x i1> %i.j, <8 x i16> %5, <8 x i16> %wide.load.1
  %i.m = select <8 x i1> %i.k, <8 x i16> %6, <8 x i16> %wide.load115.1
  %i.n = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.l, <8 x i16> %i.f)
  %i.o = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.m, <8 x i16> %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.p, align 2, !tbaa !8 ; 3 uses
  %wide.load115.2 = load <8 x i16>, ptr %i.q, align 2, !tbaa !8 ; 3 uses
  %i.r = icmp slt <8 x i16> %wide.load.2, zeroinitializer
  %i.s = icmp slt <8 x i16> %wide.load115.2, zeroinitializer
  %7 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.2)
  %8 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.2)
  %i.t = select <8 x i1> %i.r, <8 x i16> %7, <8 x i16> %wide.load.2
  %i.u = select <8 x i1> %i.s, <8 x i16> %8, <8 x i16> %wide.load115.2
  %i.v = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.t, <8 x i16> %i.n)
  %i.w = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.u, <8 x i16> %i.o)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.x, align 2, !tbaa !8 ; 3 uses
  %wide.load115.3 = load <8 x i16>, ptr %i.y, align 2, !tbaa !8 ; 3 uses
  %i.z = icmp slt <8 x i16> %wide.load.3, zeroinitializer
  %i.aa = icmp slt <8 x i16> %wide.load115.3, zeroinitializer
  %9 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.3)
  %10 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.3)
  %i.ab = select <8 x i1> %i.z, <8 x i16> %9, <8 x i16> %wide.load.3
  %i.ac = select <8 x i1> %i.aa, <8 x i16> %10, <8 x i16> %wide.load115.3
  %i.ad = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ab, <8 x i16> %i.v)
  %i.ae = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ac, <8 x i16> %i.w)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <8 x i16>, ptr %i.af, align 2, !tbaa !8 ; 3 uses
  %wide.load115.4 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !8 ; 3 uses
  %i.ah = icmp slt <8 x i16> %wide.load.4, zeroinitializer
  %i.ai = icmp slt <8 x i16> %wide.load115.4, zeroinitializer
  %11 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.4)
  %12 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.4)
  %i.aj = select <8 x i1> %i.ah, <8 x i16> %11, <8 x i16> %wide.load.4
  %i.ak = select <8 x i1> %i.ai, <8 x i16> %12, <8 x i16> %wide.load115.4
  %i.al = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.aj, <8 x i16> %i.ad)
  %i.am = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ak, <8 x i16> %i.ae)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <8 x i16>, ptr %i.an, align 2, !tbaa !8 ; 3 uses
  %wide.load115.5 = load <8 x i16>, ptr %i.ao, align 2, !tbaa !8 ; 3 uses
  %i.ap = icmp slt <8 x i16> %wide.load.5, zeroinitializer
  %i.aq = icmp slt <8 x i16> %wide.load115.5, zeroinitializer
  %13 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.5)
  %14 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.5)
  %i.ar = select <8 x i1> %i.ap, <8 x i16> %13, <8 x i16> %wide.load.5
  %i.as = select <8 x i1> %i.aq, <8 x i16> %14, <8 x i16> %wide.load115.5
  %i.at = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ar, <8 x i16> %i.al)
  %i.au = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.as, <8 x i16> %i.am)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <8 x i16>, ptr %i.av, align 2, !tbaa !8 ; 3 uses
  %wide.load115.6 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !8 ; 3 uses
  %i.ax = icmp slt <8 x i16> %wide.load.6, zeroinitializer
  %i.ay = icmp slt <8 x i16> %wide.load115.6, zeroinitializer
  %15 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.6)
  %16 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.6)
  %i.az = select <8 x i1> %i.ax, <8 x i16> %15, <8 x i16> %wide.load.6
  %i.ba = select <8 x i1> %i.ay, <8 x i16> %16, <8 x i16> %wide.load115.6
  %i.bb = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.az, <8 x i16> %i.at)
  %i.bc = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.ba, <8 x i16> %i.au)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !8 ; 3 uses
  %wide.load115.7 = load <8 x i16>, ptr %i.be, align 2, !tbaa !8 ; 3 uses
  %i.bf = icmp slt <8 x i16> %wide.load.7, zeroinitializer
  %i.bg = icmp slt <8 x i16> %wide.load115.7, zeroinitializer
  %17 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.7)
  %18 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.7)
  %i.bh = select <8 x i1> %i.bf, <8 x i16> %17, <8 x i16> %wide.load.7
  %i.bi = select <8 x i1> %i.bg, <8 x i16> %18, <8 x i16> %wide.load115.7
  %i.bj = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.bh, <8 x i16> %i.bb)
  %i.bk = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.bi, <8 x i16> %i.bc)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 272
  %wide.load.8 = load <8 x i16>, ptr %i.bl, align 2, !tbaa !8 ; 3 uses
  %wide.load115.8 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !8 ; 3 uses
  %i.bn = icmp slt <8 x i16> %wide.load.8, zeroinitializer
  %i.bo = icmp slt <8 x i16> %wide.load115.8, zeroinitializer
  %19 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.8)
  %20 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.8)
  %i.bp = select <8 x i1> %i.bn, <8 x i16> %19, <8 x i16> %wide.load.8
  %i.bq = select <8 x i1> %i.bo, <8 x i16> %20, <8 x i16> %wide.load115.8
  %i.br = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.bp, <8 x i16> %i.bj)
  %i.bs = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.bq, <8 x i16> %i.bk)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 304
  %wide.load.9 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !8 ; 3 uses
  %wide.load115.9 = load <8 x i16>, ptr %i.bu, align 2, !tbaa !8 ; 3 uses
  %i.bv = icmp slt <8 x i16> %wide.load.9, zeroinitializer
  %i.bw = icmp slt <8 x i16> %wide.load115.9, zeroinitializer
  %21 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.9)
  %22 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load115.9)
  %i.bx = select <8 x i1> %i.bv, <8 x i16> %21, <8 x i16> %wide.load.9
  %i.by = select <8 x i1> %i.bw, <8 x i16> %22, <8 x i16> %wide.load115.9
  %i.bz = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.bx, <8 x i16> %i.br)
  %i.ca = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.by, <8 x i16> %i.bs)
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.bz, <8 x i16> %i.ca)
end_hunk_0
begin_hunk_1_@Gsm_LPC_Analysis:vector.ph
  %i.acr = trunc i64 %i.acq to i16                ; 3 uses
  %i.acs = shl i64 %i.xp, %i.aco
  %i.act = lshr i64 %i.acs, 16
  %i.acu = trunc i64 %i.act to i16                ; 7 uses
  %i.acv = shl i64 %i.xo, %i.aco
  %i.acw = lshr i64 %i.acv, 16
  %i.acx = trunc i64 %i.acw to i16                ; 2 uses
end_hunk_1
begin_hunk_2_@Gsm_LPC_Analysis:vector.ph
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.adp, ptr %.sroa.12.0..sroa_idx.i, align 16, !tbaa !8
  %i.adq = icmp slt i16 %i.acu, 0
  %23 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.acu)
  %i.adr = select i1 %i.adq, i16 %23, i16 %i.acu  ; 2 uses
  %i.ads = icmp sgt i16 %i.adr, %i.acr
  br i1 %i.ads, label %.lr.ph82.preheader.i, label %.lr.ph.preheader

end_hunk_2
begin_hunk_3_@Gsm_LPC_Analysis:vector.ph
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %i.agc = phi i16 [ %.pre, %._crit_edge.i.loopexit ], [ %i.aeh, %bb.d ] ; 5 uses
  %i.agd = getelementptr i8, ptr %.15878.i41109, i64 2 ; 3 uses
  %indvar.next.i = add nuw nsw i64 %indvar.i38112, 1 ; 2 uses
  %i.age = icmp slt i16 %i.agc, 0
  %24 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.agc)
  %i.agf = select i1 %i.age, i16 %24, i16 %i.agc  ; 2 uses
  %i.agg = icmp slt i16 %i.aep, %i.agf
  br i1 %i.agg, label %.preheader64.i, label %.lr.ph

Reflection_coefficients.exit:                     ; preds = %.lr.ph, %.preheader.preheader.i, %.preheader64.i, %.lr.ph82.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.agh = load i16, ptr %2, align 2, !tbaa !8    ; 3 uses
  %i.agi = icmp slt i16 %i.agh, 0                 ; 2 uses
  %25 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.agh)
  %i.agj = select i1 %i.agi, i16 %25, i16 %i.agh  ; 5 uses
  %i.agk = icmp slt i16 %i.agj, 22118
  br i1 %i.agk, label %bb.e, label %bb.f

end_hunk_3
begin_hunk_4_@Gsm_LPC_Analysis:vector.ph
bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.017.i = phi i16 [ %i.agl, %bb.e ], [ %i.agn, %bb.g ], [ %i.agp, %bb.h ] ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.agr = load i16, ptr %i.agq, align 2, !tbaa !8 ; 3 uses
  %i.ags = icmp slt i16 %i.agr, 0                 ; 2 uses
  %26 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.agr)
  %i.agt = select i1 %i.ags, i16 %26, i16 %i.agr  ; 5 uses
  %i.agu = icmp slt i16 %i.agt, 22118
  br i1 %i.agu, label %bb.m, label %bb.j

end_hunk_4
begin_hunk_5_@Gsm_LPC_Analysis:vector.ph
bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.017.1.i = phi i16 [ %i.agz, %bb.m ], [ %i.agy, %bb.l ], [ %i.agx, %bb.k ] ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !8 ; 3 uses
  %i.ahc = icmp slt i16 %i.ahb, 0                 ; 2 uses
  %27 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ahb)
  %i.ahd = select i1 %i.ahc, i16 %27, i16 %i.ahb  ; 5 uses
  %i.ahe = icmp slt i16 %i.ahd, 22118
  br i1 %i.ahe, label %bb.r, label %bb.o

end_hunk_5
begin_hunk_6_@Gsm_LPC_Analysis:vector.ph
bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.017.2.i = phi i16 [ %i.ahj, %bb.r ], [ %i.ahi, %bb.q ], [ %i.ahh, %bb.p ] ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ahl = load i16, ptr %i.ahk, align 2, !tbaa !8 ; 3 uses
  %i.ahm = icmp slt i16 %i.ahl, 0                 ; 2 uses
  %28 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ahl)
  %i.ahn = select i1 %i.ahm, i16 %28, i16 %i.ahl  ; 5 uses
  %i.aho = icmp slt i16 %i.ahn, 22118
  br i1 %i.aho, label %bb.w, label %bb.t

end_hunk_6
begin_hunk_7_@Gsm_LPC_Analysis:vector.ph
bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.017.3.i = phi i16 [ %i.aht, %bb.w ], [ %i.ahs, %bb.v ], [ %i.ahr, %bb.u ] ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ahv = load i16, ptr %i.ahu, align 2, !tbaa !8 ; 3 uses
  %i.ahw = icmp slt i16 %i.ahv, 0                 ; 2 uses
  %29 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ahv)
  %i.ahx = select i1 %i.ahw, i16 %29, i16 %i.ahv  ; 5 uses
  %i.ahy = icmp slt i16 %i.ahx, 22118
  br i1 %i.ahy, label %bb.ab, label %bb.y

end_hunk_7
begin_hunk_8_@Gsm_LPC_Analysis:vector.ph
bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.017.4.i = phi i16 [ %i.aid, %bb.ab ], [ %i.aic, %bb.aa ], [ %i.aib, %bb.z ] ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aif = load i16, ptr %i.aie, align 2, !tbaa !8 ; 3 uses
  %i.aig = icmp slt i16 %i.aif, 0                 ; 2 uses
  %30 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aif)
  %i.aih = select i1 %i.aig, i16 %30, i16 %i.aif  ; 5 uses
  %i.aii = icmp slt i16 %i.aih, 22118
  br i1 %i.aii, label %bb.ag, label %bb.ad

end_hunk_8
begin_hunk_9_@Gsm_LPC_Analysis:vector.ph
bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.017.5.i = phi i16 [ %i.ain, %bb.ag ], [ %i.aim, %bb.af ], [ %i.ail, %bb.ae ] ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aip = load i16, ptr %i.aio, align 2, !tbaa !8 ; 3 uses
  %i.aiq = icmp slt i16 %i.aip, 0                 ; 2 uses
  %31 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aip)
  %i.air = select i1 %i.aiq, i16 %31, i16 %i.aip  ; 5 uses
  %i.ais = icmp slt i16 %i.air, 22118
  br i1 %i.ais, label %bb.al, label %bb.ai

end_hunk_9
begin_hunk_10_@Gsm_LPC_Analysis:vector.ph
bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.017.6.i = phi i16 [ %i.aix, %bb.al ], [ %i.aiw, %bb.ak ], [ %i.aiv, %bb.aj ] ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !8 ; 3 uses
  %i.aja = icmp slt i16 %i.aiz, 0                 ; 2 uses
  %32 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aiz)
  %i.ajb = select i1 %i.aja, i16 %32, i16 %i.aiz  ; 5 uses
  %i.ajc = icmp slt i16 %i.ajb, 22118
  br i1 %i.ajc, label %bb.aq, label %bb.an

end_hunk_10
begin_hunk_11_@gsm_div
declare signext i16 @gsm_div(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
end_hunk_11
begin_hunk_12_@llvm.sadd.sat.i16
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_12
