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
  %i.agb = phi i16 [ %.pre, %._crit_edge.i.loopexit ], [ %i.aeh, %bb.d ] ; 5 uses
  %i.agc = getelementptr i8, ptr %.15878.i41109, i64 2 ; 3 uses
  %indvar.next.i = add nuw nsw i64 %indvar.i38112, 1 ; 2 uses
  %i.agd = icmp slt i16 %i.agb, 0
  %24 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.agb)
  %i.age = select i1 %i.agd, i16 %24, i16 %i.agb  ; 2 uses
  %i.agf = icmp slt i16 %i.aep, %i.age
  br i1 %i.agf, label %.preheader64.i, label %.lr.ph

Reflection_coefficients.exit:                     ; preds = %.lr.ph, %.preheader.preheader.i, %.preheader64.i, %.lr.ph82.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.agg = load i16, ptr %2, align 2, !tbaa !8    ; 3 uses
  %i.agh = icmp slt i16 %i.agg, 0                 ; 2 uses
  %25 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.agg)
  %i.agi = select i1 %i.agh, i16 %25, i16 %i.agg  ; 5 uses
  %i.agj = icmp slt i16 %i.agi, 22118
  br i1 %i.agj, label %bb.e, label %bb.f

end_hunk_3
begin_hunk_4_@Gsm_LPC_Analysis:vector.ph
bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.017.i = phi i16 [ %i.agk, %bb.e ], [ %i.agm, %bb.g ], [ %i.ago, %bb.h ] ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !8 ; 3 uses
  %i.agr = icmp slt i16 %i.agq, 0                 ; 2 uses
  %26 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.agq)
  %i.ags = select i1 %i.agr, i16 %26, i16 %i.agq  ; 5 uses
  %i.agt = icmp slt i16 %i.ags, 22118
  br i1 %i.agt, label %bb.m, label %bb.j

end_hunk_4
begin_hunk_5_@Gsm_LPC_Analysis:vector.ph
bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.017.1.i = phi i16 [ %i.agy, %bb.m ], [ %i.agx, %bb.l ], [ %i.agw, %bb.k ] ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !8 ; 3 uses
  %i.ahb = icmp slt i16 %i.aha, 0                 ; 2 uses
  %27 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aha)
  %i.ahc = select i1 %i.ahb, i16 %27, i16 %i.aha  ; 5 uses
  %i.ahd = icmp slt i16 %i.ahc, 22118
  br i1 %i.ahd, label %bb.r, label %bb.o

end_hunk_5
begin_hunk_6_@Gsm_LPC_Analysis:vector.ph
bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.017.2.i = phi i16 [ %i.ahi, %bb.r ], [ %i.ahh, %bb.q ], [ %i.ahg, %bb.p ] ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !8 ; 3 uses
  %i.ahl = icmp slt i16 %i.ahk, 0                 ; 2 uses
  %28 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ahk)
  %i.ahm = select i1 %i.ahl, i16 %28, i16 %i.ahk  ; 5 uses
  %i.ahn = icmp slt i16 %i.ahm, 22118
  br i1 %i.ahn, label %bb.w, label %bb.t

end_hunk_6
begin_hunk_7_@Gsm_LPC_Analysis:vector.ph
bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.017.3.i = phi i16 [ %i.ahs, %bb.w ], [ %i.ahr, %bb.v ], [ %i.ahq, %bb.u ] ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !8 ; 3 uses
  %i.ahv = icmp slt i16 %i.ahu, 0                 ; 2 uses
  %29 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ahu)
  %i.ahw = select i1 %i.ahv, i16 %29, i16 %i.ahu  ; 5 uses
  %i.ahx = icmp slt i16 %i.ahw, 22118
  br i1 %i.ahx, label %bb.ab, label %bb.y

end_hunk_7
begin_hunk_8_@Gsm_LPC_Analysis:vector.ph
bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.017.4.i = phi i16 [ %i.aic, %bb.ab ], [ %i.aib, %bb.aa ], [ %i.aia, %bb.z ] ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aie = load i16, ptr %i.aid, align 2, !tbaa !8 ; 3 uses
  %i.aif = icmp slt i16 %i.aie, 0                 ; 2 uses
  %30 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aie)
  %i.aig = select i1 %i.aif, i16 %30, i16 %i.aie  ; 5 uses
  %i.aih = icmp slt i16 %i.aig, 22118
  br i1 %i.aih, label %bb.ag, label %bb.ad

end_hunk_8
begin_hunk_9_@Gsm_LPC_Analysis:vector.ph
bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.017.5.i = phi i16 [ %i.aim, %bb.ag ], [ %i.ail, %bb.af ], [ %i.aik, %bb.ae ] ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !8 ; 3 uses
  %i.aip = icmp slt i16 %i.aio, 0                 ; 2 uses
  %31 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aio)
  %i.aiq = select i1 %i.aip, i16 %31, i16 %i.aio  ; 5 uses
  %i.air = icmp slt i16 %i.aiq, 22118
  br i1 %i.air, label %bb.al, label %bb.ai

end_hunk_9
begin_hunk_10_@Gsm_LPC_Analysis:vector.ph
bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.017.6.i = phi i16 [ %i.aiw, %bb.al ], [ %i.aiv, %bb.ak ], [ %i.aiu, %bb.aj ] ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !8 ; 3 uses
  %i.aiz = icmp slt i16 %i.aiy, 0                 ; 2 uses
  %32 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aiy)
  %i.aja = select i1 %i.aiz, i16 %32, i16 %i.aiy  ; 5 uses
  %i.ajb = icmp slt i16 %i.aja, 22118
  br i1 %i.ajb, label %bb.aq, label %bb.an

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
