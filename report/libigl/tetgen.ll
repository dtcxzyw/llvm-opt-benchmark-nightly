Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 555
begin_hunk_0_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  %i.aez = sext i32 %i.aeo to i64                 ; 2 uses
  %i.afa = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.aez
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !59
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.aep, i64 %i.afc
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !220
  %i.aff = ptrtoint ptr %i.afe to i64             ; 2 uses
  %i.afg = and i64 %i.aff, -16
  %i.afh = inttoptr i64 %i.afg to ptr             ; 2 uses
  %i.afi = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.aez
  %i.afj = and i64 %i.aff, 15
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !59 ; 2 uses
  %i.afm = sext i32 %i.afl to i64                 ; 2 uses
  %i.afn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !59
  %i.afp = sext i32 %i.afo to i64
  %i.afq = getelementptr inbounds [8 x i8], ptr %i.afh, i64 %i.afp
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !220 ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.t
  br i1 %i.afs, label %._crit_edge, label %.lr.ph, !llvm.loop !614

._crit_edge:                                      ; preds = %bb.bq
  %.not540 = icmp eq ptr %.1455, null
  br i1 %.not540, label %.critedge602, label %bb.br

bb.br:                                            ; preds = %._crit_edge
  %i.aft = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.o)
  %i.afu = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.t)
  %i.afv = fmul double %i.aft, %i.afu
  %i.afw = fcmp ult double %i.afv, 0.000000e+00
  br i1 %i.afw, label %.split679, label %.critedge602

.split679:                                        ; preds = %bb.br
  %i.afx = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0496.ph)
  %i.afy = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0495.ph)
  %i.afz = fmul double %i.afx, %i.afy
  %i.aga = fcmp ult double %i.afz, 0.000000e+00
  br i1 %i.aga, label %bb.bt, label %.critedge602

bb.bs:                                            ; preds = %bb.bl
  %i.agb = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.abt, ptr noundef %i.acg, ptr noundef %i.adb, ptr noundef %i.t)
  %i.agc = fcmp uge double %i.agb, 0.000000e+00
  br i1 %i.agc, label %.critedge602, label %bb.bt

bb.bt:                                            ; preds = %.split679, %bb.bs
  %.0496671683 = phi ptr [ %.0496.ph, %.split679 ], [ %i.abt, %bb.bs ]
  %.0495673682 = phi ptr [ %.0495.ph, %.split679 ], [ %i.acg, %bb.bs ]
  %.0494675681 = phi ptr [ %.0494.ph, %.split679 ], [ %i.adb, %bb.bs ]
  %.0489677680 = phi i32 [ %.0489.ph, %.split679 ], [ 0, %bb.bs ] ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 68700
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !276
  %.not542 = icmp eq i32 %i.age, 0
  br i1 %.not542, label %.critedge607, label %.preheader691.preheader

.preheader691.preheader:                          ; preds = %bb.bt
  %i.agf = load ptr, ptr %1, align 8, !tbaa !231
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 72
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !220 ; 2 uses
  %.not552 = icmp eq ptr %i.agh, null
  br i1 %.not552, label %.preheader691.1, label %bb.bu

bb.bu:                                            ; preds = %.preheader691.preheader
  %i.agi = load i32, ptr %i.h, align 8, !tbaa !236
  %i.agj = and i32 %i.agi, 3
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.agh, i64 %i.agk
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !112
  %.not553 = icmp ne ptr %i.agm, null             ; 2 uses
  %i.agn = zext i1 %.not553 to i32
  %not..not553 = xor i1 %.not553, true
  %i.ago = zext i1 %not..not553 to i64
  br label %.preheader691.1

.preheader691.1:                                  ; preds = %bb.bu, %.preheader691.preheader
  %.3471 = phi i64 [ 1, %.preheader691.preheader ], [ %i.ago, %bb.bu ]
  %.3466 = phi i32 [ 0, %.preheader691.preheader ], [ %i.agn, %bb.bu ] ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !231
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 72
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !220 ; 2 uses
  %.not552.1 = icmp eq ptr %i.ags, null
  br i1 %.not552.1, label %.preheader691.2, label %bb.bv

bb.bv:                                            ; preds = %.preheader691.1
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.agu = load i32, ptr %i.agt, align 8, !tbaa !236
  %i.agv = and i32 %i.agu, 3
  %i.agw = zext nneg i32 %i.agv to i64
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %i.agw
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !112
  %.not553.1 = icmp ne ptr %i.agy, null           ; 2 uses
  %i.agz = zext i1 %.not553.1 to i32
  %spec.select613.1 = add nuw nsw i32 %.3466, %i.agz
  %i.aha = select i1 %.not553.1, i64 %.3471, i64 2
  br label %.preheader691.2

.preheader691.2:                                  ; preds = %bb.bv, %.preheader691.1
  %.3471.1 = phi i64 [ 2, %.preheader691.1 ], [ %i.aha, %bb.bv ]
  %.3466.1 = phi i32 [ %.3466, %.preheader691.1 ], [ %spec.select613.1, %bb.bv ] ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !231
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 72
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !220 ; 2 uses
  %.not552.2 = icmp eq ptr %i.ahe, null
  br i1 %.not552.2, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.preheader691.2
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !236
  %i.ahh = and i32 %i.ahg, 3
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.ahe, i64 %i.ahi
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !112
  %.not553.2 = icmp ne ptr %i.ahk, null           ; 2 uses
  %i.ahl = zext i1 %.not553.2 to i32
  %spec.select613.2 = add nuw nsw i32 %.3466.1, %i.ahl
  %i.ahm = select i1 %.not553.2, i64 %.3471.1, i64 0
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.preheader691.2
  %.3471.2 = phi i64 [ 0, %.preheader691.2 ], [ %i.ahm, %bb.bw ]
  %.3466.2 = phi i32 [ %.3466.1, %.preheader691.2 ], [ %spec.select613.2, %bb.bw ]
  switch i32 %.3466.2, label %.critedge607 [
    i32 1, label %.critedge602
    i32 2, label %bb.by
    i32 3, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bx
  %i.ahn = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.3471.2 ; 2 uses
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !231
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahq = load i32, ptr %i.ahp, align 8, !tbaa !236
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh11eorgoppotblE, i64 %i.ahr
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !59 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aho, i64 72
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !220 ; 3 uses
  %.not543 = icmp eq ptr %i.ahv, null
  br i1 %.not543, label %.critedge607, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ahw = and i32 %i.aht, 3
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.ahv, i64 %i.ahx
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !112
  %.not544 = icmp eq ptr %i.ahz, null
  br i1 %.not544, label %bb.ca, label %.critedge602

bb.ca:                                            ; preds = %bb.bz
  %i.aia = sext i32 %i.aht to i64
  %i.aib = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !59
  %i.aid = and i32 %i.aic, 3
  %i.aie = zext nneg i32 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %i.ahv, i64 %i.aie
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !112
  %.not546 = icmp eq ptr %i.aig, null
  br i1 %.not546, label %.critedge607, label %.critedge602

bb.cb:                                            ; preds = %bb.bx
  tail call void @_Z15terminatetetgenP10tetgenmeshi(ptr noundef nonnull %0, i32 noundef 2)
  br label %.critedge607

.critedge607:                                     ; preds = %bb.by, %bb.bt, %bb.cb, %bb.bx, %bb.ca
  %i.aih = tail call noundef zeroext i1 @_ZN10tetgenmesh21valid_constrained_f32EPNS_7trifaceEPdS2_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, ptr poison, ptr poison)
  br i1 %i.aih, label %bb.cc, label %.critedge602

bb.cc:                                            ; preds = %.critedge607
  %i.aii = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.aij = load i32, ptr %i.aii, align 8, !tbaa !295
  %.not549 = icmp eq i32 %i.aij, 0
  br i1 %.not549, label %.critedge611, label %.critedge609

.critedge609:                                     ; preds = %bb.cc
  %i.aik = tail call noundef i32 @_ZN10tetgenmesh20checkflipeligibilityEiPdS0_S0_S0_S0_iiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef 2, ptr noundef %.0496671683, ptr noundef %.0495673682, ptr noundef %.0494675681, ptr noundef %i.t, ptr noundef %i.o, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  %i.ail = icmp eq i32 %i.aik, 0
  br i1 %i.ail, label %.critedge611, label %.critedge602

.critedge611:                                     ; preds = %bb.cc, %.critedge609
  tail call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, i32 noundef %.0489677680, ptr noundef nonnull %5)
  %i.aim = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !279
  %i.aio = icmp ne i32 %i.ain, 0
  %i.aip = icmp eq i32 %3, 0                      ; 2 uses
  %or.cond9 = and i1 %i.aip, %i.aio
  br i1 %or.cond9, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.critedge611
  %i.aiq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.air = load double, ptr %i.aiq, align 8, !tbaa !280 ; 2 uses
  %i.ais = fcmp ult double %i.air, 0.000000e+00
  br i1 %i.ais, label %bb.ce, label %.critedge602.loopexit

bb.ce:                                            ; preds = %bb.cd
  %i.ait = tail call double @llvm.fabs.f64(double %i.air)
  %i.aiu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !303
  %i.aiw = fcmp olt double %i.ait, %i.aiv
  br i1 %i.aiw, label %.critedge602.loopexit, label %bb.cg

.critedge602.loopexit:                            ; preds = %bb.ce, %bb.cd
  tail call void @_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1, i32 noundef %.0489677680, ptr noundef nonnull %5)
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 3 uses
  %i.aiy = load ptr, ptr %1, align 8, !tbaa !231
  %i.aiz = load i32, ptr %i.aix, align 4, !tbaa !232
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.aja ; 2 uses
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !59 ; 2 uses
  %i.ajd = and i32 %i.ajc, -65536
  %i.aje = add i32 %i.ajd, 65536
  %i.ajf = and i32 %i.ajc, 65535
  %i.ajg = or disjoint i32 %i.aje, %i.ajf
  store i32 %i.ajg, ptr %i.ajb, align 4, !tbaa !59
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !231
  %i.ajj = load i32, ptr %i.aix, align 4, !tbaa !232
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds [4 x i8], ptr %i.aji, i64 %i.ajk ; 2 uses
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !59 ; 2 uses
  %i.ajn = and i32 %i.ajm, -65536
  %i.ajo = add i32 %i.ajn, 65536
  %i.ajp = and i32 %i.ajm, 65535
  %i.ajq = or disjoint i32 %i.ajo, %i.ajp
  store i32 %i.ajq, ptr %i.ajl, align 4, !tbaa !59
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !231
  %i.ajt = load i32, ptr %i.aix, align 4, !tbaa !232
  %i.aju = sext i32 %i.ajt to i64
  %i.ajv = getelementptr inbounds [4 x i8], ptr %i.ajs, i64 %i.aju ; 2 uses
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !59 ; 2 uses
  %i.ajx = and i32 %i.ajw, -65536
  %i.ajy = add i32 %i.ajx, 65536
  %i.ajz = and i32 %i.ajw, 65535
  %i.aka = or disjoint i32 %i.ajy, %i.ajz
  store i32 %i.aka, ptr %i.ajv, align 4, !tbaa !59
  br label %.critedge602

bb.cf:                                            ; preds = %.critedge611
  %i.akb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !296
  %.not551 = icmp eq i32 %i.akc, 0
  br i1 %.not551, label %.critedge602, label %10

bb.cg:                                            ; preds = %bb.ce
  %i.akd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %9 = load i32, ptr %i.akd, align 4, !tbaa !296
  %.not551912 = icmp eq i32 %9, 0
  br i1 %.not551912, label %.critedge602, label %.preheader689

10:                                               ; preds = %bb.cf
  br i1 %i.aip, label %.preheader689, label %bb.ch

.preheader689:                                    ; preds = %bb.cg, %10
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 2 uses
  %12 = load ptr, ptr %11, align 8, !tbaa !266    ; 4 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !100
  %i.akg = trunc i64 %i.akf to i32
  %i.akh = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %12, i32 noundef %i.akg)
  %i.aki = load i64, ptr %i.ake, align 8, !tbaa !100 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !101
  %i.akl = add nsw i32 %i.akk, -1
  %i.akm = sext i32 %i.akl to i64
  %i.akn = and i64 %i.aki, %i.akm
  %i.ako = load i32, ptr %12, align 8, !tbaa !102
  %i.akp = sext i32 %i.ako to i64
  %i.akq = mul nsw i64 %i.akn, %i.akp
  %i.akr = getelementptr inbounds i8, ptr %i.akh, i64 %i.akq ; 2 uses
  %i.aks = add nsw i64 %i.aki, 1
  store i64 %i.aks, ptr %i.ake, align 8, !tbaa !100
  %i.akt = load ptr, ptr %1, align 8, !tbaa !231
  store ptr %i.akt, ptr %i.akr, align 8, !tbaa !231
  %i.aku = load i32, ptr %i.h, align 8, !tbaa !236
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  store i32 %i.aku, ptr %i.akv, align 8, !tbaa !236
  %i.akw = load ptr, ptr %11, align 8, !tbaa !266 ; 4 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 32 ; 3 uses
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !100
  %i.akz = trunc i64 %i.aky to i32
  %i.ala = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.akw, i32 noundef %i.akz)
  %i.alb = load i64, ptr %i.akx, align 8, !tbaa !100 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !101
  %i.ale = add nsw i32 %i.ald, -1
  %i.alf = sext i32 %i.ale to i64
  %i.alg = and i64 %i.alb, %i.alf
  %i.alh = load i32, ptr %i.akw, align 8, !tbaa !102
  %i.ali = sext i32 %i.alh to i64
  %i.alj = mul nsw i64 %i.alg, %i.ali
  %i.alk = getelementptr inbounds i8, ptr %i.ala, i64 %i.alj ; 2 uses
  %i.all = add nsw i64 %i.alb, 1
  store i64 %i.all, ptr %i.akx, align 8, !tbaa !100
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !231
  store ptr %i.aln, ptr %i.alk, align 8, !tbaa !231
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.alp = load i32, ptr %i.alo, align 8, !tbaa !236
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  store i32 %i.alp, ptr %i.alq, align 8, !tbaa !236
  br label %.critedge602

bb.ch:                                            ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %14 = load ptr, ptr %13, align 8, !tbaa !266
  %i.alr = call noundef i32 @_ZN10tetgenmesh9arraypool8newindexEPPv(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %i.a) ; 0 uses
  %i.als = icmp eq i32 %4, 1
  br i1 %i.als, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.alu = load ptr, ptr %i.a, align 8, !tbaa !305 ; 2 uses
  %i.alv = load ptr, ptr %i.alt, align 8, !tbaa !231
  store ptr %i.alv, ptr %i.alu, align 8, !tbaa !231
  %i.alw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !236
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  store i32 %i.alx, ptr %i.aly, align 8, !tbaa !236
  br label %.critedge602

bb.cj:                                            ; preds = %bb.ch
  %i.alz = load ptr, ptr %i.a, align 8, !tbaa !305 ; 2 uses
  %i.ama = load ptr, ptr %1, align 8, !tbaa !231
  store ptr %i.ama, ptr %i.alz, align 8, !tbaa !231
  %i.amb = load i32, ptr %i.h, align 8, !tbaa !236
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 8
  store i32 %i.amb, ptr %i.amc, align 8, !tbaa !236
  br label %.critedge602

.critedge602.loopexit.split.loop.exit763:         ; preds = %._crit_edge761
  %i.amd = add nsw i32 %i.vr, 1
  br label %.critedge602

.critedge602.loopexit686.split.loop.exit723:      ; preds = %bb.y
  %i.ame = add nsw i32 %i.ig, 1
  br label %.critedge602

.critedge602:                                     ; preds = %bb.v, %.loopexit, %bb.bb, %._crit_edge755, %.thread662, %.critedge599, %bb.cg, %.critedge602.loopexit, %.critedge602.loopexit686.split.loop.exit723, %.critedge602.loopexit.split.loop.exit763, %.preheader689, %bb.ab, %.split679, %bb.ac, %bb.z, %.critedge609, %bb.bs, %._crit_edge, %bb.br, %bb.bl, %bb.bm, %bb.ca, %bb.bz, %bb.bx, %.critedge607, %bb.cf, %bb.ci, %bb.cj
  %.3500 = phi i32 [ 3, %.critedge602.loopexit ], [ %2, %bb.ac ], [ %2, %.split679 ], [ 2, %bb.cf ], [ 2, %.preheader689 ], [ %i.ame, %.critedge602.loopexit686.split.loop.exit723 ], [ 2, %bb.cj ], [ 2, %bb.ci ], [ %2, %.critedge607 ], [ %2, %bb.bx ], [ %2, %bb.bz ], [ %2, %bb.ca ], [ %2, %bb.bm ], [ %2, %bb.bl ], [ %2, %bb.br ], [ %2, %._crit_edge ], [ %2, %bb.bs ], [ %2, %.critedge609 ], [ %2, %bb.z ], [ %2, %bb.ab ], [ 2, %bb.cg ], [ %2, %.critedge599 ], [ %i.amd, %.critedge602.loopexit.split.loop.exit763 ], [ 2, %._crit_edge755 ], [ %2, %.thread662 ], [ %i.vr, %bb.bb ], [ %i.ig, %bb.v ], [ 2, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  ret i32 %.3500
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN10tetgenmesh7getedgeEPdS0_PNS_7trifaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68664
  %i.d = load i32, ptr %i.c, align 8, !tbaa !223
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr [4 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = icmp ult i32 %i.h, 256
  br i1 %i.i, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr [4 x i8], ptr %2, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = icmp ult i32 %i.l, 256
  br i1 %i.m, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !231    ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit

_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit:     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !220
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !236
  %i.u = sext i32 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !59
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !220  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.u
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !59
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !220
  %i.ag = icmp eq ptr %i.af, %2
  br i1 %i.ag, label %bb.ae, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp eq ptr %i.z, %2
  br i1 %i.ah, label %bb.h, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.u
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !220
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %bb.i, label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.u
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !59
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !236
  br label %bb.ae

_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread: ; preds = %bb.d, %bb.f, %bb.h, %bb.g, %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !244
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !220
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -16
  %i.ax = inttoptr i64 %i.aw to ptr               ; 4 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !231
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !220
  %i.ba = icmp eq ptr %i.az, %1
  br i1 %i.ba, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !220
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !220
  %i.bg = icmp eq ptr %i.bf, %1
  %..i = select i1 %i.bg, i32 7, i32 0
  br label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit

_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit: ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread, %bb.j, %bb.k
  %.sink.i = phi i32 [ 11, %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread ], [ 3, %bb.j ], [ %..i, %bb.k ]
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i32 %.sink.i, ptr %i.bh, align 8, !tbaa !236
  %i.bi = tail call noundef i32 @_ZN10tetgenmesh13finddirectionEPNS_7trifaceEPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %3, ptr noundef nonnull %2) ; 0 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !231
  %i.bk = load i32, ptr %i.bh, align 8, !tbaa !236
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !59
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !220
  %i.br = icmp eq ptr %i.bq, %2
  br i1 %i.br, label %bb.ae, label %bb.l

bb.l:                                             ; preds = %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit
  %i.bs = load i32, ptr %i.aq, align 4, !tbaa !244
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !220
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, -16
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  store ptr %i.by, ptr %3, align 8, !tbaa !231
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !220
  %i.cb = icmp eq ptr %i.ca, %2
  br i1 %i.cb, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit83, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !220
  %i.ce = icmp eq ptr %i.cd, %2
  br i1 %i.ce, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit83, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !220
  %i.ch = icmp eq ptr %i.cg, %2
  %..i81 = select i1 %i.ch, i32 7, i32 0
  br label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit83

_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit83: ; preds = %bb.l, %bb.m, %bb.n
  %.sink.i82 = phi i32 [ 11, %bb.l ], [ 3, %bb.m ], [ %..i81, %bb.n ]
  store i32 %.sink.i82, ptr %i.bh, align 8, !tbaa !236
  %i.ci = tail call noundef i32 @_ZN10tetgenmesh13finddirectionEPNS_7trifaceEPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %3, ptr noundef nonnull %1) ; 0 uses
  %i.cj = load ptr, ptr %3, align 8, !tbaa !231
  %i.ck = load i32, ptr %i.bh, align 8, !tbaa !236
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !59
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !220
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit83
  %i.cs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.cl
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !59
  store i32 %i.ct, ptr %i.bh, align 8, !tbaa !236
  br label %bb.ae

bb.p:                                             ; preds = %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit83
  %i.cu = load i32, ptr %i.aq, align 4, !tbaa !244
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !220
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, -16
  %i.da = inttoptr i64 %i.cz to ptr               ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !220
  %i.dd = icmp eq ptr %i.dc, %1
  br i1 %i.dd, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit86, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !220
  %i.dg = icmp eq ptr %i.df, %1
  br i1 %i.dg, label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit86, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.di = load ptr, ptr %i.dh, align 16, !tbaa !220
  %i.dj = icmp eq ptr %i.di, %1
  %i.dk = select i1 %i.dj, i64 7, i64 0
  br label %_ZN10tetgenmesh12point2tetorgEPdRNS_7trifaceE.exit86

end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh19removevertexbyflipsEPd:bb.a
._crit_edge689:                                   ; preds = %.lr.ph688, %bb.cj
  %.sroa.0523.8.lcssa = phi ptr [ %i.ayj, %bb.cj ], [ %i.ber, %.lr.ph688 ] ; 3 uses
  %.sroa.51.8.lcssa = phi i32 [ %i.ayk, %bb.cj ], [ %i.beu, %.lr.ph688 ]
  %.lcssa = phi i64 [ %i.ayl, %bb.cj ], [ %i.bev, %.lr.ph688 ] ; 3 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %.sroa.0523.8.lcssa, i64 72 ; 6 uses
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !220 ; 2 uses
  %i.bbg = icmp eq ptr %i.bbf, null
  br i1 %i.bbg, label %.loopexit.loopexit.i402, label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit

.loopexit.loopexit.i402:                          ; preds = %._crit_edge689
  %i.bbh = load ptr, ptr %i.bal, align 8, !tbaa !229
  %i.bbi = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bbh) ; 2 uses
  store ptr %i.bbi, ptr %i.bbe, align 8, !tbaa !220
  store ptr null, ptr %i.bbi, align 8, !tbaa !220
  %i.bbj = load ptr, ptr %i.bbe, align 8, !tbaa !220
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 8
  store ptr null, ptr %i.bbk, align 8, !tbaa !220
  %i.bbl = load ptr, ptr %i.bbe, align 8, !tbaa !220
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 16
  store ptr null, ptr %i.bbm, align 8, !tbaa !220
  %i.bbn = load ptr, ptr %i.bbe, align 8, !tbaa !220
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 24
  store ptr null, ptr %i.bbo, align 8, !tbaa !220
  %.pre.i403 = load ptr, ptr %i.bbe, align 8, !tbaa !220
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit: ; preds = %._crit_edge689, %.loopexit.loopexit.i402
  %i.bbp = phi ptr [ %.pre.i403, %.loopexit.loopexit.i402 ], [ %i.bbf, %._crit_edge689 ]
  %i.bbq = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %.lcssa
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %i.bat
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !59
  %i.bbt = sext i32 %i.bbs to i64
  %i.bbu = or i64 %.sroa.0471.1.in, %i.bbt
  %i.bbv = inttoptr i64 %i.bbu to ptr
  %i.bbw = and i32 %.sroa.51.8.lcssa, 3
  %i.bbx = zext nneg i32 %i.bbw to i64            ; 2 uses
  %i.bby = getelementptr inbounds nuw [8 x i8], ptr %i.bbp, i64 %i.bbx
  store ptr %i.bbv, ptr %i.bby, align 8, !tbaa !220
  %i.bbz = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %.lcssa
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.bbz, i64 %i.bat
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !59
  %i.bcc = ptrtoint ptr %.sroa.0523.8.lcssa to i64
  %i.bcd = sext i32 %i.bcb to i64
  %i.bce = or i64 %i.bcd, %i.bcc
  %i.bcf = inttoptr i64 %i.bce to ptr
  %i.bcg = and i32 %spec.select617, 1
  %i.bch = zext nneg i32 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0471.1, i64 %i.bch
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 72
  store ptr %i.bcf, ptr %i.bcj, align 8, !tbaa !220
  %i.bck = xor i32 %spec.select617, 1             ; 2 uses
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0523.8.lcssa, i64 %i.bbx
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !220
  %i.bcn = ptrtoint ptr %i.bcm to i64             ; 2 uses
  %i.bco = and i64 %i.bcn, -16                    ; 2 uses
  %i.bcp = inttoptr i64 %i.bco to ptr
  %i.bcq = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %.lcssa
  %i.bcr = and i64 %i.bcn, 15
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.bcq, i64 %i.bcr
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !59 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcp, i64 72 ; 6 uses
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !220 ; 2 uses
  %i.bcw = icmp eq ptr %i.bcv, null
  br i1 %i.bcw, label %.loopexit.loopexit.i404, label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit406

.loopexit.loopexit.i404:                          ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit
  %i.bcx = load ptr, ptr %i.bal, align 8, !tbaa !229
  %i.bcy = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bcx) ; 2 uses
  store ptr %i.bcy, ptr %i.bcu, align 8, !tbaa !220
  store ptr null, ptr %i.bcy, align 8, !tbaa !220
  %i.bcz = load ptr, ptr %i.bcu, align 8, !tbaa !220
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  store ptr null, ptr %i.bda, align 8, !tbaa !220
  %i.bdb = load ptr, ptr %i.bcu, align 8, !tbaa !220
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 16
  store ptr null, ptr %i.bdc, align 8, !tbaa !220
  %i.bdd = load ptr, ptr %i.bcu, align 8, !tbaa !220
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 24
  store ptr null, ptr %i.bde, align 8, !tbaa !220
  %.pre.i405 = load ptr, ptr %i.bcu, align 8, !tbaa !220
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit406

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit406: ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit, %.loopexit.loopexit.i404
  %i.bdf = phi ptr [ %.pre.i405, %.loopexit.loopexit.i404 ], [ %i.bcv, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit ]
  %i.bdg = sext i32 %i.bct to i64                 ; 2 uses
  %i.bdh = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %i.bdg
  %i.bdi = zext nneg i32 %i.bck to i64            ; 2 uses
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %i.bdi
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !59
  %i.bdl = sext i32 %i.bdk to i64
  %i.bdm = or i64 %.sroa.0471.1.in, %i.bdl
  %i.bdn = inttoptr i64 %i.bdm to ptr
  %i.bdo = and i32 %i.bct, 3
  %i.bdp = zext nneg i32 %i.bdo to i64
  %i.bdq = getelementptr inbounds nuw [8 x i8], ptr %i.bdf, i64 %i.bdp
  store ptr %i.bdn, ptr %i.bdq, align 8, !tbaa !220
  %i.bdr = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %i.bdg
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %i.bdr, i64 %i.bdi
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !59
  %i.bdu = sext i32 %i.bdt to i64
  %i.bdv = or i64 %i.bco, %i.bdu
  %i.bdw = inttoptr i64 %i.bdv to ptr
  %i.bdx = and i32 %i.bck, 1
  %i.bdy = zext nneg i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0471.1, i64 %i.bdy
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 72
  store ptr %i.bdw, ptr %i.bea, align 8, !tbaa !220
  %i.beb = lshr i32 %.sroa.18.1, 1
  %i.bec = zext nneg i32 %i.beb to i64
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0471.1, i64 %i.bec
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !220
  %i.bef = ptrtoint ptr %i.bee to i64             ; 2 uses
  %i.beg = and i64 %i.bef, -8                     ; 2 uses
  %i.beh = icmp eq i64 %i.beg, %i.baj
  br i1 %i.beh, label %.loopexit, label %bb.cj, !llvm.loop !1125

.lr.ph688:                                        ; preds = %bb.cj, %.lr.ph688
  %i.bei = phi i64 [ %i.bev, %.lr.ph688 ], [ %i.ayl, %bb.cj ] ; 2 uses
  %.sroa.0523.8686 = phi ptr [ %i.ber, %.lr.ph688 ], [ %i.ayj, %bb.cj ]
  %i.bej = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.bei
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !59
  %i.bel = sext i32 %i.bek to i64
  %i.bem = getelementptr inbounds [8 x i8], ptr %.sroa.0523.8686, i64 %i.bel
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !220
  %i.beo = ptrtoint ptr %i.ben to i64             ; 2 uses
  %i.bep = and i64 %i.beo, 15
  %i.beq = and i64 %i.beo, -16
  %i.ber = inttoptr i64 %i.beq to ptr             ; 3 uses
  %i.bes = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.bei
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.bes, i64 %i.bep
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !59 ; 2 uses
  %i.bev = sext i32 %i.beu to i64                 ; 3 uses
  %i.bew = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.bev
  %i.bex = load i32, ptr %i.bew, align 4, !tbaa !59
  %i.bey = sext i32 %i.bex to i64
  %i.bez = getelementptr inbounds [8 x i8], ptr %i.ber, i64 %i.bey
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !220
  %i.bfb = icmp eq ptr %i.bfa, %i.bay
  br i1 %i.bfb, label %._crit_edge689, label %.lr.ph688, !llvm.loop !1126

.loopexit:                                        ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit406, %bb.ci, %bb.ch
  %i.bfc = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !257
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 32
  store i64 0, ptr %i.bfe, align 8, !tbaa !100
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit, %bb.ca
  %i.bff = load i32, ptr %i.m, align 8, !tbaa !223
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr [4 x i8], ptr %1, i64 %i.bfg
  %i.bfi = getelementptr i8, ptr %i.bfh, i64 4    ; 2 uses
  %i.bfj = load i32, ptr %i.bfi, align 4, !tbaa !59 ; 2 uses
  %.not373 = icmp ult i32 %i.bfj, 256
  br i1 %.not373, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.bfk = and i32 %i.bfj, 255
  store i32 %i.bfk, ptr %i.bfi, align 4, !tbaa !59
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 69000 ; 2 uses
  %i.bfm = load i64, ptr %i.bfl, align 8, !tbaa !291
  %i.bfn = add nsw i64 %i.bfm, 1
  store i64 %i.bfn, ptr %i.bfl, align 8, !tbaa !291
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.not374 = icmp eq i32 %i.s, 4
  br i1 %.not374, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.t, label %.sink.split, label %bb.co

bb.co:                                            ; preds = %bb.cn
  switch i32 %i.s, label %bb.cq [
    i32 6, label %.sink.split
    i32 7, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co
  br label %.sink.split

.sink.split:                                      ; preds = %bb.co, %bb.cn, %bb.cp
  %.sink906 = phi i64 [ 69024, %bb.cn ], [ 69040, %bb.cp ], [ 69032, %bb.co ]
  %i.bfo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink906 ; 2 uses
  %i.bfp = load i64, ptr %i.bfo, align 8, !tbaa !365
  %i.bfq = add nsw i64 %i.bfp, -1
  store i64 %i.bfq, ptr %i.bfo, align 8, !tbaa !365
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split, %bb.co
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 68984 ; 2 uses
  %i.bfs = load i64, ptr %i.bfr, align 8, !tbaa !347 ; 2 uses
  %i.bft = icmp sgt i64 %i.bfs, 0
  br i1 %i.bft, label %bb.cr, label %.critedge

bb.cr:                                            ; preds = %bb.cq
  %i.bfu = add nuw nsw i64 %i.bfs, 1
  store i64 %i.bfu, ptr %i.bfr, align 8, !tbaa !347
  br label %.critedge

.critedge:                                        ; preds = %bb.am, %.thread, %bb.ad, %bb.as, %bb.at, %.thread891, %.thread604, %.thread865, %.thread598, %bb.cm, %bb.cr, %bb.cq, %bb.i, %bb.f, %bb.e, %bb.bb
  %.12331 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.ad ], [ 0, %.thread891 ], [ 0, %.thread865 ], [ 0, %bb.i ], [ 1, %bb.bb ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.cm ], [ 0, %.thread598 ], [ 0, %.thread604 ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %.thread ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret i32 %.12331
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN10tetgenmesh24suppressbdrysteinerpointEPd(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tetgenmesh::triface", align 8 ; 10 uses
  %i.a = alloca [3 x double], align 16            ; 9 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %i.c = alloca [3 x double], align 16            ; 6 uses
  %i.d = alloca [3 x double], align 16            ; 9 uses
  %3 = alloca %"class.tetgenmesh::insertvertexflags", align 8 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68664 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !223
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = ashr i32 %i.j, 8                         ; 2 uses
  %i.l = icmp eq i32 %i.k, 5                      ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68660
  %i.n = load i32, ptr %i.m, align 4, !tbaa !244
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [8 x i8], ptr %1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !220
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, -8
  %i.u = inttoptr i64 %i.t to ptr                 ; 5 uses
  %i.v = load i32, ptr @_ZN10tetgenmesh10sdestpivotE, align 16, !tbaa !59
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !220
  %i.z = icmp eq ptr %i.y, %1
  %i.aa = load i32, ptr @_ZN10tetgenmesh10snextpivotE, align 16, !tbaa !59 ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = ashr i32 %i.aa, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !220
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, -8
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = sext i32 %i.aa to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59
  %i.al = ashr i32 %i.ak, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, -8
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0287.0 = phi ptr [ %i.u, %bb.c ], [ %i.ar, %bb.d ] ; 2 uses
  %.sroa.0281.0 = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !218
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 156
  %i.av = load i32, ptr %i.au, align 4, !tbaa !185
  %i.aw = icmp sgt i32 %i.av, 2
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.0281.0, i64 %i.w
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !220
  %i.az = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !59
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %.sroa.0287.0, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !220
  %i.bd = load i32, ptr %i.h, align 4, !tbaa !59
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.g
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.g
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !59
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.401, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.bh) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bj = load ptr, ptr %.sroa.0287.0, align 8, !tbaa !220
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bl = and i64 %i.bk, -8                       ; 3 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %.loopexit401, label %.preheader400

.preheader400:                                    ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %i.bo = and i64 %i.bk, 7
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.bo
  br label %bb.h

bb.h:                                             ; preds = %.preheader400, %bb.j
  %.sroa.0306.0 = phi ptr [ %i.cy, %bb.j ], [ %i.bm, %.preheader400 ] ; 3 uses
  %.sroa.8.0.in.in = phi i64 [ %i.cw, %bb.j ], [ %i.bk, %.preheader400 ] ; 2 uses
  %.sroa.8.0.in = trunc i64 %.sroa.8.0.in.in to i32
  %.sroa.8.0 = and i32 %.sroa.8.0.in, 7           ; 3 uses
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !258 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !100
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, i32 noundef %i.bt)
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !100 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !101
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = sext i32 %i.by to i64
  %i.ca = and i64 %i.bv, %i.bz
  %i.cb = load i32, ptr %i.bq, align 8, !tbaa !102
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.ca, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.bu, i64 %i.cd ; 2 uses
  %i.cf = add nsw i64 %i.bv, 1
  store i64 %i.cf, ptr %i.br, align 8, !tbaa !100
  store ptr %.sroa.0306.0, ptr %i.ce, align 8, !tbaa !224
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  store i32 %.sroa.8.0, ptr %i.cg, align 8, !tbaa !225
  %i.ch = and i64 %.sroa.8.0.in.in, 7
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %.sroa.0306.0, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !220
  %i.cn = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !220
  %.not217 = icmp eq ptr %i.cm, %i.cq
  br i1 %.not217, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = xor i32 %.sroa.8.0, 1
  store i32 %i.cr, ptr %i.cg, align 8, !tbaa !225
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cs = lshr i32 %.sroa.8.0, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0306.0, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !220
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = and i64 %i.cw, -8                       ; 3 uses
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = icmp eq i64 %i.cx, 0
  %i.da = icmp eq i64 %i.cx, %i.bl
  %or.cond = or i1 %i.cz, %i.da
  br i1 %or.cond, label %.loopexit401, label %bb.h, !llvm.loop !1127

.loopexit401:                                     ; preds = %bb.j, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !258 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !100
  %i.df = icmp slt i64 %i.de, 2
  br i1 %i.df, label %bb.k, label %.loopexit402

bb.k:                                             ; preds = %.loopexit401
  store i64 0, ptr %i.dd, align 8, !tbaa !100
  br label %bb.ca

bb.l:                                             ; preds = %bb.a
  %i.dg = icmp eq i32 %i.k, 6
  br i1 %i.dg, label %bb.m, label %bb.ca

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !218
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 156
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !185
  %i.dl = icmp sgt i32 %i.dk, 2
  br i1 %i.dl, label %bb.n, label %.loopexit402.loopexit

bb.n:                                             ; preds = %bb.m
  %i.dm = load i32, ptr %i.h, align 4, !tbaa !59
  %i.dn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.402, i32 noundef %i.dm) ; 0 uses
  br label %.loopexit402.loopexit

.loopexit402.loopexit:                            ; preds = %bb.n, %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 68660
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !244
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [8 x i8], ptr %1, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !220
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
end_hunk_1
