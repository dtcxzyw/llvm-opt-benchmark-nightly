inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@smc_encode_frame:bb.a
  %i.agb = getelementptr inbounds nuw i8, ptr %.ph253, i64 1
  store i8 %i.aga, ptr %i.agb, align 1, !tbaa !42
  br label %bytestream2_put_byte.exit1221.1.i.thread

bb.ik:                                            ; preds = %bb.ij
  store i8 %i.afw, ptr %i.aft, align 1, !tbaa !42
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 3 uses
  %i.agd = load i8, ptr %i.bq, align 1, !tbaa !42 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.afv, i64 1
  store i8 %i.agd, ptr %i.age, align 1, !tbaa !42
  %i.agf = ptrtoint ptr %i.agc to i64
  %i.agg = sub i64 %i.bz, %i.agf
  %i.agh = icmp sgt i64 %i.agg, 0
  br i1 %i.agh, label %bb.il, label %bytestream2_put_byte.exit1221.1.i.thread

bytestream2_put_byte.exit1221.1.i.thread:         ; preds = %bytestream2_put_byte.exit1221.i.thread, %bb.ik
  %.ph259 = phi i64 [ %i.afu, %bb.ik ], [ %.ph254, %bytestream2_put_byte.exit1221.i.thread ]
  %.ph260 = phi ptr [ %i.afv, %bb.ik ], [ %.ph253, %bytestream2_put_byte.exit1221.i.thread ] ; 2 uses
  %.sroa.0.11.ph = phi ptr [ %i.agc, %bb.ik ], [ %.sroa.0.10.ph, %bytestream2_put_byte.exit1221.i.thread ]
  %i.agi = load i8, ptr %i.br, align 2, !tbaa !42
  %i.agj = getelementptr inbounds nuw i8, ptr %.ph260, i64 2
  store i8 %i.agi, ptr %i.agj, align 1, !tbaa !42
  br label %bytestream2_put_byte.exit1221.2.i.thread

bb.il:                                            ; preds = %bb.ik
  store i8 %i.agd, ptr %i.agc, align 1, !tbaa !42
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3 ; 3 uses
  %i.agl = load i8, ptr %i.br, align 2, !tbaa !42 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afv, i64 2
  store i8 %i.agl, ptr %i.agm, align 1, !tbaa !42
  %i.agn = ptrtoint ptr %i.agk to i64
  %i.ago = sub i64 %i.bz, %i.agn
  %i.agp = icmp sgt i64 %i.ago, 0
  br i1 %i.agp, label %bb.im, label %bytestream2_put_byte.exit1221.2.i.thread

bytestream2_put_byte.exit1221.2.i.thread:         ; preds = %bytestream2_put_byte.exit1221.1.i.thread, %bb.il
  %.ph265 = phi ptr [ %i.afv, %bb.il ], [ %.ph260, %bytestream2_put_byte.exit1221.1.i.thread ] ; 2 uses
  %.ph266 = phi i64 [ %i.afu, %bb.il ], [ %.ph259, %bytestream2_put_byte.exit1221.1.i.thread ]
  %.sroa.0.12.ph = phi ptr [ %i.agk, %bb.il ], [ %.sroa.0.11.ph, %bytestream2_put_byte.exit1221.1.i.thread ]
  %i.agq = load i8, ptr %i.bs, align 1, !tbaa !42
  %i.agr = getelementptr inbounds nuw i8, ptr %.ph265, i64 3
  store i8 %i.agq, ptr %i.agr, align 1, !tbaa !42
  br label %bytestream2_put_byte.exit1221.3.i.thread

bb.im:                                            ; preds = %bb.il
  store i8 %i.agl, ptr %i.agk, align 1, !tbaa !42
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4 ; 3 uses
  %i.agt = load i8, ptr %i.bs, align 1, !tbaa !42 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.afv, i64 3
  store i8 %i.agt, ptr %i.agu, align 1, !tbaa !42
  %i.agv = ptrtoint ptr %i.ags to i64
  %i.agw = sub i64 %i.bz, %i.agv
  %i.agx = icmp sgt i64 %i.agw, 0
  br i1 %i.agx, label %bb.in, label %bytestream2_put_byte.exit1221.3.i.thread

bytestream2_put_byte.exit1221.3.i.thread:         ; preds = %bytestream2_put_byte.exit1221.2.i.thread, %bb.im
  %.ph271 = phi i64 [ %i.afu, %bb.im ], [ %.ph266, %bytestream2_put_byte.exit1221.2.i.thread ]
  %.ph272 = phi ptr [ %i.afv, %bb.im ], [ %.ph265, %bytestream2_put_byte.exit1221.2.i.thread ] ; 2 uses
  %.sroa.0.13.ph = phi ptr [ %i.ags, %bb.im ], [ %.sroa.0.12.ph, %bytestream2_put_byte.exit1221.2.i.thread ]
  %i.agy = load i8, ptr %i.bt, align 8, !tbaa !42
  %i.agz = getelementptr inbounds nuw i8, ptr %.ph272, i64 4
  store i8 %i.agy, ptr %i.agz, align 1, !tbaa !42
  br label %bytestream2_put_byte.exit1221.4.i.thread

bb.in:                                            ; preds = %bb.im
  store i8 %i.agt, ptr %i.ags, align 1, !tbaa !42
  %i.aha = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5 ; 3 uses
  %i.ahb = load i8, ptr %i.bt, align 8, !tbaa !42 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !42
  %i.ahd = ptrtoint ptr %i.aha to i64
  %i.ahe = sub i64 %i.bz, %i.ahd
  %i.ahf = icmp sgt i64 %i.ahe, 0
  br i1 %i.ahf, label %bb.io, label %bytestream2_put_byte.exit1221.4.i.thread

bytestream2_put_byte.exit1221.4.i.thread:         ; preds = %bytestream2_put_byte.exit1221.3.i.thread, %bb.in
  %.ph277 = phi ptr [ %i.afv, %bb.in ], [ %.ph272, %bytestream2_put_byte.exit1221.3.i.thread ] ; 2 uses
  %.ph278 = phi i64 [ %i.afu, %bb.in ], [ %.ph271, %bytestream2_put_byte.exit1221.3.i.thread ]
  %.sroa.0.14.ph = phi ptr [ %i.aha, %bb.in ], [ %.sroa.0.13.ph, %bytestream2_put_byte.exit1221.3.i.thread ]
  %i.ahg = load i8, ptr %i.bu, align 1, !tbaa !42
  %i.ahh = getelementptr inbounds nuw i8, ptr %.ph277, i64 5
  store i8 %i.ahg, ptr %i.ahh, align 1, !tbaa !42
  br label %bytestream2_put_byte.exit1221.5.i.thread

bb.io:                                            ; preds = %bb.in
  store i8 %i.ahb, ptr %i.aha, align 1, !tbaa !42
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 6 ; 3 uses
  %i.ahj = load i8, ptr %i.bu, align 1, !tbaa !42 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.afv, i64 5
  store i8 %i.ahj, ptr %i.ahk, align 1, !tbaa !42
  %i.ahl = ptrtoint ptr %i.ahi to i64
  %i.ahm = sub i64 %i.bz, %i.ahl
  %i.ahn = icmp sgt i64 %i.ahm, 0
  br i1 %i.ahn, label %bb.ip, label %bytestream2_put_byte.exit1221.5.i.thread

bytestream2_put_byte.exit1221.5.i.thread:         ; preds = %bytestream2_put_byte.exit1221.4.i.thread, %bb.io
  %.ph283 = phi i64 [ %i.afu, %bb.io ], [ %.ph278, %bytestream2_put_byte.exit1221.4.i.thread ]
  %.ph284 = phi ptr [ %i.afv, %bb.io ], [ %.ph277, %bytestream2_put_byte.exit1221.4.i.thread ] ; 2 uses
  %.sroa.0.15.ph = phi ptr [ %i.ahi, %bb.io ], [ %.sroa.0.14.ph, %bytestream2_put_byte.exit1221.4.i.thread ]
  %i.aho = load i8, ptr %i.bv, align 2, !tbaa !42
  %i.ahp = getelementptr inbounds nuw i8, ptr %.ph284, i64 6
  store i8 %i.aho, ptr %i.ahp, align 1, !tbaa !42
  br label %bytestream2_put_byte.exit1221.6.i.thread

bb.ip:                                            ; preds = %bb.io
  store i8 %i.ahj, ptr %i.ahi, align 1, !tbaa !42
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 7 ; 3 uses
  %i.ahr = load i8, ptr %i.bv, align 2, !tbaa !42 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.afv, i64 6
  store i8 %i.ahr, ptr %i.ahs, align 1, !tbaa !42
  %i.aht = ptrtoint ptr %i.ahq to i64
  %i.ahu = sub i64 %i.bz, %i.aht
  %i.ahv = icmp sgt i64 %i.ahu, 0
  br i1 %i.ahv, label %bb.iq, label %bytestream2_put_byte.exit1221.6.i.thread

bytestream2_put_byte.exit1221.6.i.thread:         ; preds = %bytestream2_put_byte.exit1221.5.i.thread, %bb.ip
  %.ph289 = phi ptr [ %i.afv, %bb.ip ], [ %.ph284, %bytestream2_put_byte.exit1221.5.i.thread ]
  %.ph290 = phi i64 [ %i.afu, %bb.ip ], [ %.ph283, %bytestream2_put_byte.exit1221.5.i.thread ]
  %.sroa.0.16.ph = phi ptr [ %i.ahq, %bb.ip ], [ %.sroa.0.15.ph, %bytestream2_put_byte.exit1221.5.i.thread ]
  %i.ahw = load i8, ptr %i.bw, align 1, !tbaa !42
  %i.ahx = getelementptr inbounds nuw i8, ptr %.ph289, i64 7
  store i8 %i.ahw, ptr %i.ahx, align 1, !tbaa !42
  br label %bytestream2_put_byte.exit1221.7.i

bb.iq:                                            ; preds = %bb.ip
  store i8 %i.ahr, ptr %i.ahq, align 1, !tbaa !42
  %i.ahy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 3 uses
  %i.ahz = load i8, ptr %i.bw, align 1, !tbaa !42 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.afv, i64 7
  store i8 %i.ahz, ptr %i.aia, align 1, !tbaa !42
  %i.aib = ptrtoint ptr %i.ahy to i64
  %i.aic = sub i64 %i.bz, %i.aib
  %i.aid = icmp sgt i64 %i.aic, 0
  br i1 %i.aid, label %bb.ir, label %bytestream2_put_byte.exit1221.7.i

bb.ir:                                            ; preds = %bb.iq
  store i8 %i.ahz, ptr %i.ahy, align 1, !tbaa !42
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 9
  br label %bytestream2_put_byte.exit1221.7.i

bytestream2_put_byte.exit1221.7.i:                ; preds = %bb.iq, %bytestream2_put_byte.exit1221.6.i.thread, %bb.ir
  %i.aif = phi i64 [ %i.afu, %bb.ir ], [ %.ph290, %bytestream2_put_byte.exit1221.6.i.thread ], [ %i.afu, %bb.iq ]
  %.sroa.181.15 = phi i32 [ 0, %bb.ir ], [ 1, %bytestream2_put_byte.exit1221.6.i.thread ], [ 1, %bb.iq ]
  %.sroa.0.17 = phi ptr [ %i.aie, %bb.ir ], [ %.sroa.0.16.ph, %bytestream2_put_byte.exit1221.6.i.thread ], [ %i.ahy, %bb.iq ]
  %i.aig = add nsw i32 %.010401632.i, 1           ; 2 uses
  %i.aih = icmp eq i32 %i.aig, 256
  %spec.store.select53.i = select i1 %i.aih, i32 0, i32 %i.aig
  br label %bytestream2_put_byte.exit1225.i

bytestream2_put_byte.exit1225.i:                  ; preds = %bb.if, %bb.ig, %bytestream2_put_byte.exit1221.7.i, %bb.ih
  %.sroa.181.16 = phi i32 [ 0, %bb.ih ], [ %.sroa.181.15, %bytestream2_put_byte.exit1221.7.i ], [ 1, %bb.ig ], [ 1, %bb.if ] ; 2 uses
  %.sroa.0.18 = phi ptr [ %i.afk, %bb.ih ], [ %.sroa.0.17, %bytestream2_put_byte.exit1221.7.i ], [ %i.aff, %bb.ig ], [ %.sroa.0.1, %bb.if ] ; 2 uses
  %.11041.i = phi i32 [ %.010401632.i, %bb.ih ], [ %spec.store.select53.i, %bytestream2_put_byte.exit1221.7.i ], [ %.010401632.i, %bb.ig ], [ %.010401632.i, %bb.if ] ; 2 uses
  %.21039.i = phi i64 [ %indvars.iv1693.i, %bb.ih ], [ %i.aif, %bytestream2_put_byte.exit1221.7.i ], [ %indvars.iv1693.i, %bb.ig ], [ %indvars.iv1693.i, %bb.if ]
  %i.aii = icmp sgt i32 %.4.i, 0
  br i1 %i.aii, label %.lr.ph1500.i, label %.critedge19.i

.lr.ph1500.i:                                     ; preds = %bytestream2_put_byte.exit1225.i
  %i.aij = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %.21039.i ; 8 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 2
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 3
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 5
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 6
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 7
  br label %.preheader1312.i

.preheader1312.i:                                 ; preds = %.critedge31.i, %.lr.ph1500.i
  %.sroa.181.17 = phi i32 [ %.sroa.181.16, %.lr.ph1500.i ], [ %.sroa.181.18, %.critedge31.i ]
  %.sroa.0.19 = phi ptr [ %.sroa.0.18, %.lr.ph1500.i ], [ %.sroa.0.21, %.critedge31.i ] ; 6 uses
  %.09331499.i = phi i32 [ 0, %.lr.ph1500.i ], [ %i.alt, %.critedge31.i ]
  %.211498.i = phi i32 [ %.09961637.i, %.lr.ph1500.i ], [ %.22.lcssa.i, %.critedge31.i ] ; 3 uses
  %.2110221497.i = phi i32 [ %.010011633.i, %.lr.ph1500.i ], [ %.221023.lcssa.i, %.critedge31.i ] ; 4 uses
  %.2110711496.i = phi ptr [ %.010501621.i, %.lr.ph1500.i ], [ %.221072.lcssa.i, %.critedge31.i ] ; 5 uses
  %.2111071495.i = phi ptr [ %.010861617.i, %.lr.ph1500.i ], [ %.221108.lcssa.i, %.critedge31.i ] ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.aij, align 1, !tbaa !42 ; 4 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !42 ; 4 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !42 ; 4 uses
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !42 ; 4 uses
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 1, !tbaa !42 ; 4 uses
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !tbaa !42 ; 4 uses
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1, !tbaa !42 ; 4 uses
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 1, !tbaa !42 ; 4 uses
  %i.aik = sub nsw i32 %i.aw, %.2110221497.i      ; 2 uses
  %i.ail = sub i32 %i.ay, %.211498.i              ; 4 uses
  %i.aim = icmp sgt i32 %i.aik, 0
  %i.ain = icmp sgt i32 %i.ail, 0
  %or.cond319 = select i1 %i.aim, i1 %i.ain, i1 false
  br i1 %or.cond319, label %.preheader1308.us.preheader.i, label %._crit_edge1482.i

.preheader1308.us.preheader.i:                    ; preds = %.preheader1312.i
  %i.aio = call i32 @llvm.umin.i32(i32 %i.aik, i32 4)
  %wide.trip.count1716.i = zext nneg i32 %i.aio to i64
  %exitcond1712.not.i = icmp eq i32 %i.ail, 1
  %exitcond1712.not.i.1 = icmp eq i32 %i.ail, 2
  %exitcond1712.not.i.2 = icmp eq i32 %i.ail, 3
  br label %.preheader1308.us.i

.preheader1308.us.i:                              ; preds = %._crit_edge1476.us.i, %.preheader1308.us.preheader.i
  %indvars.iv = phi i64 [ 0, %.preheader1308.us.preheader.i ], [ %indvars.iv.next1714.i, %._crit_edge1476.us.i ] ; 2 uses
  %.09301480.us.i = phi i32 [ 45, %.preheader1308.us.preheader.i ], [ %.reass.i, %._crit_edge1476.us.i ] ; 5 uses
  %.09311479.us.i = phi i64 [ 0, %.preheader1308.us.preheader.i ], [ %.lcssa520, %._crit_edge1476.us.i ]
  %i.aip = mul nsw i64 %indvars.iv, %i.ao
  %i.aiq = getelementptr i8, ptr %.2111071495.i, i64 %i.aip ; 4 uses
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !42 ; 8 uses
  %i.ais = icmp eq i8 %.sroa.0.0.copyload.i, %i.air
  br i1 %i.ais, label %bb.iz, label %bb.is

bb.is:                                            ; preds = %.preheader1308.us.i
  %i.ait = icmp eq i8 %.sroa.4.0.copyload.i, %i.air
  br i1 %i.ait, label %bb.iz, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aiu = icmp eq i8 %.sroa.5.0.copyload.i, %i.air
  br i1 %i.aiu, label %bb.iz, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aiv = icmp eq i8 %.sroa.6.0.copyload.i, %i.air
  br i1 %i.aiv, label %bb.iz, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aiw = icmp eq i8 %.sroa.7.0.copyload.i, %i.air
  br i1 %i.aiw, label %bb.iz, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aix = icmp eq i8 %.sroa.8.0.copyload.i, %i.air
  br i1 %i.aix, label %bb.iz, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aiy = icmp eq i8 %.sroa.9.0.copyload.i, %i.air
  br i1 %i.aiy, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aiz = icmp eq i8 %.sroa.10.0.copyload.i, %i.air
  %spec.select1854.i = select i1 %i.aiz, i64 7, i64 0
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %.preheader1308.us.i
  %.0926.us.i = phi i64 [ 4, %bb.iv ], [ 0, %.preheader1308.us.i ], [ 1, %bb.is ], [ %spec.select1854.i, %bb.iy ], [ 2, %bb.it ], [ 5, %bb.iw ], [ 3, %bb.iu ], [ 6, %bb.ix ]
  %4 = zext nneg i32 %.09301480.us.i to i64
  %i.aja = shl i64 %.0926.us.i, %4
  %i.ajb = or i64 %i.aja, %.09311479.us.i         ; 2 uses
  %5 = add nsw i32 %.09301480.us.i, -3
  br i1 %exitcond1712.not.i, label %._crit_edge1476.us.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ajc = getelementptr i8, ptr %i.aiq, i64 1
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !42 ; 8 uses
  %i.aje = icmp eq i8 %.sroa.0.0.copyload.i, %i.ajd
  br i1 %i.aje, label %bb.ji, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.ajf = icmp eq i8 %.sroa.4.0.copyload.i, %i.ajd
  br i1 %i.ajf, label %bb.ji, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.ajg = icmp eq i8 %.sroa.5.0.copyload.i, %i.ajd
  br i1 %i.ajg, label %bb.ji, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ajh = icmp eq i8 %.sroa.6.0.copyload.i, %i.ajd
  br i1 %i.ajh, label %bb.ji, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aji = icmp eq i8 %.sroa.7.0.copyload.i, %i.ajd
  br i1 %i.aji, label %bb.ji, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.ajj = icmp eq i8 %.sroa.8.0.copyload.i, %i.ajd
  br i1 %i.ajj, label %bb.ji, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.ajk = icmp eq i8 %.sroa.9.0.copyload.i, %i.ajd
  br i1 %i.ajk, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ajl = icmp eq i8 %.sroa.10.0.copyload.i, %i.ajd
  %spec.select1854.i.1 = select i1 %i.ajl, i64 7, i64 0
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja
  %.0926.us.i.1 = phi i64 [ 4, %bb.je ], [ 0, %bb.ja ], [ 1, %bb.jb ], [ %spec.select1854.i.1, %bb.jh ], [ 2, %bb.jc ], [ 5, %bb.jf ], [ 3, %bb.jd ], [ 6, %bb.jg ]
  %6 = zext nneg i32 %5 to i64
  %i.ajm = shl i64 %.0926.us.i.1, %6
  %i.ajn = or i64 %i.ajm, %i.ajb                  ; 2 uses
  %7 = add nsw i32 %.09301480.us.i, -6
  br i1 %exitcond1712.not.i.1, label %._crit_edge1476.us.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.ajo = getelementptr i8, ptr %i.aiq, i64 2
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !42 ; 8 uses
  %i.ajq = icmp eq i8 %.sroa.0.0.copyload.i, %i.ajp
  br i1 %i.ajq, label %bb.jr, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ajr = icmp eq i8 %.sroa.4.0.copyload.i, %i.ajp
  br i1 %i.ajr, label %bb.jr, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.ajs = icmp eq i8 %.sroa.5.0.copyload.i, %i.ajp
  br i1 %i.ajs, label %bb.jr, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ajt = icmp eq i8 %.sroa.6.0.copyload.i, %i.ajp
  br i1 %i.ajt, label %bb.jr, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aju = icmp eq i8 %.sroa.7.0.copyload.i, %i.ajp
  br i1 %i.aju, label %bb.jr, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.ajv = icmp eq i8 %.sroa.8.0.copyload.i, %i.ajp
  br i1 %i.ajv, label %bb.jr, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ajw = icmp eq i8 %.sroa.9.0.copyload.i, %i.ajp
  br i1 %i.ajw, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ajx = icmp eq i8 %.sroa.10.0.copyload.i, %i.ajp
  %spec.select1854.i.2 = select i1 %i.ajx, i64 7, i64 0
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj
  %.0926.us.i.2 = phi i64 [ 4, %bb.jn ], [ 0, %bb.jj ], [ 1, %bb.jk ], [ %spec.select1854.i.2, %bb.jq ], [ 2, %bb.jl ], [ 5, %bb.jo ], [ 3, %bb.jm ], [ 6, %bb.jp ]
  %8 = zext nneg i32 %7 to i64
  %i.ajy = shl i64 %.0926.us.i.2, %8
  %i.ajz = or i64 %i.ajy, %i.ajn                  ; 2 uses
  %9 = add nsw i32 %.09301480.us.i, -9
  br i1 %exitcond1712.not.i.2, label %._crit_edge1476.us.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aka = getelementptr i8, ptr %i.aiq, i64 3
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !42 ; 8 uses
  %i.akc = icmp eq i8 %.sroa.0.0.copyload.i, %i.akb
  br i1 %i.akc, label %bb.ka, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.akd = icmp eq i8 %.sroa.4.0.copyload.i, %i.akb
  br i1 %i.akd, label %bb.ka, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.ake = icmp eq i8 %.sroa.5.0.copyload.i, %i.akb
  br i1 %i.ake, label %bb.ka, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.akf = icmp eq i8 %.sroa.6.0.copyload.i, %i.akb
  br i1 %i.akf, label %bb.ka, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.akg = icmp eq i8 %.sroa.7.0.copyload.i, %i.akb
  br i1 %i.akg, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.akh = icmp eq i8 %.sroa.8.0.copyload.i, %i.akb
  br i1 %i.akh, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.aki = icmp eq i8 %.sroa.9.0.copyload.i, %i.akb
  br i1 %i.aki, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.akj = icmp eq i8 %.sroa.10.0.copyload.i, %i.akb
  %spec.select1854.i.3 = select i1 %i.akj, i64 7, i64 0
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js
  %.0926.us.i.3 = phi i64 [ 4, %bb.jw ], [ 0, %bb.js ], [ 1, %bb.jt ], [ %spec.select1854.i.3, %bb.jz ], [ 2, %bb.ju ], [ 5, %bb.jx ], [ 3, %bb.jv ], [ 6, %bb.jy ]
  %10 = zext nneg i32 %9 to i64
  %i.akk = shl i64 %.0926.us.i.3, %10
  %i.akl = or i64 %i.akk, %i.ajz
  br label %._crit_edge1476.us.i

._crit_edge1476.us.i:                             ; preds = %bb.ka, %bb.jr, %bb.ji, %bb.iz
  %.lcssa520 = phi i64 [ %i.ajb, %bb.iz ], [ %i.ajn, %bb.ji ], [ %i.ajz, %bb.jr ], [ %i.akl, %bb.ka ] ; 2 uses
  %.reass.i = add nsw i32 %.09301480.us.i, -12
  %indvars.iv.next1714.i = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1717.not.i = icmp eq i64 %indvars.iv.next1714.i, %wide.trip.count1716.i
  br i1 %exitcond1717.not.i, label %._crit_edge1482.i, label %.preheader1308.us.i, !llvm.loop !63

._crit_edge1482.i:                                ; preds = %._crit_edge1476.us.i, %.preheader1312.i
  %.0931.lcssa.i = phi i64 [ 0, %.preheader1312.i ], [ %.lcssa520, %._crit_edge1476.us.i ] ; 5 uses
  %i.akm = lshr i64 %.0931.lcssa.i, 8             ; 2 uses
  %.not.i1255.i = icmp eq i32 %.sroa.181.17, 0
  %i.akn = ptrtoint ptr %.sroa.0.19 to i64
  %i.ako = sub i64 %i.bz, %i.akn
  %i.akp = icmp sgt i64 %i.ako, 1
  %or.cond374 = select i1 %.not.i1255.i, i1 %i.akp, i1 false
  br i1 %or.cond374, label %bb.kb, label %bytestream2_put_be16.exit.i

bb.kb:                                            ; preds = %._crit_edge1482.i
  %i.akq = lshr i64 %.0931.lcssa.i, 32
  %i.akr = and i64 %i.akq, 65520
  %i.aks = and i64 %i.akm, 15
  %i.akt = or disjoint i64 %i.akr, %i.aks
  %i.aku = trunc nuw i64 %i.akt to i16
  %i.akv = call i16 @llvm.bswap.i16(i16 %i.aku)
  store i16 %i.akv, ptr %.sroa.0.19, align 1, !tbaa !42
  %i.akw = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 2 ; 3 uses
  %i.akx = ptrtoint ptr %i.akw to i64
  %i.aky = sub i64 %i.bz, %i.akx
  %i.akz = icmp sgt i64 %i.aky, 1
  br i1 %i.akz, label %bb.kc, label %bytestream2_put_be16.exit.i

bb.kc:                                            ; preds = %bb.kb
  %i.ala = lshr i64 %.0931.lcssa.i, 20
  %i.alb = and i64 %i.ala, 65520
  %i.alc = lshr i64 %.0931.lcssa.i, 4
  %i.ald = and i64 %i.alc, 15
  %i.ale = or disjoint i64 %i.alb, %i.ald
  %i.alf = trunc nuw i64 %i.ale to i16
  %i.alg = call i16 @llvm.bswap.i16(i16 %i.alf)
  store i16 %i.alg, ptr %i.akw, align 1, !tbaa !42
  %i.alh = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 4 ; 3 uses
  %i.ali = ptrtoint ptr %i.alh to i64
  %i.alj = sub i64 %i.bz, %i.ali
  %i.alk = icmp sgt i64 %i.alj, 1
  br i1 %i.alk, label %bb.kd, label %bytestream2_put_be16.exit.i

bb.kd:                                            ; preds = %bb.kc
  %i.all = and i64 %i.akm, 65520
  %i.alm = and i64 %.0931.lcssa.i, 15
  %i.aln = or disjoint i64 %i.all, %i.alm
  %i.alo = trunc nuw i64 %i.aln to i16
  %i.alp = call i16 @llvm.bswap.i16(i16 %i.alo)
  store i16 %i.alp, ptr %i.alh, align 1, !tbaa !42
  %i.alq = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 6
  br label %bytestream2_put_be16.exit.i

bytestream2_put_be16.exit.i:                      ; preds = %._crit_edge1482.i, %bb.kb, %bb.kc, %bb.kd
  %.sroa.181.18 = phi i32 [ 0, %bb.kd ], [ 1, %bb.kc ], [ 1, %bb.kb ], [ 1, %._crit_edge1482.i ] ; 2 uses
  %.sroa.0.21 = phi ptr [ %i.alq, %bb.kd ], [ %i.alh, %bb.kc ], [ %i.akw, %bb.kb ], [ %.sroa.0.19, %._crit_edge1482.i ] ; 2 uses
  %i.alr = icmp ne ptr %.2111071495.i, null
  %i.als = icmp ne ptr %.2110711496.i, null
  %or.cond671485.i = select i1 %i.alr, i1 %i.als, i1 false
  br i1 %or.cond671485.i, label %.lr.ph1490.i, label %.critedge31.i

.critedge31.i:                                    ; preds = %bb.ke, %.lr.ph1490.i, %bytestream2_put_be16.exit.i
  %.221108.lcssa.i = phi ptr [ %.2111071495.i, %bytestream2_put_be16.exit.i ], [ %i.alz, %bb.ke ], [ %i.alu, %.lr.ph1490.i ] ; 2 uses
  %.221072.lcssa.i = phi ptr [ %.2110711496.i, %bytestream2_put_be16.exit.i ], [ %i.alz, %bb.ke ], [ %.2110711496.i, %.lr.ph1490.i ] ; 2 uses
  %.221023.lcssa.i = phi i32 [ %.2110221497.i, %bytestream2_put_be16.exit.i ], [ %i.ama, %bb.ke ], [ %.2110221497.i, %.lr.ph1490.i ] ; 2 uses
  %.22.lcssa.i = phi i32 [ %.211498.i, %bytestream2_put_be16.exit.i ], [ 0, %bb.ke ], [ %i.alv, %.lr.ph1490.i ] ; 2 uses
  %i.alt = add nuw nsw i32 %.09331499.i, 1        ; 2 uses
  %exitcond1718.not.i = icmp eq i32 %i.alt, %.4.i
  br i1 %exitcond1718.not.i, label %.critedge19.i, label %.preheader1312.i, !llvm.loop !64

.lr.ph1490.i:                                     ; preds = %bytestream2_put_be16.exit.i
  %i.alu = getelementptr inbounds nuw i8, ptr %.2111071495.i, i64 4 ; 2 uses
  %i.alv = add nsw i32 %.211498.i, 4
  %i.alw = ptrtoint ptr %i.alu to i64
  %i.alx = ptrtoint ptr %.2110711496.i to i64
  %i.aly = sub i64 %i.alw, %i.alx
  %.not1180.i = icmp slt i64 %i.aly, %i.bg
  br i1 %.not1180.i, label %.critedge31.i, label %bb.ke

bb.ke:                                            ; preds = %.lr.ph1490.i
  %i.alz = getelementptr inbounds i8, ptr %.2110711496.i, i64 %i.bh ; 2 uses
  %i.ama = add nsw i32 %.2110221497.i, 4
  br label %.critedge31.i

bb.kf:                                            ; preds = %.loopexit.thread.i
  %.not.i1218.i = icmp eq i32 %.sroa.181.1, 0
  %i.amb = ptrtoint ptr %.sroa.0.1 to i64
  %i.amc = sub i64 %i.bz, %i.amb
  %i.amd = icmp sgt i64 %i.amc, 0
  %or.cond323 = select i1 %.not.i1218.i, i1 %i.amd, i1 false
  br i1 %or.cond323, label %bb.kg, label %bytestream2_put_byte.exit1219.i

bb.kg:                                            ; preds = %bb.kf
  %i.ame = trunc i32 %.4.i to i8
  %i.amf = add i8 %i.ame, 31
  %i.amg = or i8 %i.amf, -32
  store i8 %i.amg, ptr %.sroa.0.1, align 1, !tbaa !42
  %i.amh = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  br label %bytestream2_put_byte.exit1219.i

bytestream2_put_byte.exit1219.i:                  ; preds = %bb.kf, %bb.kg
  %.sroa.181.34 = phi i32 [ 0, %bb.kg ], [ 1, %bb.kf ] ; 2 uses
  %.sroa.0.42 = phi ptr [ %i.amh, %bb.kg ], [ %.sroa.0.1, %bb.kf ] ; 2 uses
  %i.ami = icmp sgt i32 %.4.i, 0
  br i1 %i.ami, label %.lr.ph1612.i, label %.critedge19.i

.lr.ph1612.i:                                     ; preds = %bytestream2_put_byte.exit1219.i, %.critedge35.i
  %.sroa.181.35 = phi i32 [ %.sroa.181.39, %.critedge35.i ], [ %.sroa.181.34, %bytestream2_put_byte.exit1219.i ] ; 4 uses
  %.sroa.0.43 = phi ptr [ %.sroa.0.48, %.critedge35.i ], [ %.sroa.0.42, %bytestream2_put_byte.exit1219.i ] ; 10 uses
  %.09231611.i = phi i32 [ %i.avc, %.critedge35.i ], [ 0, %bytestream2_put_byte.exit1219.i ]
  %.241610.i = phi i32 [ %.25.lcssa.i, %.critedge35.i ], [ %.09961637.i, %bytestream2_put_byte.exit1219.i ] ; 3 uses
  %.2410251609.i = phi i32 [ %.251026.lcssa.i, %.critedge35.i ], [ %.010011633.i, %bytestream2_put_byte.exit1219.i ] ; 4 uses
  %.2410741608.i = phi ptr [ %.251075.lcssa.i, %.critedge35.i ], [ %.010501621.i, %bytestream2_put_byte.exit1219.i ] ; 5 uses
  %.2411101607.i = phi ptr [ %.251111.lcssa.i, %.critedge35.i ], [ %.010861617.i, %bytestream2_put_byte.exit1219.i ] ; 10 uses
  %i.amj = sub nsw i32 %i.aw, %.2410251609.i      ; 9 uses
  %i.amk = call i32 @llvm.smin.i32(i32 %i.amj, i32 4)
  %i.aml = sub i32 %i.ay, %.241610.i              ; 23 uses
  %i.amm = call i32 @llvm.smin.i32(i32 %i.aml, i32 4) ; 9 uses
  %i.amn = icmp sgt i32 %i.amj, 0
  br i1 %i.amn, label %.preheader1305.lr.ph.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1310.i, %.lr.ph1612.i
  %.sroa.181.37.ph = phi i32 [ %.sroa.181.35, %.lr.ph1612.i ], [ %.us-phi, %.preheader1310.i ]
  %.sroa.0.45.ph = phi ptr [ %.sroa.0.43, %.lr.ph1612.i ], [ %.us-phi359, %.preheader1310.i ]
  br label %.preheader.i

.preheader1305.lr.ph.i:                           ; preds = %.lr.ph1612.i
  %i.amo = icmp sgt i32 %i.aml, 0
  %i.amp = icmp slt i32 %i.aml, 4                 ; 4 uses
  br i1 %i.amo, label %.preheader1305.i.us, label %.preheader1305.i.preheader

.preheader1305.i.preheader:                       ; preds = %.preheader1305.lr.ph.i
  %i.amq = sub i32 4, %i.amm                      ; 4 uses
  %xtraiter582 = and i32 %i.amq, 1
  %lcmp.mod583.not = icmp eq i32 %xtraiter582, 0
  br i1 %lcmp.mod583.not, label %.preheader1305.i.new, label %.lr.ph1592.i.prol

.preheader1305.i.us:                              ; preds = %.preheader1305.lr.ph.i
  %.not.i1216.i.us = icmp eq i32 %.sroa.181.35, 0
  %i.amr = ptrtoint ptr %.sroa.0.43 to i64
  %i.ams = sub i64 %i.bz, %i.amr
  %i.amt = icmp sgt i64 %i.ams, 0
  %or.cond327.us = select i1 %.not.i1216.i.us, i1 %i.amt, i1 false ; 2 uses
  br i1 %or.cond327.us, label %bb.kh, label %bytestream2_put_byte.exit1217.i.us

bb.kh:                                            ; preds = %.preheader1305.i.us
  %i.amu = load i8, ptr %.2411101607.i, align 1, !tbaa !42
  store i8 %i.amu, ptr %.sroa.0.43, align 1, !tbaa !42
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.0.43, i64 1
  br label %bytestream2_put_byte.exit1217.i.us

bytestream2_put_byte.exit1217.i.us:               ; preds = %bb.kh, %.preheader1305.i.us
  %.sroa.181.46.us = phi i32 [ 0, %bb.kh ], [ 1, %.preheader1305.i.us ]
  %.sroa.0.55.us = phi ptr [ %i.amv, %bb.kh ], [ %.sroa.0.43, %.preheader1305.i.us ] ; 5 uses
  %exitcond1765.not.i.us = icmp eq i32 %i.aml, 1
  br i1 %exitcond1765.not.i.us, label %.preheader1304.i.us, label %bb.ki

bb.ki:                                            ; preds = %bytestream2_put_byte.exit1217.i.us
  %i.amw = ptrtoint ptr %.sroa.0.55.us to i64
  %i.amx = sub i64 %i.bz, %i.amw
  %i.amy = icmp sgt i64 %i.amx, 0
  %or.cond327.us.1 = select i1 %or.cond327.us, i1 %i.amy, i1 false ; 2 uses
  br i1 %or.cond327.us.1, label %bb.kj, label %bytestream2_put_byte.exit1217.i.us.1

bb.kj:                                            ; preds = %bb.ki
  %i.amz = getelementptr i8, ptr %.2411101607.i, i64 1
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !42
  store i8 %i.ana, ptr %.sroa.0.55.us, align 1, !tbaa !42
  %i.anb = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us, i64 1
  br label %bytestream2_put_byte.exit1217.i.us.1

bytestream2_put_byte.exit1217.i.us.1:             ; preds = %bb.kj, %bb.ki
  %.sroa.181.46.us.1 = phi i32 [ 0, %bb.kj ], [ 1, %bb.ki ]
  %.sroa.0.55.us.1 = phi ptr [ %i.anb, %bb.kj ], [ %.sroa.0.55.us, %bb.ki ] ; 5 uses
  %exitcond1765.not.i.us.1 = icmp eq i32 %i.aml, 2
  br i1 %exitcond1765.not.i.us.1, label %.preheader1304.i.us, label %bb.kk

bb.kk:                                            ; preds = %bytestream2_put_byte.exit1217.i.us.1
  %i.anc = ptrtoint ptr %.sroa.0.55.us.1 to i64
  %i.and = sub i64 %i.bz, %i.anc
  %i.ane = icmp sgt i64 %i.and, 0
  %or.cond327.us.2 = select i1 %or.cond327.us.1, i1 %i.ane, i1 false ; 2 uses
  br i1 %or.cond327.us.2, label %bb.kl, label %bytestream2_put_byte.exit1217.i.us.2

bb.kl:                                            ; preds = %bb.kk
  %i.anf = getelementptr i8, ptr %.2411101607.i, i64 2
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !42
  store i8 %i.ang, ptr %.sroa.0.55.us.1, align 1, !tbaa !42
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.1, i64 1
  br label %bytestream2_put_byte.exit1217.i.us.2

bytestream2_put_byte.exit1217.i.us.2:             ; preds = %bb.kl, %bb.kk
  %.sroa.181.46.us.2 = phi i32 [ 0, %bb.kl ], [ 1, %bb.kk ]
  %.sroa.0.55.us.2 = phi ptr [ %i.anh, %bb.kl ], [ %.sroa.0.55.us.1, %bb.kk ] ; 5 uses
  %exitcond1765.not.i.us.2 = icmp eq i32 %i.aml, 3
  br i1 %exitcond1765.not.i.us.2, label %.preheader1304.i.us, label %bb.km

bb.km:                                            ; preds = %bytestream2_put_byte.exit1217.i.us.2
  %i.ani = ptrtoint ptr %.sroa.0.55.us.2 to i64
  %i.anj = sub i64 %i.bz, %i.ani
  %i.ank = icmp sgt i64 %i.anj, 0
end_hunk_0
