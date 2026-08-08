inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %spec.select259 = select i1 %.not72.not.not, i32 0, i32 %..264.lcssa
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge, %.thread233
  %i.cgi = phi i32 [ %spec.select259, %._crit_edge ], [ -1, %.thread233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit: ; preds = %.thread104, %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, %.fold.split.i, %bb.k, %bb.j, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread, %bb.dr, %bb.eg, %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit
  %.5 = phi i32 [ 0, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit ], [ 0, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83 ], [ %i.cgi, %bb.eg ], [ %i.cen, %bb.dr ], [ %.pr, %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit ], [ 0, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread ], [ 1, %bb.j ], [ %i.aw, %bb.k ], [ 101, %.fold.split.i ], [ 0, %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread ], [ 1, %.thread104 ]
  ret i32 %.5
}

declare void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9Stockfish10Tablebases10root_probeERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS5_EEbbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %6 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 1, ptr %i.a, align 4, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !345  ; 3 uses
  %i.f = tail call noundef zeroext i1 @_ZNK9Stockfish8Position12has_repeatedEv(ptr noundef nonnull align 8 dereferenceable(1048) %0) #26
  %.neg = select i1 %2, i32 -130972, i32 -1
  %i.g = select i1 %2, i32 130972, i32 1
  %i.h = load ptr, ptr %1, align 8, !tbaa !346    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !346  ; 2 uses
  %.not9295 = icmp eq ptr %i.h, %i.j
  br i1 %.not9295, label %.critedge71, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = add i32 %i.e, -131072
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.082.096 = phi ptr [ %i.h, %.lr.ph ], [ %i.by, %bb.y ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !348
  %.sroa.014.0.copyload = load i16, ptr %i.r, align 2, !tbaa !239 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !243
  %i.s = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.014.0.copyload) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.014.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %5, i1 noundef zeroext %i.s, ptr noundef nonnull align 1 dereferenceable(7) %i.m, ptr noundef nonnull align 8 dereferenceable(416) %i.k, ptr noundef null, ptr noundef null) #26
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !245
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !345
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 4, !tbaa !234
  %i.x = call fastcc noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %i.a) ; 3 uses
  switch i32 %i.x, label %bb.d [
    i32 -2, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread
    i32 -1, label %.fold.split.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %i.x, 1
  %i.z = icmp eq i32 %i.x, 2
  %i.aa = sext i1 %i.z to i32
  %i.ab = select i1 %i.y, i32 -101, i32 %i.aa
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread

.fold.split.i:                                    ; preds = %bb.c
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread

bb.e:                                             ; preds = %bb.b
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 1) #26
  br i1 %i.ac, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = call noundef zeroext i1 @_ZNK9Stockfish8Position13is_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 1) #26
  br i1 %i.ad, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread: ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %.fold.split.i
  %.061.ph = phi i32 [ 101, %.fold.split.i ], [ %i.ab, %bb.d ], [ 1, %bb.c ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  br label %.critedge

_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit: ; preds = %bb.g
  %i.ae = call noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %i.a) ; 4 uses
  %i.af = icmp slt i32 %i.ae, 0
  %i.ag = sub i32 1, %i.ae
  %.not = icmp eq i32 %i.ae, 0
  %i.ah = xor i32 %i.ae, -1
  %i.ai = select i1 %.not, i32 0, i32 %i.ah
  %i.aj = select i1 %i.af, i32 %i.ag, i32 %i.ai   ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !245
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !344
  %i.an = icmp ne i64 %i.am, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ao = icmp eq i32 %i.aj, 2
  %or.cond = and i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit
  %i.ap = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %6) #26
  %i.aq = icmp eq ptr %i.ap, %6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %spec.select = select i1 %i.aq, i32 1, i32 2
  br label %bb.i

.critedge:                                        ; preds = %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit
  %.06187 = phi i32 [ %.061.ph, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit.thread ], [ %i.aj, %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %.162 = phi i32 [ %.06187, %.critedge ], [ %spec.select, %bb.h ] ; 7 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !348
  %.sroa.0.0.copyload = load i16, ptr %i.ar, align 2, !tbaa !239
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.0.0.copyload) #26
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !350
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt8functionIFbvEEclEv.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #31
  unreachable

_ZNKSt8functionIFbvEEclEv.exit:                   ; preds = %bb.i
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !352
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %4) #26, !inline_history !354
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = icmp eq i32 %i.av, 0
  %or.cond4 = select i1 %i.au, i1 true, i1 %i.aw  ; 2 uses
  br i1 %or.cond4, label %.critedge71.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit
  %i.ax = icmp sgt i32 %.162, 0
  br i1 %i.ax, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %.162, %i.e                 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 99
  %or.cond6 = or i1 %i.f, %i.az
  br i1 %or.cond6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = sub nsw i32 262144, %.162
  %i.bb = select i1 %3, i32 %i.ba, i32 262144
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bc = sub nsw i32 131072, %i.ay
  br label %bb.s

bb.o:                                             ; preds = %bb.k
  %i.bd = icmp slt i32 %.162, 0
  br i1 %i.bd, label %bb.p, label %.thread90

.thread90:                                        ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 36
  store i32 0, ptr %i.be, align 4, !tbaa !355
  br label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bf = shl i32 %.162, 1
  %i.bg = sub i32 %i.e, %i.bf
  %i.bh = icmp slt i32 %i.bg, 100
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = sub nsw i32 -262144, %.162
  %i.bj = select i1 %3, i32 %i.bi, i32 -262144
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bk = sub i32 %i.p, %.162
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m, %bb.n
  %i.bl = phi i32 [ %i.bc, %bb.n ], [ %i.bb, %bb.m ], [ %i.bk, %bb.r ], [ %i.bj, %bb.q ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 36
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !355
  %.not69 = icmp slt i32 %i.bl, %i.g
  br i1 %.not69, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp sgt i32 %i.bl, 0
  br i1 %i.bn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bo = call i32 @llvm.umax.i32(i32 %i.bl, i32 130875)
  %i.bp = mul nuw nsw i32 %i.bo, 208
  %i.bq = add nsw i32 %i.bp, -27221376
  %i.br = udiv i32 %i.bq, 200
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bs = icmp eq i32 %i.bl, 0
  br i1 %i.bs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp sgt i32 %i.bl, %.neg
  br i1 %i.bt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = call i32 @llvm.umin.i32(i32 %i.bl, i32 -130875)
  %.neg93 = mul nsw i32 %i.bu, -208
  %.nonneg = add nsw i32 %.neg93, -27221376
  %i.bv = udiv i32 %.nonneg, 200
  %.neg91 = sub nsw i32 0, %i.bv
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.v, %bb.w, %bb.x, %bb.u, %.thread90
  %i.bw = phi i32 [ 31753, %bb.s ], [ %i.br, %bb.u ], [ 0, %bb.v ], [ %.neg91, %bb.x ], [ -31753, %bb.w ], [ 0, %.thread90 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 40
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !360
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 72 ; 2 uses
  %.not92 = icmp eq ptr %i.by, %i.j
  br i1 %.not92, label %.critedge71.loopexit, label %bb.b

.critedge71.loopexit:                             ; preds = %bb.y, %_ZNKSt8functionIFbvEEclEv.exit
  %.not92.lcssa.ph = xor i1 %or.cond4, true
  br label %.critedge71

.critedge71:                                      ; preds = %.critedge71.loopexit, %bb.a
  %.not92.lcssa = phi i1 [ true, %bb.a ], [ %.not92.lcssa.ph, %.critedge71.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %.not92.lcssa
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position12has_repeatedEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK9Stockfish8Position13is_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9Stockfish10Tablebases14root_probe_wdlERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS5_EEb(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %3 = alloca %"struct.Stockfish::StateInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !346    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !346  ; 3 uses
  %.not2829 = icmp eq ptr %i.b, %i.d
  br i1 %.not2829, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %i.h = phi i32 [ %i.p, %bb.d ], [ 1, %.lr.ph ]
  %.sroa.025.030.us = phi ptr [ %i.z, %bb.d ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.030.us, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !348
  %.sroa.02.0.copyload.us = load i16, ptr %i.j, align 2, !tbaa !239 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !243
  %i.k = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.02.0.copyload.us) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.02.0.copyload.us, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %i.k, ptr noundef nonnull align 1 dereferenceable(7) %i.g, ptr noundef nonnull align 8 dereferenceable(416) %i.e, ptr noundef null, ptr noundef null) #26
  %i.l = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 1) #26
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  store i32 1, ptr %i.a, align 4, !tbaa !234
  %i.m = call fastcc noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %i.a)
  %i.n = sub nsw i32 0, %i.m
  %i.o = sext i32 %i.n to i64
  %.pre37 = load i32, ptr %i.a, align 4, !tbaa !234
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.p = phi i32 [ %.pre37, %bb.b ], [ %i.h, %.lr.ph.split.us ] ; 2 uses
  %.020.us = phi i64 [ %i.o, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !348
  %.sroa.0.0.copyload.us = load i16, ptr %i.q, align 2, !tbaa !239
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.0.0.copyload.us) #26
  %.not.us.not.not = icmp ne i32 %i.p, 0          ; 3 uses
  br i1 %.not.us.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr [4 x i8], ptr @_ZZN9Stockfish10Tablebases14root_probe_wdlERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS5_EEbE11WDL_to_rank, i64 %.020.us
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.025.030.us, i64 36
  store i32 %i.t, ptr %i.u, align 4, !tbaa !355
  %i.v = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_112WDL_to_valueE, i64 %.020.us
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.030.us, i64 40
  store i32 %i.x, ptr %i.y, align 8, !tbaa !360
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.025.030.us, i64 72 ; 2 uses
  %.not28.us = icmp eq ptr %i.z, %i.d
  br i1 %.not28.us, label %.critedge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %i.aa = phi i32 [ %i.ah, %bb.g ], [ 1, %.lr.ph ]
  %.sroa.025.030 = phi ptr [ %i.aw, %bb.g ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !348
  %.sroa.02.0.copyload = load i16, ptr %i.ac, align 2, !tbaa !239 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !243
  %i.ad = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.02.0.copyload) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %i.ad, ptr noundef nonnull align 1 dereferenceable(7) %i.g, ptr noundef nonnull align 8 dereferenceable(416) %i.e, ptr noundef null, ptr noundef null) #26
  %i.ae = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 1) #26
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  store i32 1, ptr %i.a, align 4, !tbaa !234
  %i.af = call fastcc noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %i.a)
  %i.ag = sub nsw i32 0, %i.af
  %.pre = load i32, ptr %i.a, align 4, !tbaa !234
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %i.ah = phi i32 [ %.pre, %bb.e ], [ %i.aa, %.lr.ph.split ] ; 2 uses
  %.020 = phi i32 [ %i.ag, %bb.e ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !348
  %.sroa.0.0.copyload = load i16, ptr %i.ai, align 2, !tbaa !239
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.0.0.copyload) #26
  %.not.not.not = icmp ne i32 %i.ah, 0            ; 3 uses
  br i1 %.not.not.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aj = sext i32 %.020 to i64
  %i.ak = getelementptr [4 x i8], ptr @_ZZN9Stockfish10Tablebases14root_probe_wdlERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS5_EEbE11WDL_to_rank, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 36
  store i32 %i.am, ptr %i.an, align 4, !tbaa !355
  %i.ao = icmp sgt i32 %.020, 0
  %i.ap = icmp slt i32 %.020, 0
  %i.aq = select i1 %i.ap, i64 -2, i64 0
  %i.ar = select i1 %i.ao, i64 2, i64 %i.aq
  %i.as = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_112WDL_to_valueE, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 40
  store i32 %i.au, ptr %i.av, align 8, !tbaa !360
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 72 ; 2 uses
  %.not28 = icmp eq ptr %i.aw, %i.d
  br i1 %.not28, label %.critedge, label %.lr.ph.split

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %bb.a
  %.not28.lcssa = phi i1 [ true, %bb.a ], [ %.not.us.not.not, %bb.c ], [ %.not.us.not.not, %bb.d ], [ %.not.not.not, %bb.g ], [ %.not.not.not, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %.not28.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !346
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !346
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %.loopexit.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 16, ptr %i.e, align 8, !tbaa !17
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #26 ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !175
  %i.l = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !90
  %i.n = load ptr, ptr %5, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.p = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  %i.q = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.p) #26
  %.not123 = icmp eq i32 %i.q, 0                  ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !175    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.t = load i64, ptr %i.j, align 8, !tbaa !156
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !171
end_hunk_0
