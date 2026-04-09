inline.NumInlined: 6127
inline.NumDeleted: 2467
begin_hunk_0_@_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted = load i64, ptr %i.c, align 8, !tbaa !191 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.b)
  %i.f = icmp ult i64 %.promoted, %i.b
  br i1 %i.f, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.j, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.4.015 = phi i8 [ %i.r, %bb.b ], [ 0, %bb.a ]
  %i.g = phi i64 [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.h = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.j = add i64 %i.g, 1                          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.l = load i8, ptr %i.k, align 1, !tbaa !62
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !267, !nonnull !146, !align !213
end_hunk_0
begin_hunk_1_@_ZNK6duckdb18StringValueScanner6TryRowENS_8CSVStateEmm:bb.a

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !55 ; 4 uses
  %.sroa.7.0.copyload = load i64, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !266
end_hunk_1
begin_hunk_2_@_ZNK6duckdb18StringValueScanner6TryRowENS_8CSVStateEmm:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.511.0.copyload, i64 %.sroa.7.0.copyload)
  %i.m = icmp ult i64 %.sroa.511.0.copyload, %.sroa.7.0.copyload
  br i1 %i.m, label %.lr.ph, label %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit

bb.e:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.q, %umax.i
  br i1 %exitcond.not.i, label %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.4.0.i23 = phi i8 [ %i.y, %bb.e ], [ 0, %bb.d ]
  %i.n = phi i64 [ %i.q, %bb.e ], [ %.sroa.511.0.copyload, %bb.d ] ; 2 uses
  %i.o = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %i.q = add i64 %i.n, 1                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.s = load i8, ptr %i.r, align 1, !tbaa !62
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !267, !nonnull !146, !align !213
end_hunk_2
begin_hunk_3_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_hh:bb.a
  %i.et = phi i16 [ %i.eu, %.lr.ph.i.i.i ], [ %.ph592, %.lr.ph.i.i.i.preheader ]
  %i.eu = mul i16 %i.et, 10                       ; 2 uses
  %i.ev = add nuw i8 %.029.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.ev, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1293

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa432 = phi i16 [ %i.es, %vec.epilog.middle.block ], [ %i.en, %middle.block ], [ %i.eu, %.lr.ph.i.i.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_hh:bb.a
  %i.kn = phi i16 [ %i.ko, %.lr.ph.i.i88.i ], [ %.ph530, %.lr.ph.i.i88.i.preheader ]
  %i.ko = mul i16 %i.kn, 10                       ; 2 uses
  %i.kp = add nuw i8 %.029.i.i89.i, 1             ; 2 uses
  %exitcond.not.i.i92.i = icmp eq i8 %i.kp, %4
  br i1 %exitcond.not.i.i92.i, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i, !llvm.loop !1301

._crit_edge.i.i90.i:                              ; preds = %.lr.ph.i.i88.i, %vec.epilog.middle.block522, %middle.block505
  %.lcssa = phi i16 [ %i.km, %vec.epilog.middle.block522 ], [ %i.kh, %middle.block505 ], [ %i.ko, %.lr.ph.i.i88.i ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_hh:bb.a
  %i.eo = phi i32 [ %i.ep, %.lr.ph.i.i.i ], [ %.ph566, %.lr.ph.i.i.i.preheader565 ]
  %i.ep = mul nsw i32 %i.eo, 10                   ; 2 uses
  %i.eq = add nuw i8 %.029.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eq, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1314

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa432 = phi i32 [ %i.en, %middle.block ], [ %i.ep, %.lr.ph.i.i.i ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_hh:bb.a
  %i.kb = phi i32 [ %i.kc, %.lr.ph.i.i88.i ], [ %.ph504, %.lr.ph.i.i88.i.preheader503 ]
  %i.kc = mul nsw i32 %i.kb, 10                   ; 2 uses
  %i.kd = add nuw i8 %.029.i.i89.i, 1             ; 2 uses
  %exitcond.not.i.i92.i = icmp eq i8 %i.kd, %4
  br i1 %exitcond.not.i.i92.i, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i, !llvm.loop !1321

._crit_edge.i.i90.i:                              ; preds = %.lr.ph.i.i88.i, %middle.block494
  %.lcssa = phi i32 [ %i.ka, %middle.block494 ], [ %i.kc, %.lr.ph.i.i88.i ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_hh:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1333

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa543.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.prol ]
  %.029.i.i.i.unr = phi i8 [ %i.eb, %.lr.ph.i.i.i.preheader ], [ %i.eg, %.lr.ph.i.i.i.prol ]
  %.unr601 = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.prol ]
  %i.eh = sub i8 %i.eb, %4
  %i.ei = icmp ugt i8 %i.eh, -8
  br i1 %i.ei, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i
end_hunk_7
begin_hunk_8_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_hh:bb.a
  %i.ej = phi i64 [ %i.ek, %.lr.ph.i.i.i ], [ %.unr601, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ek = mul nsw i64 %i.ej, 100000000            ; 2 uses
  %i.el = add nuw i8 %.029.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.el, %4
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1334

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa543 = phi i64 [ %.lcssa543.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ek, %.lr.ph.i.i.i ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_hh:bb.a
  br i1 %prol.iter613.cmp.not, label %.lr.ph.i.i88.i.prol.loopexit, label %.lr.ph.i.i88.i.prol, !llvm.loop !1340

.lr.ph.i.i88.i.prol.loopexit:                     ; preds = %.lr.ph.i.i88.i.prol, %.lr.ph.i.i88.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i88.i.preheader ], [ %i.jo, %.lr.ph.i.i88.i.prol ]
  %.029.i.i89.i.unr = phi i8 [ %i.jk, %.lr.ph.i.i88.i.preheader ], [ %i.jp, %.lr.ph.i.i88.i.prol ]
  %.unr614 = phi i64 [ %.promoted.i.i85.i, %.lr.ph.i.i88.i.preheader ], [ %i.jo, %.lr.ph.i.i88.i.prol ]
  %i.jq = sub i8 %i.jk, %4
  %i.jr = icmp ugt i8 %i.jq, -8
  br i1 %i.jr, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i
end_hunk_9
begin_hunk_10_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_hh:bb.a
  %i.js = phi i64 [ %i.jt, %.lr.ph.i.i88.i ], [ %.unr614, %.lr.ph.i.i88.i.prol.loopexit ]
  %i.jt = mul nsw i64 %i.js, 100000000            ; 2 uses
  %i.ju = add nuw i8 %.029.i.i89.i, 8             ; 2 uses
  %exitcond.not.i.i92.i.7 = icmp eq i8 %i.ju, %4
  br i1 %exitcond.not.i.i92.i.7, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i, !llvm.loop !1341

._crit_edge.i.i90.i:                              ; preds = %.lr.ph.i.i88.i, %.lr.ph.i.i88.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i.i88.i.prol.loopexit ], [ %i.jt, %.lr.ph.i.i88.i ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_hh:bb.a
  %i.et = phi i16 [ %i.eu, %.lr.ph.i.i.i ], [ %.ph592, %.lr.ph.i.i.i.preheader ]
  %i.eu = mul i16 %i.et, 10                       ; 2 uses
  %i.ev = add nuw i8 %.029.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.ev, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1364

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa432 = phi i16 [ %i.es, %vec.epilog.middle.block ], [ %i.en, %middle.block ], [ %i.eu, %.lr.ph.i.i.i ] ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_hh:bb.a
  %i.kn = phi i16 [ %i.ko, %.lr.ph.i.i88.i ], [ %.ph530, %.lr.ph.i.i88.i.preheader ]
  %i.ko = mul i16 %i.kn, 10                       ; 2 uses
  %i.kp = add nuw i8 %.029.i.i89.i, 1             ; 2 uses
  %exitcond.not.i.i92.i = icmp eq i8 %i.kp, %4
  br i1 %exitcond.not.i.i92.i, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i, !llvm.loop !1371

._crit_edge.i.i90.i:                              ; preds = %.lr.ph.i.i88.i, %vec.epilog.middle.block522, %middle.block505
  %.lcssa = phi i16 [ %i.km, %vec.epilog.middle.block522 ], [ %i.kh, %middle.block505 ], [ %i.ko, %.lr.ph.i.i88.i ] ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_hh:bb.a
  %i.eo = phi i32 [ %i.ep, %.lr.ph.i.i.i ], [ %.ph566, %.lr.ph.i.i.i.preheader565 ]
  %i.ep = mul nsw i32 %i.eo, 10                   ; 2 uses
  %i.eq = add nuw i8 %.029.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eq, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1378

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa432 = phi i32 [ %i.en, %middle.block ], [ %i.ep, %.lr.ph.i.i.i ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_hh:bb.a
  %i.kb = phi i32 [ %i.kc, %.lr.ph.i.i88.i ], [ %.ph504, %.lr.ph.i.i88.i.preheader503 ]
  %i.kc = mul nsw i32 %i.kb, 10                   ; 2 uses
  %i.kd = add nuw i8 %.029.i.i89.i, 1             ; 2 uses
  %exitcond.not.i.i92.i = icmp eq i8 %i.kd, %4
  br i1 %exitcond.not.i.i92.i, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i, !llvm.loop !1384

._crit_edge.i.i90.i:                              ; preds = %.lr.ph.i.i88.i, %middle.block494
  %.lcssa = phi i32 [ %i.ka, %middle.block494 ], [ %i.kc, %.lr.ph.i.i88.i ] ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_hh:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1390

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa543.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.prol ]
  %.029.i.i.i.unr = phi i8 [ %i.eb, %.lr.ph.i.i.i.preheader ], [ %i.eg, %.lr.ph.i.i.i.prol ]
  %.unr601 = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.prol ]
  %i.eh = sub i8 %i.eb, %4
  %i.ei = icmp ugt i8 %i.eh, -8
  br i1 %i.ei, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i
end_hunk_15
begin_hunk_16_@_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_hh:bb.a
  %i.ej = phi i64 [ %i.ek, %.lr.ph.i.i.i ], [ %.unr601, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ek = mul nsw i64 %i.ej, 100000000            ; 2 uses
  %i.el = add nuw i8 %.029.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.el, %4
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1334

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa543 = phi i64 [ %.lcssa543.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ek, %.lr.ph.i.i.i ] ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_hh:bb.a
  br i1 %prol.iter613.cmp.not, label %.lr.ph.i.i88.i.prol.loopexit, label %.lr.ph.i.i88.i.prol, !llvm.loop !1395

.lr.ph.i.i88.i.prol.loopexit:                     ; preds = %.lr.ph.i.i88.i.prol, %.lr.ph.i.i88.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i88.i.preheader ], [ %i.jo, %.lr.ph.i.i88.i.prol ]
  %.029.i.i89.i.unr = phi i8 [ %i.jk, %.lr.ph.i.i88.i.preheader ], [ %i.jp, %.lr.ph.i.i88.i.prol ]
  %.unr614 = phi i64 [ %.promoted.i.i85.i, %.lr.ph.i.i88.i.preheader ], [ %i.jo, %.lr.ph.i.i88.i.prol ]
  %i.jq = sub i8 %i.jk, %4
  %i.jr = icmp ugt i8 %i.jq, -8
  br i1 %i.jr, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i
end_hunk_17
begin_hunk_18_@_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_hh:bb.a
  %i.js = phi i64 [ %i.jt, %.lr.ph.i.i88.i ], [ %.unr614, %.lr.ph.i.i88.i.prol.loopexit ]
  %i.jt = mul nsw i64 %i.js, 100000000            ; 2 uses
  %i.ju = add nuw i8 %.029.i.i89.i, 8             ; 2 uses
  %exitcond.not.i.i92.i.7 = icmp eq i8 %i.ju, %4
  br i1 %exitcond.not.i.i92.i.7, label %._crit_edge.i.i90.i, label %.lr.ph.i.i88.i, !llvm.loop !1341

._crit_edge.i.i90.i:                              ; preds = %.lr.ph.i.i88.i, %.lr.ph.i.i88.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i.i88.i.prol.loopexit ], [ %i.jt, %.lr.ph.i.i88.i ] ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i:bb.a
  %i.be = phi i16 [ %i.bf, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %i.bf = mul i16 %i.be, 10                       ; 2 uses
  %i.bg = add nuw i8 %.029.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.bg, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1538

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa93 = phi i16 [ %i.bd, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %i.bf, %.lr.ph.i ] ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb0EEEbRT_i:bb.a
  %i.be = phi i16 [ %i.bf, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %i.bf = mul i16 %i.be, 10                       ; 2 uses
  %i.bg = add nuw i8 %.029.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.bg, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1545

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa93 = phi i16 [ %i.bd, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %i.bf, %.lr.ph.i ] ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i:bb.a
  %i.az = phi i32 [ %i.ba, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader96 ]
  %i.ba = mul nsw i32 %i.az, 10                   ; 2 uses
  %i.bb = add nuw i8 %.029.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.bb, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1553

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.lcssa91 = phi i32 [ %i.ay, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb0EEEbRT_i:bb.a
  %i.az = phi i32 [ %i.ba, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader96 ]
  %i.ba = mul nsw i32 %i.az, 10                   ; 2 uses
  %i.bb = add nuw i8 %.029.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.bb, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1559

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.lcssa91 = phi i32 [ %i.ay, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1566

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %.029.i.unr = phi i8 [ %i.ae, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i.prol ]
  %.unr103 = phi i64 [ %.promoted.i, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %i.at = sub i8 %i.ae, %i.d
  %i.au = icmp ugt i8 %i.at, -8
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i
end_hunk_23
begin_hunk_24_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i:bb.a
  %i.av = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr103, %.lr.ph.i.prol.loopexit ]
  %i.aw = mul nsw i64 %i.av, 100000000            ; 2 uses
  %i.ax = add nuw i8 %.029.i, 8                   ; 2 uses
  %exitcond.not.i.7 = icmp eq i8 %i.ax, %i.d
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1334

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa95 = phi i64 [ %.lcssa95.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ] ; 2 uses
end_hunk_24
begin_hunk_25_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb0EEEbRT_i:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1571

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %.029.i.unr = phi i8 [ %i.ae, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i.prol ]
  %.unr103 = phi i64 [ %.promoted.i, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %i.at = sub i8 %i.ae, %i.d
  %i.au = icmp ugt i8 %i.at, -8
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i
end_hunk_25
begin_hunk_26_@_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb0EEEbRT_i:bb.a
  %i.av = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr103, %.lr.ph.i.prol.loopexit ]
  %i.aw = mul nsw i64 %i.av, 100000000            ; 2 uses
  %i.ax = add nuw i8 %.029.i, 8                   ; 2 uses
  %exitcond.not.i.7 = icmp eq i8 %i.ax, %i.d
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1341

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa95 = phi i64 [ %.lcssa95.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ] ; 2 uses
end_hunk_26
