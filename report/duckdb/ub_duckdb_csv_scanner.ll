Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_scanner?download=true
inline.NumInlined: 6115
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc:bb.a

.loopexit:                                        ; preds = %bb.b, %bb.a, %.critedge3, %.critedge
  %.132 = phi i1 [ false, %.critedge ], [ %i.o, %.critedge3 ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i8 noundef signext %3) unnamed_addr #6 {
bb.a:
  %cond41 = icmp eq i64 %1, 0
  br i1 %cond41, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.03343 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.03542 = phi i64 [ %i.c, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = load i8, ptr %.03343, align 1, !tbaa !144 ; 2 uses
  switch i8 %i.a, label %.critedge [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.03343, i64 1
  %i.c = add i64 %.03542, -1                      ; 2 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %.loopexit, label %.lr.ph, !llvm.loop !1376

.critedge:                                        ; preds = %.lr.ph
  %i.d = icmp eq i8 %i.a, 43                      ; 2 uses
  %i.e = sext i1 %i.d to i64
  %.134.idx = zext i1 %i.d to i64
  %.134 = getelementptr inbounds nuw i8, ptr %.03343, i64 %.134.idx ; 2 uses
  %i.f = getelementptr i8, ptr %.134, i64 %.03542
  %i.g = getelementptr i8, ptr %i.f, i64 %i.e     ; 4 uses
  %i.h = tail call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef nonnull %.134, ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext false, i8 noundef signext %3, i32 noundef 5) #33 ; 2 uses
  %i.i = extractvalue { ptr, i32 } %i.h, 1
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.critedge
  %i.j = extractvalue { ptr, i32 } %i.h, 0        ; 3 uses
  %i.k = icmp ult ptr %i.j, %i.g
  br i1 %i.k, label %.lr.ph45, label %.critedge3

.lr.ph45:                                         ; preds = %bb.c, %bb.d
  %.044 = phi ptr [ %i.m, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load i8, ptr %.044, align 1, !tbaa !144
  switch i8 %i.l, label %.critedge3 [
    i8 32, label %bb.d
    i8 12, label %bb.d
    i8 11, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph45, %.lr.ph45, %.lr.ph45, %.lr.ph45, %.lr.ph45, %.lr.ph45
  %i.m = getelementptr inbounds nuw i8, ptr %.044, i64 1 ; 3 uses
  %i.n = icmp ult ptr %i.m, %i.g
  br i1 %i.n, label %.lr.ph45, label %.critedge3, !llvm.loop !1377

.critedge3:                                       ; preds = %bb.d, %.lr.ph45, %bb.c
  %.0.lcssa = phi ptr [ %i.j, %bb.c ], [ %.044, %.lr.ph45 ], [ %i.m, %bb.d ]
  %i.o = icmp eq ptr %.0.lcssa, %i.g
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %.critedge3, %.critedge
  %.132 = phi i1 [ false, %.critedge ], [ %i.o, %.critedge3 ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.132
}

declare noundef zeroext i1 @_ZNK6duckdb13StrTimeFormat5EmptyEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK6duckdb14StrpTimeFormat12TryParseDateEPKcmRNS_6date_tE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i64 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef zeroext i8 @_ZN6duckdb4Date14TryConvertDateEPKcmRmRNS_6date_tERbb(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6duckdb4Time14TryConvertTimeEPKcmRmRNS_7dtime_tEbNS_12optional_ptrIiLb1EEE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, ptr) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK6duckdb14StrpTimeFormat17TryParseTimestampEPKcmRNS_11timestamp_tE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i8 @_ZN6duckdb9Timestamp19TryConvertTimestampEPKcmRNS_11timestamp_tEbNS_12optional_ptrIiLb1EEEb(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, ptr, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %7 = alloca %"struct.duckdb::DecimalCastData", align 2 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i16 0, ptr %7, align 2, !tbaa !806
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %3, ptr %i.a, align 2, !tbaa !807
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 %4, ptr %i.b, align 1, !tbaa !808
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 7 ; 5 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !137
  %i.j = trunc i64 %i.i to i16                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %i.j, ptr %i.k, align 2, !tbaa !809
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.n, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.l = load i8, ptr %.034154.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.l, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.n = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.n, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1378

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.o = zext i8 %3 to i32
  %i.p = zext i8 %4 to i32
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.promoted92 = phi i16 [ 0, %.lr.ph.i.i ], [ %i.cx, %bb.y ] ; 5 uses
  %i.r = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cy, %bb.y ] ; 2 uses
  %i.s = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.y ] ; 6 uses
  %i.t = phi i16 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !144   ; 3 uses
  %i.w = add i8 %i.v, -48                         ; 3 uses
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.r, ptr %i.c, align 2
  store i16 %.promoted92, ptr %7, align 2
  %i.y = icmp eq i8 %i.v, 44
  br i1 %i.y, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %.084130.i.i, 1             ; 2 uses
  %i.aa = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ab = icmp ult i64 %i.aa, %.035153.i
  br i1 %i.ab, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ac = zext i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph133.i.i
  %i.ad = phi i16 [ %.promoted92, %.lr.ph133.i.i ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ae = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.aq, %bb.k ] ; 3 uses
  %i.af = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ar, %bb.k ] ; 4 uses
  %i.ag = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ba, %bb.k ] ; 5 uses
  %i.ah = phi i16 [ %i.t, %.lr.ph133.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.aa, %.lr.ph133.i.i ], [ %.2.i.i, %bb.k ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !144 ; 3 uses
  %i.ak = add i8 %i.aj, -48                       ; 2 uses
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, label %bb.l

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.g
  %i.am = icmp ne i8 %i.ag, %4
  %i.an = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %i.am, i1 true, i1 %i.an   ; 2 uses
  %i.ao = icmp samesign ugt i8 %i.aj, 52
  %i.ap = zext i1 %i.ao to i8
  %i.aq = select i1 %or.cond, i8 %i.ae, i8 %i.ap  ; 2 uses
  %i.ar = select i1 %or.cond, i8 %i.af, i8 1      ; 2 uses
  %i.as = zext i8 %i.ag to i32
  %i.at = add nuw nsw i32 %i.as, %i.ac
  %i.au = icmp samesign ult i32 %i.at, 4          ; 3 uses
  %i.av = mul i16 %i.ah, 10
  %i.aw = zext nneg i8 %i.ak to i16
  %i.ax = sub i16 %i.av, %i.aw                    ; 2 uses
  %i.ay = select i1 %i.au, i16 %i.ax, i16 %i.ad   ; 3 uses
  %i.az = zext i1 %i.au to i8
  %i.ba = add i8 %i.ag, %i.az                     ; 2 uses
  %i.bb = select i1 %i.au, i16 %i.ax, i16 %i.ah
  %i.bc = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bc, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !144
  %i.bf = icmp eq i8 %i.be, 95
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, %.035153.i
  br i1 %i.bh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !144
  %i.bk = add i8 %i.bj, -48
  %i.bl = icmp ult i8 %i.bk, 10
  br i1 %i.bl, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.h
  %.2.i.i = phi i64 [ %i.bg, %bb.j ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bm = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bm, label %bb.g, label %.thread114.i.i.loopexit, !llvm.loop !1379

bb.l:                                             ; preds = %bb.g
  store i8 %i.ag, ptr %i.d, align 1
  store i8 %i.af, ptr %i.e, align 2
  store i8 %i.ae, ptr %i.f, align 1
  store i16 %i.ad, ptr %7, align 2
  %i.bn = icmp ugt i64 %.185132.i.i, %i.aa
  %or.cond.i.i = or i1 %i.z, %i.bn
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, %bb.k
  %.185.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.k ]
  store i16 %i.ay, ptr %7, align 2
  br label %.thread114.i.i

.thread114.i.i:                                   ; preds = %.thread114.i.i.loopexit, %bb.f
  %i.bo = phi i8 [ 0, %bb.f ], [ %i.aq, %.thread114.i.i.loopexit ]
  %i.bp = phi i8 [ 0, %bb.f ], [ %i.ar, %.thread114.i.i.loopexit ]
  %.promoted.i.i.i.i198 = phi i16 [ %.promoted92, %bb.f ], [ %i.ay, %.thread114.i.i.loopexit ]
  %i.bq = phi i8 [ 0, %bb.f ], [ %i.ba, %.thread114.i.i.loopexit ]
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i197 = phi i16 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ag, %bb.l ]   ; 2 uses
  %i.bv = phi i8 [ %i.v, %bb.e ], [ %i.aj, %bb.l ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.l ] ; 3 uses
  switch i8 %i.bv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.m
    i8 69, label %bb.m
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bw = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %.035153.i
  br i1 %i.bx, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.by = phi i64 [ %i.cb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !144
  switch i8 %i.ca, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cb = add nuw i64 %i.by, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cb, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1380

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !144
  %i.cg = icmp eq i8 %i.cf, 45
  %i.ch = sub nuw i64 %.035153.i, %i.cd           ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ci, label %.split, label %.split.thread

bb.q:                                             ; preds = %bb.o
  %i.cj = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.cj, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !770
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %i.cm, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.d
  %i.cn = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.co = icmp eq i16 %i.t, 0
  %i.cp = zext nneg i8 %i.w to i16
  %i.cq = icmp eq i8 %i.w, 0
  %or.cond.i.i.i = and i1 %i.co, %i.cq
  br i1 %or.cond.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = zext i8 %i.s to i32
  %i.cs = icmp eq i32 %i.q, %i.cr
  %i.ct = icmp slt i16 %i.t, -3276
  %or.cond538 = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond538, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = add i8 %i.s, 1                          ; 2 uses
  %i.cv = mul i16 %i.t, 10
  %i.cw = sub i16 %i.cv, %i.cp                    ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cx = phi i16 [ %i.cw, %bb.t ], [ %.promoted92, %bb.r ] ; 3 uses
  %i.cy = phi i8 [ %i.cu, %bb.t ], [ %i.r, %bb.r ]
  %i.cz = phi i8 [ %i.cu, %bb.t ], [ %i.s, %bb.r ]
  %i.da = phi i16 [ %i.cw, %bb.t ], [ 0, %bb.r ]
  %.not105.i.i = icmp eq i64 %i.cn, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cn
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !144
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1381

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i198, %.thread114.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %4
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %4            ; 3 uses
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
end_hunk_0
begin_hunk_1_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_hh:bb.a

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.u, %bb.y, %bb.z
  %.sink = phi i16 [ %i.dx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cx, %bb.u ] ; 2 uses
  %.ph = phi i8 [ %i.dt, %bb.z ], [ 0, %bb.y ], [ 0, %bb.u ]
  %.8.i.i248255272.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i16 %.sink, ptr %7, align 2
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i248255272 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i248255272.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i16 [ 0, %bb.c ], [ %i.du, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 4 uses
  %i.dz = icmp ult i8 %i.dy, %4
  br i1 %i.dz, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

iter.check:                                       ; preds = %thread-pre-split.thread.thread
  %i.ea = xor i8 %i.dy, -1
  %i.eb = add i8 %4, %i.ea                        ; 3 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.eb, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check500 = icmp ult i8 %i.eb, 15
  br i1 %min.iters.check500, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ee = and i32 %i.ed, 12
  %n.vec = and i32 %i.ed, 496                     ; 4 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dy, %i.ef
  %i.eh = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi501 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ej = mul <8 x i16> %vec.phi501, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !1382

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ej, %i.ei
  %i.el = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ee, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !810

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.el, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec502 = and i32 %i.ed, 508                  ; 3 uses
  %i.em = trunc i32 %n.vec502 to i8
  %i.en = add i8 %i.dy, %i.em
  %i.eo = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index503 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next505, %vec.epilog.vector.body ]
  %vec.phi504 = phi <4 x i16> [ %i.eo, %vec.epilog.ph ], [ %i.ep, %vec.epilog.vector.body ]
  %i.ep = mul <4 x i16> %vec.phi504, splat (i16 10) ; 2 uses
  %index.next505 = add nuw i32 %index503, 4       ; 2 uses
  %i.eq = icmp eq i32 %index.next505, %n.vec502
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1383

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.er = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.ep) ; 2 uses
  %cmp.n506 = icmp eq i32 %i.ed, %n.vec502
  br i1 %cmp.n506, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph605 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.es = phi i16 [ %i.et, %.lr.ph.i.i.i ], [ %.ph605, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.eu, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.et = mul i16 %i.es, 10                       ; 2 uses
  %i.eu = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eu, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1384

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa449 = phi i16 [ %i.er, %vec.epilog.middle.block ], [ %i.el, %middle.block ], [ %i.et, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa449, ptr %7, align 2, !tbaa !806
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ev = phi i16 [ %.lcssa449, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ew = sext i16 %i.ev to i32
  %i.ex = sext i16 %i.j to i32
  %i.ey = sub nsw i32 0, %i.ex
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  %i.fa = icmp ugt i64 %.8.i.i248255272, 1
  %spec.select.i.i = and i1 %i.fa, %i.ez
  br i1 %spec.select.i.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fb = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.fb
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !144
  %i.fe = add i8 %i.fd, -66                       ; 2 uses
  %i.ff = tail call i8 @llvm.fshl.i8(i8 %i.fe, i8 %i.fe, i8 7) ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 28
  br i1 %i.fg, label %switch.hole_check, label %bb.ac

bb.ac:                                            ; preds = %switch.hole_check, %bb.ab, %bb.aa
  %i.fh = icmp eq i8 %i.l, 43
  %.088.i.i = zext i1 %i.fh to i64                ; 5 uses
  %i.fi = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.fi, label %.lr.ph.i85.i, label %thread-pre-split6.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ac
  %i.fj = zext i8 %3 to i32
  %i.fk = zext i8 %4 to i32
  %i.fl = sub nsw i32 %i.fj, %i.fk
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bc, %.lr.ph.i85.i
  %i.fm = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.ix, %bb.bc ] ; 5 uses
  %i.fn = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iy, %bb.bc ] ; 2 uses
  %i.fo = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iz, %bb.bc ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bc ] ; 6 uses
  %i.fp = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.ja, %bb.bc ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !144 ; 3 uses
  %i.fs = add i8 %i.fr, -48                       ; 3 uses
  %i.ft = icmp ult i8 %i.fs, 10
  br i1 %i.ft, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fn, ptr %i.c, align 2
  store i16 %i.fm, ptr %7, align 2
  %i.fu = icmp eq i8 %i.fr, 44
  br i1 %i.fu, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fv = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fw = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fx = icmp ult i64 %i.fw, %.035153.i
  br i1 %i.fx, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fy = zext i8 %i.fo to i32
  %.promoted = load i8, ptr %i.e, align 2
  %.promoted375 = load i8, ptr %i.f, align 1
  %.promoted379 = load i16, ptr %7, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ao, %.lr.ph137.i.i
  %i.fz = phi i16 [ %.promoted379, %.lr.ph137.i.i ], [ %i.gz, %bb.ao ] ; 2 uses
  %i.ga = phi i8 [ %.promoted375, %.lr.ph137.i.i ], [ %i.go, %bb.ao ] ; 2 uses
  %i.gb = phi i8 [ %.promoted, %.lr.ph137.i.i ], [ %i.gp, %bb.ao ] ; 2 uses
  %i.gc = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gq, %bb.ao ] ; 2 uses
  %.promoted.i.i.i71.i204 = phi i16 [ %i.fm, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i203, %bb.ao ] ; 2 uses
  %i.gd = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gr, %bb.ao ] ; 3 uses
  %i.ge = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.ha, %bb.ao ] ; 6 uses
  %i.gf = phi i16 [ %i.fp, %.lr.ph137.i.i ], [ %i.hb, %bb.ao ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fw, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ao ] ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !144 ; 3 uses
  %i.gi = add i8 %i.gh, -48                       ; 2 uses
  %i.gj = icmp ult i8 %i.gi, 10
  br i1 %i.gj, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.gk = icmp ne i8 %i.ge, %4
  %i.gl = trunc nuw i8 %i.gd to i1
  %or.cond18 = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %or.cond18, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = icmp samesign ugt i8 %i.gh, 52
  %i.gn = zext i1 %i.gm to i8                     ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.go = phi i8 [ %i.gn, %bb.ai ], [ %i.ga, %bb.ah ] ; 3 uses
  %i.gp = phi i8 [ 1, %bb.ai ], [ %i.gb, %bb.ah ] ; 3 uses
  %i.gq = phi i8 [ %i.gn, %bb.ai ], [ %i.gc, %bb.ah ] ; 2 uses
  %i.gr = phi i8 [ 1, %bb.ai ], [ %i.gd, %bb.ah ] ; 2 uses
  %i.gs = zext i8 %i.ge to i32
  %i.gt = add nuw nsw i32 %i.gs, %i.fy
  %i.gu = icmp samesign ugt i32 %i.gt, 3
  br i1 %i.gu, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gv = add i8 %i.ge, 1
  %i.gw = mul i16 %i.gf, 10
  %i.gx = zext nneg i8 %i.gi to i16
  %i.gy = add i16 %i.gw, %i.gx                    ; 3 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.gz = phi i16 [ %i.gy, %bb.ak ], [ %i.fz, %bb.aj ] ; 3 uses
  %.promoted.i.i.i71.i203 = phi i16 [ %i.gy, %bb.ak ], [ %.promoted.i.i.i71.i204, %bb.aj ] ; 2 uses
  %i.ha = phi i8 [ %i.gv, %bb.ak ], [ %i.ge, %bb.aj ] ; 2 uses
  %i.hb = phi i16 [ %i.gy, %bb.ak ], [ %i.gf, %bb.aj ]
  %i.hc = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.hc, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !144
  %i.hf = icmp eq i8 %i.he, 95
  br i1 %i.hf, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.hg = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.hh = icmp eq i64 %i.hg, %.035153.i
  br i1 %i.hh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hg
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !144
  %i.hk = add i8 %i.hj, -48
  %i.hl = icmp ult i8 %i.hk, 10
  br i1 %i.hl, label %bb.ao, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.2.i92.i = phi i64 [ %i.hg, %bb.an ], [ %i.hc, %bb.al ] ; 3 uses
  %i.hm = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.hm, label %bb.ag, label %.thread118.i.i.loopexit, !llvm.loop !1385

bb.ap:                                            ; preds = %bb.ag
  store i8 %i.gb, ptr %i.e, align 2
  store i8 %i.ga, ptr %i.f, align 1
  store i16 %i.fz, ptr %7, align 2
  store i8 %i.ge, ptr %i.d, align 1
  %i.hn = icmp ugt i64 %.1136.i.i, %i.fw
  %or.cond.i91.i = or i1 %i.fv, %i.hn
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, %bb.ao
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ao ]
  store i8 %i.gp, ptr %i.e, align 2
  store i8 %i.go, ptr %i.f, align 1
  store i16 %i.gz, ptr %7, align 2
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.af
  %i.ho = phi i8 [ 0, %bb.af ], [ %i.gq, %.thread118.i.i.loopexit ]
  %i.hp = phi i8 [ 0, %bb.af ], [ %i.gr, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i202 = phi i16 [ %i.fm, %bb.af ], [ %.promoted.i.i.i71.i203, %.thread118.i.i.loopexit ]
  %i.hq = phi i8 [ 0, %bb.af ], [ %i.ha, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fw, %bb.af ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hr = icmp ugt i64 %.1.lcssa.i.i, %i.fw
  %or.cond119.i.i = or i1 %i.fv, %i.hr
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ap, %bb.ae
  %i.hs = phi i8 [ 0, %bb.ae ], [ %i.gc, %bb.ap ] ; 2 uses
  %i.ht = phi i8 [ 0, %bb.ae ], [ %i.gd, %bb.ap ] ; 2 uses
  %.promoted.i.i.i71.i201 = phi i16 [ %i.fm, %bb.ae ], [ %.promoted.i.i.i71.i204, %bb.ap ] ; 2 uses
  %i.hu = phi i8 [ 0, %bb.ae ], [ %i.ge, %bb.ap ] ; 2 uses
  %i.hv = phi i8 [ %i.fr, %bb.ae ], [ %i.gh, %bb.ap ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ae ], [ %.1136.i.i, %bb.ap ] ; 3 uses
  switch i8 %i.hv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.aq
    i8 69, label %bb.aq
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hw = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %.035153.i
  br i1 %i.hx, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hy = phi i64 [ %i.ib, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !144
  switch i8 %i.ia, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.ib = add nuw i64 %i.hy, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.ib, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !1386

bb.aq:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.ic = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.ic, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.id = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.id, %.035153.i
  br i1 %.not108.i.i, label %bb.as, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i16 0, ptr %5, align 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.id ; 3 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !144
  %i.ig = icmp eq i8 %i.if, 45
  %i.ih = sub nuw i64 %.035153.i, %i.id           ; 2 uses
  br i1 %i.ig, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ii = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ie, i64 noundef %i.ih, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ii, label %.split11, label %.split11.thread

bb.au:                                            ; preds = %bb.as
  %i.ij = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ie, i64 noundef %i.ih, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ij, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.at, %bb.au
  %i.ik = load i16, ptr %5, align 2, !tbaa !770
  %i.il = sext i16 %i.ik to i32
  %i.im = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb0EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %7, i32 noundef %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.im, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.ad
  %i.in = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.io = icmp eq i16 %i.fp, 0
  %i.ip = zext nneg i8 %i.fs to i16
  %i.iq = icmp eq i8 %i.fs, 0
  %or.cond.i.i93.i = and i1 %i.io, %i.iq
  br i1 %or.cond.i.i93.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ir = zext i8 %i.fo to i32
  %i.is = icmp eq i32 %i.fl, %i.ir
  %i.it = icmp sgt i16 %i.fp, 3276
  %or.cond539 = select i1 %i.is, i1 true, i1 %i.it
  br i1 %or.cond539, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iu = add i8 %i.fo, 1                         ; 2 uses
  %i.iv = mul i16 %i.fp, 10
  %i.iw = add i16 %i.iv, %i.ip                    ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.ix = phi i16 [ %i.iw, %bb.ax ], [ %i.fm, %bb.av ] ; 3 uses
  %i.iy = phi i8 [ %i.iu, %bb.ax ], [ %i.fn, %bb.av ]
  %i.iz = phi i8 [ %i.iu, %bb.ax ], [ %i.fo, %bb.av ]
  %i.ja = phi i16 [ %i.iw, %bb.ax ], [ 0, %bb.av ]
  %.not109.i.i = icmp eq i64 %i.in, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split6.thread.thread.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.in
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.jc, 95
  br i1 %.not110.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jd = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.je = icmp eq i64 %i.jd, %.035153.i
  br i1 %i.je, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jf = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.jd
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !144
  %i.jh = add i8 %i.jg, -48
  %i.ji = icmp ult i8 %i.jh, 10
  br i1 %i.ji, label %bb.bc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.7.i94.i = phi i64 [ %i.in, %bb.az ], [ %i.jd, %bb.bb ] ; 3 uses
  %i.jj = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.jj, label %bb.ad, label %thread-pre-split6.thread.thread.sink.split, !llvm.loop !1387

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.jk = phi i8 [ %i.ho, %.thread118.i.i ], [ %i.hs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.jl = phi i8 [ %i.hp, %.thread118.i.i ], [ %i.ht, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.ht, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i16 [ %.promoted.i.i.i71.i202, %.thread118.i.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.jm = phi i8 [ %i.hq, %.thread118.i.i ], [ %i.hu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.jn = icmp ugt i8 %i.jm, %4
end_hunk_1
begin_hunk_2_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_hh:bb.a
  %vec.phi517 = phi <8 x i16> [ splat (i16 1), %vector.ph512 ], [ %i.kj, %vector.body514 ]
  %i.ki = mul <8 x i16> %vec.phi516, splat (i16 10) ; 2 uses
  %i.kj = mul <8 x i16> %vec.phi517, splat (i16 10) ; 2 uses
  %index.next518 = add nuw i32 %index515, 16      ; 2 uses
  %i.kk = icmp eq i32 %index.next518, %n.vec513
  br i1 %i.kk, label %middle.block519, label %vector.body514, !llvm.loop !1388

middle.block519:                                  ; preds = %vector.body514
  %bin.rdx520 = mul <8 x i16> %i.kj, %i.ki
  %i.kl = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx520) ; 3 uses
  %cmp.n521 = icmp eq i32 %i.kd, %n.vec513
  br i1 %cmp.n521, label %._crit_edge.i.i83.i, label %vec.epilog.iter.check526

vec.epilog.iter.check526:                         ; preds = %middle.block519
  %min.epilog.iters.check527 = icmp eq i32 %i.ke, 0
  br i1 %min.epilog.iters.check527, label %.lr.ph.i.i80.i.preheader, label %vec.epilog.ph528, !prof !810

vec.epilog.ph528:                                 ; preds = %vector.main.loop.iter.check510, %vec.epilog.iter.check526
  %vec.epilog.resume.val522 = phi i32 [ %n.vec513, %vec.epilog.iter.check526 ], [ 0, %vector.main.loop.iter.check510 ]
  %bc.merge.rdx523 = phi i16 [ %i.kl, %vec.epilog.iter.check526 ], [ %.pre.i.i78.i, %vector.main.loop.iter.check510 ]
  %n.vec529 = and i32 %i.kd, 508                  ; 3 uses
  %i.km = trunc i32 %n.vec529 to i8
  %i.kn = add i8 %i.jy, %i.km
  %i.ko = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx523, i64 0
  br label %vec.epilog.vector.body530

vec.epilog.vector.body530:                        ; preds = %vec.epilog.vector.body530, %vec.epilog.ph528
  %index531 = phi i32 [ %vec.epilog.resume.val522, %vec.epilog.ph528 ], [ %index.next533, %vec.epilog.vector.body530 ]
  %vec.phi532 = phi <4 x i16> [ %i.ko, %vec.epilog.ph528 ], [ %i.kp, %vec.epilog.vector.body530 ]
  %i.kp = mul <4 x i16> %vec.phi532, splat (i16 10) ; 2 uses
  %index.next533 = add nuw i32 %index531, 4       ; 2 uses
  %i.kq = icmp eq i32 %index.next533, %n.vec529
  br i1 %i.kq, label %vec.epilog.middle.block534, label %vec.epilog.vector.body530, !llvm.loop !1389

vec.epilog.middle.block534:                       ; preds = %vec.epilog.vector.body530
  %i.kr = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.kp) ; 2 uses
  %cmp.n535 = icmp eq i32 %i.kd, %n.vec529
  br i1 %cmp.n535, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i.preheader

.lr.ph.i.i80.i.preheader:                         ; preds = %iter.check524, %vec.epilog.iter.check526, %vec.epilog.middle.block534
  %.ph542 = phi i16 [ %.pre.i.i78.i, %iter.check524 ], [ %i.kl, %vec.epilog.iter.check526 ], [ %i.kr, %vec.epilog.middle.block534 ]
  %.024.i.i81.i.ph = phi i8 [ %i.jy, %iter.check524 ], [ %i.kg, %vec.epilog.iter.check526 ], [ %i.kn, %vec.epilog.middle.block534 ]
  br label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.preheader, %.lr.ph.i.i80.i
  %i.ks = phi i16 [ %i.kt, %.lr.ph.i.i80.i ], [ %.ph542, %.lr.ph.i.i80.i.preheader ]
  %.024.i.i81.i = phi i8 [ %i.ku, %.lr.ph.i.i80.i ], [ %.024.i.i81.i.ph, %.lr.ph.i.i80.i.preheader ]
  %i.kt = mul i16 %i.ks, 10                       ; 2 uses
  %i.ku = add nuw i8 %.024.i.i81.i, 1             ; 2 uses
  %exitcond.not.i.i82.i = icmp eq i8 %i.ku, %4
  br i1 %exitcond.not.i.i82.i, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i, !llvm.loop !1390

._crit_edge.i.i83.i:                              ; preds = %.lr.ph.i.i80.i, %vec.epilog.middle.block534, %middle.block519
  %.lcssa = phi i16 [ %i.kr, %vec.epilog.middle.block534 ], [ %i.kl, %middle.block519 ], [ %i.kt, %.lr.ph.i.i80.i ] ; 2 uses
  store i16 %.lcssa, ptr %7, align 2, !tbaa !806
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit: ; preds = %thread-pre-split6.thread.thread, %._crit_edge.i.i83.i
  %i.kv = phi i16 [ %.lcssa, %._crit_edge.i.i83.i ], [ %.pre.i.i78.i, %thread-pre-split6.thread.thread ]
  %i.kw = icmp slt i16 %i.kv, %i.j
  %i.kx = icmp ugt i64 %.8.i68.i261269276, %.088.i.i
  %spec.select.i79.i = and i1 %i.kx, %i.kw
  br i1 %spec.select.i79.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  %i.ky = load i16, ptr %7, align 2, !tbaa !806
  store i16 %i.ky, ptr %2, align 2, !tbaa !775
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21: ; preds = %bb.an, %bb.am
  store i8 %i.gp, ptr %i.e, align 2
  store i8 %i.go, ptr %i.f, align 1
  store i16 %i.gz, ptr %7, align 2
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

switch.hole_check:                                ; preds = %bb.ab
  %switch.maskindex = zext nneg i8 %i.ff to i32
  %switch.shifted = lshr i32 134285313, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.w, %bb.s, %bb.x, %bb.i, %bb.j, %.lr.ph135.i.i, %bb.ba, %bb.aw, %bb.bb, %.lr.ph139.i.i, %switch.hole_check, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21, %bb.ap, %bb.aq, %bb.ar, %.thread118.i.i, %.thread114.i.i, %.thread110.i.i, %bb.l, %bb.m, %bb.a, %bb.n, %.thread114.i87.i, %.split11.thread, %.split.thread, %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, %bb.be
  %.0.i9 = phi i1 [ false, %.split11.thread ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit ], [ true, %bb.be ], [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i ], [ false, %.split ], [ false, %.split11 ], [ false, %.split.thread ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %.thread114.i87.i ], [ false, %bb.w ], [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.m ], [ false, %bb.l ], [ false, %.thread110.i.i ], [ false, %.thread114.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21 ], [ false, %bb.ba ], [ false, %.thread118.i.i ], [ false, %bb.ar ], [ false, %bb.i ], [ false, %.lr.ph139.i.i ], [ false, %.lr.ph135.i.i ], [ false, %switch.hole_check ], [ false, %bb.bb ], [ false, %bb.aw ], [ false, %bb.j ], [ false, %bb.x ], [ false, %bb.s ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i1 %.0.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %7 = alloca %"struct.duckdb::DecimalCastData.981", align 4 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i32 0, ptr %7, align 4, !tbaa !812
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 %3, ptr %i.a, align 4, !tbaa !813
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 5
  store i8 %4, ptr %i.b, align 1, !tbaa !814
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 9 ; 5 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !137
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.j, ptr %i.k, align 4, !tbaa !815
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.n, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.l = load i8, ptr %.034154.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.l, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.n = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.n, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1391

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.o = zext i8 %3 to i32
  %i.p = zext i8 %4 to i32
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.promoted92 = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cx, %bb.y ] ; 5 uses
  %i.r = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cy, %bb.y ] ; 2 uses
  %i.s = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.y ] ; 6 uses
  %i.t = phi i32 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !144   ; 3 uses
  %i.w = add i8 %i.v, -48                         ; 3 uses
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.r, ptr %i.c, align 2
  store i32 %.promoted92, ptr %7, align 4
  %i.y = icmp eq i8 %i.v, 44
  br i1 %i.y, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %.084130.i.i, 1             ; 2 uses
  %i.aa = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ab = icmp ult i64 %i.aa, %.035153.i
  br i1 %i.ab, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ac = zext i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph133.i.i
  %i.ad = phi i32 [ %.promoted92, %.lr.ph133.i.i ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ae = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.aq, %bb.k ] ; 3 uses
  %i.af = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ar, %bb.k ] ; 4 uses
  %i.ag = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ba, %bb.k ] ; 5 uses
  %i.ah = phi i32 [ %i.t, %.lr.ph133.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.aa, %.lr.ph133.i.i ], [ %.2.i.i, %bb.k ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !144 ; 3 uses
  %i.ak = add i8 %i.aj, -48                       ; 2 uses
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, label %bb.l

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.g
  %i.am = icmp ne i8 %i.ag, %4
  %i.an = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %i.am, i1 true, i1 %i.an   ; 2 uses
  %i.ao = icmp samesign ugt i8 %i.aj, 52
  %i.ap = zext i1 %i.ao to i8
  %i.aq = select i1 %or.cond, i8 %i.ae, i8 %i.ap  ; 2 uses
  %i.ar = select i1 %or.cond, i8 %i.af, i8 1      ; 2 uses
  %i.as = zext i8 %i.ag to i32
  %i.at = add nuw nsw i32 %i.as, %i.ac
  %i.au = icmp samesign ult i32 %i.at, 9          ; 3 uses
  %i.av = mul nsw i32 %i.ah, 10
  %i.aw = zext nneg i8 %i.ak to i32
  %i.ax = sub nsw i32 %i.av, %i.aw                ; 2 uses
  %i.ay = select i1 %i.au, i32 %i.ax, i32 %i.ad   ; 3 uses
  %i.az = zext i1 %i.au to i8
  %i.ba = add i8 %i.ag, %i.az                     ; 2 uses
  %i.bb = select i1 %i.au, i32 %i.ax, i32 %i.ah
  %i.bc = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bc, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !144
  %i.bf = icmp eq i8 %i.be, 95
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, %.035153.i
  br i1 %i.bh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !144
  %i.bk = add i8 %i.bj, -48
  %i.bl = icmp ult i8 %i.bk, 10
  br i1 %i.bl, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.h
  %.2.i.i = phi i64 [ %i.bg, %bb.j ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bm = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bm, label %bb.g, label %.thread114.i.i.loopexit, !llvm.loop !1392

bb.l:                                             ; preds = %bb.g
  store i8 %i.ag, ptr %i.d, align 1
  store i8 %i.af, ptr %i.e, align 4
  store i8 %i.ae, ptr %i.f, align 1
  store i32 %i.ad, ptr %7, align 4
  %i.bn = icmp ugt i64 %.185132.i.i, %i.aa
  %or.cond.i.i = or i1 %i.z, %i.bn
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, %bb.k
  %.185.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.k ]
  store i32 %i.ay, ptr %7, align 4
  br label %.thread114.i.i

.thread114.i.i:                                   ; preds = %.thread114.i.i.loopexit, %bb.f
  %i.bo = phi i8 [ 0, %bb.f ], [ %i.aq, %.thread114.i.i.loopexit ]
  %i.bp = phi i8 [ 0, %bb.f ], [ %i.ar, %.thread114.i.i.loopexit ]
  %.promoted.i.i.i.i198 = phi i32 [ %.promoted92, %bb.f ], [ %i.ay, %.thread114.i.i.loopexit ]
  %i.bq = phi i8 [ 0, %bb.f ], [ %i.ba, %.thread114.i.i.loopexit ]
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i197 = phi i32 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ag, %bb.l ]   ; 2 uses
  %i.bv = phi i8 [ %i.v, %bb.e ], [ %i.aj, %bb.l ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.l ] ; 3 uses
  switch i8 %i.bv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.m
    i8 69, label %bb.m
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bw = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %.035153.i
  br i1 %i.bx, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.by = phi i64 [ %i.cb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !144
  switch i8 %i.ca, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cb = add nuw i64 %i.by, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cb, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1393

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !144
  %i.cg = icmp eq i8 %i.cf, 45
  %i.ch = sub nuw i64 %.035153.i, %i.cd           ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ci, label %.split, label %.split.thread

bb.q:                                             ; preds = %bb.o
  %i.cj = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.cj, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !770
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %i.cm, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.d
  %i.cn = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.co = icmp eq i32 %i.t, 0
  %i.cp = zext nneg i8 %i.w to i32
  %i.cq = icmp eq i8 %i.w, 0
  %or.cond.i.i.i = and i1 %i.co, %i.cq
  br i1 %or.cond.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = zext i8 %i.s to i32
  %i.cs = icmp eq i32 %i.q, %i.cr
  %i.ct = icmp slt i32 %i.t, -214748364
  %or.cond515 = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond515, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = add i8 %i.s, 1                          ; 2 uses
  %i.cv = mul nsw i32 %i.t, 10
  %i.cw = sub nsw i32 %i.cv, %i.cp                ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cx = phi i32 [ %i.cw, %bb.t ], [ %.promoted92, %bb.r ] ; 3 uses
  %i.cy = phi i8 [ %i.cu, %bb.t ], [ %i.r, %bb.r ]
  %i.cz = phi i8 [ %i.cu, %bb.t ], [ %i.s, %bb.r ]
  %i.da = phi i32 [ %i.cw, %bb.t ], [ 0, %bb.r ]
  %.not105.i.i = icmp eq i64 %i.cn, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cn
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !144
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1394

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i198, %.thread114.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %4
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %4            ; 3 uses
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
end_hunk_2
begin_hunk_3_@_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_hh:bb.a
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod642 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod642)
  %i.dq = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa587 = phi i32 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa587, ptr %7, align 4, !tbaa !812
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i32 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !54

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa587, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond16 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond16, label %bb.z, label %thread-pre-split.thread.thread

bb.z:                                             ; preds = %thread-pre-split.thread
  %i.dx = add nsw i32 %i.du, -1
  br label %thread-pre-split.thread.thread.sink.split

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.u, %bb.y, %bb.z
  %.sink = phi i32 [ %i.dx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cx, %bb.u ] ; 2 uses
  %.ph = phi i8 [ %i.dt, %bb.z ], [ 0, %bb.y ], [ 0, %bb.u ]
  %.8.i.i248255272.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i32 %.sink, ptr %7, align 4
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 4 uses
  %.8.i.i248255272 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i248255272.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i32 [ 0, %bb.c ], [ %i.du, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %4
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = xor i8 %i.dy, -1
  %i.eb = add i8 %4, %i.ea                        ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.eb, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader582, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ed, 504                     ; 3 uses
  %i.ee = trunc i32 %n.vec to i8
  %i.ef = add i8 %i.dy, %i.ee
  %i.eg = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi500 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ei, %vector.body ]
  %i.eh = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ei = mul <4 x i32> %vec.phi500, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ej = icmp eq i32 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !1395

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader582

.lr.ph.i.i.i.preheader582:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph583 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ek, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader582, %.lr.ph.i.i.i
  %i.el = phi i32 [ %i.em, %.lr.ph.i.i.i ], [ %.ph583, %.lr.ph.i.i.i.preheader582 ]
  %.024.i.i.i = phi i8 [ %i.en, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader582 ]
  %i.em = mul nsw i32 %i.el, 10                   ; 2 uses
  %i.en = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.en, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1396

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa449 = phi i32 [ %i.ek, %middle.block ], [ %i.em, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa449, ptr %7, align 4, !tbaa !812
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.eo = phi i32 [ %.lcssa449, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ep = sub nsw i32 0, %i.j
  %i.eq = icmp sgt i32 %i.eo, %i.ep
  %i.er = icmp ugt i64 %.8.i.i248255272, 1
  %spec.select.i.i = and i1 %i.er, %i.eq
  br i1 %spec.select.i.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.es = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.es
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !144
  %i.ev = add i8 %i.eu, -66                       ; 2 uses
  %i.ew = tail call i8 @llvm.fshl.i8(i8 %i.ev, i8 %i.ev, i8 7) ; 2 uses
  %i.ex = icmp ult i8 %i.ew, 28
  br i1 %i.ex, label %switch.hole_check, label %bb.ac

bb.ac:                                            ; preds = %switch.hole_check, %bb.ab, %bb.aa
  %i.ey = icmp eq i8 %i.l, 43
  %.088.i.i = zext i1 %i.ey to i64                ; 5 uses
  %i.ez = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.ez, label %.lr.ph.i85.i, label %thread-pre-split6.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ac
  %i.fa = zext i8 %3 to i32
  %i.fb = zext i8 %4 to i32
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bc, %.lr.ph.i85.i
  %i.fd = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.io, %bb.bc ] ; 5 uses
  %i.fe = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ip, %bb.bc ] ; 2 uses
  %i.ff = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iq, %bb.bc ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bc ] ; 6 uses
  %i.fg = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ir, %bb.bc ] ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !144 ; 3 uses
  %i.fj = add i8 %i.fi, -48                       ; 3 uses
  %i.fk = icmp ult i8 %i.fj, 10
  br i1 %i.fk, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fe, ptr %i.c, align 2
  store i32 %i.fd, ptr %7, align 4
  %i.fl = icmp eq i8 %i.fi, 44
  br i1 %i.fl, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fm = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fn = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fo = icmp ult i64 %i.fn, %.035153.i
  br i1 %i.fo, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fp = zext i8 %i.ff to i32
  %.promoted = load i8, ptr %i.e, align 4
  %.promoted375 = load i8, ptr %i.f, align 1
  %.promoted379 = load i32, ptr %7, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ao, %.lr.ph137.i.i
  %i.fq = phi i32 [ %.promoted379, %.lr.ph137.i.i ], [ %i.gq, %bb.ao ] ; 2 uses
  %i.fr = phi i8 [ %.promoted375, %.lr.ph137.i.i ], [ %i.gf, %bb.ao ] ; 2 uses
  %i.fs = phi i8 [ %.promoted, %.lr.ph137.i.i ], [ %i.gg, %bb.ao ] ; 2 uses
  %i.ft = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gh, %bb.ao ] ; 2 uses
  %.promoted.i.i.i71.i204 = phi i32 [ %i.fd, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i203, %bb.ao ] ; 2 uses
  %i.fu = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gi, %bb.ao ] ; 3 uses
  %i.fv = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gr, %bb.ao ] ; 6 uses
  %i.fw = phi i32 [ %i.fg, %.lr.ph137.i.i ], [ %i.gs, %bb.ao ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fn, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ao ] ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !144 ; 3 uses
  %i.fz = add i8 %i.fy, -48                       ; 2 uses
  %i.ga = icmp ult i8 %i.fz, 10
  br i1 %i.ga, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.gb = icmp ne i8 %i.fv, %4
  %i.gc = trunc nuw i8 %i.fu to i1
  %or.cond18 = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %or.cond18, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gd = icmp samesign ugt i8 %i.fy, 52
  %i.ge = zext i1 %i.gd to i8                     ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gf = phi i8 [ %i.ge, %bb.ai ], [ %i.fr, %bb.ah ] ; 3 uses
  %i.gg = phi i8 [ 1, %bb.ai ], [ %i.fs, %bb.ah ] ; 3 uses
  %i.gh = phi i8 [ %i.ge, %bb.ai ], [ %i.ft, %bb.ah ] ; 2 uses
  %i.gi = phi i8 [ 1, %bb.ai ], [ %i.fu, %bb.ah ] ; 2 uses
  %i.gj = zext i8 %i.fv to i32
  %i.gk = add nuw nsw i32 %i.gj, %i.fp
  %i.gl = icmp samesign ugt i32 %i.gk, 8
  br i1 %i.gl, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = add i8 %i.fv, 1
  %i.gn = mul nsw i32 %i.fw, 10
  %i.go = zext nneg i8 %i.fz to i32
  %i.gp = add nsw i32 %i.gn, %i.go                ; 3 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.gq = phi i32 [ %i.gp, %bb.ak ], [ %i.fq, %bb.aj ] ; 3 uses
  %.promoted.i.i.i71.i203 = phi i32 [ %i.gp, %bb.ak ], [ %.promoted.i.i.i71.i204, %bb.aj ] ; 2 uses
  %i.gr = phi i8 [ %i.gm, %bb.ak ], [ %i.fv, %bb.aj ] ; 2 uses
  %i.gs = phi i32 [ %i.gp, %bb.ak ], [ %i.fw, %bb.aj ]
  %i.gt = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gt, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !144
  %i.gw = icmp eq i8 %i.gv, 95
  br i1 %i.gw, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gx = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gy = icmp eq i64 %i.gx, %.035153.i
  br i1 %i.gy, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gx
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !144
  %i.hb = add i8 %i.ha, -48
  %i.hc = icmp ult i8 %i.hb, 10
  br i1 %i.hc, label %bb.ao, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.2.i92.i = phi i64 [ %i.gx, %bb.an ], [ %i.gt, %bb.al ] ; 3 uses
  %i.hd = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.hd, label %bb.ag, label %.thread118.i.i.loopexit, !llvm.loop !1397

bb.ap:                                            ; preds = %bb.ag
  store i8 %i.fs, ptr %i.e, align 4
  store i8 %i.fr, ptr %i.f, align 1
  store i32 %i.fq, ptr %7, align 4
  store i8 %i.fv, ptr %i.d, align 1
  %i.he = icmp ugt i64 %.1136.i.i, %i.fn
  %or.cond.i91.i = or i1 %i.fm, %i.he
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ao
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ao ]
  store i8 %i.gg, ptr %i.e, align 4
  store i8 %i.gf, ptr %i.f, align 1
  store i32 %i.gq, ptr %7, align 4
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.af
  %i.hf = phi i8 [ 0, %bb.af ], [ %i.gh, %.thread118.i.i.loopexit ]
  %i.hg = phi i8 [ 0, %bb.af ], [ %i.gi, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i202 = phi i32 [ %i.fd, %bb.af ], [ %.promoted.i.i.i71.i203, %.thread118.i.i.loopexit ]
  %i.hh = phi i8 [ 0, %bb.af ], [ %i.gr, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fn, %bb.af ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hi = icmp ugt i64 %.1.lcssa.i.i, %i.fn
  %or.cond119.i.i = or i1 %i.fm, %i.hi
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ap, %bb.ae
  %i.hj = phi i8 [ 0, %bb.ae ], [ %i.ft, %bb.ap ] ; 2 uses
  %i.hk = phi i8 [ 0, %bb.ae ], [ %i.fu, %bb.ap ] ; 2 uses
  %.promoted.i.i.i71.i201 = phi i32 [ %i.fd, %bb.ae ], [ %.promoted.i.i.i71.i204, %bb.ap ] ; 2 uses
  %i.hl = phi i8 [ 0, %bb.ae ], [ %i.fv, %bb.ap ] ; 2 uses
  %i.hm = phi i8 [ %i.fi, %bb.ae ], [ %i.fy, %bb.ap ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ae ], [ %.1136.i.i, %bb.ap ] ; 3 uses
  switch i8 %i.hm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.aq
    i8 69, label %bb.aq
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hn = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.ho = icmp ult i64 %i.hn, %.035153.i
  br i1 %i.ho, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hp = phi i64 [ %i.hs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !144
  switch i8 %i.hr, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.hs = add nuw i64 %i.hp, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.hs, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !1398

bb.aq:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.ht = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.ht, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hu = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hu, %.035153.i
  br i1 %.not108.i.i, label %bb.as, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i16 0, ptr %5, align 2
  %i.hv = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hu ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !144
  %i.hx = icmp eq i8 %i.hw, 45
  %i.hy = sub nuw i64 %.035153.i, %i.hu           ; 2 uses
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hz = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hv, i64 noundef %i.hy, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.hz, label %.split11, label %.split11.thread

bb.au:                                            ; preds = %bb.as
  %i.ia = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hv, i64 noundef %i.hy, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ia, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.at, %bb.au
  %i.ib = load i16, ptr %5, align 2, !tbaa !770
  %i.ic = sext i16 %i.ib to i32
  %i.id = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb0EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.ic)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.id, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.ad
  %i.ie = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.if = icmp eq i32 %i.fg, 0
  %i.ig = zext nneg i8 %i.fj to i32
  %i.ih = icmp eq i8 %i.fj, 0
  %or.cond.i.i93.i = and i1 %i.if, %i.ih
  br i1 %or.cond.i.i93.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ii = zext i8 %i.ff to i32
  %i.ij = icmp eq i32 %i.fc, %i.ii
  %i.ik = icmp sgt i32 %i.fg, 214748364
  %or.cond516 = select i1 %i.ij, i1 true, i1 %i.ik
  br i1 %or.cond516, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.il = add i8 %i.ff, 1                         ; 2 uses
  %i.im = mul nsw i32 %i.fg, 10
  %i.in = add nsw i32 %i.im, %i.ig                ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.io = phi i32 [ %i.in, %bb.ax ], [ %i.fd, %bb.av ] ; 3 uses
  %i.ip = phi i8 [ %i.il, %bb.ax ], [ %i.fe, %bb.av ]
  %i.iq = phi i8 [ %i.il, %bb.ax ], [ %i.ff, %bb.av ]
  %i.ir = phi i32 [ %i.in, %bb.ax ], [ 0, %bb.av ]
  %.not109.i.i = icmp eq i64 %i.ie, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split6.thread.thread.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.is = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ie
  %i.it = load i8, ptr %i.is, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.it, 95
  br i1 %.not110.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.iu = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.iv = icmp eq i64 %i.iu, %.035153.i
  br i1 %i.iv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.iu
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !144
  %i.iy = add i8 %i.ix, -48
  %i.iz = icmp ult i8 %i.iy, 10
  br i1 %i.iz, label %bb.bc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.7.i94.i = phi i64 [ %i.ie, %bb.az ], [ %i.iu, %bb.bb ] ; 3 uses
  %i.ja = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.ja, label %bb.ad, label %thread-pre-split6.thread.thread.sink.split, !llvm.loop !1399

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.jb = phi i8 [ %i.hf, %.thread118.i.i ], [ %i.hj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.jc = phi i8 [ %i.hg, %.thread118.i.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i32 [ %.promoted.i.i.i71.i202, %.thread118.i.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.jd = phi i8 [ %i.hh, %.thread118.i.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.je = icmp ugt i8 %i.jd, %4
end_hunk_3
begin_hunk_4_@_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_hh:bb.a
  %.8.i68.i261269276.ph = phi i64 [ %.8.i68.i, %bb.bd ], [ %.035153.i, %bb.ay ], [ %.7.i94.i, %bb.bc ]
  store i32 %.sink518, ptr %7, align 4
  br label %thread-pre-split6.thread.thread

thread-pre-split6.thread.thread:                  ; preds = %thread-pre-split6.thread.thread.sink.split, %bb.ac, %thread-pre-split6.thread
  %i.jp = phi i8 [ 0, %bb.ac ], [ %i.jk, %thread-pre-split6.thread ], [ %.ph517, %thread-pre-split6.thread.thread.sink.split ] ; 4 uses
  %.8.i68.i261269276 = phi i64 [ 1, %bb.ac ], [ %.8.i68.i, %thread-pre-split6.thread ], [ %.8.i68.i261269276.ph, %thread-pre-split6.thread.thread.sink.split ]
  %.pre.i.i78.i = phi i32 [ 0, %bb.ac ], [ %i.jl, %thread-pre-split6.thread ], [ %.sink518, %thread-pre-split6.thread.thread.sink.split ] ; 3 uses
  %i.jq = icmp ult i8 %i.jp, %4
  br i1 %i.jq, label %.lr.ph.i.i80.i.preheader, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit

.lr.ph.i.i80.i.preheader:                         ; preds = %thread-pre-split6.thread.thread
  %i.jr = xor i8 %i.jp, -1
  %i.js = add i8 %4, %i.jr                        ; 2 uses
  %i.jt = zext i8 %i.js to i32
  %i.ju = add nuw nsw i32 %i.jt, 1                ; 2 uses
  %min.iters.check502 = icmp ult i8 %i.js, 7
  br i1 %min.iters.check502, label %.lr.ph.i.i80.i.preheader519, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph.i.i80.i.preheader
  %n.vec504 = and i32 %i.ju, 504                  ; 3 uses
  %i.jv = trunc i32 %n.vec504 to i8
  %i.jw = add i8 %i.jp, %i.jv
  %i.jx = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i78.i, i64 0
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i32 [ 0, %vector.ph503 ], [ %index.next509, %vector.body505 ]
  %vec.phi507 = phi <4 x i32> [ %i.jx, %vector.ph503 ], [ %i.jy, %vector.body505 ]
  %vec.phi508 = phi <4 x i32> [ splat (i32 1), %vector.ph503 ], [ %i.jz, %vector.body505 ]
  %i.jy = mul <4 x i32> %vec.phi507, splat (i32 10) ; 2 uses
  %i.jz = mul <4 x i32> %vec.phi508, splat (i32 10) ; 2 uses
  %index.next509 = add nuw i32 %index506, 8       ; 2 uses
  %i.ka = icmp eq i32 %index.next509, %n.vec504
  br i1 %i.ka, label %middle.block510, label %vector.body505, !llvm.loop !1400

middle.block510:                                  ; preds = %vector.body505
  %bin.rdx511 = mul <4 x i32> %i.jz, %i.jy
  %i.kb = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx511) ; 2 uses
  %cmp.n512 = icmp eq i32 %i.ju, %n.vec504
  br i1 %cmp.n512, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i.preheader519

.lr.ph.i.i80.i.preheader519:                      ; preds = %.lr.ph.i.i80.i.preheader, %middle.block510
  %.ph520 = phi i32 [ %.pre.i.i78.i, %.lr.ph.i.i80.i.preheader ], [ %i.kb, %middle.block510 ]
  %.024.i.i81.i.ph = phi i8 [ %i.jp, %.lr.ph.i.i80.i.preheader ], [ %i.jw, %middle.block510 ]
  br label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.preheader519, %.lr.ph.i.i80.i
  %i.kc = phi i32 [ %i.kd, %.lr.ph.i.i80.i ], [ %.ph520, %.lr.ph.i.i80.i.preheader519 ]
  %.024.i.i81.i = phi i8 [ %i.ke, %.lr.ph.i.i80.i ], [ %.024.i.i81.i.ph, %.lr.ph.i.i80.i.preheader519 ]
  %i.kd = mul nsw i32 %i.kc, 10                   ; 2 uses
  %i.ke = add nuw i8 %.024.i.i81.i, 1             ; 2 uses
  %exitcond.not.i.i82.i = icmp eq i8 %i.ke, %4
  br i1 %exitcond.not.i.i82.i, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i, !llvm.loop !1401

._crit_edge.i.i83.i:                              ; preds = %.lr.ph.i.i80.i, %middle.block510
  %.lcssa = phi i32 [ %i.kb, %middle.block510 ], [ %i.kd, %.lr.ph.i.i80.i ] ; 2 uses
  store i32 %.lcssa, ptr %7, align 4, !tbaa !812
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit: ; preds = %thread-pre-split6.thread.thread, %._crit_edge.i.i83.i
  %i.kf = phi i32 [ %.lcssa, %._crit_edge.i.i83.i ], [ %.pre.i.i78.i, %thread-pre-split6.thread.thread ]
  %i.kg = icmp slt i32 %i.kf, %i.j
  %i.kh = icmp ugt i64 %.8.i68.i261269276, %.088.i.i
  %spec.select.i79.i = and i1 %i.kh, %i.kg
  br i1 %spec.select.i79.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  %i.ki = load i32, ptr %7, align 4, !tbaa !812
  store i32 %i.ki, ptr %2, align 4, !tbaa !89
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21: ; preds = %bb.an, %bb.am
  store i8 %i.gg, ptr %i.e, align 4
  store i8 %i.gf, ptr %i.f, align 1
  store i32 %i.gq, ptr %7, align 4
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

switch.hole_check:                                ; preds = %bb.ab
  %switch.maskindex = zext nneg i8 %i.ew to i32
  %switch.shifted = lshr i32 134285313, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.w, %bb.s, %bb.x, %bb.i, %bb.j, %.lr.ph135.i.i, %bb.ba, %bb.aw, %bb.bb, %.lr.ph139.i.i, %switch.hole_check, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21, %bb.ap, %bb.aq, %bb.ar, %.thread118.i.i, %.thread114.i.i, %.thread110.i.i, %bb.l, %bb.m, %bb.a, %bb.n, %.thread114.i87.i, %.split11.thread, %.split.thread, %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, %bb.be
  %.0.i9 = phi i1 [ false, %.split11.thread ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit ], [ true, %bb.be ], [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i ], [ false, %.split ], [ false, %.split11 ], [ false, %.split.thread ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %.thread114.i87.i ], [ false, %bb.w ], [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.m ], [ false, %bb.l ], [ false, %.thread110.i.i ], [ false, %.thread114.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21 ], [ false, %bb.ba ], [ false, %.thread118.i.i ], [ false, %bb.ar ], [ false, %bb.i ], [ false, %.lr.ph139.i.i ], [ false, %.lr.ph135.i.i ], [ false, %switch.hole_check ], [ false, %bb.bb ], [ false, %bb.aw ], [ false, %bb.j ], [ false, %bb.x ], [ false, %bb.s ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i1 %.0.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %7 = alloca %"struct.duckdb::DecimalCastData.982", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i64 0, ptr %7, align 8, !tbaa !817
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %3, ptr %i.a, align 8, !tbaa !818
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %4, ptr %i.b, align 1, !tbaa !819
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 5 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !137  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !820
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.l, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.m, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.k = load i8, ptr %.034154.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.k, label %bb.ac [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.m = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.m, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1402

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.n = zext i8 %3 to i32
  %i.o = zext i8 %4 to i32
  %i.p = sub nsw i32 %i.n, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.aa, %.lr.ph.i.i
  %.promoted92 = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cw, %bb.aa ] ; 5 uses
  %i.q = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cx, %bb.aa ] ; 2 uses
  %i.r = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cy, %bb.aa ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.aa ] ; 6 uses
  %i.s = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.aa ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !144   ; 3 uses
  %i.v = add i8 %i.u, -48                         ; 3 uses
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.q, ptr %i.c, align 2
  store i64 %.promoted92, ptr %7, align 8
  %i.x = icmp eq i8 %i.u, 44
  br i1 %i.x, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = icmp ugt i64 %.084130.i.i, 1             ; 2 uses
  %i.z = add nuw i64 %.084130.i.i, 1              ; 5 uses
  %i.aa = icmp ult i64 %i.z, %.035153.i
  br i1 %i.aa, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ab = zext i8 %i.r to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph133.i.i
  %i.ac = phi i64 [ %.promoted92, %.lr.ph133.i.i ], [ %i.ay, %bb.m ] ; 3 uses
  %i.ad = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ap, %bb.m ] ; 3 uses
  %i.ae = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.aq, %bb.m ] ; 4 uses
  %i.af = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.az, %bb.m ] ; 6 uses
  %i.ag = phi i64 [ %i.s, %.lr.ph133.i.i ], [ %i.ba, %bb.m ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.z, %.lr.ph133.i.i ], [ %.2.i.i, %bb.m ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !144 ; 3 uses
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ne i8 %i.af, %4
  %i.am = trunc nuw i8 %i.ae to i1
  %or.cond = select i1 %i.al, i1 true, i1 %i.am   ; 2 uses
  %i.an = icmp samesign ugt i8 %i.ai, 52
  %i.ao = zext i1 %i.an to i8
  %i.ap = select i1 %or.cond, i8 %i.ad, i8 %i.ao  ; 2 uses
  %i.aq = select i1 %or.cond, i8 %i.ae, i8 1      ; 2 uses
  %i.ar = zext i8 %i.af to i32
  %i.as = add nuw nsw i32 %i.ar, %i.ab
  %i.at = icmp samesign ugt i32 %i.as, 17
  br i1 %i.at, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = add i8 %i.af, 1
  %i.av = mul nsw i64 %i.ag, 10
  %i.aw = zext nneg i8 %i.aj to i64
  %i.ax = sub nsw i64 %i.av, %i.aw                ; 2 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ay = phi i64 [ %i.ax, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %i.az = phi i8 [ %i.au, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.ba = phi i64 [ %i.ax, %bb.i ], [ %i.ag, %bb.h ]
  %i.bb = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bb, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !144
  %i.be = icmp eq i8 %i.bd, 95
  br i1 %i.be, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bf = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bg = icmp eq i64 %i.bf, %.035153.i
  br i1 %i.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !144
  %i.bj = add i8 %i.bi, -48
  %i.bk = icmp ult i8 %i.bj, 10
  br i1 %i.bk, label %bb.m, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2.i.i = phi i64 [ %i.bf, %bb.l ], [ %i.bb, %bb.j ] ; 3 uses
  %i.bl = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bl, label %bb.g, label %.thread114.i.i.loopexit, !llvm.loop !1403

bb.n:                                             ; preds = %bb.g
  store i8 %i.af, ptr %i.d, align 1
  store i8 %i.ae, ptr %i.e, align 4
  store i8 %i.ad, ptr %i.f, align 1
  store i64 %i.ac, ptr %7, align 8
  %i.bm = icmp ugt i64 %.185132.i.i, %i.z
  %or.cond.i.i = or i1 %i.y, %i.bm
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, %bb.m
  %.185.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.m ]
  store i64 %i.ay, ptr %7, align 8
  br label %.thread114.i.i

.thread114.i.i:                                   ; preds = %.thread114.i.i.loopexit, %bb.f
  %i.bn = phi i8 [ 0, %bb.f ], [ %i.ap, %.thread114.i.i.loopexit ]
  %i.bo = phi i8 [ 0, %bb.f ], [ %i.aq, %.thread114.i.i.loopexit ]
  %.promoted.i.i.i.i198 = phi i64 [ %.promoted92, %bb.f ], [ %i.ay, %.thread114.i.i.loopexit ]
  %i.bp = phi i8 [ 0, %bb.f ], [ %i.az, %.thread114.i.i.loopexit ]
  %.185.lcssa.i.i = phi i64 [ %i.z, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.bq = icmp ugt i64 %.185.lcssa.i.i, %i.z
  %or.cond115.i.i = or i1 %i.y, %i.bq
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.n, %bb.e
  %i.br = phi i8 [ 0, %bb.e ], [ %i.ad, %bb.n ]   ; 2 uses
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.n ]   ; 2 uses
  %.promoted.i.i.i.i197 = phi i64 [ %.promoted92, %bb.e ], [ %i.ac, %bb.n ] ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.n ]   ; 2 uses
  %i.bu = phi i8 [ %i.u, %bb.e ], [ %i.ai, %bb.n ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.n ] ; 3 uses
  switch i8 %i.bu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.o
    i8 69, label %bb.o
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bv = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %.035153.i
  br i1 %i.bw, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.bx = phi i64 [ %i.ca, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !144
  switch i8 %i.bz, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ca = add nuw i64 %i.bx, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1404

bb.o:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cb = icmp eq i64 %.4.i.i, 1
  br i1 %i.cb, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cc, %.035153.i
  br i1 %.not104.i.i, label %bb.q, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i16 0, ptr %6, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cc ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !144
  %i.cf = icmp eq i8 %i.ce, 45
  %i.cg = sub nuw i64 %.035153.i, %i.cc           ; 2 uses
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cd, i64 noundef %i.cg, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ch, label %.split, label %.split.thread

bb.s:                                             ; preds = %bb.q
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cd, i64 noundef %i.cg, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ci, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.r, %bb.s
  %i.cj = load i16, ptr %6, align 2, !tbaa !770
  %i.ck = sext i16 %i.cj to i32
  %i.cl = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %i.cl, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.t:                                             ; preds = %bb.d
  %i.cm = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cn = icmp eq i64 %i.s, 0
  %i.co = icmp eq i8 %i.v, 0
  %or.cond.i.i.i = and i1 %i.cn, %i.co
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = zext i8 %i.r to i32
  %i.cq = icmp eq i32 %i.p, %i.cp
  %i.cr = icmp slt i64 %i.s, -922337203685477580
  %or.cond500 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond500, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = add i8 %i.r, 1                          ; 2 uses
  %i.ct = mul nsw i64 %i.s, 10
  %i.cu = zext nneg i8 %i.v to i64
  %i.cv = sub nsw i64 %i.ct, %i.cu                ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.cw = phi i64 [ %i.cv, %bb.v ], [ %.promoted92, %bb.t ] ; 3 uses
  %i.cx = phi i8 [ %i.cs, %bb.v ], [ %i.q, %bb.t ]
  %i.cy = phi i8 [ %i.cs, %bb.v ], [ %i.r, %bb.t ]
  %i.cz = phi i64 [ %i.cv, %bb.v ], [ 0, %bb.t ]
  %.not105.i.i = icmp eq i64 %i.cm, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cm
  %i.db = load i8, ptr %i.da, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.db, 95
  br i1 %.not106.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dc = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, %.035153.i
  br i1 %i.dd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !144
  %i.dg = add i8 %i.df, -48
  %i.dh = icmp ult i8 %i.dg, 10
  br i1 %i.dh, label %bb.aa, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.7.i.i = phi i64 [ %i.cm, %bb.x ], [ %i.dc, %bb.z ] ; 3 uses
  %i.di = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.di, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1405

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dj = phi i8 [ %i.bn, %.thread114.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i198, %.thread114.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dm = icmp ugt i8 %i.dl, %4
  br i1 %i.dm, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dl, %4            ; 3 uses
  %i.dn = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dn, 1
  %i.do = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.do, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dn, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dr, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod618 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod618)
  %i.dp = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa563 = phi i64 [ %i.dr, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dp, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa563, ptr %7, align 8, !tbaa !817
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dq = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dr = sdiv i64 %i.dq, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !56

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.ds = phi i8 [ %i.dl, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dt = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa563, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = trunc nuw i8 %i.dk to i1
  %i.dv = trunc nuw i8 %i.dj to i1
  %or.cond16 = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond16, label %bb.ab, label %thread-pre-split.thread.thread

bb.ab:                                            ; preds = %thread-pre-split.thread
  %i.dw = add nsw i64 %i.dt, -1
  br label %thread-pre-split.thread.thread.sink.split

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.w, %bb.aa, %bb.ab
  %.sink = phi i64 [ %i.dw, %bb.ab ], [ %i.cw, %bb.aa ], [ %i.cw, %bb.w ] ; 2 uses
  %.ph = phi i8 [ %i.ds, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.w ]
  %.8.i.i248255272.ph = phi i64 [ %.8.i.i, %bb.ab ], [ %.035153.i, %bb.w ], [ %.7.i.i, %bb.aa ]
  store i64 %.sink, ptr %7, align 8
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dx = phi i8 [ 0, %bb.c ], [ %i.ds, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i248255272 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i248255272.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i64 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dy = icmp ult i8 %i.dx, %4
  br i1 %i.dy, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.dz = sub nuw i8 %4, %i.dx
  %xtraiter619 = and i8 %i.dz, 7                  ; 2 uses
  %lcmp.mod620.not = icmp eq i8 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.ea = phi i64 [ %i.eb, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %i.dx, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.eb = mul nsw i64 %i.ea, 10                   ; 3 uses
  %i.ec = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter619
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1406

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa562.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.unr621 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dx, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %i.ed = sub i8 %i.dx, %4
  %i.ee = icmp ugt i8 %i.ed, -8
  br i1 %i.ee, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ef = phi i64 [ %i.eg, %.lr.ph.i.i.i ], [ %.unr621, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.eh, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eg = mul nsw i64 %i.ef, 100000000            ; 2 uses
  %i.eh = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.eh, %4
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !57

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa562 = phi i64 [ %.lcssa562.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eg, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa562, ptr %7, align 8, !tbaa !817
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ei = phi i64 [ %.lcssa562, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ej = sub nsw i64 0, %i.i
  %i.ek = icmp sgt i64 %i.ei, %i.ej
  %i.el = icmp ugt i64 %.8.i.i248255272, 1
  %spec.select.i.i = and i1 %i.el, %i.ek
  br i1 %spec.select.i.i, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ac:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.em = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %.not38.i, %i.em
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !144
  %i.ep = add i8 %i.eo, -66                       ; 2 uses
  %i.eq = tail call i8 @llvm.fshl.i8(i8 %i.ep, i8 %i.ep, i8 7) ; 2 uses
  %i.er = icmp ult i8 %i.eq, 28
  br i1 %i.er, label %switch.hole_check, label %bb.ae

bb.ae:                                            ; preds = %switch.hole_check, %bb.ad, %bb.ac
  %i.es = icmp eq i8 %i.k, 43
  %.088.i.i = zext i1 %i.es to i64                ; 5 uses
  %i.et = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.et, label %.lr.ph.i85.i, label %thread-pre-split6.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ae
  %i.eu = zext i8 %3 to i32
  %i.ev = zext i8 %4 to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  br label %bb.af

bb.af:                                            ; preds = %bb.be, %.lr.ph.i85.i
  %i.ex = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ii, %bb.be ] ; 5 uses
  %i.ey = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ij, %bb.be ] ; 2 uses
  %i.ez = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ik, %bb.be ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.be ] ; 6 uses
  %i.fa = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.il, %bb.be ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !144 ; 3 uses
  %i.fd = add i8 %i.fc, -48                       ; 3 uses
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %i.ey, ptr %i.c, align 2
  store i64 %i.ex, ptr %7, align 8
  %i.ff = icmp eq i8 %i.fc, 44
  br i1 %i.ff, label %bb.ah, label %.thread114.i87.i

bb.ah:                                            ; preds = %bb.ag
  %i.fg = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fh = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fi = icmp ult i64 %i.fh, %.035153.i
  br i1 %i.fi, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ah
  %i.fj = zext i8 %i.ez to i32
  %.promoted = load i8, ptr %i.e, align 4
  %.promoted375 = load i8, ptr %i.f, align 1
  %.promoted379 = load i64, ptr %7, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aq, %.lr.ph137.i.i
  %i.fk = phi i64 [ %.promoted379, %.lr.ph137.i.i ], [ %i.gk, %bb.aq ] ; 2 uses
  %i.fl = phi i8 [ %.promoted375, %.lr.ph137.i.i ], [ %i.fz, %bb.aq ] ; 2 uses
  %i.fm = phi i8 [ %.promoted, %.lr.ph137.i.i ], [ %i.ga, %bb.aq ] ; 2 uses
  %i.fn = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gb, %bb.aq ] ; 2 uses
  %.promoted.i.i.i71.i204 = phi i64 [ %i.ex, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i203, %bb.aq ] ; 2 uses
  %i.fo = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gc, %bb.aq ] ; 3 uses
  %i.fp = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gl, %bb.aq ] ; 6 uses
  %i.fq = phi i64 [ %i.fa, %.lr.ph137.i.i ], [ %i.gm, %bb.aq ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fh, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.aq ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !144 ; 3 uses
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
  %i.fu = icmp ult i8 %i.ft, 10
  br i1 %i.fu, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.fv = icmp ne i8 %i.fp, %4
  %i.fw = trunc nuw i8 %i.fo to i1
  %or.cond18 = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %or.cond18, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = icmp samesign ugt i8 %i.fs, 52
  %i.fy = zext i1 %i.fx to i8                     ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fz = phi i8 [ %i.fy, %bb.ak ], [ %i.fl, %bb.aj ] ; 3 uses
  %i.ga = phi i8 [ 1, %bb.ak ], [ %i.fm, %bb.aj ] ; 3 uses
  %i.gb = phi i8 [ %i.fy, %bb.ak ], [ %i.fn, %bb.aj ] ; 2 uses
  %i.gc = phi i8 [ 1, %bb.ak ], [ %i.fo, %bb.aj ] ; 2 uses
  %i.gd = zext i8 %i.fp to i32
  %i.ge = add nuw nsw i32 %i.gd, %i.fj
  %i.gf = icmp samesign ugt i32 %i.ge, 17
  br i1 %i.gf, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gg = add i8 %i.fp, 1
  %i.gh = mul nsw i64 %i.fq, 10
  %i.gi = zext nneg i8 %i.ft to i64
  %i.gj = add nsw i64 %i.gh, %i.gi                ; 3 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.am, %bb.al
  %i.gk = phi i64 [ %i.gj, %bb.am ], [ %i.fk, %bb.al ] ; 3 uses
  %.promoted.i.i.i71.i203 = phi i64 [ %i.gj, %bb.am ], [ %.promoted.i.i.i71.i204, %bb.al ] ; 2 uses
  %i.gl = phi i8 [ %i.gg, %bb.am ], [ %i.fp, %bb.al ] ; 2 uses
  %i.gm = phi i64 [ %i.gj, %bb.am ], [ %i.fq, %bb.al ]
  %i.gn = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gn, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !144
  %i.gq = icmp eq i8 %i.gp, 95
  br i1 %i.gq, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gr = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gs = icmp eq i64 %i.gr, %.035153.i
  br i1 %i.gs, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gt = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gr
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !144
  %i.gv = add i8 %i.gu, -48
  %i.gw = icmp ult i8 %i.gv, 10
  br i1 %i.gw, label %bb.aq, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.2.i92.i = phi i64 [ %i.gr, %bb.ap ], [ %i.gn, %bb.an ] ; 3 uses
  %i.gx = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gx, label %bb.ai, label %.thread118.i.i.loopexit, !llvm.loop !1407

bb.ar:                                            ; preds = %bb.ai
  store i8 %i.fm, ptr %i.e, align 4
  store i8 %i.fl, ptr %i.f, align 1
  store i64 %i.fk, ptr %7, align 8
  store i8 %i.fp, ptr %i.d, align 1
  %i.gy = icmp ugt i64 %.1136.i.i, %i.fh
  %or.cond.i91.i = or i1 %i.fg, %i.gy
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.aq
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.aq ]
  store i8 %i.ga, ptr %i.e, align 4
  store i8 %i.fz, ptr %i.f, align 1
  store i64 %i.gk, ptr %7, align 8
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.ah
  %i.gz = phi i8 [ 0, %bb.ah ], [ %i.gb, %.thread118.i.i.loopexit ]
  %i.ha = phi i8 [ 0, %bb.ah ], [ %i.gc, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i202 = phi i64 [ %i.ex, %bb.ah ], [ %.promoted.i.i.i71.i203, %.thread118.i.i.loopexit ]
  %i.hb = phi i8 [ 0, %bb.ah ], [ %i.gl, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fh, %bb.ah ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hc = icmp ugt i64 %.1.lcssa.i.i, %i.fh
  %or.cond119.i.i = or i1 %i.fg, %i.hc
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ar, %bb.ag
  %i.hd = phi i8 [ 0, %bb.ag ], [ %i.fn, %bb.ar ] ; 2 uses
  %i.he = phi i8 [ 0, %bb.ag ], [ %i.fo, %bb.ar ] ; 2 uses
  %.promoted.i.i.i71.i201 = phi i64 [ %i.ex, %bb.ag ], [ %.promoted.i.i.i71.i204, %bb.ar ] ; 2 uses
  %i.hf = phi i8 [ 0, %bb.ag ], [ %i.fp, %bb.ar ] ; 2 uses
  %i.hg = phi i8 [ %i.fc, %bb.ag ], [ %i.fs, %bb.ar ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ag ], [ %.1136.i.i, %bb.ar ] ; 3 uses
  switch i8 %i.hg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.as
    i8 69, label %bb.as
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hh = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hi = icmp ult i64 %i.hh, %.035153.i
  br i1 %i.hi, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hj = phi i64 [ %i.hm, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hh, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !144
  switch i8 %i.hl, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.hm = add nuw i64 %i.hj, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.hm, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !1408

bb.as:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hn = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hn, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.ho, %.035153.i
  br i1 %.not108.i.i, label %bb.au, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i16 0, ptr %5, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ho ; 3 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !144
  %i.hr = icmp eq i8 %i.hq, 45
  %i.hs = sub nuw i64 %.035153.i, %i.ho           ; 2 uses
  br i1 %i.hr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ht = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hp, i64 noundef %i.hs, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ht, label %.split11, label %.split11.thread

bb.aw:                                            ; preds = %bb.au
  %i.hu = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hp, i64 noundef %i.hs, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.hu, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.av, %bb.aw
  %i.hv = load i16, ptr %5, align 2, !tbaa !770
  %i.hw = sext i16 %i.hv to i32
  %i.hx = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.hw)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.hx, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.af
  %i.hy = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.hz = icmp eq i64 %i.fa, 0
  %i.ia = icmp eq i8 %i.fd, 0
  %or.cond.i.i93.i = and i1 %i.hz, %i.ia
  br i1 %or.cond.i.i93.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = zext i8 %i.ez to i32
  %i.ic = icmp eq i32 %i.ew, %i.ib
  %i.id = icmp sgt i64 %i.fa, 922337203685477580
  %or.cond501 = select i1 %i.ic, i1 true, i1 %i.id
  br i1 %or.cond501, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ie = add i8 %i.ez, 1                         ; 2 uses
  %i.if = mul nsw i64 %i.fa, 10
  %i.ig = zext nneg i8 %i.fd to i64
  %i.ih = add nsw i64 %i.if, %i.ig                ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.ii = phi i64 [ %i.ih, %bb.az ], [ %i.ex, %bb.ax ] ; 3 uses
  %i.ij = phi i8 [ %i.ie, %bb.az ], [ %i.ey, %bb.ax ]
  %i.ik = phi i8 [ %i.ie, %bb.az ], [ %i.ez, %bb.ax ]
  %i.il = phi i64 [ %i.ih, %bb.az ], [ 0, %bb.ax ]
  %.not109.i.i = icmp eq i64 %i.hy, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split6.thread.thread.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.im = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hy
  %i.in = load i8, ptr %i.im, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.in, 95
  br i1 %.not110.i.i, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.io = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.ip = icmp eq i64 %i.io, %.035153.i
  br i1 %i.ip, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.io
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !144
  %i.is = add i8 %i.ir, -48
  %i.it = icmp ult i8 %i.is, 10
  br i1 %i.it, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.7.i94.i = phi i64 [ %i.hy, %bb.bb ], [ %i.io, %bb.bd ] ; 3 uses
  %i.iu = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.iu, label %bb.af, label %thread-pre-split6.thread.thread.sink.split, !llvm.loop !1409

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.iv = phi i8 [ %i.gz, %.thread118.i.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.iw = phi i8 [ %i.ha, %.thread118.i.i ], [ %i.he, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.he, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i64 [ %.promoted.i.i.i71.i202, %.thread118.i.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.ix = phi i8 [ %i.hb, %.thread118.i.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hh, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.iy = icmp ugt i8 %i.ix, %4
end_hunk_4
begin_hunk_5_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_hh:bb.a
  %i.jh = trunc nuw i8 %i.iv to i1
  %or.cond20 = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %or.cond20, label %bb.bf, label %thread-pre-split6.thread.thread

bb.bf:                                            ; preds = %thread-pre-split6.thread
  %i.ji = add nsw i64 %i.jf, 1
  br label %thread-pre-split6.thread.thread.sink.split

thread-pre-split6.thread.thread.sink.split:       ; preds = %bb.ba, %bb.be, %bb.bf
  %.sink503 = phi i64 [ %i.ji, %bb.bf ], [ %i.ii, %bb.be ], [ %i.ii, %bb.ba ] ; 2 uses
  %.ph502 = phi i8 [ %i.je, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.ba ]
  %.8.i68.i261269276.ph = phi i64 [ %.8.i68.i, %bb.bf ], [ %.035153.i, %bb.ba ], [ %.7.i94.i, %bb.be ]
  store i64 %.sink503, ptr %7, align 8
  br label %thread-pre-split6.thread.thread

thread-pre-split6.thread.thread:                  ; preds = %thread-pre-split6.thread.thread.sink.split, %bb.ae, %thread-pre-split6.thread
  %i.jj = phi i8 [ 0, %bb.ae ], [ %i.je, %thread-pre-split6.thread ], [ %.ph502, %thread-pre-split6.thread.thread.sink.split ] ; 5 uses
  %.8.i68.i261269276 = phi i64 [ 1, %bb.ae ], [ %.8.i68.i, %thread-pre-split6.thread ], [ %.8.i68.i261269276.ph, %thread-pre-split6.thread.thread.sink.split ]
  %.pre.i.i78.i = phi i64 [ 0, %bb.ae ], [ %i.jf, %thread-pre-split6.thread ], [ %.sink503, %thread-pre-split6.thread.thread.sink.split ] ; 3 uses
  %i.jk = icmp ult i8 %i.jj, %4
  br i1 %i.jk, label %.lr.ph.i.i80.i.preheader, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit

.lr.ph.i.i80.i.preheader:                         ; preds = %thread-pre-split6.thread.thread
  %i.jl = sub nuw i8 %4, %i.jj
  %xtraiter630 = and i8 %i.jl, 7                  ; 2 uses
  %lcmp.mod631.not = icmp eq i8 %xtraiter630, 0
  br i1 %lcmp.mod631.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol

.lr.ph.i.i80.i.prol:                              ; preds = %.lr.ph.i.i80.i.preheader, %.lr.ph.i.i80.i.prol
  %i.jm = phi i64 [ %i.jn, %.lr.ph.i.i80.i.prol ], [ %.pre.i.i78.i, %.lr.ph.i.i80.i.preheader ]
  %.024.i.i81.i.prol = phi i8 [ %i.jo, %.lr.ph.i.i80.i.prol ], [ %i.jj, %.lr.ph.i.i80.i.preheader ]
  %prol.iter632 = phi i8 [ %prol.iter632.next, %.lr.ph.i.i80.i.prol ], [ 0, %.lr.ph.i.i80.i.preheader ]
  %i.jn = mul nsw i64 %i.jm, 10                   ; 3 uses
  %i.jo = add nuw i8 %.024.i.i81.i.prol, 1        ; 2 uses
  %prol.iter632.next = add i8 %prol.iter632, 1    ; 2 uses
  %prol.iter632.cmp.not = icmp eq i8 %prol.iter632.next, %xtraiter630
  br i1 %prol.iter632.cmp.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol, !llvm.loop !1410

.lr.ph.i.i80.i.prol.loopexit:                     ; preds = %.lr.ph.i.i80.i.prol, %.lr.ph.i.i80.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i80.i.preheader ], [ %i.jn, %.lr.ph.i.i80.i.prol ]
  %.unr633 = phi i64 [ %.pre.i.i78.i, %.lr.ph.i.i80.i.preheader ], [ %i.jn, %.lr.ph.i.i80.i.prol ]
  %.024.i.i81.i.unr = phi i8 [ %i.jj, %.lr.ph.i.i80.i.preheader ], [ %i.jo, %.lr.ph.i.i80.i.prol ]
  %i.jp = sub i8 %i.jj, %4
  %i.jq = icmp ugt i8 %i.jp, -8
  br i1 %i.jq, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i
  %i.jr = phi i64 [ %i.js, %.lr.ph.i.i80.i ], [ %.unr633, %.lr.ph.i.i80.i.prol.loopexit ]
  %.024.i.i81.i = phi i8 [ %i.jt, %.lr.ph.i.i80.i ], [ %.024.i.i81.i.unr, %.lr.ph.i.i80.i.prol.loopexit ]
  %i.js = mul nsw i64 %i.jr, 100000000            ; 2 uses
  %i.jt = add nuw i8 %.024.i.i81.i, 8             ; 2 uses
  %exitcond.not.i.i82.i.7 = icmp eq i8 %i.jt, %4
  br i1 %exitcond.not.i.i82.i.7, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i, !llvm.loop !59

._crit_edge.i.i83.i:                              ; preds = %.lr.ph.i.i80.i, %.lr.ph.i.i80.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i.i80.i.prol.loopexit ], [ %i.js, %.lr.ph.i.i80.i ] ; 2 uses
  store i64 %.lcssa, ptr %7, align 8, !tbaa !817
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit: ; preds = %thread-pre-split6.thread.thread, %._crit_edge.i.i83.i
  %i.ju = phi i64 [ %.lcssa, %._crit_edge.i.i83.i ], [ %.pre.i.i78.i, %thread-pre-split6.thread.thread ]
  %i.jv = icmp slt i64 %i.ju, %i.i
  %i.jw = icmp ugt i64 %.8.i68.i261269276, %.088.i.i
  %spec.select.i79.i = and i1 %i.jw, %i.jv
  br i1 %spec.select.i79.i, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bg:                                            ; preds = %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  %i.jx = load i64, ptr %7, align 8, !tbaa !817
  store i64 %i.jx, ptr %2, align 8, !tbaa !137
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21: ; preds = %bb.ap, %bb.ao
  store i8 %i.ga, ptr %i.e, align 4
  store i8 %i.fz, ptr %i.f, align 1
  store i64 %i.gk, ptr %7, align 8
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

switch.hole_check:                                ; preds = %bb.ad
  %switch.maskindex = zext nneg i8 %i.eq to i32
  %switch.shifted = lshr i32 134285313, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ae

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.y, %bb.u, %bb.z, %bb.k, %bb.l, %.lr.ph135.i.i, %bb.bc, %bb.ay, %bb.bd, %.lr.ph139.i.i, %switch.hole_check, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21, %bb.ar, %bb.as, %bb.at, %.thread118.i.i, %.thread114.i.i, %.thread110.i.i, %bb.n, %bb.o, %bb.a, %bb.p, %.thread114.i87.i, %.split11.thread, %.split.thread, %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, %bb.bg
  %.0.i9 = phi i1 [ false, %.split11.thread ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit ], [ true, %bb.bg ], [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i ], [ false, %.split ], [ false, %.split11 ], [ false, %.split.thread ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %.thread114.i87.i ], [ false, %bb.y ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.n ], [ false, %.thread110.i.i ], [ false, %.thread114.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread.loopexit21 ], [ false, %bb.bc ], [ false, %.thread118.i.i ], [ false, %bb.at ], [ false, %bb.k ], [ false, %.lr.ph139.i.i ], [ false, %.lr.ph135.i.i ], [ false, %switch.hole_check ], [ false, %bb.bd ], [ false, %bb.ay ], [ false, %bb.l ], [ false, %bb.z ], [ false, %bb.u ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i1 %.0.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastINS_9hugeint_tELc44EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %12 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %13 = alloca %"struct.duckdb::DecimalCastData.983", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 %3, ptr %i.a, align 8, !tbaa !824
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 17 ; 3 uses
  store i8 %4, ptr %i.b, align 1, !tbaa !825
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 18 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 19 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 21 ; 2 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 16, !tbaa !137
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !137
  %cond81.i = icmp eq i64 %1, 0
  br i1 %cond81.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.03483.i = phi ptr [ %i.l, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.03582.i = phi i64 [ %i.m, %bb.b ], [ %1, %bb.a ] ; 34 uses
  %i.k = load i8, ptr %.03483.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.k, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.m = add i64 %.03582.i, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.m, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1411

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.03582.i, 1
  br i1 %.not.i, label %.thread115.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.z
  %.084126.i.i = phi i64 [ %.7.i.i, %bb.z ], [ 1, %bb.c ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.084126.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !144   ; 3 uses
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %i.q = icmp ult i8 %i.p, 10
  br i1 %i.q, label %bb.u, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = icmp eq i8 %i.o, 44
  br i1 %i.r, label %bb.e, label %.thread110.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %.084126.i.i, 1             ; 2 uses
  %i.t = add nuw i64 %.084126.i.i, 1              ; 5 uses
  %i.u = icmp ult i64 %i.t, %.03582.i
  br i1 %i.u, label %.lr.ph128.i.i, label %.thread113.i.i

.lr.ph128.i.i:                                    ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph128.i.i
  %.185127.i.i = phi i64 [ %i.t, %.lr.ph128.i.i ], [ %.2.i.i, %bb.n ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.185127.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !144   ; 3 uses
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.d, align 1, !tbaa !826  ; 3 uses
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !825
  %i.ac = icmp ne i8 %i.aa, %i.ab
  %i.ad = load i8, ptr %i.e, align 4, !range !171
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.e, align 4, !tbaa !827
  %i.af = icmp samesign ugt i8 %i.x, 52
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.f, align 1, !tbaa !828
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = load i8, ptr %i.c, align 2, !tbaa !829
  %i.ai = zext i8 %i.ah to i32
  %i.aj = zext i8 %i.aa to i32
  %i.ak = add nuw nsw i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i32 %i.ak, 37
  br i1 %i.al, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add i8 %i.aa, 1
  store i8 %i.am, ptr %i.d, align 1, !tbaa !826
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 10)
  %i.an = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  store i64 %i.ao, ptr %9, align 8
  %i.ap = extractvalue { i64, i64 } %i.an, 1
  store i64 %i.ap, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.aq = zext nneg i8 %i.y to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.aq)
  %i.ar = call { i64, i64 } @_ZNK6duckdb9hugeint_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %11) ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = extractvalue { i64, i64 } %i.ar, 1
  store i64 %i.as, ptr %13, align 8, !tbaa !137
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.j, %bb.i
  %i.au = add nuw i64 %.185127.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.au, %.03582.i
  br i1 %.not103.i.i, label %.thread113.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !144
  %i.ax = icmp eq i8 %i.aw, 95
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ay = add i64 %.185127.i.i, 2                 ; 3 uses
  %i.az = icmp eq i64 %i.ay, %.03582.i
  br i1 %i.az, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !144
  %i.bc = add i8 %i.bb, -48
  %i.bd = icmp ult i8 %i.bc, 10
  br i1 %i.bd, label %bb.n, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.k
  %.2.i.i = phi i64 [ %i.ay, %bb.m ], [ %i.au, %bb.k ] ; 3 uses
  %i.be = icmp ult i64 %.2.i.i, %.03582.i
  br i1 %i.be, label %bb.f, label %.thread113.i.i, !llvm.loop !1412

bb.o:                                             ; preds = %bb.f
  %i.bf = icmp ugt i64 %.185127.i.i, %i.t
  %or.cond.i.i = or i1 %i.s, %i.bf
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread113.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, %bb.e
  %.185.lcssa.i.i = phi i64 [ %i.t, %bb.e ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.n ] ; 2 uses
  %i.bg = icmp ugt i64 %.185.lcssa.i.i, %i.t
  %or.cond114.i.i = or i1 %i.s, %i.bg
  br i1 %or.cond114.i.i, label %.thread115.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.o, %bb.d
  %i.bh = phi i8 [ %i.o, %bb.d ], [ %i.x, %bb.o ]
  %.4.i.i = phi i64 [ %.084126.i.i, %bb.d ], [ %.185127.i.i, %bb.o ] ; 3 uses
  switch i8 %i.bh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bi = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %.03582.i
  br i1 %i.bj, label %.lr.ph130.i.i, label %.thread115.i.i

.lr.ph130.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.bk = phi i64 [ %i.bn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bi, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !144
  switch i8 %i.bm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %.03582.i
  br i1 %exitcond.not.i.i, label %.thread115.i.i, label %.lr.ph130.i.i, !llvm.loop !1413

bb.p:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.bo = icmp eq i64 %.4.i.i, 1
  br i1 %i.bo, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.bp, %.03582.i
  br i1 %.not104.i.i, label %bb.r, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store i16 0, ptr %12, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bp ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !144
  %i.bs = icmp eq i8 %i.br, 45
  %i.bt = sub nuw i64 %.03582.i, %i.bp            ; 2 uses
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bq, i64 noundef %i.bt, ptr noundef nonnull align 2 dereferenceable(2) %12)
  br i1 %i.bu, label %.split11, label %.split11.thread

bb.t:                                             ; preds = %bb.r
  %i.bv = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bq, i64 noundef %i.bt, ptr noundef nonnull align 2 dereferenceable(2) %12)
  br i1 %i.bv, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.s, %bb.t
  %i.bw = load i16, ptr %12, align 2, !tbaa !770
  %i.bx = sext i16 %i.bw to i32
  %i.by = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.by, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bz = add nuw i64 %.084126.i.i, 1             ; 3 uses
  %i.ca = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 noundef zeroext %i.p)
  br i1 %i.ca, label %bb.v, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.u
  %.not105.i.i = icmp eq i64 %i.bz, %.03582.i
  br i1 %.not105.i.i, label %.thread115.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bz
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.cc, 95
  br i1 %.not106.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cd = add i64 %.084126.i.i, 2                 ; 3 uses
  %i.ce = icmp eq i64 %i.cd, %.03582.i
  br i1 %i.ce, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.cd
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !144
  %i.ch = add i8 %i.cg, -48
  %i.ci = icmp ult i8 %i.ch, 10
  br i1 %i.ci, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w
  %.7.i.i = phi i64 [ %i.bz, %bb.w ], [ %i.cd, %bb.y ] ; 3 uses
  %i.cj = icmp ult i64 %.7.i.i, %.03582.i
  br i1 %i.cj, label %.lr.ph.i.i, label %.thread115.i.i, !llvm.loop !1414

.thread115.i.i:                                   ; preds = %bb.z, %bb.v, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %.thread113.i.i
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread113.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bi, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.03582.i, %bb.v ], [ %.7.i.i, %bb.z ]
  %i.ck = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13)
  %i.cl = icmp ugt i64 %.8.i.i, 1
  %or.cond23 = and i1 %i.ck, %i.cl
  br i1 %or.cond23, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread115.i.i.thread:                            ; preds = %bb.c
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.03582.i, 1
  %i.cn = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %.not38.i, %i.cn
  br i1 %or.cond.i, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !144
  %i.cq = add i8 %i.cp, -66                       ; 2 uses
  %i.cr = call i8 @llvm.fshl.i8(i8 %i.cq, i8 %i.cq, i8 7)
  switch i8 %i.cr, label %bb.ag [
    i8 27, label %bb.ac
    i8 11, label %bb.ac
    i8 16, label %bb.ae
    i8 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.cs = icmp ugt i64 %.03582.i, 2
  br i1 %i.cs, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ae:                                            ; preds = %bb.ab, %bb.ab
  %i.cu = icmp ugt i64 %.03582.i, 2
  br i1 %i.cu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ag:                                            ; preds = %bb.ab, %bb.aa
  %i.cw = icmp eq i8 %i.k, 43
  %.088.i.i = zext i1 %i.cw to i64                ; 5 uses
  %i.cx = icmp ugt i64 %.03582.i, %.088.i.i
  br i1 %i.cx, label %.lr.ph.i40.i, label %.thread119.i.i.thread

.lr.ph.i40.i:                                     ; preds = %bb.ag, %bb.bd
  %.0130.i.i = phi i64 [ %.7.i47.i, %bb.bd ], [ %.088.i.i, %bb.ag ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.0130.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !144 ; 3 uses
  %i.da = add i8 %i.cz, -48                       ; 2 uses
  %i.db = icmp ult i8 %i.da, 10
  br i1 %i.db, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i40.i
  %i.dc = icmp eq i8 %i.cz, 44
  br i1 %i.dc, label %bb.ai, label %.thread114.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dd = icmp ugt i64 %.0130.i.i, %.088.i.i      ; 2 uses
  %i.de = add nuw i64 %.0130.i.i, 1               ; 5 uses
  %i.df = icmp ult i64 %i.de, %.03582.i
  br i1 %i.df, label %.lr.ph132.i.i, label %.thread117.i.i

.lr.ph132.i.i:                                    ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %.lr.ph132.i.i
  %.1131.i.i = phi i64 [ %i.de, %.lr.ph132.i.i ], [ %.2.i46.i, %bb.ar ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.1131.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !144 ; 3 uses
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dl = load i8, ptr %i.d, align 1, !tbaa !826  ; 3 uses
  %i.dm = load i8, ptr %i.b, align 1, !tbaa !825
  %i.dn = icmp ne i8 %i.dl, %i.dm
  %i.do = load i8, ptr %i.e, align 4, !range !171
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond25 = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond25, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.e, align 4, !tbaa !827
  %i.dq = icmp samesign ugt i8 %i.di, 52
  %i.dr = zext i1 %i.dq to i8
  store i8 %i.dr, ptr %i.f, align 1, !tbaa !828
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ds = load i8, ptr %i.c, align 2, !tbaa !829
  %i.dt = zext i8 %i.ds to i32
  %i.du = zext i8 %i.dl to i32
  %i.dv = add nuw nsw i32 %i.dt, %i.du
  %i.dw = icmp samesign ugt i32 %i.dv, 37
  br i1 %i.dw, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = add i8 %i.dl, 1
  store i8 %i.dx, ptr %i.d, align 1, !tbaa !826
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 10)
  %i.dy = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.dz = extractvalue { i64, i64 } %i.dy, 0
  store i64 %i.dz, ptr %5, align 8
  %i.ea = extractvalue { i64, i64 } %i.dy, 1
  store i64 %i.ea, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.eb = zext nneg i8 %i.dj to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.eb)
  %i.ec = call { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  %i.ed = extractvalue { i64, i64 } %i.ec, 0
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  store i64 %i.ed, ptr %13, align 8, !tbaa !137
  store i64 %i.ee, ptr %.sroa.4.0..sroa_idx.i.i44.i, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.an, %bb.am
  %i.ef = add nuw i64 %.1131.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.ef, %.03582.i
  br i1 %.not107.i.i, label %.thread117.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !144
  %i.ei = icmp eq i8 %i.eh, 95
  br i1 %i.ei, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ej = add i64 %.1131.i.i, 2                   ; 3 uses
  %i.ek = icmp eq i64 %i.ej, %.03582.i
  br i1 %i.ek, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !tbaa !144
  %i.en = add i8 %i.em, -48
  %i.eo = icmp ult i8 %i.en, 10
  br i1 %i.eo, label %bb.ar, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.2.i46.i = phi i64 [ %i.ej, %bb.aq ], [ %i.ef, %bb.ao ] ; 3 uses
  %i.ep = icmp ult i64 %.2.i46.i, %.03582.i
  br i1 %i.ep, label %bb.aj, label %.thread117.i.i, !llvm.loop !1415

bb.as:                                            ; preds = %bb.aj
  %i.eq = icmp ugt i64 %.1131.i.i, %i.de
  %or.cond.i45.i = or i1 %i.dd, %i.eq
  br i1 %or.cond.i45.i, label %.thread114.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread117.i.i:                                   ; preds = %bb.ar, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, %bb.ai
  %.1.lcssa.i.i = phi i64 [ %i.de, %bb.ai ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i46.i, %bb.ar ] ; 2 uses
  %i.er = icmp ugt i64 %.1.lcssa.i.i, %i.de
  %or.cond118.i.i = or i1 %i.dd, %i.er
  br i1 %or.cond118.i.i, label %.thread119.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.as, %bb.ah
  %i.es = phi i8 [ %i.cz, %bb.ah ], [ %i.di, %bb.as ]
  %.4.i41.i = phi i64 [ %.0130.i.i, %bb.ah ], [ %.1131.i.i, %bb.as ] ; 3 uses
  switch i8 %i.es, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 101, label %bb.at
    i8 69, label %bb.at
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i: ; preds = %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i
  %i.et = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %i.eu = icmp ult i64 %i.et, %.03582.i
  br i1 %i.eu, label %.lr.ph134.i.i, label %.thread119.i.i

.lr.ph134.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.ev = phi i64 [ %i.ey, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.et, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !144
  switch i8 %i.ex, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i
  %i.ey = add nuw i64 %i.ev, 1                    ; 2 uses
  %exitcond.not.i43.i = icmp eq i64 %i.ey, %.03582.i
  br i1 %exitcond.not.i43.i, label %.thread119.i.i, label %.lr.ph134.i.i, !llvm.loop !1416

bb.at:                                            ; preds = %.thread114.i.i, %.thread114.i.i
  %i.ez = icmp eq i64 %.4.i41.i, %.088.i.i
  br i1 %i.ez, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.fa, %.03582.i
  br i1 %.not108.i.i, label %bb.av, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store i16 0, ptr %8, align 2
  %i.fb = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fa ; 3 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !144
  %i.fd = icmp eq i8 %i.fc, 45
  %i.fe = sub nuw i64 %.03582.i, %i.fa            ; 2 uses
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ff = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fb, i64 noundef %i.fe, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.ff, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread13

bb.ax:                                            ; preds = %bb.av
  %i.fg = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fb, i64 noundef %i.fe, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.fg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread13

bb.ay:                                            ; preds = %.lr.ph.i40.i
  %i.fh = add nuw i64 %.0130.i.i, 1               ; 3 uses
  %i.fi = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 noundef zeroext %i.da)
  br i1 %i.fi, label %bb.az, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.az:                                            ; preds = %bb.ay
  %.not109.i.i = icmp eq i64 %i.fh, %.03582.i
  br i1 %.not109.i.i, label %.thread119.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fj = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.fk, 95
  br i1 %.not110.i.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fl = add i64 %.0130.i.i, 2                   ; 3 uses
  %i.fm = icmp eq i64 %i.fl, %.03582.i
  br i1 %i.fm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fn = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !144
  %i.fp = add i8 %i.fo, -48
  %i.fq = icmp ult i8 %i.fp, 10
  br i1 %i.fq, label %bb.bd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.7.i47.i = phi i64 [ %i.fh, %bb.ba ], [ %i.fl, %bb.bc ] ; 3 uses
  %i.fr = icmp ult i64 %.7.i47.i, %.03582.i
  br i1 %i.fr, label %.lr.ph.i40.i, label %.thread119.i.i, !llvm.loop !1417

.thread119.i.i:                                   ; preds = %bb.bd, %bb.az, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %.thread117.i.i
  %.8.i39.i = phi i64 [ %.1.lcssa.i.i, %.thread117.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.et, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ], [ %.03582.i, %bb.az ], [ %.7.i47.i, %bb.bd ]
  %i.fs = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13)
  %i.ft = icmp ugt i64 %.8.i39.i, %.088.i.i
  %or.cond26 = and i1 %i.fs, %i.ft
  br i1 %or.cond26, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread119.i.i.thread:                            ; preds = %bb.ag
  %i.fu = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread13: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit: ; preds = %bb.aw, %bb.ax
  %i.fv = load i16, ptr %8, align 2, !tbaa !770
  %i.fw = sext i16 %i.fv to i32
  %i.fx = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %i.fx, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %.thread119.i.i, %.thread115.i.i, %.split11, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !603
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.x, %bb.u, %bb.y, %bb.l, %bb.m, %.lr.ph130.i.i, %bb.bb, %bb.ay, %bb.bc, %bb.ap, %bb.aq, %.lr.ph134.i.i, %.thread119.i.i.thread, %.thread115.i.i.thread, %.thread114.i.i, %bb.at, %bb.as, %bb.au, %.thread119.i.i, %bb.ae, %bb.ac, %bb.a, %.thread113.i.i, %.thread110.i.i, %bb.p, %bb.o, %bb.q, %.thread115.i.i, %bb.ad, %.thread117.i.i, %bb.af, %.split11.thread, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread13, %.split11, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit, %bb.be
  %.0.i8 = phi i1 [ false, %bb.l ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit ], [ true, %bb.be ], [ false, %.thread115.i.i.thread ], [ false, %.thread114.i.i ], [ false, %.split11 ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread13 ], [ false, %.split11.thread ], [ false, %.thread119.i.i.thread ], [ false, %bb.af ], [ false, %bb.x ], [ false, %.thread117.i.i ], [ false, %bb.ad ], [ false, %.thread115.i.i ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.p ], [ false, %.thread110.i.i ], [ false, %.thread113.i.i ], [ false, %bb.a ], [ false, %.lr.ph134.i.i ], [ false, %bb.ap ], [ false, %bb.bb ], [ false, %.lr.ph130.i.i ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %.thread119.i.i ], [ false, %bb.au ], [ false, %bb.as ], [ false, %bb.at ], [ false, %bb.aq ], [ false, %bb.bc ], [ false, %bb.ay ], [ false, %bb.m ], [ false, %bb.y ], [ false, %bb.u ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  ret i1 %.0.i8
}

declare void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %7 = alloca %"struct.duckdb::DecimalCastData", align 2 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i16 0, ptr %7, align 2, !tbaa !806
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %3, ptr %i.a, align 2, !tbaa !807
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 %4, ptr %i.b, align 1, !tbaa !808
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 7 ; 5 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !137
  %i.j = trunc i64 %i.i to i16                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i16 %i.j, ptr %i.k, align 2, !tbaa !809
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.n, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.l = load i8, ptr %.034154.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.l, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.n = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.n, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1418

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.o = zext i8 %3 to i32
  %i.p = zext i8 %4 to i32
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.promoted92 = phi i16 [ 0, %.lr.ph.i.i ], [ %i.cx, %bb.y ] ; 5 uses
  %i.r = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cy, %bb.y ] ; 2 uses
  %i.s = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.y ] ; 6 uses
  %i.t = phi i16 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !144   ; 3 uses
  %i.w = add i8 %i.v, -48                         ; 3 uses
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.r, ptr %i.c, align 2
  store i16 %.promoted92, ptr %7, align 2
  %i.y = icmp eq i8 %i.v, 46
  br i1 %i.y, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %.084130.i.i, 1             ; 2 uses
  %i.aa = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ab = icmp ult i64 %i.aa, %.035153.i
  br i1 %i.ab, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ac = zext i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph133.i.i
  %i.ad = phi i16 [ %.promoted92, %.lr.ph133.i.i ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ae = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.aq, %bb.k ] ; 3 uses
  %i.af = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ar, %bb.k ] ; 4 uses
  %i.ag = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ba, %bb.k ] ; 5 uses
  %i.ah = phi i16 [ %i.t, %.lr.ph133.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.aa, %.lr.ph133.i.i ], [ %.2.i.i, %bb.k ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !144 ; 3 uses
  %i.ak = add i8 %i.aj, -48                       ; 2 uses
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, label %bb.l

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.g
  %i.am = icmp ne i8 %i.ag, %4
  %i.an = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %i.am, i1 true, i1 %i.an   ; 2 uses
  %i.ao = icmp samesign ugt i8 %i.aj, 52
  %i.ap = zext i1 %i.ao to i8
  %i.aq = select i1 %or.cond, i8 %i.ae, i8 %i.ap  ; 2 uses
  %i.ar = select i1 %or.cond, i8 %i.af, i8 1      ; 2 uses
  %i.as = zext i8 %i.ag to i32
  %i.at = add nuw nsw i32 %i.as, %i.ac
  %i.au = icmp samesign ult i32 %i.at, 4          ; 3 uses
  %i.av = mul i16 %i.ah, 10
  %i.aw = zext nneg i8 %i.ak to i16
  %i.ax = sub i16 %i.av, %i.aw                    ; 2 uses
  %i.ay = select i1 %i.au, i16 %i.ax, i16 %i.ad   ; 3 uses
  %i.az = zext i1 %i.au to i8
  %i.ba = add i8 %i.ag, %i.az                     ; 2 uses
  %i.bb = select i1 %i.au, i16 %i.ax, i16 %i.ah
  %i.bc = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bc, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !144
  %i.bf = icmp eq i8 %i.be, 95
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, %.035153.i
  br i1 %i.bh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !144
  %i.bk = add i8 %i.bj, -48
  %i.bl = icmp ult i8 %i.bk, 10
  br i1 %i.bl, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.h
  %.2.i.i = phi i64 [ %i.bg, %bb.j ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bm = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bm, label %bb.g, label %.thread114.i.i.loopexit, !llvm.loop !1419

bb.l:                                             ; preds = %bb.g
  store i8 %i.ag, ptr %i.d, align 1
  store i8 %i.af, ptr %i.e, align 2
  store i8 %i.ae, ptr %i.f, align 1
  store i16 %i.ad, ptr %7, align 2
  %i.bn = icmp ugt i64 %.185132.i.i, %i.aa
  %or.cond.i.i = or i1 %i.z, %i.bn
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i, %bb.k
  %.185.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.k ]
  store i16 %i.ay, ptr %7, align 2
  br label %.thread114.i.i

.thread114.i.i:                                   ; preds = %.thread114.i.i.loopexit, %bb.f
  %i.bo = phi i8 [ 0, %bb.f ], [ %i.aq, %.thread114.i.i.loopexit ]
  %i.bp = phi i8 [ 0, %bb.f ], [ %i.ar, %.thread114.i.i.loopexit ]
  %.promoted.i.i.i.i198 = phi i16 [ %.promoted92, %bb.f ], [ %i.ay, %.thread114.i.i.loopexit ]
  %i.bq = phi i8 [ 0, %bb.f ], [ %i.ba, %.thread114.i.i.loopexit ]
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i197 = phi i16 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ag, %bb.l ]   ; 2 uses
  %i.bv = phi i8 [ %i.v, %bb.e ], [ %i.aj, %bb.l ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.l ] ; 3 uses
  switch i8 %i.bv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.m
    i8 69, label %bb.m
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bw = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %.035153.i
  br i1 %i.bx, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.by = phi i64 [ %i.cb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !144
  switch i8 %i.ca, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cb = add nuw i64 %i.by, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cb, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1420

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !144
  %i.cg = icmp eq i8 %i.cf, 45
  %i.ch = sub nuw i64 %.035153.i, %i.cd           ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ci, label %.split, label %.split.thread

bb.q:                                             ; preds = %bb.o
  %i.cj = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.cj, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !770
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %i.cm, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.d
  %i.cn = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.co = icmp eq i16 %i.t, 0
  %i.cp = zext nneg i8 %i.w to i16
  %i.cq = icmp eq i8 %i.w, 0
  %or.cond.i.i.i = and i1 %i.co, %i.cq
  br i1 %or.cond.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = zext i8 %i.s to i32
  %i.cs = icmp eq i32 %i.q, %i.cr
  %i.ct = icmp slt i16 %i.t, -3276
  %or.cond538 = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond538, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = add i8 %i.s, 1                          ; 2 uses
  %i.cv = mul i16 %i.t, 10
  %i.cw = sub i16 %i.cv, %i.cp                    ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cx = phi i16 [ %i.cw, %bb.t ], [ %.promoted92, %bb.r ] ; 3 uses
  %i.cy = phi i8 [ %i.cu, %bb.t ], [ %i.r, %bb.r ]
  %i.cz = phi i8 [ %i.cu, %bb.t ], [ %i.s, %bb.r ]
  %i.da = phi i16 [ %i.cw, %bb.t ], [ 0, %bb.r ]
  %.not105.i.i = icmp eq i64 %i.cn, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cn
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !144
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1421

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i198, %.thread114.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %4
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %4            ; 3 uses
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
end_hunk_5
begin_hunk_6_@_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_hh:bb.a

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.u, %bb.y, %bb.z
  %.sink = phi i16 [ %i.dx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cx, %bb.u ] ; 2 uses
  %.ph = phi i8 [ %i.dt, %bb.z ], [ 0, %bb.y ], [ 0, %bb.u ]
  %.8.i.i248255272.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i16 %.sink, ptr %7, align 2
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i248255272 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i248255272.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i16 [ 0, %bb.c ], [ %i.du, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 4 uses
  %i.dz = icmp ult i8 %i.dy, %4
  br i1 %i.dz, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

iter.check:                                       ; preds = %thread-pre-split.thread.thread
  %i.ea = xor i8 %i.dy, -1
  %i.eb = add i8 %4, %i.ea                        ; 3 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.eb, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check500 = icmp ult i8 %i.eb, 15
  br i1 %min.iters.check500, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ee = and i32 %i.ed, 12
  %n.vec = and i32 %i.ed, 496                     ; 4 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dy, %i.ef
  %i.eh = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi501 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ej = mul <8 x i16> %vec.phi501, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !1422

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ej, %i.ei
  %i.el = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ee, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !810

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.el, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec502 = and i32 %i.ed, 508                  ; 3 uses
  %i.em = trunc i32 %n.vec502 to i8
  %i.en = add i8 %i.dy, %i.em
  %i.eo = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index503 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next505, %vec.epilog.vector.body ]
  %vec.phi504 = phi <4 x i16> [ %i.eo, %vec.epilog.ph ], [ %i.ep, %vec.epilog.vector.body ]
  %i.ep = mul <4 x i16> %vec.phi504, splat (i16 10) ; 2 uses
  %index.next505 = add nuw i32 %index503, 4       ; 2 uses
  %i.eq = icmp eq i32 %index.next505, %n.vec502
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1423

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.er = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.ep) ; 2 uses
  %cmp.n506 = icmp eq i32 %i.ed, %n.vec502
  br i1 %cmp.n506, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph605 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.es = phi i16 [ %i.et, %.lr.ph.i.i.i ], [ %.ph605, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.eu, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.et = mul i16 %i.es, 10                       ; 2 uses
  %i.eu = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eu, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1424

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa449 = phi i16 [ %i.er, %vec.epilog.middle.block ], [ %i.el, %middle.block ], [ %i.et, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa449, ptr %7, align 2, !tbaa !806
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ev = phi i16 [ %.lcssa449, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ew = sext i16 %i.ev to i32
  %i.ex = sext i16 %i.j to i32
  %i.ey = sub nsw i32 0, %i.ex
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  %i.fa = icmp ugt i64 %.8.i.i248255272, 1
  %spec.select.i.i = and i1 %i.fa, %i.ez
  br i1 %spec.select.i.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fb = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.fb
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !144
  %i.fe = add i8 %i.fd, -66                       ; 2 uses
  %i.ff = tail call i8 @llvm.fshl.i8(i8 %i.fe, i8 %i.fe, i8 7) ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 28
  br i1 %i.fg, label %switch.hole_check, label %bb.ac

bb.ac:                                            ; preds = %switch.hole_check, %bb.ab, %bb.aa
  %i.fh = icmp eq i8 %i.l, 43
  %.088.i.i = zext i1 %i.fh to i64                ; 5 uses
  %i.fi = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.fi, label %.lr.ph.i85.i, label %thread-pre-split6.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ac
  %i.fj = zext i8 %3 to i32
  %i.fk = zext i8 %4 to i32
  %i.fl = sub nsw i32 %i.fj, %i.fk
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bc, %.lr.ph.i85.i
  %i.fm = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.ix, %bb.bc ] ; 5 uses
  %i.fn = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iy, %bb.bc ] ; 2 uses
  %i.fo = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iz, %bb.bc ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bc ] ; 6 uses
  %i.fp = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.ja, %bb.bc ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !144 ; 3 uses
  %i.fs = add i8 %i.fr, -48                       ; 3 uses
  %i.ft = icmp ult i8 %i.fs, 10
  br i1 %i.ft, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fn, ptr %i.c, align 2
  store i16 %i.fm, ptr %7, align 2
  %i.fu = icmp eq i8 %i.fr, 46
  br i1 %i.fu, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fv = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fw = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fx = icmp ult i64 %i.fw, %.035153.i
  br i1 %i.fx, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fy = zext i8 %i.fo to i32
  %.promoted = load i8, ptr %i.e, align 2
  %.promoted375 = load i8, ptr %i.f, align 1
  %.promoted379 = load i16, ptr %7, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ao, %.lr.ph137.i.i
  %i.fz = phi i16 [ %.promoted379, %.lr.ph137.i.i ], [ %i.gz, %bb.ao ] ; 2 uses
  %i.ga = phi i8 [ %.promoted375, %.lr.ph137.i.i ], [ %i.go, %bb.ao ] ; 2 uses
  %i.gb = phi i8 [ %.promoted, %.lr.ph137.i.i ], [ %i.gp, %bb.ao ] ; 2 uses
  %i.gc = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gq, %bb.ao ] ; 2 uses
  %.promoted.i.i.i71.i204 = phi i16 [ %i.fm, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i203, %bb.ao ] ; 2 uses
  %i.gd = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gr, %bb.ao ] ; 3 uses
  %i.ge = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.ha, %bb.ao ] ; 6 uses
  %i.gf = phi i16 [ %i.fp, %.lr.ph137.i.i ], [ %i.hb, %bb.ao ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fw, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ao ] ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !144 ; 3 uses
  %i.gi = add i8 %i.gh, -48                       ; 2 uses
  %i.gj = icmp ult i8 %i.gi, 10
  br i1 %i.gj, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.gk = icmp ne i8 %i.ge, %4
  %i.gl = trunc nuw i8 %i.gd to i1
  %or.cond18 = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %or.cond18, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = icmp samesign ugt i8 %i.gh, 52
  %i.gn = zext i1 %i.gm to i8                     ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.go = phi i8 [ %i.gn, %bb.ai ], [ %i.ga, %bb.ah ] ; 3 uses
  %i.gp = phi i8 [ 1, %bb.ai ], [ %i.gb, %bb.ah ] ; 3 uses
  %i.gq = phi i8 [ %i.gn, %bb.ai ], [ %i.gc, %bb.ah ] ; 2 uses
  %i.gr = phi i8 [ 1, %bb.ai ], [ %i.gd, %bb.ah ] ; 2 uses
  %i.gs = zext i8 %i.ge to i32
  %i.gt = add nuw nsw i32 %i.gs, %i.fy
  %i.gu = icmp samesign ugt i32 %i.gt, 3
  br i1 %i.gu, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gv = add i8 %i.ge, 1
  %i.gw = mul i16 %i.gf, 10
  %i.gx = zext nneg i8 %i.gi to i16
  %i.gy = add i16 %i.gw, %i.gx                    ; 3 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.gz = phi i16 [ %i.gy, %bb.ak ], [ %i.fz, %bb.aj ] ; 3 uses
  %.promoted.i.i.i71.i203 = phi i16 [ %i.gy, %bb.ak ], [ %.promoted.i.i.i71.i204, %bb.aj ] ; 2 uses
  %i.ha = phi i8 [ %i.gv, %bb.ak ], [ %i.ge, %bb.aj ] ; 2 uses
  %i.hb = phi i16 [ %i.gy, %bb.ak ], [ %i.gf, %bb.aj ]
  %i.hc = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.hc, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !144
  %i.hf = icmp eq i8 %i.he, 95
  br i1 %i.hf, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.hg = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.hh = icmp eq i64 %i.hg, %.035153.i
  br i1 %i.hh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hg
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !144
  %i.hk = add i8 %i.hj, -48
  %i.hl = icmp ult i8 %i.hk, 10
  br i1 %i.hl, label %bb.ao, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.2.i92.i = phi i64 [ %i.hg, %bb.an ], [ %i.hc, %bb.al ] ; 3 uses
  %i.hm = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.hm, label %bb.ag, label %.thread118.i.i.loopexit, !llvm.loop !1425

bb.ap:                                            ; preds = %bb.ag
  store i8 %i.gb, ptr %i.e, align 2
  store i8 %i.ga, ptr %i.f, align 1
  store i16 %i.fz, ptr %7, align 2
  store i8 %i.ge, ptr %i.d, align 1
  %i.hn = icmp ugt i64 %.1136.i.i, %i.fw
  %or.cond.i91.i = or i1 %i.fv, %i.hn
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, %bb.ao
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ao ]
  store i8 %i.gp, ptr %i.e, align 2
  store i8 %i.go, ptr %i.f, align 1
  store i16 %i.gz, ptr %7, align 2
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.af
  %i.ho = phi i8 [ 0, %bb.af ], [ %i.gq, %.thread118.i.i.loopexit ]
  %i.hp = phi i8 [ 0, %bb.af ], [ %i.gr, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i202 = phi i16 [ %i.fm, %bb.af ], [ %.promoted.i.i.i71.i203, %.thread118.i.i.loopexit ]
  %i.hq = phi i8 [ 0, %bb.af ], [ %i.ha, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fw, %bb.af ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hr = icmp ugt i64 %.1.lcssa.i.i, %i.fw
  %or.cond119.i.i = or i1 %i.fv, %i.hr
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ap, %bb.ae
  %i.hs = phi i8 [ 0, %bb.ae ], [ %i.gc, %bb.ap ] ; 2 uses
  %i.ht = phi i8 [ 0, %bb.ae ], [ %i.gd, %bb.ap ] ; 2 uses
  %.promoted.i.i.i71.i201 = phi i16 [ %i.fm, %bb.ae ], [ %.promoted.i.i.i71.i204, %bb.ap ] ; 2 uses
  %i.hu = phi i8 [ 0, %bb.ae ], [ %i.ge, %bb.ap ] ; 2 uses
  %i.hv = phi i8 [ %i.fr, %bb.ae ], [ %i.gh, %bb.ap ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ae ], [ %.1136.i.i, %bb.ap ] ; 3 uses
  switch i8 %i.hv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.aq
    i8 69, label %bb.aq
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hw = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %.035153.i
  br i1 %i.hx, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hy = phi i64 [ %i.ib, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !144
  switch i8 %i.ia, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.ib = add nuw i64 %i.hy, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.ib, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !1426

bb.aq:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.ic = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.ic, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.id = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.id, %.035153.i
  br i1 %.not108.i.i, label %bb.as, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i16 0, ptr %5, align 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.id ; 3 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !144
  %i.ig = icmp eq i8 %i.if, 45
  %i.ih = sub nuw i64 %.035153.i, %i.id           ; 2 uses
  br i1 %i.ig, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ii = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ie, i64 noundef %i.ih, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ii, label %.split11, label %.split11.thread

bb.au:                                            ; preds = %bb.as
  %i.ij = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ie, i64 noundef %i.ih, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ij, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.at, %bb.au
  %i.ik = load i16, ptr %5, align 2, !tbaa !770
  %i.il = sext i16 %i.ik to i32
  %i.im = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb0EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %7, i32 noundef %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.im, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.ad
  %i.in = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.io = icmp eq i16 %i.fp, 0
  %i.ip = zext nneg i8 %i.fs to i16
  %i.iq = icmp eq i8 %i.fs, 0
  %or.cond.i.i93.i = and i1 %i.io, %i.iq
  br i1 %or.cond.i.i93.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ir = zext i8 %i.fo to i32
  %i.is = icmp eq i32 %i.fl, %i.ir
  %i.it = icmp sgt i16 %i.fp, 3276
  %or.cond539 = select i1 %i.is, i1 true, i1 %i.it
  br i1 %or.cond539, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iu = add i8 %i.fo, 1                         ; 2 uses
  %i.iv = mul i16 %i.fp, 10
  %i.iw = add i16 %i.iv, %i.ip                    ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.ix = phi i16 [ %i.iw, %bb.ax ], [ %i.fm, %bb.av ] ; 3 uses
  %i.iy = phi i8 [ %i.iu, %bb.ax ], [ %i.fn, %bb.av ]
  %i.iz = phi i8 [ %i.iu, %bb.ax ], [ %i.fo, %bb.av ]
  %i.ja = phi i16 [ %i.iw, %bb.ax ], [ 0, %bb.av ]
  %.not109.i.i = icmp eq i64 %i.in, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split6.thread.thread.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.in
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.jc, 95
  br i1 %.not110.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jd = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.je = icmp eq i64 %i.jd, %.035153.i
  br i1 %i.je, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jf = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.jd
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !144
  %i.jh = add i8 %i.jg, -48
  %i.ji = icmp ult i8 %i.jh, 10
  br i1 %i.ji, label %bb.bc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.7.i94.i = phi i64 [ %i.in, %bb.az ], [ %i.jd, %bb.bb ] ; 3 uses
  %i.jj = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.jj, label %bb.ad, label %thread-pre-split6.thread.thread.sink.split, !llvm.loop !1427

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.jk = phi i8 [ %i.ho, %.thread118.i.i ], [ %i.hs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.jl = phi i8 [ %i.hp, %.thread118.i.i ], [ %i.ht, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.ht, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i16 [ %.promoted.i.i.i71.i202, %.thread118.i.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.jm = phi i8 [ %i.hq, %.thread118.i.i ], [ %i.hu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.jn = icmp ugt i8 %i.jm, %4
end_hunk_6
begin_hunk_7_@_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_hh:bb.a
  %vec.phi517 = phi <8 x i16> [ splat (i16 1), %vector.ph512 ], [ %i.kj, %vector.body514 ]
  %i.ki = mul <8 x i16> %vec.phi516, splat (i16 10) ; 2 uses
  %i.kj = mul <8 x i16> %vec.phi517, splat (i16 10) ; 2 uses
  %index.next518 = add nuw i32 %index515, 16      ; 2 uses
  %i.kk = icmp eq i32 %index.next518, %n.vec513
  br i1 %i.kk, label %middle.block519, label %vector.body514, !llvm.loop !1428

middle.block519:                                  ; preds = %vector.body514
  %bin.rdx520 = mul <8 x i16> %i.kj, %i.ki
  %i.kl = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx520) ; 3 uses
  %cmp.n521 = icmp eq i32 %i.kd, %n.vec513
  br i1 %cmp.n521, label %._crit_edge.i.i83.i, label %vec.epilog.iter.check526

vec.epilog.iter.check526:                         ; preds = %middle.block519
  %min.epilog.iters.check527 = icmp eq i32 %i.ke, 0
  br i1 %min.epilog.iters.check527, label %.lr.ph.i.i80.i.preheader, label %vec.epilog.ph528, !prof !810

vec.epilog.ph528:                                 ; preds = %vector.main.loop.iter.check510, %vec.epilog.iter.check526
  %vec.epilog.resume.val522 = phi i32 [ %n.vec513, %vec.epilog.iter.check526 ], [ 0, %vector.main.loop.iter.check510 ]
  %bc.merge.rdx523 = phi i16 [ %i.kl, %vec.epilog.iter.check526 ], [ %.pre.i.i78.i, %vector.main.loop.iter.check510 ]
  %n.vec529 = and i32 %i.kd, 508                  ; 3 uses
  %i.km = trunc i32 %n.vec529 to i8
  %i.kn = add i8 %i.jy, %i.km
  %i.ko = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx523, i64 0
  br label %vec.epilog.vector.body530

vec.epilog.vector.body530:                        ; preds = %vec.epilog.vector.body530, %vec.epilog.ph528
  %index531 = phi i32 [ %vec.epilog.resume.val522, %vec.epilog.ph528 ], [ %index.next533, %vec.epilog.vector.body530 ]
  %vec.phi532 = phi <4 x i16> [ %i.ko, %vec.epilog.ph528 ], [ %i.kp, %vec.epilog.vector.body530 ]
  %i.kp = mul <4 x i16> %vec.phi532, splat (i16 10) ; 2 uses
  %index.next533 = add nuw i32 %index531, 4       ; 2 uses
  %i.kq = icmp eq i32 %index.next533, %n.vec529
  br i1 %i.kq, label %vec.epilog.middle.block534, label %vec.epilog.vector.body530, !llvm.loop !1429

vec.epilog.middle.block534:                       ; preds = %vec.epilog.vector.body530
  %i.kr = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.kp) ; 2 uses
  %cmp.n535 = icmp eq i32 %i.kd, %n.vec529
  br i1 %cmp.n535, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i.preheader

.lr.ph.i.i80.i.preheader:                         ; preds = %iter.check524, %vec.epilog.iter.check526, %vec.epilog.middle.block534
  %.ph542 = phi i16 [ %.pre.i.i78.i, %iter.check524 ], [ %i.kl, %vec.epilog.iter.check526 ], [ %i.kr, %vec.epilog.middle.block534 ]
  %.024.i.i81.i.ph = phi i8 [ %i.jy, %iter.check524 ], [ %i.kg, %vec.epilog.iter.check526 ], [ %i.kn, %vec.epilog.middle.block534 ]
  br label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.preheader, %.lr.ph.i.i80.i
  %i.ks = phi i16 [ %i.kt, %.lr.ph.i.i80.i ], [ %.ph542, %.lr.ph.i.i80.i.preheader ]
  %.024.i.i81.i = phi i8 [ %i.ku, %.lr.ph.i.i80.i ], [ %.024.i.i81.i.ph, %.lr.ph.i.i80.i.preheader ]
  %i.kt = mul i16 %i.ks, 10                       ; 2 uses
  %i.ku = add nuw i8 %.024.i.i81.i, 1             ; 2 uses
  %exitcond.not.i.i82.i = icmp eq i8 %i.ku, %4
  br i1 %exitcond.not.i.i82.i, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i, !llvm.loop !1430

._crit_edge.i.i83.i:                              ; preds = %.lr.ph.i.i80.i, %vec.epilog.middle.block534, %middle.block519
  %.lcssa = phi i16 [ %i.kr, %vec.epilog.middle.block534 ], [ %i.kl, %middle.block519 ], [ %i.kt, %.lr.ph.i.i80.i ] ; 2 uses
  store i16 %.lcssa, ptr %7, align 2, !tbaa !806
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit: ; preds = %thread-pre-split6.thread.thread, %._crit_edge.i.i83.i
  %i.kv = phi i16 [ %.lcssa, %._crit_edge.i.i83.i ], [ %.pre.i.i78.i, %thread-pre-split6.thread.thread ]
  %i.kw = icmp slt i16 %i.kv, %i.j
  %i.kx = icmp ugt i64 %.8.i68.i261269276, %.088.i.i
  %spec.select.i79.i = and i1 %i.kx, %i.kw
  br i1 %spec.select.i79.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit
  %i.ky = load i16, ptr %7, align 2, !tbaa !806
  store i16 %i.ky, ptr %2, align 2, !tbaa !775
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21: ; preds = %bb.an, %bb.am
  store i8 %i.gp, ptr %i.e, align 2
  store i8 %i.go, ptr %i.f, align 1
  store i16 %i.gz, ptr %7, align 2
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

switch.hole_check:                                ; preds = %bb.ab
  %switch.maskindex = zext nneg i8 %i.ff to i32
  %switch.shifted = lshr i32 134285313, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.w, %bb.s, %bb.x, %bb.i, %bb.j, %.lr.ph135.i.i, %bb.ba, %bb.aw, %bb.bb, %.lr.ph139.i.i, %switch.hole_check, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21, %bb.ap, %bb.aq, %bb.ar, %.thread118.i.i, %.thread114.i.i, %.thread110.i.i, %bb.l, %bb.m, %bb.a, %bb.n, %.thread114.i87.i, %.split11.thread, %.split.thread, %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, %bb.be
  %.0.i9 = phi i1 [ false, %.split11.thread ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit ], [ true, %bb.be ], [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i ], [ false, %.split ], [ false, %.split11 ], [ false, %.split.thread ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %.thread114.i87.i ], [ false, %bb.w ], [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.m ], [ false, %bb.l ], [ false, %.thread110.i.i ], [ false, %.thread114.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21 ], [ false, %bb.ba ], [ false, %.thread118.i.i ], [ false, %bb.ar ], [ false, %bb.i ], [ false, %.lr.ph139.i.i ], [ false, %.lr.ph135.i.i ], [ false, %switch.hole_check ], [ false, %bb.bb ], [ false, %bb.aw ], [ false, %bb.j ], [ false, %bb.x ], [ false, %bb.s ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i1 %.0.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %7 = alloca %"struct.duckdb::DecimalCastData.981", align 4 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i32 0, ptr %7, align 4, !tbaa !812
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 %3, ptr %i.a, align 4, !tbaa !813
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 5
  store i8 %4, ptr %i.b, align 1, !tbaa !814
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 9 ; 5 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !137
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.j, ptr %i.k, align 4, !tbaa !815
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.n, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.l = load i8, ptr %.034154.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.l, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.n = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.n, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1431

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.o = zext i8 %3 to i32
  %i.p = zext i8 %4 to i32
  %i.q = sub nsw i32 %i.o, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.promoted92 = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cx, %bb.y ] ; 5 uses
  %i.r = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cy, %bb.y ] ; 2 uses
  %i.s = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.y ] ; 6 uses
  %i.t = phi i32 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !144   ; 3 uses
  %i.w = add i8 %i.v, -48                         ; 3 uses
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.r, ptr %i.c, align 2
  store i32 %.promoted92, ptr %7, align 4
  %i.y = icmp eq i8 %i.v, 46
  br i1 %i.y, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %.084130.i.i, 1             ; 2 uses
  %i.aa = add nuw i64 %.084130.i.i, 1             ; 5 uses
  %i.ab = icmp ult i64 %i.aa, %.035153.i
  br i1 %i.ab, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ac = zext i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph133.i.i
  %i.ad = phi i32 [ %.promoted92, %.lr.ph133.i.i ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ae = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.aq, %bb.k ] ; 3 uses
  %i.af = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ar, %bb.k ] ; 4 uses
  %i.ag = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ba, %bb.k ] ; 5 uses
  %i.ah = phi i32 [ %i.t, %.lr.ph133.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.aa, %.lr.ph133.i.i ], [ %.2.i.i, %bb.k ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !144 ; 3 uses
  %i.ak = add i8 %i.aj, -48                       ; 2 uses
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, label %bb.l

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.g
  %i.am = icmp ne i8 %i.ag, %4
  %i.an = trunc nuw i8 %i.af to i1
  %or.cond = select i1 %i.am, i1 true, i1 %i.an   ; 2 uses
  %i.ao = icmp samesign ugt i8 %i.aj, 52
  %i.ap = zext i1 %i.ao to i8
  %i.aq = select i1 %or.cond, i8 %i.ae, i8 %i.ap  ; 2 uses
  %i.ar = select i1 %or.cond, i8 %i.af, i8 1      ; 2 uses
  %i.as = zext i8 %i.ag to i32
  %i.at = add nuw nsw i32 %i.as, %i.ac
  %i.au = icmp samesign ult i32 %i.at, 9          ; 3 uses
  %i.av = mul nsw i32 %i.ah, 10
  %i.aw = zext nneg i8 %i.ak to i32
  %i.ax = sub nsw i32 %i.av, %i.aw                ; 2 uses
  %i.ay = select i1 %i.au, i32 %i.ax, i32 %i.ad   ; 3 uses
  %i.az = zext i1 %i.au to i8
  %i.ba = add i8 %i.ag, %i.az                     ; 2 uses
  %i.bb = select i1 %i.au, i32 %i.ax, i32 %i.ah
  %i.bc = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bc, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !144
  %i.bf = icmp eq i8 %i.be, 95
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, %.035153.i
  br i1 %i.bh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !144
  %i.bk = add i8 %i.bj, -48
  %i.bl = icmp ult i8 %i.bk, 10
  br i1 %i.bl, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.h
  %.2.i.i = phi i64 [ %i.bg, %bb.j ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bm = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bm, label %bb.g, label %.thread114.i.i.loopexit, !llvm.loop !1432

bb.l:                                             ; preds = %bb.g
  store i8 %i.ag, ptr %i.d, align 1
  store i8 %i.af, ptr %i.e, align 4
  store i8 %i.ae, ptr %i.f, align 1
  store i32 %i.ad, ptr %7, align 4
  %i.bn = icmp ugt i64 %.185132.i.i, %i.aa
  %or.cond.i.i = or i1 %i.z, %i.bn
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i, %bb.k
  %.185.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.k ]
  store i32 %i.ay, ptr %7, align 4
  br label %.thread114.i.i

.thread114.i.i:                                   ; preds = %.thread114.i.i.loopexit, %bb.f
  %i.bo = phi i8 [ 0, %bb.f ], [ %i.aq, %.thread114.i.i.loopexit ]
  %i.bp = phi i8 [ 0, %bb.f ], [ %i.ar, %.thread114.i.i.loopexit ]
  %.promoted.i.i.i.i198 = phi i32 [ %.promoted92, %bb.f ], [ %i.ay, %.thread114.i.i.loopexit ]
  %i.bq = phi i8 [ 0, %bb.f ], [ %i.ba, %.thread114.i.i.loopexit ]
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i197 = phi i32 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ag, %bb.l ]   ; 2 uses
  %i.bv = phi i8 [ %i.v, %bb.e ], [ %i.aj, %bb.l ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.l ] ; 3 uses
  switch i8 %i.bv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.m
    i8 69, label %bb.m
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bw = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %.035153.i
  br i1 %i.bx, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.by = phi i64 [ %i.cb, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !144
  switch i8 %i.ca, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cb = add nuw i64 %i.by, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cb, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1433

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !144
  %i.cg = icmp eq i8 %i.cf, 45
  %i.ch = sub nuw i64 %.035153.i, %i.cd           ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ci, label %.split, label %.split.thread

bb.q:                                             ; preds = %bb.o
  %i.cj = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.cj, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !770
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %i.cm, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.d
  %i.cn = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.co = icmp eq i32 %i.t, 0
  %i.cp = zext nneg i8 %i.w to i32
  %i.cq = icmp eq i8 %i.w, 0
  %or.cond.i.i.i = and i1 %i.co, %i.cq
  br i1 %or.cond.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = zext i8 %i.s to i32
  %i.cs = icmp eq i32 %i.q, %i.cr
  %i.ct = icmp slt i32 %i.t, -214748364
  %or.cond515 = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond515, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = add i8 %i.s, 1                          ; 2 uses
  %i.cv = mul nsw i32 %i.t, 10
  %i.cw = sub nsw i32 %i.cv, %i.cp                ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cx = phi i32 [ %i.cw, %bb.t ], [ %.promoted92, %bb.r ] ; 3 uses
  %i.cy = phi i8 [ %i.cu, %bb.t ], [ %i.r, %bb.r ]
  %i.cz = phi i8 [ %i.cu, %bb.t ], [ %i.s, %bb.r ]
  %i.da = phi i32 [ %i.cw, %bb.t ], [ 0, %bb.r ]
  %.not105.i.i = icmp eq i64 %i.cn, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cn
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !144
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1434

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i198, %.thread114.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %4
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %4            ; 3 uses
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
end_hunk_7
begin_hunk_8_@_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_hh:bb.a
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod642 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod642)
  %i.dq = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa587 = phi i32 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa587, ptr %7, align 4, !tbaa !812
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i32 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !54

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa587, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond16 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond16, label %bb.z, label %thread-pre-split.thread.thread

bb.z:                                             ; preds = %thread-pre-split.thread
  %i.dx = add nsw i32 %i.du, -1
  br label %thread-pre-split.thread.thread.sink.split

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.u, %bb.y, %bb.z
  %.sink = phi i32 [ %i.dx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cx, %bb.u ] ; 2 uses
  %.ph = phi i8 [ %i.dt, %bb.z ], [ 0, %bb.y ], [ 0, %bb.u ]
  %.8.i.i248255272.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i32 %.sink, ptr %7, align 4
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 4 uses
  %.8.i.i248255272 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i248255272.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i32 [ 0, %bb.c ], [ %i.du, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %4
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = xor i8 %i.dy, -1
  %i.eb = add i8 %4, %i.ea                        ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.eb, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader582, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ed, 504                     ; 3 uses
  %i.ee = trunc i32 %n.vec to i8
  %i.ef = add i8 %i.dy, %i.ee
  %i.eg = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi500 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ei, %vector.body ]
  %i.eh = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ei = mul <4 x i32> %vec.phi500, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ej = icmp eq i32 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !1435

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader582

.lr.ph.i.i.i.preheader582:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph583 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ek, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader582, %.lr.ph.i.i.i
  %i.el = phi i32 [ %i.em, %.lr.ph.i.i.i ], [ %.ph583, %.lr.ph.i.i.i.preheader582 ]
  %.024.i.i.i = phi i8 [ %i.en, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader582 ]
  %i.em = mul nsw i32 %i.el, 10                   ; 2 uses
  %i.en = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.en, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1436

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa449 = phi i32 [ %i.ek, %middle.block ], [ %i.em, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa449, ptr %7, align 4, !tbaa !812
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.eo = phi i32 [ %.lcssa449, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ep = sub nsw i32 0, %i.j
  %i.eq = icmp sgt i32 %i.eo, %i.ep
  %i.er = icmp ugt i64 %.8.i.i248255272, 1
  %spec.select.i.i = and i1 %i.er, %i.eq
  br i1 %spec.select.i.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.es = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.es
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !144
  %i.ev = add i8 %i.eu, -66                       ; 2 uses
  %i.ew = tail call i8 @llvm.fshl.i8(i8 %i.ev, i8 %i.ev, i8 7) ; 2 uses
  %i.ex = icmp ult i8 %i.ew, 28
  br i1 %i.ex, label %switch.hole_check, label %bb.ac

bb.ac:                                            ; preds = %switch.hole_check, %bb.ab, %bb.aa
  %i.ey = icmp eq i8 %i.l, 43
  %.088.i.i = zext i1 %i.ey to i64                ; 5 uses
  %i.ez = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.ez, label %.lr.ph.i85.i, label %thread-pre-split6.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ac
  %i.fa = zext i8 %3 to i32
  %i.fb = zext i8 %4 to i32
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bc, %.lr.ph.i85.i
  %i.fd = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.io, %bb.bc ] ; 5 uses
  %i.fe = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ip, %bb.bc ] ; 2 uses
  %i.ff = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iq, %bb.bc ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bc ] ; 6 uses
  %i.fg = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ir, %bb.bc ] ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !144 ; 3 uses
  %i.fj = add i8 %i.fi, -48                       ; 3 uses
  %i.fk = icmp ult i8 %i.fj, 10
  br i1 %i.fk, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fe, ptr %i.c, align 2
  store i32 %i.fd, ptr %7, align 4
  %i.fl = icmp eq i8 %i.fi, 46
  br i1 %i.fl, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fm = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fn = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fo = icmp ult i64 %i.fn, %.035153.i
  br i1 %i.fo, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fp = zext i8 %i.ff to i32
  %.promoted = load i8, ptr %i.e, align 4
  %.promoted375 = load i8, ptr %i.f, align 1
  %.promoted379 = load i32, ptr %7, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ao, %.lr.ph137.i.i
  %i.fq = phi i32 [ %.promoted379, %.lr.ph137.i.i ], [ %i.gq, %bb.ao ] ; 2 uses
  %i.fr = phi i8 [ %.promoted375, %.lr.ph137.i.i ], [ %i.gf, %bb.ao ] ; 2 uses
  %i.fs = phi i8 [ %.promoted, %.lr.ph137.i.i ], [ %i.gg, %bb.ao ] ; 2 uses
  %i.ft = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gh, %bb.ao ] ; 2 uses
  %.promoted.i.i.i71.i204 = phi i32 [ %i.fd, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i203, %bb.ao ] ; 2 uses
  %i.fu = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gi, %bb.ao ] ; 3 uses
  %i.fv = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gr, %bb.ao ] ; 6 uses
  %i.fw = phi i32 [ %i.fg, %.lr.ph137.i.i ], [ %i.gs, %bb.ao ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fn, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ao ] ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !144 ; 3 uses
  %i.fz = add i8 %i.fy, -48                       ; 2 uses
  %i.ga = icmp ult i8 %i.fz, 10
  br i1 %i.ga, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.gb = icmp ne i8 %i.fv, %4
  %i.gc = trunc nuw i8 %i.fu to i1
  %or.cond18 = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %or.cond18, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gd = icmp samesign ugt i8 %i.fy, 52
  %i.ge = zext i1 %i.gd to i8                     ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gf = phi i8 [ %i.ge, %bb.ai ], [ %i.fr, %bb.ah ] ; 3 uses
  %i.gg = phi i8 [ 1, %bb.ai ], [ %i.fs, %bb.ah ] ; 3 uses
  %i.gh = phi i8 [ %i.ge, %bb.ai ], [ %i.ft, %bb.ah ] ; 2 uses
  %i.gi = phi i8 [ 1, %bb.ai ], [ %i.fu, %bb.ah ] ; 2 uses
  %i.gj = zext i8 %i.fv to i32
  %i.gk = add nuw nsw i32 %i.gj, %i.fp
  %i.gl = icmp samesign ugt i32 %i.gk, 8
  br i1 %i.gl, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gm = add i8 %i.fv, 1
  %i.gn = mul nsw i32 %i.fw, 10
  %i.go = zext nneg i8 %i.fz to i32
  %i.gp = add nsw i32 %i.gn, %i.go                ; 3 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.gq = phi i32 [ %i.gp, %bb.ak ], [ %i.fq, %bb.aj ] ; 3 uses
  %.promoted.i.i.i71.i203 = phi i32 [ %i.gp, %bb.ak ], [ %.promoted.i.i.i71.i204, %bb.aj ] ; 2 uses
  %i.gr = phi i8 [ %i.gm, %bb.ak ], [ %i.fv, %bb.aj ] ; 2 uses
  %i.gs = phi i32 [ %i.gp, %bb.ak ], [ %i.fw, %bb.aj ]
  %i.gt = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gt, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !144
  %i.gw = icmp eq i8 %i.gv, 95
  br i1 %i.gw, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gx = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gy = icmp eq i64 %i.gx, %.035153.i
  br i1 %i.gy, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gz = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gx
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !144
  %i.hb = add i8 %i.ha, -48
  %i.hc = icmp ult i8 %i.hb, 10
  br i1 %i.hc, label %bb.ao, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.2.i92.i = phi i64 [ %i.gx, %bb.an ], [ %i.gt, %bb.al ] ; 3 uses
  %i.hd = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.hd, label %bb.ag, label %.thread118.i.i.loopexit, !llvm.loop !1437

bb.ap:                                            ; preds = %bb.ag
  store i8 %i.fs, ptr %i.e, align 4
  store i8 %i.fr, ptr %i.f, align 1
  store i32 %i.fq, ptr %7, align 4
  store i8 %i.fv, ptr %i.d, align 1
  %i.he = icmp ugt i64 %.1136.i.i, %i.fn
  %or.cond.i91.i = or i1 %i.fm, %i.he
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ao
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ao ]
  store i8 %i.gg, ptr %i.e, align 4
  store i8 %i.gf, ptr %i.f, align 1
  store i32 %i.gq, ptr %7, align 4
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.af
  %i.hf = phi i8 [ 0, %bb.af ], [ %i.gh, %.thread118.i.i.loopexit ]
  %i.hg = phi i8 [ 0, %bb.af ], [ %i.gi, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i202 = phi i32 [ %i.fd, %bb.af ], [ %.promoted.i.i.i71.i203, %.thread118.i.i.loopexit ]
  %i.hh = phi i8 [ 0, %bb.af ], [ %i.gr, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fn, %bb.af ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hi = icmp ugt i64 %.1.lcssa.i.i, %i.fn
  %or.cond119.i.i = or i1 %i.fm, %i.hi
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ap, %bb.ae
  %i.hj = phi i8 [ 0, %bb.ae ], [ %i.ft, %bb.ap ] ; 2 uses
  %i.hk = phi i8 [ 0, %bb.ae ], [ %i.fu, %bb.ap ] ; 2 uses
  %.promoted.i.i.i71.i201 = phi i32 [ %i.fd, %bb.ae ], [ %.promoted.i.i.i71.i204, %bb.ap ] ; 2 uses
  %i.hl = phi i8 [ 0, %bb.ae ], [ %i.fv, %bb.ap ] ; 2 uses
  %i.hm = phi i8 [ %i.fi, %bb.ae ], [ %i.fy, %bb.ap ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ae ], [ %.1136.i.i, %bb.ap ] ; 3 uses
  switch i8 %i.hm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.aq
    i8 69, label %bb.aq
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hn = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.ho = icmp ult i64 %i.hn, %.035153.i
  br i1 %i.ho, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hp = phi i64 [ %i.hs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !144
  switch i8 %i.hr, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.hs = add nuw i64 %i.hp, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.hs, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !1438

bb.aq:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.ht = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.ht, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hu = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.hu, %.035153.i
  br i1 %.not108.i.i, label %bb.as, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i16 0, ptr %5, align 2
  %i.hv = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hu ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !144
  %i.hx = icmp eq i8 %i.hw, 45
  %i.hy = sub nuw i64 %.035153.i, %i.hu           ; 2 uses
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hz = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hv, i64 noundef %i.hy, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.hz, label %.split11, label %.split11.thread

bb.au:                                            ; preds = %bb.as
  %i.ia = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hv, i64 noundef %i.hy, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ia, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.at, %bb.au
  %i.ib = load i16, ptr %5, align 2, !tbaa !770
  %i.ic = sext i16 %i.ib to i32
  %i.id = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb0EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.ic)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.id, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.ad
  %i.ie = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.if = icmp eq i32 %i.fg, 0
  %i.ig = zext nneg i8 %i.fj to i32
  %i.ih = icmp eq i8 %i.fj, 0
  %or.cond.i.i93.i = and i1 %i.if, %i.ih
  br i1 %or.cond.i.i93.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ii = zext i8 %i.ff to i32
  %i.ij = icmp eq i32 %i.fc, %i.ii
  %i.ik = icmp sgt i32 %i.fg, 214748364
  %or.cond516 = select i1 %i.ij, i1 true, i1 %i.ik
  br i1 %or.cond516, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.il = add i8 %i.ff, 1                         ; 2 uses
  %i.im = mul nsw i32 %i.fg, 10
  %i.in = add nsw i32 %i.im, %i.ig                ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.io = phi i32 [ %i.in, %bb.ax ], [ %i.fd, %bb.av ] ; 3 uses
  %i.ip = phi i8 [ %i.il, %bb.ax ], [ %i.fe, %bb.av ]
  %i.iq = phi i8 [ %i.il, %bb.ax ], [ %i.ff, %bb.av ]
  %i.ir = phi i32 [ %i.in, %bb.ax ], [ 0, %bb.av ]
  %.not109.i.i = icmp eq i64 %i.ie, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split6.thread.thread.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.is = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ie
  %i.it = load i8, ptr %i.is, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.it, 95
  br i1 %.not110.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.iu = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.iv = icmp eq i64 %i.iu, %.035153.i
  br i1 %i.iv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.iu
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !144
  %i.iy = add i8 %i.ix, -48
  %i.iz = icmp ult i8 %i.iy, 10
  br i1 %i.iz, label %bb.bc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bc:                                            ; preds = %bb.bb, %bb.az
  %.7.i94.i = phi i64 [ %i.ie, %bb.az ], [ %i.iu, %bb.bb ] ; 3 uses
  %i.ja = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.ja, label %bb.ad, label %thread-pre-split6.thread.thread.sink.split, !llvm.loop !1439

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.jb = phi i8 [ %i.hf, %.thread118.i.i ], [ %i.hj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.jc = phi i8 [ %i.hg, %.thread118.i.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hk, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i32 [ %.promoted.i.i.i71.i202, %.thread118.i.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.jd = phi i8 [ %i.hh, %.thread118.i.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hl, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.je = icmp ugt i8 %i.jd, %4
end_hunk_8
begin_hunk_9_@_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_hh:bb.a
  %.8.i68.i261269276.ph = phi i64 [ %.8.i68.i, %bb.bd ], [ %.035153.i, %bb.ay ], [ %.7.i94.i, %bb.bc ]
  store i32 %.sink518, ptr %7, align 4
  br label %thread-pre-split6.thread.thread

thread-pre-split6.thread.thread:                  ; preds = %thread-pre-split6.thread.thread.sink.split, %bb.ac, %thread-pre-split6.thread
  %i.jp = phi i8 [ 0, %bb.ac ], [ %i.jk, %thread-pre-split6.thread ], [ %.ph517, %thread-pre-split6.thread.thread.sink.split ] ; 4 uses
  %.8.i68.i261269276 = phi i64 [ 1, %bb.ac ], [ %.8.i68.i, %thread-pre-split6.thread ], [ %.8.i68.i261269276.ph, %thread-pre-split6.thread.thread.sink.split ]
  %.pre.i.i78.i = phi i32 [ 0, %bb.ac ], [ %i.jl, %thread-pre-split6.thread ], [ %.sink518, %thread-pre-split6.thread.thread.sink.split ] ; 3 uses
  %i.jq = icmp ult i8 %i.jp, %4
  br i1 %i.jq, label %.lr.ph.i.i80.i.preheader, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit

.lr.ph.i.i80.i.preheader:                         ; preds = %thread-pre-split6.thread.thread
  %i.jr = xor i8 %i.jp, -1
  %i.js = add i8 %4, %i.jr                        ; 2 uses
  %i.jt = zext i8 %i.js to i32
  %i.ju = add nuw nsw i32 %i.jt, 1                ; 2 uses
  %min.iters.check502 = icmp ult i8 %i.js, 7
  br i1 %min.iters.check502, label %.lr.ph.i.i80.i.preheader519, label %vector.ph503

vector.ph503:                                     ; preds = %.lr.ph.i.i80.i.preheader
  %n.vec504 = and i32 %i.ju, 504                  ; 3 uses
  %i.jv = trunc i32 %n.vec504 to i8
  %i.jw = add i8 %i.jp, %i.jv
  %i.jx = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i78.i, i64 0
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i32 [ 0, %vector.ph503 ], [ %index.next509, %vector.body505 ]
  %vec.phi507 = phi <4 x i32> [ %i.jx, %vector.ph503 ], [ %i.jy, %vector.body505 ]
  %vec.phi508 = phi <4 x i32> [ splat (i32 1), %vector.ph503 ], [ %i.jz, %vector.body505 ]
  %i.jy = mul <4 x i32> %vec.phi507, splat (i32 10) ; 2 uses
  %i.jz = mul <4 x i32> %vec.phi508, splat (i32 10) ; 2 uses
  %index.next509 = add nuw i32 %index506, 8       ; 2 uses
  %i.ka = icmp eq i32 %index.next509, %n.vec504
  br i1 %i.ka, label %middle.block510, label %vector.body505, !llvm.loop !1440

middle.block510:                                  ; preds = %vector.body505
  %bin.rdx511 = mul <4 x i32> %i.jz, %i.jy
  %i.kb = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx511) ; 2 uses
  %cmp.n512 = icmp eq i32 %i.ju, %n.vec504
  br i1 %cmp.n512, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i.preheader519

.lr.ph.i.i80.i.preheader519:                      ; preds = %.lr.ph.i.i80.i.preheader, %middle.block510
  %.ph520 = phi i32 [ %.pre.i.i78.i, %.lr.ph.i.i80.i.preheader ], [ %i.kb, %middle.block510 ]
  %.024.i.i81.i.ph = phi i8 [ %i.jp, %.lr.ph.i.i80.i.preheader ], [ %i.jw, %middle.block510 ]
  br label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.preheader519, %.lr.ph.i.i80.i
  %i.kc = phi i32 [ %i.kd, %.lr.ph.i.i80.i ], [ %.ph520, %.lr.ph.i.i80.i.preheader519 ]
  %.024.i.i81.i = phi i8 [ %i.ke, %.lr.ph.i.i80.i ], [ %.024.i.i81.i.ph, %.lr.ph.i.i80.i.preheader519 ]
  %i.kd = mul nsw i32 %i.kc, 10                   ; 2 uses
  %i.ke = add nuw i8 %.024.i.i81.i, 1             ; 2 uses
  %exitcond.not.i.i82.i = icmp eq i8 %i.ke, %4
  br i1 %exitcond.not.i.i82.i, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i, !llvm.loop !1441

._crit_edge.i.i83.i:                              ; preds = %.lr.ph.i.i80.i, %middle.block510
  %.lcssa = phi i32 [ %i.kb, %middle.block510 ], [ %i.kd, %.lr.ph.i.i80.i ] ; 2 uses
  store i32 %.lcssa, ptr %7, align 4, !tbaa !812
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit: ; preds = %thread-pre-split6.thread.thread, %._crit_edge.i.i83.i
  %i.kf = phi i32 [ %.lcssa, %._crit_edge.i.i83.i ], [ %.pre.i.i78.i, %thread-pre-split6.thread.thread ]
  %i.kg = icmp slt i32 %i.kf, %i.j
  %i.kh = icmp ugt i64 %.8.i68.i261269276, %.088.i.i
  %spec.select.i79.i = and i1 %i.kh, %i.kg
  br i1 %spec.select.i79.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit
  %i.ki = load i32, ptr %7, align 4, !tbaa !812
  store i32 %i.ki, ptr %2, align 4, !tbaa !89
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21: ; preds = %bb.an, %bb.am
  store i8 %i.gg, ptr %i.e, align 4
  store i8 %i.gf, ptr %i.f, align 1
  store i32 %i.gq, ptr %7, align 4
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

switch.hole_check:                                ; preds = %bb.ab
  %switch.maskindex = zext nneg i8 %i.ew to i32
  %switch.shifted = lshr i32 134285313, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.w, %bb.s, %bb.x, %bb.i, %bb.j, %.lr.ph135.i.i, %bb.ba, %bb.aw, %bb.bb, %.lr.ph139.i.i, %switch.hole_check, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21, %bb.ap, %bb.aq, %bb.ar, %.thread118.i.i, %.thread114.i.i, %.thread110.i.i, %bb.l, %bb.m, %bb.a, %bb.n, %.thread114.i87.i, %.split11.thread, %.split.thread, %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, %bb.be
  %.0.i9 = phi i1 [ false, %.split11.thread ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit ], [ true, %bb.be ], [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i ], [ false, %.split ], [ false, %.split11 ], [ false, %.split.thread ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %.thread114.i87.i ], [ false, %bb.w ], [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.m ], [ false, %bb.l ], [ false, %.thread110.i.i ], [ false, %.thread114.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21 ], [ false, %bb.ba ], [ false, %.thread118.i.i ], [ false, %bb.ar ], [ false, %bb.i ], [ false, %.lr.ph139.i.i ], [ false, %.lr.ph135.i.i ], [ false, %switch.hole_check ], [ false, %bb.bb ], [ false, %bb.aw ], [ false, %bb.j ], [ false, %bb.x ], [ false, %bb.s ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i1 %.0.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %7 = alloca %"struct.duckdb::DecimalCastData.982", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i64 0, ptr %7, align 8, !tbaa !817
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %3, ptr %i.a, align 8, !tbaa !818
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %4, ptr %i.b, align 1, !tbaa !819
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 5 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = load i64, ptr %i.h, align 8, !tbaa !137  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !820
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.l, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.m, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.k = load i8, ptr %.034154.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.k, label %bb.ac [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.m = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.m, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1442

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.n = zext i8 %3 to i32
  %i.o = zext i8 %4 to i32
  %i.p = sub nsw i32 %i.n, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.aa, %.lr.ph.i.i
  %.promoted92 = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cw, %bb.aa ] ; 5 uses
  %i.q = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cx, %bb.aa ] ; 2 uses
  %i.r = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cy, %bb.aa ] ; 4 uses
  %.084130.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %.7.i.i, %bb.aa ] ; 6 uses
  %i.s = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cz, %bb.aa ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.084130.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !144   ; 3 uses
  %i.v = add i8 %i.u, -48                         ; 3 uses
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.q, ptr %i.c, align 2
  store i64 %.promoted92, ptr %7, align 8
  %i.x = icmp eq i8 %i.u, 46
  br i1 %i.x, label %bb.f, label %.thread110.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = icmp ugt i64 %.084130.i.i, 1             ; 2 uses
  %i.z = add nuw i64 %.084130.i.i, 1              ; 5 uses
  %i.aa = icmp ult i64 %i.z, %.035153.i
  br i1 %i.aa, label %.lr.ph133.i.i, label %.thread114.i.i

.lr.ph133.i.i:                                    ; preds = %bb.f
  %i.ab = zext i8 %i.r to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph133.i.i
  %i.ac = phi i64 [ %.promoted92, %.lr.ph133.i.i ], [ %i.ay, %bb.m ] ; 3 uses
  %i.ad = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.ap, %bb.m ] ; 3 uses
  %i.ae = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.aq, %bb.m ] ; 4 uses
  %i.af = phi i8 [ 0, %.lr.ph133.i.i ], [ %i.az, %bb.m ] ; 6 uses
  %i.ag = phi i64 [ %i.s, %.lr.ph133.i.i ], [ %i.ba, %bb.m ] ; 2 uses
  %.185132.i.i = phi i64 [ %i.z, %.lr.ph133.i.i ], [ %.2.i.i, %bb.m ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.185132.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !144 ; 3 uses
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ne i8 %i.af, %4
  %i.am = trunc nuw i8 %i.ae to i1
  %or.cond = select i1 %i.al, i1 true, i1 %i.am   ; 2 uses
  %i.an = icmp samesign ugt i8 %i.ai, 52
  %i.ao = zext i1 %i.an to i8
  %i.ap = select i1 %or.cond, i8 %i.ad, i8 %i.ao  ; 2 uses
  %i.aq = select i1 %or.cond, i8 %i.ae, i8 1      ; 2 uses
  %i.ar = zext i8 %i.af to i32
  %i.as = add nuw nsw i32 %i.ar, %i.ab
  %i.at = icmp samesign ugt i32 %i.as, 17
  br i1 %i.at, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = add i8 %i.af, 1
  %i.av = mul nsw i64 %i.ag, 10
  %i.aw = zext nneg i8 %i.aj to i64
  %i.ax = sub nsw i64 %i.av, %i.aw                ; 2 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ay = phi i64 [ %i.ax, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %i.az = phi i8 [ %i.au, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.ba = phi i64 [ %i.ax, %bb.i ], [ %i.ag, %bb.h ]
  %i.bb = add nuw i64 %.185132.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.bb, %.035153.i
  br i1 %.not103.i.i, label %.thread114.i.i.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !144
  %i.be = icmp eq i8 %i.bd, 95
  br i1 %i.be, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bf = add i64 %.185132.i.i, 2                 ; 3 uses
  %i.bg = icmp eq i64 %i.bf, %.035153.i
  br i1 %i.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !144
  %i.bj = add i8 %i.bi, -48
  %i.bk = icmp ult i8 %i.bj, 10
  br i1 %i.bk, label %bb.m, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2.i.i = phi i64 [ %i.bf, %bb.l ], [ %i.bb, %bb.j ] ; 3 uses
  %i.bl = icmp ult i64 %.2.i.i, %.035153.i
  br i1 %i.bl, label %bb.g, label %.thread114.i.i.loopexit, !llvm.loop !1443

bb.n:                                             ; preds = %bb.g
  store i8 %i.af, ptr %i.d, align 1
  store i8 %i.ae, ptr %i.e, align 4
  store i8 %i.ad, ptr %i.f, align 1
  store i64 %i.ac, ptr %7, align 8
  %i.bm = icmp ugt i64 %.185132.i.i, %i.z
  %or.cond.i.i = or i1 %i.y, %i.bm
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i, %bb.m
  %.185.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.m ]
  store i64 %i.ay, ptr %7, align 8
  br label %.thread114.i.i

.thread114.i.i:                                   ; preds = %.thread114.i.i.loopexit, %bb.f
  %i.bn = phi i8 [ 0, %bb.f ], [ %i.ap, %.thread114.i.i.loopexit ]
  %i.bo = phi i8 [ 0, %bb.f ], [ %i.aq, %.thread114.i.i.loopexit ]
  %.promoted.i.i.i.i198 = phi i64 [ %.promoted92, %bb.f ], [ %i.ay, %.thread114.i.i.loopexit ]
  %i.bp = phi i8 [ 0, %bb.f ], [ %i.az, %.thread114.i.i.loopexit ]
  %.185.lcssa.i.i = phi i64 [ %i.z, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.bq = icmp ugt i64 %.185.lcssa.i.i, %i.z
  %or.cond115.i.i = or i1 %i.y, %i.bq
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.n, %bb.e
  %i.br = phi i8 [ 0, %bb.e ], [ %i.ad, %bb.n ]   ; 2 uses
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.n ]   ; 2 uses
  %.promoted.i.i.i.i197 = phi i64 [ %.promoted92, %bb.e ], [ %i.ac, %bb.n ] ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.n ]   ; 2 uses
  %i.bu = phi i8 [ %i.u, %bb.e ], [ %i.ai, %bb.n ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.n ] ; 3 uses
  switch i8 %i.bu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.o
    i8 69, label %bb.o
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bv = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %.035153.i
  br i1 %i.bw, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.bx = phi i64 [ %i.ca, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !144
  switch i8 %i.bz, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ca = add nuw i64 %i.bx, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1444

bb.o:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cb = icmp eq i64 %.4.i.i, 1
  br i1 %i.cb, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cc, %.035153.i
  br i1 %.not104.i.i, label %bb.q, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i16 0, ptr %6, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cc ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !144
  %i.cf = icmp eq i8 %i.ce, 45
  %i.cg = sub nuw i64 %.035153.i, %i.cc           ; 2 uses
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cd, i64 noundef %i.cg, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ch, label %.split, label %.split.thread

bb.s:                                             ; preds = %bb.q
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cd, i64 noundef %i.cg, ptr noundef nonnull align 2 dereferenceable(2) %6)
  br i1 %i.ci, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.r, %bb.s
  %i.cj = load i16, ptr %6, align 2, !tbaa !770
  %i.ck = sext i16 %i.cj to i32
  %i.cl = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %i.cl, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.t:                                             ; preds = %bb.d
  %i.cm = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cn = icmp eq i64 %i.s, 0
  %i.co = icmp eq i8 %i.v, 0
  %or.cond.i.i.i = and i1 %i.cn, %i.co
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = zext i8 %i.r to i32
  %i.cq = icmp eq i32 %i.p, %i.cp
  %i.cr = icmp slt i64 %i.s, -922337203685477580
  %or.cond500 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond500, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = add i8 %i.r, 1                          ; 2 uses
  %i.ct = mul nsw i64 %i.s, 10
  %i.cu = zext nneg i8 %i.v to i64
  %i.cv = sub nsw i64 %i.ct, %i.cu                ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.cw = phi i64 [ %i.cv, %bb.v ], [ %.promoted92, %bb.t ] ; 3 uses
  %i.cx = phi i8 [ %i.cs, %bb.v ], [ %i.q, %bb.t ]
  %i.cy = phi i8 [ %i.cs, %bb.v ], [ %i.r, %bb.t ]
  %i.cz = phi i64 [ %i.cv, %bb.v ], [ 0, %bb.t ]
  %.not105.i.i = icmp eq i64 %i.cm, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cm
  %i.db = load i8, ptr %i.da, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.db, 95
  br i1 %.not106.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dc = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, %.035153.i
  br i1 %i.dd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !144
  %i.dg = add i8 %i.df, -48
  %i.dh = icmp ult i8 %i.dg, 10
  br i1 %i.dh, label %bb.aa, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.7.i.i = phi i64 [ %i.cm, %bb.x ], [ %i.dc, %bb.z ] ; 3 uses
  %i.di = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.di, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1445

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dj = phi i8 [ %i.bn, %.thread114.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i198, %.thread114.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i197, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dm = icmp ugt i8 %i.dl, %4
  br i1 %i.dm, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dl, %4            ; 3 uses
  %i.dn = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dn, 1
  %i.do = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.do, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dn, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dr, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod618 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod618)
  %i.dp = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa563 = phi i64 [ %i.dr, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dp, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa563, ptr %7, align 8, !tbaa !817
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dq = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dr = sdiv i64 %i.dq, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !56

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.ds = phi i8 [ %i.dl, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dt = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa563, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = trunc nuw i8 %i.dk to i1
  %i.dv = trunc nuw i8 %i.dj to i1
  %or.cond16 = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond16, label %bb.ab, label %thread-pre-split.thread.thread

bb.ab:                                            ; preds = %thread-pre-split.thread
  %i.dw = add nsw i64 %i.dt, -1
  br label %thread-pre-split.thread.thread.sink.split

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.w, %bb.aa, %bb.ab
  %.sink = phi i64 [ %i.dw, %bb.ab ], [ %i.cw, %bb.aa ], [ %i.cw, %bb.w ] ; 2 uses
  %.ph = phi i8 [ %i.ds, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.w ]
  %.8.i.i248255272.ph = phi i64 [ %.8.i.i, %bb.ab ], [ %.035153.i, %bb.w ], [ %.7.i.i, %bb.aa ]
  store i64 %.sink, ptr %7, align 8
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dx = phi i8 [ 0, %bb.c ], [ %i.ds, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i248255272 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i248255272.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i64 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dy = icmp ult i8 %i.dx, %4
  br i1 %i.dy, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.dz = sub nuw i8 %4, %i.dx
  %xtraiter619 = and i8 %i.dz, 7                  ; 2 uses
  %lcmp.mod620.not = icmp eq i8 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.ea = phi i64 [ %i.eb, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %i.dx, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.eb = mul nsw i64 %i.ea, 10                   ; 3 uses
  %i.ec = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter619
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1446

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa562.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.unr621 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dx, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %i.ed = sub i8 %i.dx, %4
  %i.ee = icmp ugt i8 %i.ed, -8
  br i1 %i.ee, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ef = phi i64 [ %i.eg, %.lr.ph.i.i.i ], [ %.unr621, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.eh, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eg = mul nsw i64 %i.ef, 100000000            ; 2 uses
  %i.eh = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.eh, %4
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !57

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa562 = phi i64 [ %.lcssa562.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eg, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa562, ptr %7, align 8, !tbaa !817
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ei = phi i64 [ %.lcssa562, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ej = sub nsw i64 0, %i.i
  %i.ek = icmp sgt i64 %i.ei, %i.ej
  %i.el = icmp ugt i64 %.8.i.i248255272, 1
  %spec.select.i.i = and i1 %i.el, %i.ek
  br i1 %spec.select.i.i, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ac:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.em = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %.not38.i, %i.em
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !144
  %i.ep = add i8 %i.eo, -66                       ; 2 uses
  %i.eq = tail call i8 @llvm.fshl.i8(i8 %i.ep, i8 %i.ep, i8 7) ; 2 uses
  %i.er = icmp ult i8 %i.eq, 28
  br i1 %i.er, label %switch.hole_check, label %bb.ae

bb.ae:                                            ; preds = %switch.hole_check, %bb.ad, %bb.ac
  %i.es = icmp eq i8 %i.k, 43
  %.088.i.i = zext i1 %i.es to i64                ; 5 uses
  %i.et = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.et, label %.lr.ph.i85.i, label %thread-pre-split6.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ae
  %i.eu = zext i8 %3 to i32
  %i.ev = zext i8 %4 to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  br label %bb.af

bb.af:                                            ; preds = %bb.be, %.lr.ph.i85.i
  %i.ex = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ii, %bb.be ] ; 5 uses
  %i.ey = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ij, %bb.be ] ; 2 uses
  %i.ez = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ik, %bb.be ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.be ] ; 6 uses
  %i.fa = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.il, %bb.be ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !144 ; 3 uses
  %i.fd = add i8 %i.fc, -48                       ; 3 uses
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %i.ey, ptr %i.c, align 2
  store i64 %i.ex, ptr %7, align 8
  %i.ff = icmp eq i8 %i.fc, 46
  br i1 %i.ff, label %bb.ah, label %.thread114.i87.i

bb.ah:                                            ; preds = %bb.ag
  %i.fg = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fh = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fi = icmp ult i64 %i.fh, %.035153.i
  br i1 %i.fi, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ah
  %i.fj = zext i8 %i.ez to i32
  %.promoted = load i8, ptr %i.e, align 4
  %.promoted375 = load i8, ptr %i.f, align 1
  %.promoted379 = load i64, ptr %7, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aq, %.lr.ph137.i.i
  %i.fk = phi i64 [ %.promoted379, %.lr.ph137.i.i ], [ %i.gk, %bb.aq ] ; 2 uses
  %i.fl = phi i8 [ %.promoted375, %.lr.ph137.i.i ], [ %i.fz, %bb.aq ] ; 2 uses
  %i.fm = phi i8 [ %.promoted, %.lr.ph137.i.i ], [ %i.ga, %bb.aq ] ; 2 uses
  %i.fn = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gb, %bb.aq ] ; 2 uses
  %.promoted.i.i.i71.i204 = phi i64 [ %i.ex, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i203, %bb.aq ] ; 2 uses
  %i.fo = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gc, %bb.aq ] ; 3 uses
  %i.fp = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gl, %bb.aq ] ; 6 uses
  %i.fq = phi i64 [ %i.fa, %.lr.ph137.i.i ], [ %i.gm, %bb.aq ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fh, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.aq ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !144 ; 3 uses
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
  %i.fu = icmp ult i8 %i.ft, 10
  br i1 %i.fu, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.fv = icmp ne i8 %i.fp, %4
  %i.fw = trunc nuw i8 %i.fo to i1
  %or.cond18 = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %or.cond18, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = icmp samesign ugt i8 %i.fs, 52
  %i.fy = zext i1 %i.fx to i8                     ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fz = phi i8 [ %i.fy, %bb.ak ], [ %i.fl, %bb.aj ] ; 3 uses
  %i.ga = phi i8 [ 1, %bb.ak ], [ %i.fm, %bb.aj ] ; 3 uses
  %i.gb = phi i8 [ %i.fy, %bb.ak ], [ %i.fn, %bb.aj ] ; 2 uses
  %i.gc = phi i8 [ 1, %bb.ak ], [ %i.fo, %bb.aj ] ; 2 uses
  %i.gd = zext i8 %i.fp to i32
  %i.ge = add nuw nsw i32 %i.gd, %i.fj
  %i.gf = icmp samesign ugt i32 %i.ge, 17
  br i1 %i.gf, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gg = add i8 %i.fp, 1
  %i.gh = mul nsw i64 %i.fq, 10
  %i.gi = zext nneg i8 %i.ft to i64
  %i.gj = add nsw i64 %i.gh, %i.gi                ; 3 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.am, %bb.al
  %i.gk = phi i64 [ %i.gj, %bb.am ], [ %i.fk, %bb.al ] ; 3 uses
  %.promoted.i.i.i71.i203 = phi i64 [ %i.gj, %bb.am ], [ %.promoted.i.i.i71.i204, %bb.al ] ; 2 uses
  %i.gl = phi i8 [ %i.gg, %bb.am ], [ %i.fp, %bb.al ] ; 2 uses
  %i.gm = phi i64 [ %i.gj, %bb.am ], [ %i.fq, %bb.al ]
  %i.gn = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gn, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !144
  %i.gq = icmp eq i8 %i.gp, 95
  br i1 %i.gq, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gr = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gs = icmp eq i64 %i.gr, %.035153.i
  br i1 %i.gs, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gt = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gr
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !144
  %i.gv = add i8 %i.gu, -48
  %i.gw = icmp ult i8 %i.gv, 10
  br i1 %i.gw, label %bb.aq, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.2.i92.i = phi i64 [ %i.gr, %bb.ap ], [ %i.gn, %bb.an ] ; 3 uses
  %i.gx = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gx, label %bb.ai, label %.thread118.i.i.loopexit, !llvm.loop !1447

bb.ar:                                            ; preds = %bb.ai
  store i8 %i.fm, ptr %i.e, align 4
  store i8 %i.fl, ptr %i.f, align 1
  store i64 %i.fk, ptr %7, align 8
  store i8 %i.fp, ptr %i.d, align 1
  %i.gy = icmp ugt i64 %.1136.i.i, %i.fh
  %or.cond.i91.i = or i1 %i.fg, %i.gy
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.aq
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.aq ]
  store i8 %i.ga, ptr %i.e, align 4
  store i8 %i.fz, ptr %i.f, align 1
  store i64 %i.gk, ptr %7, align 8
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.ah
  %i.gz = phi i8 [ 0, %bb.ah ], [ %i.gb, %.thread118.i.i.loopexit ]
  %i.ha = phi i8 [ 0, %bb.ah ], [ %i.gc, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i202 = phi i64 [ %i.ex, %bb.ah ], [ %.promoted.i.i.i71.i203, %.thread118.i.i.loopexit ]
  %i.hb = phi i8 [ 0, %bb.ah ], [ %i.gl, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fh, %bb.ah ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hc = icmp ugt i64 %.1.lcssa.i.i, %i.fh
  %or.cond119.i.i = or i1 %i.fg, %i.hc
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ar, %bb.ag
  %i.hd = phi i8 [ 0, %bb.ag ], [ %i.fn, %bb.ar ] ; 2 uses
  %i.he = phi i8 [ 0, %bb.ag ], [ %i.fo, %bb.ar ] ; 2 uses
  %.promoted.i.i.i71.i201 = phi i64 [ %i.ex, %bb.ag ], [ %.promoted.i.i.i71.i204, %bb.ar ] ; 2 uses
  %i.hf = phi i8 [ 0, %bb.ag ], [ %i.fp, %bb.ar ] ; 2 uses
  %i.hg = phi i8 [ %i.fc, %bb.ag ], [ %i.fs, %bb.ar ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ag ], [ %.1136.i.i, %bb.ar ] ; 3 uses
  switch i8 %i.hg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
    i8 101, label %bb.as
    i8 69, label %bb.as
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i: ; preds = %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i, %.thread114.i87.i
  %i.hh = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %i.hi = icmp ult i64 %i.hh, %.035153.i
  br i1 %i.hi, label %.lr.ph139.i.i, label %.thread120.i.i

.lr.ph139.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.hj = phi i64 [ %i.hm, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.hh, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !144
  switch i8 %i.hl, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i, %.lr.ph139.i.i
  %i.hm = add nuw i64 %i.hj, 1                    ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.hm, %.035153.i
  br i1 %exitcond.not.i90.i, label %.thread120.i.i, label %.lr.ph139.i.i, !llvm.loop !1448

bb.as:                                            ; preds = %.thread114.i87.i, %.thread114.i87.i
  %i.hn = icmp eq i64 %.4.i88.i, %.088.i.i
  br i1 %i.hn, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = add nuw i64 %.4.i88.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.ho, %.035153.i
  br i1 %.not108.i.i, label %bb.au, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i16 0, ptr %5, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ho ; 3 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !144
  %i.hr = icmp eq i8 %i.hq, 45
  %i.hs = sub nuw i64 %.035153.i, %i.ho           ; 2 uses
  br i1 %i.hr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ht = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hp, i64 noundef %i.hs, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.ht, label %.split11, label %.split11.thread

bb.aw:                                            ; preds = %bb.au
  %i.hu = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hp, i64 noundef %i.hs, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %i.hu, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.av, %bb.aw
  %i.hv = load i16, ptr %5, align 2, !tbaa !770
  %i.hw = sext i16 %i.hv to i32
  %i.hx = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.hw)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %i.hx, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ax:                                            ; preds = %bb.af
  %i.hy = add nuw i64 %.0134.i.i, 1               ; 3 uses
  %i.hz = icmp eq i64 %i.fa, 0
  %i.ia = icmp eq i8 %i.fd, 0
  %or.cond.i.i93.i = and i1 %i.hz, %i.ia
  br i1 %or.cond.i.i93.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = zext i8 %i.ez to i32
  %i.ic = icmp eq i32 %i.ew, %i.ib
  %i.id = icmp sgt i64 %i.fa, 922337203685477580
  %or.cond501 = select i1 %i.ic, i1 true, i1 %i.id
  br i1 %or.cond501, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ie = add i8 %i.ez, 1                         ; 2 uses
  %i.if = mul nsw i64 %i.fa, 10
  %i.ig = zext nneg i8 %i.fd to i64
  %i.ih = add nsw i64 %i.if, %i.ig                ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.ii = phi i64 [ %i.ih, %bb.az ], [ %i.ex, %bb.ax ] ; 3 uses
  %i.ij = phi i8 [ %i.ie, %bb.az ], [ %i.ey, %bb.ax ]
  %i.ik = phi i8 [ %i.ie, %bb.az ], [ %i.ez, %bb.ax ]
  %i.il = phi i64 [ %i.ih, %bb.az ], [ 0, %bb.ax ]
  %.not109.i.i = icmp eq i64 %i.hy, %.035153.i
  br i1 %.not109.i.i, label %thread-pre-split6.thread.thread.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.im = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hy
  %i.in = load i8, ptr %i.im, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.in, 95
  br i1 %.not110.i.i, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.io = add i64 %.0134.i.i, 2                   ; 3 uses
  %i.ip = icmp eq i64 %i.io, %.035153.i
  br i1 %i.ip, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.io
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !144
  %i.is = add i8 %i.ir, -48
  %i.it = icmp ult i8 %i.is, 10
  br i1 %i.it, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.7.i94.i = phi i64 [ %i.hy, %bb.bb ], [ %i.io, %bb.bd ] ; 3 uses
  %i.iu = icmp ult i64 %.7.i94.i, %.035153.i
  br i1 %i.iu, label %bb.af, label %thread-pre-split6.thread.thread.sink.split, !llvm.loop !1449

.thread120.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %.thread118.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
  %i.iv = phi i8 [ %i.gz, %.thread118.i.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %i.iw = phi i8 [ %i.ha, %.thread118.i.i ], [ %i.he, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.he, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ]
  %.promoted.i.i.i71.i = phi i64 [ %.promoted.i.i.i71.i202, %.thread118.i.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.promoted.i.i.i71.i201, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %i.ix = phi i8 [ %i.hb, %.thread118.i.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 3 uses
  %.8.i68.i = phi i64 [ %.1.lcssa.i.i, %.thread118.i.i ], [ %i.hh, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ] ; 2 uses
  %i.iy = icmp ugt i8 %i.ix, %4
end_hunk_9
begin_hunk_10_@_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_hh:bb.a
  %i.jh = trunc nuw i8 %i.iv to i1
  %or.cond20 = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %or.cond20, label %bb.bf, label %thread-pre-split6.thread.thread

bb.bf:                                            ; preds = %thread-pre-split6.thread
  %i.ji = add nsw i64 %i.jf, 1
  br label %thread-pre-split6.thread.thread.sink.split

thread-pre-split6.thread.thread.sink.split:       ; preds = %bb.ba, %bb.be, %bb.bf
  %.sink503 = phi i64 [ %i.ji, %bb.bf ], [ %i.ii, %bb.be ], [ %i.ii, %bb.ba ] ; 2 uses
  %.ph502 = phi i8 [ %i.je, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.ba ]
  %.8.i68.i261269276.ph = phi i64 [ %.8.i68.i, %bb.bf ], [ %.035153.i, %bb.ba ], [ %.7.i94.i, %bb.be ]
  store i64 %.sink503, ptr %7, align 8
  br label %thread-pre-split6.thread.thread

thread-pre-split6.thread.thread:                  ; preds = %thread-pre-split6.thread.thread.sink.split, %bb.ae, %thread-pre-split6.thread
  %i.jj = phi i8 [ 0, %bb.ae ], [ %i.je, %thread-pre-split6.thread ], [ %.ph502, %thread-pre-split6.thread.thread.sink.split ] ; 5 uses
  %.8.i68.i261269276 = phi i64 [ 1, %bb.ae ], [ %.8.i68.i, %thread-pre-split6.thread ], [ %.8.i68.i261269276.ph, %thread-pre-split6.thread.thread.sink.split ]
  %.pre.i.i78.i = phi i64 [ 0, %bb.ae ], [ %i.jf, %thread-pre-split6.thread ], [ %.sink503, %thread-pre-split6.thread.thread.sink.split ] ; 3 uses
  %i.jk = icmp ult i8 %i.jj, %4
  br i1 %i.jk, label %.lr.ph.i.i80.i.preheader, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit

.lr.ph.i.i80.i.preheader:                         ; preds = %thread-pre-split6.thread.thread
  %i.jl = sub nuw i8 %4, %i.jj
  %xtraiter630 = and i8 %i.jl, 7                  ; 2 uses
  %lcmp.mod631.not = icmp eq i8 %xtraiter630, 0
  br i1 %lcmp.mod631.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol

.lr.ph.i.i80.i.prol:                              ; preds = %.lr.ph.i.i80.i.preheader, %.lr.ph.i.i80.i.prol
  %i.jm = phi i64 [ %i.jn, %.lr.ph.i.i80.i.prol ], [ %.pre.i.i78.i, %.lr.ph.i.i80.i.preheader ]
  %.024.i.i81.i.prol = phi i8 [ %i.jo, %.lr.ph.i.i80.i.prol ], [ %i.jj, %.lr.ph.i.i80.i.preheader ]
  %prol.iter632 = phi i8 [ %prol.iter632.next, %.lr.ph.i.i80.i.prol ], [ 0, %.lr.ph.i.i80.i.preheader ]
  %i.jn = mul nsw i64 %i.jm, 10                   ; 3 uses
  %i.jo = add nuw i8 %.024.i.i81.i.prol, 1        ; 2 uses
  %prol.iter632.next = add i8 %prol.iter632, 1    ; 2 uses
  %prol.iter632.cmp.not = icmp eq i8 %prol.iter632.next, %xtraiter630
  br i1 %prol.iter632.cmp.not, label %.lr.ph.i.i80.i.prol.loopexit, label %.lr.ph.i.i80.i.prol, !llvm.loop !1450

.lr.ph.i.i80.i.prol.loopexit:                     ; preds = %.lr.ph.i.i80.i.prol, %.lr.ph.i.i80.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i80.i.preheader ], [ %i.jn, %.lr.ph.i.i80.i.prol ]
  %.unr633 = phi i64 [ %.pre.i.i78.i, %.lr.ph.i.i80.i.preheader ], [ %i.jn, %.lr.ph.i.i80.i.prol ]
  %.024.i.i81.i.unr = phi i8 [ %i.jj, %.lr.ph.i.i80.i.preheader ], [ %i.jo, %.lr.ph.i.i80.i.prol ]
  %i.jp = sub i8 %i.jj, %4
  %i.jq = icmp ugt i8 %i.jp, -8
  br i1 %i.jq, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i

.lr.ph.i.i80.i:                                   ; preds = %.lr.ph.i.i80.i.prol.loopexit, %.lr.ph.i.i80.i
  %i.jr = phi i64 [ %i.js, %.lr.ph.i.i80.i ], [ %.unr633, %.lr.ph.i.i80.i.prol.loopexit ]
  %.024.i.i81.i = phi i8 [ %i.jt, %.lr.ph.i.i80.i ], [ %.024.i.i81.i.unr, %.lr.ph.i.i80.i.prol.loopexit ]
  %i.js = mul nsw i64 %i.jr, 100000000            ; 2 uses
  %i.jt = add nuw i8 %.024.i.i81.i, 8             ; 2 uses
  %exitcond.not.i.i82.i.7 = icmp eq i8 %i.jt, %4
  br i1 %exitcond.not.i.i82.i.7, label %._crit_edge.i.i83.i, label %.lr.ph.i.i80.i, !llvm.loop !59

._crit_edge.i.i83.i:                              ; preds = %.lr.ph.i.i80.i, %.lr.ph.i.i80.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i.i80.i.prol.loopexit ], [ %i.js, %.lr.ph.i.i80.i ] ; 2 uses
  store i64 %.lcssa, ptr %7, align 8, !tbaa !817
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit: ; preds = %thread-pre-split6.thread.thread, %._crit_edge.i.i83.i
  %i.ju = phi i64 [ %.lcssa, %._crit_edge.i.i83.i ], [ %.pre.i.i78.i, %thread-pre-split6.thread.thread ]
  %i.jv = icmp slt i64 %i.ju, %i.i
  %i.jw = icmp ugt i64 %.8.i68.i261269276, %.088.i.i
  %spec.select.i79.i = and i1 %i.jw, %i.jv
  br i1 %spec.select.i79.i, label %bb.bg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bg:                                            ; preds = %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit
  %i.jx = load i64, ptr %7, align 8, !tbaa !817
  store i64 %i.jx, ptr %2, align 8, !tbaa !137
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21: ; preds = %bb.ap, %bb.ao
  store i8 %i.ga, ptr %i.e, align 4
  store i8 %i.fz, ptr %i.f, align 1
  store i64 %i.gk, ptr %7, align 8
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

switch.hole_check:                                ; preds = %bb.ad
  %switch.maskindex = zext nneg i8 %i.eq to i32
  %switch.shifted = lshr i32 134285313, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ae

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.y, %bb.u, %bb.z, %bb.k, %bb.l, %.lr.ph135.i.i, %bb.bc, %bb.ay, %bb.bd, %.lr.ph139.i.i, %switch.hole_check, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21, %bb.ar, %bb.as, %bb.at, %.thread118.i.i, %.thread114.i.i, %.thread110.i.i, %bb.n, %bb.o, %bb.a, %bb.p, %.thread114.i87.i, %.split11.thread, %.split.thread, %.split11, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, %bb.bg
  %.0.i9 = phi i1 [ false, %.split11.thread ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit ], [ true, %bb.bg ], [ false, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i ], [ false, %.split ], [ false, %.split11 ], [ false, %.split.thread ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %.thread114.i87.i ], [ false, %bb.y ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.n ], [ false, %.thread110.i.i ], [ false, %.thread114.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread.loopexit21 ], [ false, %bb.bc ], [ false, %.thread118.i.i ], [ false, %bb.at ], [ false, %bb.k ], [ false, %.lr.ph139.i.i ], [ false, %.lr.ph135.i.i ], [ false, %switch.hole_check ], [ false, %bb.bd ], [ false, %bb.ay ], [ false, %bb.l ], [ false, %bb.z ], [ false, %bb.u ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i1 %.0.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastINS_9hugeint_tELc46EEEbPKcmRT_hh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %12 = alloca %"struct.duckdb::IntegerCastData.967", align 2 ; 7 uses
  %13 = alloca %"struct.duckdb::DecimalCastData.983", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 %3, ptr %i.a, align 8, !tbaa !824
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 17 ; 3 uses
  store i8 %4, ptr %i.b, align 1, !tbaa !825
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 18 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 19 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 21 ; 2 uses
  %i.g = zext i8 %3 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 16, !tbaa !137
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !137
  %cond81.i = icmp eq i64 %1, 0
  br i1 %cond81.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.03483.i = phi ptr [ %i.l, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.03582.i = phi i64 [ %i.m, %bb.b ], [ %1, %bb.a ] ; 34 uses
  %i.k = load i8, ptr %.03483.i, align 1, !tbaa !144 ; 3 uses
  switch i8 %i.k, label %bb.aa [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.m = add i64 %.03582.i, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.m, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !1451

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.03582.i, 1
  br i1 %.not.i, label %.thread115.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.z
  %.084126.i.i = phi i64 [ %.7.i.i, %bb.z ], [ 1, %bb.c ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.084126.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !144   ; 3 uses
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %i.q = icmp ult i8 %i.p, 10
  br i1 %i.q, label %bb.u, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = icmp eq i8 %i.o, 46
  br i1 %i.r, label %bb.e, label %.thread110.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %.084126.i.i, 1             ; 2 uses
  %i.t = add nuw i64 %.084126.i.i, 1              ; 5 uses
  %i.u = icmp ult i64 %i.t, %.03582.i
  br i1 %i.u, label %.lr.ph128.i.i, label %.thread113.i.i

.lr.ph128.i.i:                                    ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph128.i.i
  %.185127.i.i = phi i64 [ %i.t, %.lr.ph128.i.i ], [ %.2.i.i, %bb.n ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.185127.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !144   ; 3 uses
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.d, align 1, !tbaa !826  ; 3 uses
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !825
  %i.ac = icmp ne i8 %i.aa, %i.ab
  %i.ad = load i8, ptr %i.e, align 4, !range !171
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.e, align 4, !tbaa !827
  %i.af = icmp samesign ugt i8 %i.x, 52
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.f, align 1, !tbaa !828
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = load i8, ptr %i.c, align 2, !tbaa !829
  %i.ai = zext i8 %i.ah to i32
  %i.aj = zext i8 %i.aa to i32
  %i.ak = add nuw nsw i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i32 %i.ak, 37
  br i1 %i.al, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add i8 %i.aa, 1
  store i8 %i.am, ptr %i.d, align 1, !tbaa !826
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 10)
  %i.an = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  store i64 %i.ao, ptr %9, align 8
  %i.ap = extractvalue { i64, i64 } %i.an, 1
  store i64 %i.ap, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.aq = zext nneg i8 %i.y to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %i.aq)
  %i.ar = call { i64, i64 } @_ZNK6duckdb9hugeint_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %11) ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = extractvalue { i64, i64 } %i.ar, 1
  store i64 %i.as, ptr %13, align 8, !tbaa !137
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i: ; preds = %bb.j, %bb.i
  %i.au = add nuw i64 %.185127.i.i, 1             ; 3 uses
  %.not103.i.i = icmp eq i64 %i.au, %.03582.i
  br i1 %.not103.i.i, label %.thread113.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !144
  %i.ax = icmp eq i8 %i.aw, 95
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ay = add i64 %.185127.i.i, 2                 ; 3 uses
  %i.az = icmp eq i64 %i.ay, %.03582.i
  br i1 %i.az, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !144
  %i.bc = add i8 %i.bb, -48
  %i.bd = icmp ult i8 %i.bc, 10
  br i1 %i.bd, label %bb.n, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.k
  %.2.i.i = phi i64 [ %i.ay, %bb.m ], [ %i.au, %bb.k ] ; 3 uses
  %i.be = icmp ult i64 %.2.i.i, %.03582.i
  br i1 %i.be, label %bb.f, label %.thread113.i.i, !llvm.loop !1452

bb.o:                                             ; preds = %bb.f
  %i.bf = icmp ugt i64 %.185127.i.i, %i.t
  %or.cond.i.i = or i1 %i.s, %i.bf
  br i1 %or.cond.i.i, label %.thread110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread113.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i, %bb.e
  %.185.lcssa.i.i = phi i64 [ %i.t, %bb.e ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1EEEbRT_h.exit.i.i ], [ %.2.i.i, %bb.n ] ; 2 uses
  %i.bg = icmp ugt i64 %.185.lcssa.i.i, %i.t
  %or.cond114.i.i = or i1 %i.s, %i.bg
  br i1 %or.cond114.i.i, label %.thread115.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.o, %bb.d
  %i.bh = phi i8 [ %i.o, %bb.d ], [ %i.x, %bb.o ]
  %.4.i.i = phi i64 [ %.084126.i.i, %bb.d ], [ %.185127.i.i, %bb.o ] ; 3 uses
  switch i8 %i.bh, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bi = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %.03582.i
  br i1 %i.bj, label %.lr.ph130.i.i, label %.thread115.i.i

.lr.ph130.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.bk = phi i64 [ %i.bn, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bi, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !144
  switch i8 %i.bm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i, %.lr.ph130.i.i
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %.03582.i
  br i1 %exitcond.not.i.i, label %.thread115.i.i, label %.lr.ph130.i.i, !llvm.loop !1453

bb.p:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.bo = icmp eq i64 %.4.i.i, 1
  br i1 %i.bo, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.bp, %.03582.i
  br i1 %.not104.i.i, label %bb.r, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store i16 0, ptr %12, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bp ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !144
  %i.bs = icmp eq i8 %i.br, 45
  %i.bt = sub nuw i64 %.03582.i, %i.bp            ; 2 uses
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bq, i64 noundef %i.bt, ptr noundef nonnull align 2 dereferenceable(2) %12)
  br i1 %i.bu, label %.split11, label %.split11.thread

bb.t:                                             ; preds = %bb.r
  %i.bv = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.bq, i64 noundef %i.bt, ptr noundef nonnull align 2 dereferenceable(2) %12)
  br i1 %i.bv, label %.split11, label %.split11.thread

.split11.thread:                                  ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split11:                                         ; preds = %bb.s, %bb.t
  %i.bw = load i16, ptr %12, align 2, !tbaa !770
  %i.bx = sext i16 %i.bw to i32
  %i.by = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.by, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bz = add nuw i64 %.084126.i.i, 1             ; 3 uses
  %i.ca = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 noundef zeroext %i.p)
  br i1 %i.ca, label %bb.v, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.u
  %.not105.i.i = icmp eq i64 %i.bz, %.03582.i
  br i1 %.not105.i.i, label %.thread115.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.bz
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !144
  %.not106.i.i = icmp eq i8 %i.cc, 95
  br i1 %.not106.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cd = add i64 %.084126.i.i, 2                 ; 3 uses
  %i.ce = icmp eq i64 %i.cd, %.03582.i
  br i1 %i.ce, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.cd
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !144
  %i.ch = add i8 %i.cg, -48
  %i.ci = icmp ult i8 %i.ch, 10
  br i1 %i.ci, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w
  %.7.i.i = phi i64 [ %i.bz, %bb.w ], [ %i.cd, %bb.y ] ; 3 uses
  %i.cj = icmp ult i64 %.7.i.i, %.03582.i
  br i1 %i.cj, label %.lr.ph.i.i, label %.thread115.i.i, !llvm.loop !1454

.thread115.i.i:                                   ; preds = %bb.z, %bb.v, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %.thread113.i.i
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread113.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bi, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.03582.i, %bb.v ], [ %.7.i.i, %bb.z ]
  %i.ck = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13)
  %i.cl = icmp ugt i64 %.8.i.i, 1
  %or.cond23 = and i1 %i.ck, %i.cl
  br i1 %or.cond23, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread115.i.i.thread:                            ; preds = %bb.c
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb1EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.03582.i, 1
  %i.cn = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %.not38.i, %i.cn
  br i1 %or.cond.i, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %.03483.i, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !144
  %i.cq = add i8 %i.cp, -66                       ; 2 uses
  %i.cr = call i8 @llvm.fshl.i8(i8 %i.cq, i8 %i.cq, i8 7)
  switch i8 %i.cr, label %bb.ag [
    i8 27, label %bb.ac
    i8 11, label %bb.ac
    i8 16, label %bb.ae
    i8 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.cs = icmp ugt i64 %.03582.i, 2
  br i1 %i.cs, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ae:                                            ; preds = %bb.ab, %bb.ab
  %i.cu = icmp ugt i64 %.03582.i, 2
  br i1 %i.cu, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ag:                                            ; preds = %bb.ab, %bb.aa
  %i.cw = icmp eq i8 %i.k, 43
  %.088.i.i = zext i1 %i.cw to i64                ; 5 uses
  %i.cx = icmp ugt i64 %.03582.i, %.088.i.i
  br i1 %i.cx, label %.lr.ph.i40.i, label %.thread119.i.i.thread

.lr.ph.i40.i:                                     ; preds = %bb.ag, %bb.bd
  %.0130.i.i = phi i64 [ %.7.i47.i, %bb.bd ], [ %.088.i.i, %bb.ag ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.0130.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !144 ; 3 uses
  %i.da = add i8 %i.cz, -48                       ; 2 uses
  %i.db = icmp ult i8 %i.da, 10
  br i1 %i.db, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i40.i
  %i.dc = icmp eq i8 %i.cz, 46
  br i1 %i.dc, label %bb.ai, label %.thread114.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dd = icmp ugt i64 %.0130.i.i, %.088.i.i      ; 2 uses
  %i.de = add nuw i64 %.0130.i.i, 1               ; 5 uses
  %i.df = icmp ult i64 %i.de, %.03582.i
  br i1 %i.df, label %.lr.ph132.i.i, label %.thread117.i.i

.lr.ph132.i.i:                                    ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %.lr.ph132.i.i
  %.1131.i.i = phi i64 [ %i.de, %.lr.ph132.i.i ], [ %.2.i46.i, %bb.ar ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %.1131.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !144 ; 3 uses
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.dl = load i8, ptr %i.d, align 1, !tbaa !826  ; 3 uses
  %i.dm = load i8, ptr %i.b, align 1, !tbaa !825
  %i.dn = icmp ne i8 %i.dl, %i.dm
  %i.do = load i8, ptr %i.e, align 4, !range !171
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond25 = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond25, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.e, align 4, !tbaa !827
  %i.dq = icmp samesign ugt i8 %i.di, 52
  %i.dr = zext i1 %i.dq to i8
  store i8 %i.dr, ptr %i.f, align 1, !tbaa !828
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ds = load i8, ptr %i.c, align 2, !tbaa !829
  %i.dt = zext i8 %i.ds to i32
  %i.du = zext i8 %i.dl to i32
  %i.dv = add nuw nsw i32 %i.dt, %i.du
  %i.dw = icmp samesign ugt i32 %i.dv, 37
  br i1 %i.dw, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = add i8 %i.dl, 1
  store i8 %i.dx, ptr %i.d, align 1, !tbaa !826
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 10)
  %i.dy = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.dz = extractvalue { i64, i64 } %i.dy, 0
  store i64 %i.dz, ptr %5, align 8
  %i.ea = extractvalue { i64, i64 } %i.dy, 1
  store i64 %i.ea, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.eb = zext nneg i8 %i.dj to i64
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.eb)
  %i.ec = call { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  %i.ed = extractvalue { i64, i64 } %i.ec, 0
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  store i64 %i.ed, ptr %13, align 8, !tbaa !137
  store i64 %i.ee, ptr %.sroa.4.0..sroa_idx.i.i44.i, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.an, %bb.am
  %i.ef = add nuw i64 %.1131.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.ef, %.03582.i
  br i1 %.not107.i.i, label %.thread117.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !144
  %i.ei = icmp eq i8 %i.eh, 95
  br i1 %i.ei, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ej = add i64 %.1131.i.i, 2                   ; 3 uses
  %i.ek = icmp eq i64 %i.ej, %.03582.i
  br i1 %i.ek, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !tbaa !144
  %i.en = add i8 %i.em, -48
  %i.eo = icmp ult i8 %i.en, 10
  br i1 %i.eo, label %bb.ar, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.2.i46.i = phi i64 [ %i.ej, %bb.aq ], [ %i.ef, %bb.ao ] ; 3 uses
  %i.ep = icmp ult i64 %.2.i46.i, %.03582.i
  br i1 %i.ep, label %bb.aj, label %.thread117.i.i, !llvm.loop !1455

bb.as:                                            ; preds = %bb.aj
  %i.eq = icmp ugt i64 %.1131.i.i, %i.de
  %or.cond.i45.i = or i1 %i.dd, %i.eq
  br i1 %or.cond.i45.i, label %.thread114.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread117.i.i:                                   ; preds = %bb.ar, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i, %bb.ai
  %.1.lcssa.i.i = phi i64 [ %i.de, %bb.ai ], [ %.03582.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataINS_9hugeint_tEEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i46.i, %bb.ar ] ; 2 uses
  %i.er = icmp ugt i64 %.1.lcssa.i.i, %i.de
  %or.cond118.i.i = or i1 %i.dd, %i.er
  br i1 %or.cond118.i.i, label %.thread119.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i.i:                                   ; preds = %bb.as, %bb.ah
  %i.es = phi i8 [ %i.cz, %bb.ah ], [ %i.di, %bb.as ]
  %.4.i41.i = phi i64 [ %.0130.i.i, %bb.ah ], [ %.1131.i.i, %bb.as ] ; 3 uses
  switch i8 %i.es, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i
    i8 101, label %bb.at
    i8 69, label %bb.at
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i: ; preds = %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i, %.thread114.i.i
  %i.et = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %i.eu = icmp ult i64 %i.et, %.03582.i
  br i1 %i.eu, label %.lr.ph134.i.i, label %.thread119.i.i

.lr.ph134.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  %i.ev = phi i64 [ %i.ey, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.et, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !144
  switch i8 %i.ex, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i: ; preds = %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i, %.lr.ph134.i.i
  %i.ey = add nuw i64 %i.ev, 1                    ; 2 uses
  %exitcond.not.i43.i = icmp eq i64 %i.ey, %.03582.i
  br i1 %exitcond.not.i43.i, label %.thread119.i.i, label %.lr.ph134.i.i, !llvm.loop !1456

bb.at:                                            ; preds = %.thread114.i.i, %.thread114.i.i
  %i.ez = icmp eq i64 %.4.i41.i, %.088.i.i
  br i1 %i.ez, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = add nuw i64 %.4.i41.i, 1                ; 3 uses
  %.not108.i.i = icmp ult i64 %i.fa, %.03582.i
  br i1 %.not108.i.i, label %bb.av, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store i16 0, ptr %8, align 2
  %i.fb = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fa ; 3 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !144
  %i.fd = icmp eq i8 %i.fc, 45
  %i.fe = sub nuw i64 %.03582.i, %i.fa            ; 2 uses
  br i1 %i.fd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ff = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fb, i64 noundef %i.fe, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.ff, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread13

bb.ax:                                            ; preds = %bb.av
  %i.fg = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.fb, i64 noundef %i.fe, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.fg, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread13

bb.ay:                                            ; preds = %.lr.ph.i40.i
  %i.fh = add nuw i64 %.0130.i.i, 1               ; 3 uses
  %i.fi = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation11HandleDigitINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_h(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 noundef zeroext %i.da)
  br i1 %i.fi, label %bb.az, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.az:                                            ; preds = %bb.ay
  %.not109.i.i = icmp eq i64 %i.fh, %.03582.i
  br i1 %.not109.i.i, label %.thread119.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fj = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !144
  %.not110.i.i = icmp eq i8 %i.fk, 95
  br i1 %.not110.i.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fl = add i64 %.0130.i.i, 2                   ; 3 uses
  %i.fm = icmp eq i64 %i.fl, %.03582.i
  br i1 %i.fm, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fn = getelementptr inbounds nuw i8, ptr %.03483.i, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !144
  %i.fp = add i8 %i.fo, -48
  %i.fq = icmp ult i8 %i.fp, 10
  br i1 %i.fq, label %bb.bd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.7.i47.i = phi i64 [ %i.fh, %bb.ba ], [ %i.fl, %bb.bc ] ; 3 uses
  %i.fr = icmp ult i64 %.7.i47.i, %.03582.i
  br i1 %i.fr, label %.lr.ph.i40.i, label %.thread119.i.i, !llvm.loop !1457

.thread119.i.i:                                   ; preds = %bb.bd, %bb.az, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i, %.thread117.i.i
  %.8.i39.i = phi i64 [ %.1.lcssa.i.i, %.thread117.i.i ], [ %.03582.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit111.i.i ], [ %i.et, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i42.i ], [ %.03582.i, %bb.az ], [ %.7.i47.i, %bb.bd ]
  %i.fs = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13)
  %i.ft = icmp ugt i64 %.8.i39.i, %.088.i.i
  %or.cond26 = and i1 %i.fs, %i.ft
  br i1 %or.cond26, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread119.i.i.thread:                            ; preds = %bb.ag
  %i.fu = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_(ptr noundef nonnull align 8 dereferenceable(40) %13) ; 0 uses
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread13: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit: ; preds = %bb.aw, %bb.ax
  %i.fv = load i16, ptr %8, align 2, !tbaa !770
  %i.fw = sext i16 %i.fv to i32
  %i.fx = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataINS_9hugeint_tEEELb0EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %i.fx, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.be:                                            ; preds = %.thread119.i.i, %.thread115.i.i, %.split11, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !603
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread: ; preds = %bb.b, %bb.x, %bb.u, %bb.y, %bb.l, %bb.m, %.lr.ph130.i.i, %bb.bb, %bb.ay, %bb.bc, %bb.ap, %bb.aq, %.lr.ph134.i.i, %.thread119.i.i.thread, %.thread115.i.i.thread, %.thread114.i.i, %bb.at, %bb.as, %bb.au, %.thread119.i.i, %bb.ae, %bb.ac, %bb.a, %.thread113.i.i, %.thread110.i.i, %bb.p, %bb.o, %bb.q, %.thread115.i.i, %bb.ad, %.thread117.i.i, %bb.af, %.split11.thread, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread13, %.split11, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit, %bb.be
  %.0.i8 = phi i1 [ false, %bb.l ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit ], [ true, %bb.be ], [ false, %.thread115.i.i.thread ], [ false, %.thread114.i.i ], [ false, %.split11 ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataINS_9hugeint_tEEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread13 ], [ false, %.split11.thread ], [ false, %.thread119.i.i.thread ], [ false, %bb.af ], [ false, %bb.x ], [ false, %.thread117.i.i ], [ false, %bb.ad ], [ false, %.thread115.i.i ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.p ], [ false, %.thread110.i.i ], [ false, %.thread113.i.i ], [ false, %bb.a ], [ false, %.lr.ph134.i.i ], [ false, %bb.ap ], [ false, %bb.bb ], [ false, %.lr.ph130.i.i ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %.thread119.i.i ], [ false, %bb.au ], [ false, %bb.as ], [ false, %bb.at ], [ false, %bb.aq ], [ false, %bb.bc ], [ false, %bb.ay ], [ false, %bb.m ], [ false, %bb.y ], [ false, %bb.u ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  ret i1 %.0.i8
}

declare noundef zeroext i1 @_ZN6duckdb8Utf8Proc7IsValidEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2) unnamed_addr #27 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %.thread84
end_hunk_10
begin_hunk_11_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a

.preheader288:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i351 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i350 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i351, align 1, !tbaa !144, !noalias !1540 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader288
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i350, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i351, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader288, !llvm.loop !63

.critedge.i:                                      ; preds = %.preheader288, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i350, %.preheader288 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i353 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i352 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i352, align 1, !tbaa !144, !noalias !1540 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.am, label %.thread147

bb.am:                                            ; preds = %.preheader
  %i.ew = mul nuw i64 %.5205.i353, 10
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = add i64 %i.ew, -48
  %i.ez = add i64 %i.ey, %i.ex                    ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i352, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.fa, %1
  br i1 %.not266.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !144, !noalias !1540
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i352, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !144, !noalias !1540
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !64

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp ugt i64 %i.ez, 999999999999999999
  br i1 %i.fl, label %.thread455.thread, label %.thread147

.thread455.thread:                                ; preds = %bb.as
  %i.fm = ptrtoint ptr %.17.i to i64
  %i.fn = add i64 %.5.i, %i.df
  %i.fo = sub i64 %i.fn, %i.fm
  br label %bb.be

.thread147:                                       ; preds = %.preheader, %bb.as
  %.16.i301 = phi ptr [ %.17.i, %bb.as ], [ %.16.i352, %.preheader ]
  %.5205.i298 = phi i64 [ %i.ez, %bb.as ], [ %.5205.i353, %.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.16.i301, i64 1 ; 4 uses
  %.not538 = icmp eq ptr %i.fp, %1
  br i1 %.not538, label %._crit_edge358, label %.lr.ph357

.lr.ph357:                                        ; preds = %.thread147, %bb.ax
  %.0.i356 = phi i64 [ %.1.i, %bb.ax ], [ 0, %.thread147 ] ; 4 uses
  %.6206.i355 = phi i64 [ %i.fw, %bb.ax ], [ %.5205.i298, %.thread147 ] ; 2 uses
  %.18.i354 = phi ptr [ %.19.i, %bb.ax ], [ %i.fp, %.thread147 ] ; 4 uses
  %i.fq = load i8, ptr %.18.i354, align 1, !tbaa !144, !noalias !1540 ; 2 uses
  %i.fr = add i8 %i.fq, -48
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.at, label %._crit_edge358

bb.at:                                            ; preds = %.lr.ph357
  %i.ft = mul nuw i64 %.6206.i355, 10
  %i.fu = zext nneg i8 %i.fq to i64
  %i.fv = add i64 %i.ft, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.18.i354, i64 1 ; 4 uses
  %.not265.i = icmp eq ptr %i.fx, %1
  br i1 %.not265.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !144, !noalias !1540
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i354, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i356, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !144, !noalias !1540
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i356, %bb.au ], [ %.0.i356, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph357, label %._crit_edge358, !llvm.loop !65

._crit_edge358:                                   ; preds = %bb.ax, %.lr.ph357, %.thread147
  %.18.i.lcssa = phi ptr [ %i.fp, %.thread147 ], [ %.18.i354, %.lr.ph357 ], [ %.19.i, %bb.ax ]
  %.6206.i.lcssa = phi i64 [ %.5205.i298, %.thread147 ], [ %.6206.i355, %.lr.ph357 ], [ %i.fw, %bb.ax ]
  %.0.i.lcssa = phi i64 [ 0, %.thread147 ], [ %.0.i356, %.lr.ph357 ], [ %.1.i, %bb.ax ]
  %i.gj = ptrtoint ptr %i.fp to i64
  %i.gk = ptrtoint ptr %.18.i.lcssa to i64
  %i.gl = add i64 %.5.i, %i.gj
  %i.gm = sub i64 %i.gl, %i.gk
  %i.gn = add nsw i64 %i.gm, %.0.i.lcssa
  br label %.thread455

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %.split, %bb.w, %bb.t, %.split133, %bb.ai, %bb.ah, %bb.aq, %bb.ap, %bb.ao, %bb.av, %bb.aw, %bb.d, %bb.aj, %bb.ak, %bb.x, %bb.c
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #33 ; 2 uses
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = extractvalue { ptr, i32 } %i.go, 1
  br label %bb.bo

bb.ay:                                            ; preds = %bb.al, %.critedge.i
  %i.gr = add i64 %.4187.i, -23
  %or.cond251 = icmp ult i64 %i.gr, -45
  %i.gs = icmp ugt i64 %.4204.i, 9007199254740992
  %or.cond253 = select i1 %or.cond251, i1 true, i1 %i.gs
  br i1 %or.cond253, label %.thread455, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = uitofp nneg i64 %.4204.i to double      ; 2 uses
  %i.gu = icmp slt i64 %.4187.i, 0
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = sub nsw i64 0, %.4187.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !831
  %i.gy = fdiv double %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %.4187.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !831
  %i.hb = fmul double %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi double [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !831
  br i1 %i.d, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg double %storemerge
  store double %i.hc, ptr %2, align 8, !tbaa !831
  br label %bb.bo

.thread455:                                       ; preds = %._crit_edge358, %bb.ay
  %.sroa.093.0.ph464 = phi i64 [ %.4187.i, %bb.ay ], [ %i.gn, %._crit_edge358 ] ; 2 uses
  %.sroa.7.0.ph463 = phi i64 [ %.4204.i, %bb.ay ], [ %.6206.i.lcssa, %._crit_edge358 ] ; 2 uses
  %.sroa.26.2.ph462 = phi i1 [ false, %bb.ay ], [ true, %._crit_edge358 ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.7.0.ph463, 0
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.be

bb.be:                                            ; preds = %.thread455.thread, %.thread455
  %.sroa.26.2.ph462484 = phi i1 [ true, %.thread455.thread ], [ %.sroa.26.2.ph462, %.thread455 ] ; 6 uses
  %.sroa.7.0.ph463483 = phi i64 [ %i.ez, %.thread455.thread ], [ %.sroa.7.0.ph463, %.thread455 ] ; 8 uses
  %.sroa.093.0.ph464480 = phi i64 [ %i.fo, %.thread455.thread ], [ %.sroa.093.0.ph464, %.thread455 ] ; 11 uses
  %i.he = icmp slt i64 %.sroa.093.0.ph464480, -342
  br i1 %i.he, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp sgt i64 %.sroa.093.0.ph464480, 308
  br i1 %i.hf, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.noexc

.noexc:                                           ; preds = %bb.bf
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph463483, i1 true) ; 2 uses
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl i64 %.sroa.7.0.ph463483, %i.hg
  %i.hj = trunc nsw i64 %.sroa.093.0.ph464480 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !137
  %i.hp = zext i64 %i.hi to i128                  ; 2 uses
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 511
  %i.hw = icmp eq i64 %i.hv, 511
  br i1 %i.hw, label %.noexc73, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

.noexc73:                                         ; preds = %.noexc
  %6 = sext i32 %i.hk to i64
  %7 = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %6
  %i.hx = getelementptr i8, ptr %7, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !137
  %i.hz = zext i64 %i.hy to i128
  %i.ia = mul nuw i128 %i.hz, %i.hp
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = trunc nuw i128 %i.ib to i64             ; 2 uses
  %i.id = add i64 %i.ic, %i.hs                    ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = zext i1 %i.ie to i64
  %spec.select.i72 = add nuw i64 %i.if, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %.noexc73, %.noexc
  %.pn273 = phi i64 [ %i.id, %.noexc73 ], [ %i.hs, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hu, %.noexc ] ; 3 uses
  %i.ig = icmp ne i64 %.pn273, -1
  %i.ih = add nsw i64 %.sroa.093.0.ph464480, 27
  %i.ii = icmp ult i64 %i.ih, 83
  %or.cond.i54 = or i1 %i.ii, %i.ig
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.ij = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = add nuw nsw i64 %i.ij, 9                ; 2 uses
  %i.im = lshr i64 %spec.select.i72.pn, %i.il     ; 5 uses
  %i.in = mul nsw i32 %i.hj, 217706
  %i.io = ashr i32 %i.in, 16
  %reass.sub = sub nsw i32 %i.io, %i.hh
  %i.ip = add nsw i32 %reass.sub, 1086
  %i.iq = add nsw i32 %i.ip, %i.ik                ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %bb.bg, label %.split487

bb.bg:                                            ; preds = %.critedge.i60
  %i.is = sub nsw i32 1, %i.iq                    ; 2 uses
  %i.it = icmp samesign ugt i32 %i.is, 63
  br i1 %i.it, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.split486

.split486:                                        ; preds = %bb.bg
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = lshr i64 %i.im, %i.iu                   ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %i.ix = add nuw nsw i64 %i.iw, %i.iv            ; 2 uses
  %i.iy = lshr i64 %i.ix, 1                       ; 2 uses
  %i.iz = icmp samesign ugt i64 %i.ix, 9007199254740991
  %i.ja = zext i1 %i.iz to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

.split487:                                        ; preds = %.critedge.i60
  %i.jb = icmp ult i64 %.pn273, 2
  %i.jc = add nsw i64 %.sroa.093.0.ph464480, 4
  %i.jd = icmp ult i64 %i.jc, 28
  %or.cond255.not275 = and i1 %i.jd, %i.jb
  %i.je = and i64 %i.im, 3
  %i.jf = icmp eq i64 %i.je, 1
  %or.cond257 = select i1 %or.cond255.not275, i1 %i.jf, i1 false
  %i.jg = shl i64 %i.im, %i.il
  %i.jh = icmp eq i64 %i.jg, %spec.select.i72.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.jh, i1 false
  %i.ji = and i64 %i.im, 72057594037927934
  %.sroa.0111.0 = select i1 %or.cond259, i64 %i.ji, i64 %i.im ; 2 uses
  %i.jj = and i64 %.sroa.0111.0, 1
  %i.jk = add nuw nsw i64 %i.jj, %.sroa.0111.0    ; 2 uses
  %i.jl = lshr i64 %i.jk, 1
  %.not27.i61 = icmp samesign ugt i64 %i.jk, 18014398509481983 ; 2 uses
  %i.jm = zext i1 %.not27.i61 to i32
  %.sroa.19117.0 = add nuw nsw i32 %i.iq, %i.jm   ; 2 uses
  %i.jn = and i64 %i.jl, 9218868437227405311
  %.not28.i62 = icmp samesign ugt i32 %.sroa.19117.0, 2046 ; 2 uses
  %.not = select i1 %.not28.i62, i1 true, i1 %.not27.i61
  %spec.select268 = select i1 %.not, i64 0, i64 %i.jn ; 2 uses
  %spec.select269 = select i1 %.not28.i62, i32 2047, i32 %.sroa.19117.0 ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66: ; preds = %bb.bg, %bb.bf, %.thread455, %bb.be
  %.sroa.26.2.ph462485 = phi i1 [ %.sroa.26.2.ph462484, %bb.bf ], [ %.sroa.26.2.ph462, %.thread455 ], [ %.sroa.26.2.ph462484, %bb.be ], [ %.sroa.26.2.ph462484, %bb.bg ]
  %.sroa.093.0.ph464482 = phi i64 [ %.sroa.093.0.ph464480, %bb.bf ], [ %.sroa.093.0.ph464, %.thread455 ], [ %.sroa.093.0.ph464480, %bb.be ], [ %.sroa.093.0.ph464480, %bb.bg ]
  %.sroa.7.0160 = phi i64 [ %.sroa.7.0.ph463483, %bb.bf ], [ 0, %.thread455 ], [ %.sroa.7.0.ph463483, %bb.be ], [ %.sroa.7.0.ph463483, %bb.bg ]
  %.sroa.19117.1 = phi i32 [ 2047, %bb.bf ], [ 0, %.thread455 ], [ 0, %bb.be ], [ 0, %bb.bg ] ; 2 uses
  br i1 %.sroa.26.2.ph462485, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %.thread246

bb.bh:                                            ; preds = %.split487, %.split486, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66
  %.sroa.093.0.ph464481 = phi i64 [ %.sroa.093.0.ph464480, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.093.0.ph464482, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.093.0.ph464480, %.split486 ], [ %.sroa.093.0.ph464480, %.split487 ] ; 5 uses
  %.sroa.19117.1471 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.ja, %.split486 ], [ %spec.select269, %.split487 ] ; 3 uses
  %.sroa.0111.2469 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iy, %.split486 ], [ %spec.select268, %.split487 ] ; 2 uses
  %.sroa.7.0160468 = phi i64 [ %.sroa.7.0.ph463483, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.7.0160, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.7.0.ph463483, %.split486 ], [ %.sroa.7.0.ph463483, %.split487 ]
  %i.jo = add i64 %.sroa.7.0160468, 1             ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 0
  %i.jq = icmp slt i64 %.sroa.093.0.ph464481, -342
  %or.cond260 = or i1 %i.jq, %i.jp
  br i1 %or.cond260, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = icmp sgt i64 %.sroa.093.0.ph464481, 308
  br i1 %i.jr, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %.noexc76

.noexc76:                                         ; preds = %bb.bi
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 true) ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = shl i64 %i.jo, %i.js
  %i.jv = trunc nsw i64 %.sroa.093.0.ph464481 to i32 ; 2 uses
  %i.jw = shl nsw i32 %i.jv, 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 5472
  %i.ka = load i64, ptr %i.jz, align 16, !tbaa !137
  %i.kb = zext i64 %i.ju to i128                  ; 2 uses
  %i.kc = zext i64 %i.ka to i128
  %i.kd = mul nuw i128 %i.kc, %i.kb               ; 2 uses
  %i.ke = trunc i128 %i.kd to i64                 ; 2 uses
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 3 uses
  %i.kh = and i64 %i.kg, 511
  %i.ki = icmp eq i64 %i.kh, 511
  br i1 %i.ki, label %.noexc77, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

.noexc77:                                         ; preds = %.noexc76
  %i.kj = getelementptr i8, ptr %i.jy, i64 5480
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !137
  %i.kl = zext i64 %i.kk to i128
  %i.km = mul nuw i128 %i.kl, %i.kb
  %i.kn = lshr i128 %i.km, 64
  %i.ko = trunc nuw i128 %i.kn to i64             ; 2 uses
  %i.kp = add i64 %i.ko, %i.ke                    ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.ko
  %i.kr = zext i1 %i.kq to i64
  %spec.select.i75 = add nuw i64 %i.kr, %i.kg
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78: ; preds = %.noexc77, %.noexc76
  %.pn277 = phi i64 [ %i.kp, %.noexc77 ], [ %i.ke, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.kg, %.noexc76 ] ; 3 uses
  %i.ks = icmp ne i64 %.pn277, -1
  %i.kt = add nsw i64 %.sroa.093.0.ph464481, 27
  %i.ku = icmp ult i64 %i.kt, 83
  %or.cond.i51 = or i1 %i.ku, %i.ks
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78
  %i.kv = lshr i64 %spec.select.i75.pn, 63        ; 2 uses
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = add nuw nsw i64 %i.kv, 9                ; 2 uses
  %i.ky = lshr i64 %spec.select.i75.pn, %i.kx     ; 5 uses
  %i.kz = mul nsw i32 %i.jv, 217706
  %i.la = ashr i32 %i.kz, 16
  %i.lb = add nsw i32 %i.la, 1086
  %i.lc = sub nsw i32 %i.lb, %i.jt
  %i.ld = add nsw i32 %i.lc, %i.kw                ; 3 uses
  %i.le = icmp slt i32 %i.ld, 1
  br i1 %i.le, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.critedge.i52
  %i.lf = sub nsw i32 1, %i.ld                    ; 2 uses
  %i.lg = icmp samesign ugt i32 %i.lf, 63
  br i1 %i.lg, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = lshr i64 %i.ky, %i.lh                   ; 2 uses
  %i.lj = and i64 %i.li, 1
  %i.lk = add nuw nsw i64 %i.lj, %i.li            ; 2 uses
  %i.ll = lshr i64 %i.lk, 1
  %i.lm = icmp samesign ugt i64 %i.lk, 9007199254740991
  %i.ln = zext i1 %i.lm to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.bl:                                            ; preds = %.critedge.i52
  %i.lo = icmp ult i64 %.pn277, 2
  %i.lp = add nsw i64 %.sroa.093.0.ph464481, 4
  %i.lq = icmp ult i64 %i.lp, 28
  %or.cond262.not280 = and i1 %i.lq, %i.lo
  %i.lr = and i64 %i.ky, 3
  %i.ls = icmp eq i64 %i.lr, 1
  %or.cond264 = select i1 %or.cond262.not280, i1 %i.ls, i1 false
  %i.lt = shl i64 %i.ky, %i.kx
  %i.lu = icmp eq i64 %i.lt, %spec.select.i75.pn
  %or.cond266 = select i1 %or.cond264, i1 %i.lu, i1 false
  %i.lv = and i64 %i.ky, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond266, i64 %i.lv, i64 %i.ky ; 2 uses
  %i.lw = and i64 %.sroa.0103.0, 1
  %i.lx = add nuw nsw i64 %i.lw, %.sroa.0103.0    ; 2 uses
  %i.ly = lshr i64 %i.lx, 1
  %.not27.i = icmp samesign ugt i64 %i.lx, 18014398509481983 ; 2 uses
  %i.lz = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.ld, %i.lz      ; 2 uses
  %i.ma = and i64 %i.ly, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not281 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select270 = select i1 %.not281, i64 0, i64 %i.ma
  %spec.select271 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bl, %bb.bj, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bi, %bb.bh, %bb.bk
  %.sroa.0103.2 = phi i64 [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.ll, %bb.bk ], [ %spec.select270, %bb.bl ], [ 0, %bb.bj ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bi ], [ 0, %bb.bh ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.ln, %bb.bk ], [ %spec.select271, %bb.bl ], [ 0, %bb.bj ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2469, %.sroa.0103.2
  %i.mb = icmp ne i32 %.sroa.19117.1471, %.sroa.19.1
end_hunk_11
begin_hunk_12_@_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a

.preheader281:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i344 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i343 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i344, align 1, !tbaa !144, !noalias !1551 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader281
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i343, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i344, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader281, !llvm.loop !63

.critedge.i:                                      ; preds = %.preheader281, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i343, %.preheader281 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i346 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i345 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i345, align 1, !tbaa !144, !noalias !1551 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.am, label %.thread140

bb.am:                                            ; preds = %.preheader
  %i.ew = mul nuw i64 %.5205.i346, 10
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = add i64 %i.ew, -48
  %i.ez = add i64 %i.ey, %i.ex                    ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i345, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.fa, %1
  br i1 %.not266.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !144, !noalias !1551
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i345, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !144, !noalias !1551
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !64

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp ugt i64 %i.ez, 999999999999999999
  br i1 %i.fl, label %.thread448.thread, label %.thread140

.thread448.thread:                                ; preds = %bb.as
  %i.fm = ptrtoint ptr %.17.i to i64
  %i.fn = add i64 %.5.i, %i.df
  %i.fo = sub i64 %i.fn, %i.fm
  br label %bb.be

.thread140:                                       ; preds = %.preheader, %bb.as
  %.16.i294 = phi ptr [ %.17.i, %bb.as ], [ %.16.i345, %.preheader ]
  %.5205.i291 = phi i64 [ %i.ez, %bb.as ], [ %.5205.i346, %.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.16.i294, i64 1 ; 4 uses
  %.not531 = icmp eq ptr %i.fp, %1
  br i1 %.not531, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %.thread140, %bb.ax
  %.0.i349 = phi i64 [ %.1.i, %bb.ax ], [ 0, %.thread140 ] ; 4 uses
  %.6206.i348 = phi i64 [ %i.fw, %bb.ax ], [ %.5205.i291, %.thread140 ] ; 2 uses
  %.18.i347 = phi ptr [ %.19.i, %bb.ax ], [ %i.fp, %.thread140 ] ; 4 uses
  %i.fq = load i8, ptr %.18.i347, align 1, !tbaa !144, !noalias !1551 ; 2 uses
  %i.fr = add i8 %i.fq, -48
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.at, label %._crit_edge351

bb.at:                                            ; preds = %.lr.ph350
  %i.ft = mul nuw i64 %.6206.i348, 10
  %i.fu = zext nneg i8 %i.fq to i64
  %i.fv = add i64 %i.ft, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.18.i347, i64 1 ; 4 uses
  %.not265.i = icmp eq ptr %i.fx, %1
  br i1 %.not265.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !144, !noalias !1551
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i347, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i349, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !144, !noalias !1551
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i349, %bb.au ], [ %.0.i349, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph350, label %._crit_edge351, !llvm.loop !65

._crit_edge351:                                   ; preds = %bb.ax, %.lr.ph350, %.thread140
  %.18.i.lcssa = phi ptr [ %i.fp, %.thread140 ], [ %.18.i347, %.lr.ph350 ], [ %.19.i, %bb.ax ]
  %.6206.i.lcssa = phi i64 [ %.5205.i291, %.thread140 ], [ %.6206.i348, %.lr.ph350 ], [ %i.fw, %bb.ax ]
  %.0.i.lcssa = phi i64 [ 0, %.thread140 ], [ %.0.i349, %.lr.ph350 ], [ %.1.i, %bb.ax ]
  %i.gj = ptrtoint ptr %i.fp to i64
  %i.gk = ptrtoint ptr %.18.i.lcssa to i64
  %i.gl = add i64 %.5.i, %i.gj
  %i.gm = sub i64 %i.gl, %i.gk
  %i.gn = add nsw i64 %i.gm, %.0.i.lcssa
  br label %.thread448

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %.split, %bb.w, %bb.t, %.split126, %bb.ai, %bb.ah, %bb.aq, %bb.ap, %bb.ao, %bb.av, %bb.aw, %bb.d, %bb.aj, %bb.ak, %bb.x, %bb.c
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIfEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #33 ; 2 uses
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = extractvalue { ptr, i32 } %i.go, 1
  br label %bb.bs

bb.ay:                                            ; preds = %bb.al, %.critedge.i
  %i.gr = add i64 %.4187.i, -11
  %or.cond244 = icmp ult i64 %i.gr, -21
  %i.gs = icmp ugt i64 %.4204.i, 16777216
  %or.cond246 = select i1 %or.cond244, i1 true, i1 %i.gs
  br i1 %or.cond246, label %.thread448, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = uitofp nneg i64 %.4204.i to float       ; 2 uses
  %i.gu = icmp slt i64 %.4187.i, 0
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = sub nsw i64 0, %.4187.i
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @_ZN17duckdb_fast_floatL19powers_of_ten_floatE, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !837
  %i.gy = fdiv float %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @_ZN17duckdb_fast_floatL19powers_of_ten_floatE, i64 %.4187.i
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !837
  %i.hb = fmul float %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi float [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store float %storemerge, ptr %2, align 4, !tbaa !837
  br i1 %i.d, label %bb.bd, label %bb.bs

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg float %storemerge
  store float %i.hc, ptr %2, align 4, !tbaa !837
  br label %bb.bs

.thread448:                                       ; preds = %._crit_edge351, %bb.ay
  %.sroa.086.0.ph457 = phi i64 [ %.4187.i, %bb.ay ], [ %i.gn, %._crit_edge351 ] ; 2 uses
  %.sroa.7.0.ph456 = phi i64 [ %.4204.i, %bb.ay ], [ %.6206.i.lcssa, %._crit_edge351 ] ; 2 uses
  %.sroa.26.2.ph455 = phi i1 [ false, %bb.ay ], [ true, %._crit_edge351 ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.7.0.ph456, 0
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %bb.be

bb.be:                                            ; preds = %.thread448.thread, %.thread448
  %.sroa.26.2.ph455477 = phi i1 [ true, %.thread448.thread ], [ %.sroa.26.2.ph455, %.thread448 ] ; 6 uses
  %.sroa.7.0.ph456476 = phi i64 [ %i.ez, %.thread448.thread ], [ %.sroa.7.0.ph456, %.thread448 ] ; 8 uses
  %.sroa.086.0.ph457473 = phi i64 [ %i.fo, %.thread448.thread ], [ %.sroa.086.0.ph457, %.thread448 ] ; 11 uses
  %i.he = icmp slt i64 %.sroa.086.0.ph457473, -65
  br i1 %i.he, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp sgt i64 %.sroa.086.0.ph457473, 38
  br i1 %i.hf, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph456476, i1 true) ; 2 uses
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl i64 %.sroa.7.0.ph456476, %i.hg
  %i.hj = trunc nsw i64 %.sroa.086.0.ph457473 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1                    ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !137
  %i.hp = zext i64 %i.hi to i128                  ; 2 uses
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 274877906943
  %i.hw = icmp eq i64 %i.hv, 274877906943
  br i1 %i.hw, label %bb.bh, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

bb.bh:                                            ; preds = %bb.bg
  %6 = sext i32 %i.hk to i64
  %7 = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %6
  %i.hx = getelementptr i8, ptr %7, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !137
  %i.hz = zext i64 %i.hy to i128
  %i.ia = mul nuw i128 %i.hz, %i.hp
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = trunc nuw i128 %i.ib to i64             ; 2 uses
  %i.id = add i64 %i.ic, %i.hs                    ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = zext i1 %i.ie to i64
  %spec.select.i72 = add nuw i64 %i.if, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit: ; preds = %bb.bh, %bb.bg
  %.pn266 = phi i64 [ %i.id, %bb.bh ], [ %i.hs, %bb.bg ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %bb.bh ], [ %i.hu, %bb.bg ] ; 3 uses
  %i.ig = icmp ne i64 %.pn266, -1
  %i.ih = add nsw i64 %.sroa.086.0.ph457473, 27
  %i.ii = icmp ult i64 %i.ih, 83
  %or.cond.i59 = or i1 %i.ii, %i.ig
  br i1 %or.cond.i59, label %.critedge.i65, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread

.critedge.i65:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.ij = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = or disjoint i64 %i.ij, 38               ; 2 uses
  %i.im = lshr i64 %spec.select.i72.pn, %i.il     ; 5 uses
  %i.in = mul nsw i32 %i.hj, 217706
  %i.io = ashr i32 %i.in, 16
  %reass.sub = sub nsw i32 %i.io, %i.hh
  %i.ip = add nsw i32 %reass.sub, 190
  %i.iq = add nsw i32 %i.ip, %i.ik                ; 3 uses
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %bb.bi, label %.split480

bb.bi:                                            ; preds = %.critedge.i65
  %i.is = sub nsw i32 1, %i.iq                    ; 2 uses
  %i.it = icmp samesign ugt i32 %i.is, 63
  br i1 %i.it, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %.split479

.split479:                                        ; preds = %bb.bi
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = lshr i64 %i.im, %i.iu                   ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %i.ix = add nuw nsw i64 %i.iw, %i.iv            ; 2 uses
  %i.iy = lshr i64 %i.ix, 1                       ; 2 uses
  %i.iz = icmp samesign ugt i64 %i.ix, 16777215
  %i.ja = zext i1 %i.iz to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %bb.br

.split480:                                        ; preds = %.critedge.i65
  %i.jb = icmp ult i64 %.pn266, 2
  %i.jc = add nsw i64 %.sroa.086.0.ph457473, 17
  %i.jd = icmp ult i64 %i.jc, 28
  %or.cond248.not268 = and i1 %i.jd, %i.jb
  %i.je = and i64 %i.im, 3
  %i.jf = icmp eq i64 %i.je, 1
  %or.cond250 = select i1 %or.cond248.not268, i1 %i.jf, i1 false
  %i.jg = shl i64 %i.im, %i.il
  %i.jh = icmp eq i64 %i.jg, %spec.select.i72.pn
  %or.cond252 = select i1 %or.cond250, i1 %i.jh, i1 false
  %i.ji = and i64 %i.im, 67108862
  %.sroa.0104.0 = select i1 %or.cond252, i64 %i.ji, i64 %i.im ; 2 uses
  %i.jj = and i64 %.sroa.0104.0, 1
  %i.jk = add nuw nsw i64 %i.jj, %.sroa.0104.0    ; 2 uses
  %i.jl = lshr i64 %i.jk, 1
  %.not27.i66 = icmp samesign ugt i64 %i.jk, 33554431 ; 2 uses
  %i.jm = zext i1 %.not27.i66 to i32
  %.sroa.19110.0 = add nuw nsw i32 %i.iq, %i.jm   ; 2 uses
  %i.jn = and i64 %i.jl, 58720255
  %.not28.i67 = icmp samesign ugt i32 %.sroa.19110.0, 254 ; 2 uses
  %.not = select i1 %.not28.i67, i1 true, i1 %.not27.i66
  %spec.select261 = select i1 %.not, i64 0, i64 %i.jn ; 2 uses
  %spec.select262 = select i1 %.not28.i67, i32 255, i32 %.sroa.19110.0 ; 2 uses
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71: ; preds = %bb.bi, %bb.bf, %.thread448, %bb.be
  %.sroa.26.2.ph455478 = phi i1 [ %.sroa.26.2.ph455477, %bb.bf ], [ %.sroa.26.2.ph455, %.thread448 ], [ %.sroa.26.2.ph455477, %bb.be ], [ %.sroa.26.2.ph455477, %bb.bi ]
  %.sroa.086.0.ph457475 = phi i64 [ %.sroa.086.0.ph457473, %bb.bf ], [ %.sroa.086.0.ph457, %.thread448 ], [ %.sroa.086.0.ph457473, %bb.be ], [ %.sroa.086.0.ph457473, %bb.bi ]
  %.sroa.7.0153 = phi i64 [ %.sroa.7.0.ph456476, %bb.bf ], [ 0, %.thread448 ], [ %.sroa.7.0.ph456476, %bb.be ], [ %.sroa.7.0.ph456476, %bb.bi ]
  %.sroa.19110.1 = phi i32 [ 255, %bb.bf ], [ 0, %.thread448 ], [ 0, %bb.be ], [ 0, %bb.bi ] ; 2 uses
  br i1 %.sroa.26.2.ph455478, label %bb.bj, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %.thread239

bb.bj:                                            ; preds = %.split480, %.split479, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71
  %.sroa.086.0.ph457474 = phi i64 [ %.sroa.086.0.ph457473, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.086.0.ph457475, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %.sroa.086.0.ph457473, %.split479 ], [ %.sroa.086.0.ph457473, %.split480 ] ; 5 uses
  %.sroa.19110.1464 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.ja, %.split479 ], [ %spec.select262, %.split480 ] ; 3 uses
  %.sroa.0104.2462 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iy, %.split479 ], [ %spec.select261, %.split480 ] ; 2 uses
  %.sroa.7.0153461 = phi i64 [ %.sroa.7.0.ph456476, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.7.0153, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %.sroa.7.0.ph456476, %.split479 ], [ %.sroa.7.0.ph456476, %.split480 ]
  %i.jo = add i64 %.sroa.7.0153461, 1             ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 0
  %i.jq = icmp slt i64 %.sroa.086.0.ph457474, -65
  %or.cond253 = or i1 %i.jq, %i.jp
  br i1 %or.cond253, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jr = icmp sgt i64 %.sroa.086.0.ph457474, 38
  br i1 %i.jr, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.js = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jo, i1 true) ; 2 uses
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = shl i64 %i.jo, %i.js
  %i.jv = trunc nsw i64 %.sroa.086.0.ph457474 to i32 ; 2 uses
  %i.jw = shl nsw i32 %i.jv, 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 5472
  %i.ka = load i64, ptr %i.jz, align 16, !tbaa !137
  %i.kb = zext i64 %i.ju to i128                  ; 2 uses
  %i.kc = zext i64 %i.ka to i128
  %i.kd = mul nuw i128 %i.kc, %i.kb               ; 2 uses
  %i.ke = trunc i128 %i.kd to i64                 ; 2 uses
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = trunc nuw i128 %i.kf to i64             ; 3 uses
  %i.kh = and i64 %i.kg, 274877906943
  %i.ki = icmp eq i64 %i.kh, 274877906943
  br i1 %i.ki, label %bb.bm, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79

bb.bm:                                            ; preds = %bb.bl
  %i.kj = getelementptr i8, ptr %i.jy, i64 5480
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !137
  %i.kl = zext i64 %i.kk to i128
  %i.km = mul nuw i128 %i.kl, %i.kb
  %i.kn = lshr i128 %i.km, 64
  %i.ko = trunc nuw i128 %i.kn to i64             ; 2 uses
  %i.kp = add i64 %i.ko, %i.ke                    ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.ko
  %i.kr = zext i1 %i.kq to i64
  %spec.select.i78 = add nuw i64 %i.kr, %i.kg
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79: ; preds = %bb.bm, %bb.bl
  %.pn270 = phi i64 [ %i.kp, %bb.bm ], [ %i.ke, %bb.bl ] ; 2 uses
  %spec.select.i78.pn = phi i64 [ %spec.select.i78, %bb.bm ], [ %i.kg, %bb.bl ] ; 3 uses
  %i.ks = icmp ne i64 %.pn270, -1
  %i.kt = add nsw i64 %.sroa.086.0.ph457474, 27
  %i.ku = icmp ult i64 %i.kt, 83
  %or.cond.i56 = or i1 %i.ku, %i.ks
  br i1 %or.cond.i56, label %.critedge.i57, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

.critedge.i57:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79
  %i.kv = lshr i64 %spec.select.i78.pn, 63        ; 2 uses
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = or disjoint i64 %i.kv, 38               ; 2 uses
  %i.ky = lshr i64 %spec.select.i78.pn, %i.kx     ; 5 uses
  %i.kz = mul nsw i32 %i.jv, 217706
  %i.la = ashr i32 %i.kz, 16
  %i.lb = add nsw i32 %i.la, 190
  %i.lc = sub nsw i32 %i.lb, %i.jt
  %i.ld = add nsw i32 %i.lc, %i.kw                ; 3 uses
  %i.le = icmp slt i32 %i.ld, 1
  br i1 %i.le, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.critedge.i57
  %i.lf = sub nsw i32 1, %i.ld                    ; 2 uses
  %i.lg = icmp samesign ugt i32 %i.lf, 63
  br i1 %i.lg, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = lshr i64 %i.ky, %i.lh                   ; 2 uses
  %i.lj = and i64 %i.li, 1
  %i.lk = add nuw nsw i64 %i.lj, %i.li            ; 2 uses
  %i.ll = lshr i64 %i.lk, 1
  %i.lm = icmp samesign ugt i64 %i.lk, 16777215
  %i.ln = zext i1 %i.lm to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

bb.bp:                                            ; preds = %.critedge.i57
  %i.lo = icmp ult i64 %.pn270, 2
  %i.lp = add nsw i64 %.sroa.086.0.ph457474, 17
  %i.lq = icmp ult i64 %i.lp, 28
  %or.cond255.not273 = and i1 %i.lq, %i.lo
  %i.lr = and i64 %i.ky, 3
  %i.ls = icmp eq i64 %i.lr, 1
  %or.cond257 = select i1 %or.cond255.not273, i1 %i.ls, i1 false
  %i.lt = shl i64 %i.ky, %i.kx
  %i.lu = icmp eq i64 %i.lt, %spec.select.i78.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.lu, i1 false
  %i.lv = and i64 %i.ky, 67108862
  %.sroa.096.0 = select i1 %or.cond259, i64 %i.lv, i64 %i.ky ; 2 uses
  %i.lw = and i64 %.sroa.096.0, 1
  %i.lx = add nuw nsw i64 %i.lw, %.sroa.096.0     ; 2 uses
  %i.ly = lshr i64 %i.lx, 1
  %.not27.i = icmp samesign ugt i64 %i.lx, 33554431 ; 2 uses
  %i.lz = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.ld, %i.lz      ; 2 uses
  %i.ma = and i64 %i.ly, 58720255
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 254 ; 2 uses
  %.not274 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select263 = select i1 %.not274, i64 0, i64 %i.ma
  %spec.select264 = select i1 %.not28.i, i32 255, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79, %bb.bk, %bb.bj, %bb.bo
  %.sroa.096.2 = phi i64 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.ll, %bb.bo ], [ %spec.select263, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 255, %bb.bk ], [ 0, %bb.bj ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.ln, %bb.bo ], [ %spec.select264, %bb.bp ], [ 0, %bb.bn ]
  %.not.i80 = icmp ne i64 %.sroa.0104.2462, %.sroa.096.2
  %i.mb = icmp ne i32 %.sroa.19110.1464, %.sroa.19.1
end_hunk_12
