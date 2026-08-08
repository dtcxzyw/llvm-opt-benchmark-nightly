inline.NumInlined: 55
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4ojph5local23ojph_decode_codeblock64EPhPmjjjjjjjb:bb.a

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991.loopexit: ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i989
  %i.adu = zext i1 %i.adn to i32
  br label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991: ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991.loopexit, %bb.bq
  %.sroa.20.21 = phi i64 [ %.sroa.20.10, %bb.bq ], [ %i.adq, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991.loopexit ] ; 3 uses
  %.sroa.62.21 = phi i32 [ %.sroa.62.10, %bb.bq ], [ %i.ads, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991.loopexit ]
  %.sroa.112.36 = phi i32 [ %.sroa.112.10, %bb.bq ], [ %.sroa.112.35, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991.loopexit ]
  %.sroa.95.21 = phi i32 [ %.sroa.95.10, %bb.bq ], [ %i.adu, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991.loopexit ]
  %.sroa.01023.36 = phi ptr [ %.sroa.01023.10, %bb.bq ], [ %.sroa.01023.35, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991.loopexit ]
  %i.adv = shl i32 %i.yw, 17
  %i.adw = ashr i32 %i.adv, 31
  %i.adx = add nsw i32 %i.zl, %i.adw              ; 2 uses
  %i.ady = zext nneg i32 %i.adx to i64            ; 3 uses
  %i.adz = lshr i64 %.sroa.20.21, %i.ady
  %i.aea = sub i32 %.sroa.62.21, %i.adx
  %i.aeb = shl i64 %.sroa.20.21, 63
  %notmask873 = shl nsw i64 -1, %i.ady
  %i.aec = xor i64 %notmask873, -1
  %i.aed = and i64 %.sroa.20.21, %i.aec
  %i.aee = lshr i32 %i.yw, 10
  %i.aef = and i32 %i.aee, 1
  %i.aeg = zext nneg i32 %i.aef to i64
  %i.aeh = shl nuw i64 %i.aeg, %i.ady
  %i.aei = or i64 %i.aeh, %i.aed
  %i.aej = or i64 %i.aei, 1
  %i.aek = add i64 %i.aej, 2
  %i.ael = shl i64 %i.aek, %i.yl
  %i.aem = or i64 %i.ael, %i.aeb
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991, %bb.bp
  %.sroa.20.11 = phi i64 [ %.sroa.20.10, %bb.bp ], [ %i.adz, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991 ] ; 3 uses
  %.sroa.62.11 = phi i32 [ %.sroa.62.10, %bb.bp ], [ %i.aea, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991 ] ; 4 uses
  %.sroa.112.11 = phi i32 [ %.sroa.112.10, %bb.bp ], [ %.sroa.112.36, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991 ] ; 4 uses
  %.sroa.95.11 = phi i32 [ %.sroa.95.10, %bb.bp ], [ %.sroa.95.21, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991 ] ; 3 uses
  %.sroa.01023.11 = phi ptr [ %.sroa.01023.10, %bb.bp ], [ %.sroa.01023.36, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991 ] ; 3 uses
  %.2822 = phi i64 [ 0, %bb.bp ], [ %i.aem, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit991 ]
  store i64 %.2822, ptr %i.acv, align 8, !tbaa !34
  %i.aen = and i32 %i.yw, 128
  %.not874 = icmp eq i32 %i.aen, 0
  br i1 %.not874, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aeo = icmp ult i32 %.sroa.62.11, 57
  br i1 %i.aeo, label %.lr.ph.i996, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003

.lr.ph.i996:                                      ; preds = %bb.bu
  %i.aep = icmp ne i32 %.sroa.95.11, 0
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001, %.lr.ph.i996
  %.sroa.112.37 = phi i32 [ %.sroa.112.11, %.lr.ph.i996 ], [ %.sroa.112.38, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001 ]
  %.sroa.01023.37 = phi ptr [ %.sroa.01023.11, %.lr.ph.i996 ], [ %.sroa.01023.38, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001 ] ; 3 uses
  %i.aeq = phi i64 [ %.sroa.20.11, %.lr.ph.i996 ], [ %i.afg, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001 ]
  %.not.i.i1000 = phi i1 [ %i.aep, %.lr.ph.i996 ], [ %i.afd, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001 ] ; 2 uses
  %i.aer = phi i32 [ %.sroa.112.11, %.lr.ph.i996 ], [ %i.aey, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001 ] ; 3 uses
  %i.aes = phi i32 [ %.sroa.62.11, %.lr.ph.i996 ], [ %i.afi, %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001 ] ; 2 uses
  %i.aet = icmp sgt i32 %i.aer, 0
  br i1 %i.aet, label %bb.bw, label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001

bb.bw:                                            ; preds = %bb.bv
  %i.aeu = load i8, ptr %.sroa.01023.37, align 1, !tbaa !10
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.01023.37, i64 1
  %i.aew = add nsw i32 %i.aer, -1                 ; 2 uses
  %i.aex = zext i8 %i.aeu to i32
  br label %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001

_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001: ; preds = %bb.bw, %bb.bv
  %.sroa.112.38 = phi i32 [ %i.aew, %bb.bw ], [ %.sroa.112.37, %bb.bv ] ; 2 uses
  %.sroa.01023.38 = phi ptr [ %i.aev, %bb.bw ], [ %.sroa.01023.37, %bb.bv ] ; 2 uses
  %i.aey = phi i32 [ %i.aew, %bb.bw ], [ %i.aer, %bb.bv ]
  %.0.i.i1002 = phi i32 [ %i.aex, %bb.bw ], [ 255, %bb.bv ]
  %i.aez = zext i1 %.not.i.i1000 to i32
  %i.afa = lshr i32 255, %i.aez
  %i.afb = and i32 %.0.i.i1002, %i.afa            ; 2 uses
  %i.afc = zext nneg i32 %i.afb to i64
  %i.afd = icmp eq i32 %i.afb, 255                ; 2 uses
  %i.afe = zext nneg i32 %i.aes to i64
  %i.aff = shl nuw i64 %i.afc, %i.afe
  %i.afg = or i64 %i.aff, %i.aeq                  ; 2 uses
  %i.afh = select i1 %.not.i.i1000, i32 7, i32 8
  %i.afi = add nuw nsw i32 %i.aes, %i.afh         ; 3 uses
  %i.afj = icmp samesign ult i32 %i.afi, 57
  br i1 %i.afj, label %bb.bv, label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit, !llvm.loop !33

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit: ; preds = %_ZN4ojph5localL10frwd_read8ILh255EEEvPNS0_13frwd_struct64E.exit.i1001
  %i.afk = zext i1 %i.afd to i32
  br label %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003

_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003: ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit, %bb.bu
  %.sroa.20.22 = phi i64 [ %.sroa.20.11, %bb.bu ], [ %i.afg, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit ] ; 3 uses
  %.sroa.62.22 = phi i32 [ %.sroa.62.11, %bb.bu ], [ %i.afi, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit ]
  %.sroa.112.39 = phi i32 [ %.sroa.112.11, %bb.bu ], [ %.sroa.112.38, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit ]
  %.sroa.95.22 = phi i32 [ %.sroa.95.11, %bb.bu ], [ %i.afk, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit ]
  %.sroa.01023.39 = phi ptr [ %.sroa.01023.11, %bb.bu ], [ %.sroa.01023.38, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003.loopexit ]
  %i.afl = lshr i32 %i.yw, 15
  %i.afm = sub nuw nsw i32 %i.zl, %i.afl          ; 2 uses
  %i.afn = zext nneg i32 %i.afm to i64            ; 3 uses
  %i.afo = lshr i64 %.sroa.20.22, %i.afn
  %i.afp = sub i32 %.sroa.62.22, %i.afm
  %i.afq = shl i64 %.sroa.20.22, 63
  %notmask875 = shl nsw i64 -1, %i.afn
  %i.afr = xor i64 %notmask875, -1
  %i.afs = and i64 %.sroa.20.22, %i.afr
  %i.aft = lshr i32 %i.yw, 11
  %i.afu = and i32 %i.aft, 1
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = shl nuw i64 %i.afv, %i.afn
  %i.afx = or i64 %i.afw, %i.afs
  %i.afy = or i64 %i.afx, 1                       ; 2 uses
  %i.afz = add i64 %i.afy, 2
  %i.aga = shl i64 %i.afz, %i.yl
  %i.agb = or i64 %i.aga, %i.afq
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003, %bb.bt
  %.sroa.20.12 = phi i64 [ %.sroa.20.11, %bb.bt ], [ %i.afo, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003 ] ; 2 uses
  %.sroa.62.12 = phi i32 [ %.sroa.62.11, %bb.bt ], [ %i.afp, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003 ] ; 2 uses
  %.sroa.112.12 = phi i32 [ %.sroa.112.11, %bb.bt ], [ %.sroa.112.39, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003 ] ; 2 uses
  %.sroa.95.12 = phi i32 [ %.sroa.95.11, %bb.bt ], [ %.sroa.95.22, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003 ] ; 2 uses
  %.sroa.01023.12 = phi ptr [ %.sroa.01023.11, %bb.bt ], [ %.sroa.01023.39, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003 ] ; 2 uses
  %.1825 = phi i64 [ 0, %bb.bt ], [ %i.afy, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003 ] ; 2 uses
  %.3823 = phi i64 [ 0, %bb.bt ], [ %i.agb, %_ZN4ojph5localL12frwd_fetch64ILh255EEEmPNS0_13frwd_struct64E.exit1003 ]
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %i.ym
  store i64 %.3823, ptr %i.agc, align 8, !tbaa !34
  %i.agd = getelementptr inbounds nuw i8, ptr %.08261410, i64 16
  %i.age = add i32 %.08291409, 2                  ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.08151412, i64 4
  %i.agg = icmp ult i32 %i.age, %6
  br i1 %i.agg, label %.lr.ph1415, label %.thread1205, !llvm.loop !36

.thread1205:                                      ; preds = %bb.bx, %bb.bo, %bb.bf
  %.78041221 = phi i64 [ 0, %bb.bf ], [ %.1825, %bb.bx ], [ 0, %bb.bo ]
  %.38191220 = phi ptr [ %i.b, %bb.bf ], [ %i.zd, %bb.bo ], [ %i.zd, %bb.bx ]
  %.sroa.01023.141219 = phi ptr [ %.sroa.01023.71428, %bb.bf ], [ %.sroa.01023.12, %bb.bx ], [ %.sroa.01023.10, %bb.bo ]
  %.sroa.95.141218 = phi i32 [ %.sroa.95.71427, %bb.bf ], [ %.sroa.95.12, %bb.bx ], [ %.sroa.95.10, %bb.bo ]
  %.sroa.112.141217 = phi i32 [ %.sroa.112.71426, %bb.bf ], [ %.sroa.112.12, %bb.bx ], [ %.sroa.112.10, %bb.bo ]
  %.sroa.62.141216 = phi i32 [ %.sroa.62.71425, %bb.bf ], [ %.sroa.62.12, %bb.bx ], [ %.sroa.62.10, %bb.bo ]
  %.sroa.20.141215 = phi i64 [ %.sroa.20.71424, %bb.bf ], [ %.sroa.20.12, %bb.bx ], [ %.sroa.20.10, %bb.bo ]
  store i64 %.78041221, ptr %.38191220, align 8, !tbaa !34
  %i.agh = add i32 %.08141429, 2                  ; 2 uses
  %.not1235 = icmp ult i32 %i.agh, %7
  br i1 %.not1235, label %bb.bf, label %.critedge, !llvm.loop !37

.critedge.thread:                                 ; preds = %bb.am, %.lr.ph1415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.gn

.critedge:                                        ; preds = %.thread1205, %.thread1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.agi = icmp samesign ugt i32 %.06971152, 1
  br i1 %i.agi, label %bb.by, label %bb.gn

bb.by:                                            ; preds = %.critedge
  %i.agj = add i32 %6, 3
  %i.agk = lshr i32 %i.agj, 2
  %i.agl = add nuw nsw i32 %i.agk, 9
  %i.agm = and i32 %i.agl, 2147483640             ; 5 uses
  %.not1547 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1547, label %._crit_edge1441, label %.lr.ph1440

.lr.ph1440:                                       ; preds = %bb.by
  %i.agn = zext i32 %i.ck to i64
  %i.ago = or disjoint i32 %i.ck, 2
  %i.agp = zext i32 %i.ago to i64
  %i.agq = zext i32 %7 to i64
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1440, %._crit_edge1436
  %indvars.iv1637 = phi i64 [ 0, %.lr.ph1440 ], [ %indvars.iv.next1638, %._crit_edge1436 ] ; 3 uses
  %i.agr = lshr exact i64 %indvars.iv1637, 2
  %i.ags = trunc nuw nsw i64 %i.agr to i32
  %i.agt = mul i32 %i.agm, %i.ags
  %i.agu = zext i32 %i.agt to i64
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.agu ; 2 uses
  br i1 %.not1539, label %._crit_edge1436, label %.lr.ph1435.preheader

.lr.ph1435.preheader:                             ; preds = %bb.bz
  %i.agw = lshr exact i64 %indvars.iv1637, 1
  %i.agx = trunc nuw nsw i64 %i.agw to i32
  %i.agy = mul i32 %i.ck, %i.agx
  %i.agz = zext i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.agz
  br label %.lr.ph1435

._crit_edge1436:                                  ; preds = %.lr.ph1435, %bb.bz
  %.0791.lcssa = phi ptr [ %i.agv, %bb.bz ], [ %i.ahp, %.lr.ph1435 ]
  store i16 0, ptr %.0791.lcssa, align 2, !tbaa !24
  %indvars.iv.next1638 = add nuw nsw i64 %indvars.iv1637, 4 ; 3 uses
  %i.ahb = icmp samesign ult i64 %indvars.iv.next1638, %i.agq
  br i1 %i.ahb, label %bb.bz, label %._crit_edge1441.loopexit, !llvm.loop !38

.lr.ph1435:                                       ; preds = %.lr.ph1435.preheader, %.lr.ph1435
  %.07901433 = phi i32 [ %i.ahn, %.lr.ph1435 ], [ 0, %.lr.ph1435.preheader ]
  %.07911432 = phi ptr [ %i.ahp, %.lr.ph1435 ], [ %i.agv, %.lr.ph1435.preheader ] ; 2 uses
  %.07921431 = phi ptr [ %i.aho, %.lr.ph1435 ], [ %i.aha, %.lr.ph1435.preheader ] ; 5 uses
  %i.ahc = load i16, ptr %.07921431, align 2, !tbaa !24 ; 2 uses
  %i.ahd = lshr i16 %i.ahc, 4
  %i.ahe = lshr i16 %i.ahc, 2
  %i.ahf = getelementptr inbounds nuw i8, ptr %.07921431, i64 4
  %i.ahg = load i16, ptr %i.ahf, align 2, !tbaa !24 ; 2 uses
  %i.ahh = shl i16 %i.ahg, 4
  %i.ahi = shl i16 %i.ahg, 6
  %i.ahj = getelementptr inbounds nuw [2 x i8], ptr %.07921431, i64 %i.agn
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !24 ; 2 uses
  %i.ahl = lshr i16 %i.ahk, 2
  %12 = getelementptr inbounds nuw [2 x i8], ptr %.07921431, i64 %i.agp
  %13 = load i16, ptr %12, align 2, !tbaa !24     ; 2 uses
  %14 = shl i16 %13, 6
  %i.ahm = shl i16 %13, 8
  %15 = insertelement <8 x i16> poison, i16 %i.ahd, i64 0
  %16 = insertelement <8 x i16> %15, i16 %i.ahe, i64 1
  %17 = insertelement <8 x i16> %16, i16 %i.ahi, i64 2
  %18 = insertelement <8 x i16> %17, i16 %i.ahh, i64 3
  %19 = insertelement <8 x i16> %18, i16 %i.ahk, i64 4
  %20 = insertelement <8 x i16> %19, i16 %i.ahl, i64 5
  %21 = insertelement <8 x i16> %20, i16 %i.ahm, i64 6
  %22 = insertelement <8 x i16> %21, i16 %14, i64 7
  %23 = and <8 x i16> %22, <i16 3, i16 48, i16 12288, i16 768, i16 192, i16 12, i16 -16384, i16 3072>
  %24 = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %23)
  store i16 %24, ptr %.07911432, align 2, !tbaa !24
  %i.ahn = add nuw i32 %.07901433, 4              ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.07921431, i64 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %.07911432, i64 2 ; 2 uses
  %i.ahq = icmp ult i32 %i.ahn, %6
  br i1 %i.ahq, label %.lr.ph1435, label %._crit_edge1436, !llvm.loop !39

._crit_edge1441.loopexit:                         ; preds = %._crit_edge1436
  %i.ahr = trunc nuw i64 %indvars.iv.next1638 to i32
  %i.ahs = lshr exact i32 %i.ahr, 2
  %i.aht = mul i32 %i.ahs, %i.agm
  %i.ahu = zext i32 %i.aht to i64
  br label %._crit_edge1441

._crit_edge1441:                                  ; preds = %._crit_edge1441.loopexit, %bb.by
  %.0793.lcssa = phi i64 [ 0, %bb.by ], [ %i.ahu, %._crit_edge1441.loopexit ] ; 2 uses
  %i.ahv = getelementptr [2 x i8], ptr %i.a, i64 %.0793.lcssa ; 2 uses
  br i1 %.not1539, label %._crit_edge1447, label %.lr.ph1446.preheader

.lr.ph1446.preheader:                             ; preds = %._crit_edge1441
  %i.ahw = add i32 %6, -1
  %i.ahx = lshr i32 %i.ahw, 1
  %i.ahy = and i32 %i.ahx, 2147483646
  %i.ahz = zext nneg i32 %i.ahy to i64            ; 2 uses
  %i.aia = add nuw nsw i64 %i.ahz, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ahv, i8 0, i64 %i.aia, i1 false), !tbaa !24
  %i.aib = shl nuw nsw i64 %.0793.lcssa, 1
  %i.aic = getelementptr i8, ptr %i.a, i64 %i.aib
  %i.aid = getelementptr i8, ptr %i.aic, i64 %i.ahz
  %scevgep = getelementptr i8, ptr %i.aid, i64 2
  br label %._crit_edge1447

._crit_edge1447:                                  ; preds = %.lr.ph1446.preheader, %._crit_edge1441
  %.0784.lcssa = phi ptr [ %i.ahv, %._crit_edge1441 ], [ %scevgep, %.lr.ph1446.preheader ]
  store i16 0, ptr %.0784.lcssa, align 2, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.c, i8 0, i64 528, i1 false)
  %i.aie = ptrtoint ptr %i.ai to i64
  %i.aif = trunc i64 %i.aie to i32
  %i.aig = and i32 %i.aif, 3                      ; 5 uses
  %i.aih = icmp sgt i32 %5, 0
  br i1 %i.aih, label %bb.cd, label %bb.ce

bb.ca:                                            ; preds = %bb.cn, %bb.ck, %bb.ch, %bb.ce
  %.lcssa1874 = phi ptr [ %i.ajo, %bb.ce ], [ %i.ajv, %bb.ch ], [ %i.akf, %bb.ck ], [ %i.akq, %bb.cn ] ; 6 uses
  %.lcssa1873 = phi i64 [ %i.ajp, %bb.ce ], [ %i.ajy, %bb.ch ], [ %i.akj, %bb.ck ], [ %i.aku, %bb.cn ]
  %.lcssa1872 = phi i32 [ 8, %bb.ce ], [ %i.ajz, %bb.ch ], [ %i.akk, %bb.ck ], [ %i.akv, %bb.cn ] ; 2 uses
  %.lcssa1871 = phi i1 [ %i.ajq, %bb.ce ], [ %i.aka, %bb.ch ], [ %i.akl, %bb.ck ], [ %i.akw, %bb.cn ]
  %i.aii = add i32 %5, %i.aig                     ; 6 uses
  %i.aij = add i32 %i.aii, -3                     ; 2 uses
  %i.aik = icmp sgt i32 %i.aij, 4
  br i1 %i.aik, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ail = load i32, ptr %.lcssa1874, align 4, !tbaa !40
  %i.aim = getelementptr inbounds nuw i8, ptr %.lcssa1874, i64 4
  %i.ain = add i32 %i.aii, -8
  br label %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit

bb.cc:                                            ; preds = %bb.ca
  %i.aio = add i32 %i.aii, -4                     ; 2 uses
  %i.aip = icmp sgt i32 %i.aij, 1
  br i1 %i.aip, label %.preheader.i.i.preheader, label %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit

.preheader.i.i.preheader:                         ; preds = %bb.cc
  %i.aiq = add i32 %5, %i.aig
  %xtraiter1929 = and i32 %i.aii, 1
  %i.air = icmp eq i32 %i.aiq, 5
  br i1 %i.air, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter1936 = and i32 %i.aio, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.ais = phi ptr [ %.lcssa1874, %.preheader.i.i.preheader.new ], [ %i.ajc, %.preheader.i.i ] ; 3 uses
  %.043.i.i = phi i32 [ 0, %.preheader.i.i.preheader.new ], [ %i.ajj, %.preheader.i.i ]
  %.04042.i.i = phi i32 [ 0, %.preheader.i.i.preheader.new ], [ %i.ajk, %.preheader.i.i ] ; 5 uses
  %niter1937 = phi i32 [ 0, %.preheader.i.i.preheader.new ], [ %niter1937.next.1, %.preheader.i.i ]
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 1
  %i.aiu = load i8, ptr %i.ais, align 1, !tbaa !10
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = shl i32 255, %.04042.i.i
  %i.aix = xor i32 %i.aiw, -1
  %i.aiy = and i32 %.043.i.i, %i.aix
  %i.aiz = shl i32 %i.aiv, %.04042.i.i
  %i.aja = or i32 %i.aiz, %i.aiy
  %i.ajb = or disjoint i32 %.04042.i.i, 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ais, i64 2 ; 2 uses
  %i.ajd = load i8, ptr %i.ait, align 1, !tbaa !10
  %i.aje = zext i8 %i.ajd to i32
  %i.ajf = shl i32 65280, %.04042.i.i
  %i.ajg = xor i32 %i.ajf, -1
  %i.ajh = and i32 %i.aja, %i.ajg
  %i.aji = shl i32 %i.aje, %i.ajb
  %i.ajj = or i32 %i.aji, %i.ajh                  ; 3 uses
  %i.ajk = add nuw nsw i32 %.04042.i.i, 16        ; 2 uses
  %niter1937.next.1 = add i32 %niter1937, 2       ; 2 uses
  %niter1937.ncmp.1.not = icmp eq i32 %niter1937.next.1, %unroll_iter1936
  br i1 %niter1937.ncmp.1.not, label %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa, label %.preheader.i.i, !llvm.loop !41

bb.cd:                                            ; preds = %._crit_edge1447
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ajm = load i8, ptr %i.ai, align 1, !tbaa !10
  %i.ajn = zext i8 %i.ajm to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge1447
  %i.ajo = phi ptr [ %i.ajl, %bb.cd ], [ %i.ai, %._crit_edge1447 ] ; 4 uses
  %i.ajp = phi i64 [ %i.ajn, %bb.cd ], [ 0, %._crit_edge1447 ] ; 3 uses
  %i.ajq = icmp eq i64 %i.ajp, 255                ; 2 uses
  %exitcond.not.i1004 = icmp eq i32 %i.aig, 3
  br i1 %exitcond.not.i1004, label %bb.ca, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ajr = icmp sgt i32 %5, 1
  br i1 %i.ajr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajo, i64 1
  %i.ajt = load i8, ptr %i.ajo, align 1, !tbaa !10
  %i.aju = zext i8 %i.ajt to i64
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ajv = phi ptr [ %i.ajs, %bb.cg ], [ %i.ajo, %bb.cf ] ; 4 uses
  %i.ajw = phi i64 [ %i.aju, %bb.cg ], [ 0, %bb.cf ] ; 2 uses
  %i.ajx = shl nuw nsw i64 %i.ajw, 8
  %i.ajy = or disjoint i64 %i.ajx, %i.ajp         ; 2 uses
  %i.ajz = select i1 %i.ajq, i32 15, i32 16       ; 3 uses
  %i.aka = icmp eq i64 %i.ajw, 255                ; 2 uses
  %.neg = sext i1 %i.aka to i32
  %exitcond.not.i1004.1 = icmp eq i32 %i.aig, 2
  br i1 %exitcond.not.i1004.1, label %bb.ca, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.akb = icmp sgt i32 %5, 2
  br i1 %i.akb, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajv, i64 1
  %i.akd = load i8, ptr %i.ajv, align 1, !tbaa !10
  %i.ake = zext i8 %i.akd to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.akf = phi ptr [ %i.akc, %bb.cj ], [ %i.ajv, %bb.ci ] ; 4 uses
  %i.akg = phi i64 [ %i.ake, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %i.akh = zext nneg i32 %i.ajz to i64
  %i.aki = shl nuw nsw i64 %i.akg, %i.akh
  %i.akj = or i64 %i.aki, %i.ajy                  ; 2 uses
  %reass.sub.i.2 = add nuw nsw i32 %i.ajz, 8
  %i.akk = add nsw i32 %reass.sub.i.2, %.neg      ; 3 uses
  %i.akl = icmp eq i64 %i.akg, 255                ; 2 uses
  %.neg1984 = sext i1 %i.akl to i32
  %exitcond.not.i1004.2 = icmp eq i32 %i.aig, 1
  br i1 %exitcond.not.i1004.2, label %bb.ca, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.akm = icmp sgt i32 %5, 3
  br i1 %i.akm, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akf, i64 1
  %i.ako = load i8, ptr %i.akf, align 1, !tbaa !10
  %i.akp = zext i8 %i.ako to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.akq = phi ptr [ %i.akn, %bb.cm ], [ %i.akf, %bb.cl ]
  %i.akr = phi i64 [ %i.akp, %bb.cm ], [ 0, %bb.cl ] ; 2 uses
  %i.aks = zext nneg i32 %i.akk to i64
  %i.akt = shl i64 %i.akr, %i.aks
  %i.aku = or i64 %i.akt, %i.akj
  %reass.sub.i.3 = add nsw i32 %i.akk, 8
  %i.akv = add nsw i32 %reass.sub.i.3, %.neg1984
  %i.akw = icmp eq i64 %i.akr, 255
  br label %bb.ca

_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod1933.not = icmp eq i32 %xtraiter1929, 0
  br i1 %lcmp.mod1933.not, label %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi ptr [ %.lcssa1874, %.preheader.i.i.preheader ], [ %i.ajc, %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa ]
  %.043.i.i.epil.init = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.ajj, %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa ]
  %.04042.i.i.epil.init = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.ajk, %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1935 = trunc i32 %i.aii to i1
  tail call void @llvm.assume(i1 %lcmp.mod1935)
  %i.akx = load i8, ptr %.epil.init, align 1, !tbaa !10
  %i.aky = zext i8 %i.akx to i32
  %i.akz = shl i32 255, %.04042.i.i.epil.init
  %i.ala = xor i32 %i.akz, -1
  %i.alb = and i32 %.043.i.i.epil.init, %i.ala
  %i.alc = shl i32 %i.aky, %.04042.i.i.epil.init
  %i.ald = or i32 %i.alc, %i.alb
  br label %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit

_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit: ; preds = %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa, %.preheader.i.i.epil.preheader
  %.lcssa1870 = phi i32 [ %i.ajj, %_ZN4ojph5localL9frwd_initILi0EEEvPNS0_13frwd_struct64EPKhi.exit.loopexit.unr-lcssa ], [ %i.ald, %.preheader.i.i.epil.preheader ]
  %i.ale = sext i32 %i.aii to i64
end_hunk_0
begin_hunk_1_@_ZN4ojph5localL12rev_init_mrpEPNS0_10rev_structEPhii:bb.a
  %i.u = icmp sgt i32 %.lcssa43, 1
  br i1 %i.u, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.v = phi ptr [ %i.x, %.preheader.i ], [ %.lcssa47, %bb.e ] ; 2 uses
  %.047.i = phi i32 [ %i.ab, %.preheader.i ], [ 0, %bb.e ]
  %.04446.i = phi i32 [ %i.ad, %.preheader.i ], [ 24, %bb.e ] ; 2 uses
  %i.w = phi i32 [ %i.ac, %.preheader.i ], [ %.lcssa42, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !58
  %i.y = load i8, ptr %i.v, align 1, !tbaa !10
  %i.z = zext i8 %i.y to i32
  %i.aa = shl i32 %i.z, %.04446.i
  %i.ab = or i32 %i.aa, %.047.i                   ; 2 uses
  %i.ac = add nsw i32 %i.w, -1                    ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !45
  %i.ad = add nsw i32 %.04446.i, -8
  %i.ae = icmp samesign ugt i32 %i.w, 1
  br i1 %i.ae, label %.preheader.i, label %.loopexit.i, !llvm.loop !44

.loopexit.i:                                      ; preds = %.preheader.i, %bb.e, %bb.d
  %.1.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.e ], [ %i.ab, %.preheader.i ] ; 9 uses
  %i.af = lshr i32 %.1.i, 24
  %i.ag = and i32 %.1.i, 2130706432
  %i.ah = icmp eq i32 %i.ag, 2130706432
  %i.ai = select i1 %.lcssa44, i1 %i.ah, i1 false
  %i.aj = select i1 %i.ai, i32 7, i32 8           ; 2 uses
  %i.ak = icmp ugt i32 %.1.i, -1879048193
  %i.al = lshr i32 %.1.i, 16
  %i.am = and i32 %i.al, 255                      ; 2 uses
  %i.an = shl nuw nsw i32 %i.am, %i.aj
  %i.ao = or i32 %i.an, %i.af
  %i.ap = and i32 %.1.i, 8323072
  %i.aq = icmp eq i32 %i.ap, 8323072
  %i.ar = and i1 %i.ak, %i.aq
  %i.as = select i1 %i.ar, i32 7, i32 8
  %i.at = add nuw nsw i32 %i.aj, %i.as            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.am, 143
  %i.av = lshr i32 %.1.i, 8
  %i.aw = and i32 %i.av, 255                      ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, %i.at
  %i.ay = or i32 %i.ao, %i.ax
  %i.az = and i32 %.1.i, 32512
  %i.ba = icmp eq i32 %i.az, 32512
  %i.bb = select i1 %i.au, i1 %i.ba, i1 false
  %i.bc = select i1 %i.bb, i32 7, i32 8
  %i.bd = add nuw nsw i32 %i.at, %i.bc            ; 2 uses
  %i.be = icmp samesign ugt i32 %i.aw, 143
  %i.bf = and i32 %.1.i, 255                      ; 2 uses
  %i.bg = shl nuw i32 %i.bf, %i.bd
  %i.bh = or i32 %i.ay, %i.bg
  %i.bi = and i32 %.1.i, 127
  %i.bj = icmp eq i32 %i.bi, 127
  %i.bk = select i1 %i.be, i1 %i.bj, i1 false
  %i.bl = select i1 %i.bk, i32 7, i32 8
  %i.bm = icmp samesign ugt i32 %i.bf, 143
  %i.bn = zext i1 %i.bm to i8
  %i.bo = zext i32 %i.bh to i64
  %i.bp = zext nneg i32 %.lcssa45 to i64
  %i.bq = shl nuw i64 %i.bo, %i.bp
  %i.br = or i64 %i.bq, %.lcssa46
  store i64 %i.br, ptr %i.i, align 8, !tbaa !47
  %i.bs = add nuw nsw i32 %i.bl, %.lcssa45
  %i.bt = add nuw nsw i32 %i.bs, %i.bd
  store i32 %i.bt, ptr %i.h, align 8, !tbaa !48
  store i8 %i.bn, ptr %i.g, align 8, !tbaa !49
  br label %_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit

_ZN4ojph5localL12rev_read_mrpEPNS0_10rev_structE.exit: ; preds = %bb.b, %.loopexit.i
  ret void

bb.f:                                             ; preds = %bb.a
  %i.bu = getelementptr i8, ptr %i.d, i64 -2      ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !tbaa !58
  %i.bv = load i8, ptr %i.e, align 1, !tbaa !10
  %i.bw = zext i8 %i.bv to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.bx = phi ptr [ %i.bu, %bb.f ], [ %i.e, %bb.a ] ; 4 uses
  %i.by = phi i64 [ %i.bw, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.bz = and i64 %i.by, 127
  %i.ca = icmp eq i64 %i.bz, 127
  %i.cb = select i1 %i.ca, i32 7, i32 8           ; 4 uses
  store i64 %i.by, ptr %i.i, align 8, !tbaa !47
  store i32 %i.cb, ptr %i.h, align 8, !tbaa !48
  %i.cc = icmp samesign ugt i64 %i.by, 143        ; 3 uses
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.g, align 8, !tbaa !49
  %exitcond.not = icmp eq i32 %i.l, 0
  br i1 %exitcond.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = add nsw i32 %3, -2                      ; 3 uses
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !45
  %i.cf = icmp sgt i32 %3, 1
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds i8, ptr %i.bx, i64 -1 ; 2 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !58
  %i.ch = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.ci = zext i8 %i.ch to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cj = phi ptr [ %i.cg, %bb.i ], [ %i.bx, %bb.h ] ; 4 uses
  %i.ck = phi i64 [ %i.ci, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %i.cl = and i64 %i.ck, 127
  %i.cm = icmp eq i64 %i.cl, 127
  %i.cn = select i1 %i.cc, i1 %i.cm, i1 false
  %i.co = select i1 %i.cn, i32 7, i32 8
  %i.cp = zext nneg i32 %i.cb to i64
  %i.cq = shl nuw nsw i64 %i.ck, %i.cp
  %i.cr = or i64 %i.cq, %i.by                     ; 3 uses
  store i64 %i.cr, ptr %i.i, align 8, !tbaa !47
  %i.cs = add nuw nsw i32 %i.co, %i.cb            ; 4 uses
  store i32 %i.cs, ptr %i.h, align 8, !tbaa !48
  %i.ct = icmp samesign ugt i64 %i.ck, 143        ; 3 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.g, align 8, !tbaa !49
  %exitcond.not.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.1, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = add nsw i32 %3, -3                      ; 3 uses
  store i32 %i.cv, ptr %i.f, align 4, !tbaa !45
  %i.cw = icmp sgt i32 %3, 2
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds i8, ptr %i.cj, i64 -1 ; 2 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !58
  %i.cy = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cz = zext i8 %i.cy to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.da = phi ptr [ %i.cx, %bb.l ], [ %i.cj, %bb.k ] ; 4 uses
  %i.db = phi i64 [ %i.cz, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %i.dc = and i64 %i.db, 127
  %i.dd = icmp eq i64 %i.dc, 127
  %i.de = select i1 %i.ct, i1 %i.dd, i1 false
  %i.df = select i1 %i.de, i32 7, i32 8
  %i.dg = zext nneg i32 %i.cs to i64
  %i.dh = shl nuw nsw i64 %i.db, %i.dg
  %i.di = or i64 %i.dh, %i.cr                     ; 3 uses
  store i64 %i.di, ptr %i.i, align 8, !tbaa !47
  %i.dj = add nuw nsw i32 %i.df, %i.cs            ; 4 uses
  store i32 %i.dj, ptr %i.h, align 8, !tbaa !48
  %i.dk = icmp samesign ugt i64 %i.db, 143        ; 3 uses
  %i.dl = zext i1 %i.dk to i8
  store i8 %i.dl, ptr %i.g, align 8, !tbaa !49
  %exitcond.not.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.2, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = add nsw i32 %3, -4                      ; 2 uses
  store i32 %i.dm, ptr %i.f, align 4, !tbaa !45
  %i.dn = icmp sgt i32 %3, 3
  br i1 %i.dn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds i8, ptr %i.da, i64 -1 ; 2 uses
  store ptr %i.do, ptr %0, align 8, !tbaa !58
  %i.dp = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dr = phi ptr [ %i.do, %bb.o ], [ %i.da, %bb.n ]
  %i.ds = phi i64 [ %i.dq, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.dt = and i64 %i.ds, 127
  %i.du = icmp eq i64 %i.dt, 127
  %i.dv = select i1 %i.dk, i1 %i.du, i1 false
  %i.dw = select i1 %i.dv, i32 7, i32 8
  %i.dx = zext nneg i32 %i.dj to i64
  %i.dy = shl i64 %i.ds, %i.dx
  %i.dz = or i64 %i.dy, %i.di                     ; 2 uses
  store i64 %i.dz, ptr %i.i, align 8, !tbaa !47
  %i.ea = add nuw nsw i32 %i.dw, %i.dj            ; 2 uses
  store i32 %i.ea, ptr %i.h, align 8, !tbaa !48
  %i.eb = icmp samesign ugt i64 %i.ds, 143        ; 2 uses
  %i.ec = zext i1 %i.eb to i8
  store i8 %i.ec, ptr %i.g, align 8, !tbaa !49
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !5, i64 28}
!12 = !{!"_ZTSN4ojph5local10dec_mel_stE", !13, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !16, i64 24, !5, i64 28, !5, i64 32, !15, i64 40}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!12, !5, i64 32}
!18 = !{!12, !15, i64 40}
!19 = !{!12, !5, i64 20}
!20 = !{!12, !13, i64 0}
!21 = !{!12, !5, i64 16}
!22 = !{!12, !16, i64 24}
!23 = !{!12, !15, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !27}
!34 = !{!15, !15, i64 0}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = !{!5, !5, i64 0}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{!46, !5, i64 20}
!46 = !{!"_ZTSN4ojph5local10rev_structE", !13, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !16, i64 24}
!47 = !{!46, !15, i64 8}
!48 = !{!46, !5, i64 16}
!49 = !{!46, !16, i64 24}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!46, !13, i64 0}
end_hunk_1
