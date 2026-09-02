Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_operators?download=true
inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN6duckdb7TryCast9OperationINS_8string_tEaEEbT_RT0_b:bb.a
  %i.a = alloca i8, align 1                       ; 9 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerDecimalCastData", align 8 ; 22 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  %cond105.i.i = icmp eq i32 %i.d, 0
  br i1 %cond105.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.035107.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 15 uses
  %.036106.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 26 uses
  %i.i = load i8, ptr %.035107.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %bb.o [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 1
  %i.k = add nsw i64 %.036106.i.i, -1             ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %.lr.ph.i.i, !llvm.loop !618

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %.036106.i.i, 1
  br i1 %.not.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  br i1 %3, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.0.9.i = phi i8 [ %i.s, %bb.e ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %.06095.us.i.i.i = phi i64 [ %i.q, %bb.e ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %.06095.us.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !106   ; 4 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.d, label %.split.us.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.us.i.i.i
  %.lhs.trunc.i.nonneg.us.i.i.i = sub nuw i8 -80, %i.m
  %i.p = udiv i8 %.lhs.trunc.i.nonneg.us.i.i.i, 10
  %.neg.us.i.i.i = sub nsw i8 0, %i.p
  %.not.us.i.i.i = icmp slt i8 %.sroa.0.9.i, %.neg.us.i.i.i
  br i1 %.not.us.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.e, !prof !125

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw i64 %.06095.us.i.i.i, 1          ; 2 uses
  %i.r = mul i8 %.sroa.0.9.i, 10
  %reass.sub101.i.i.i = sub i8 %i.r, %i.m
  %i.s = add i8 %reass.sub101.i.i.i, 48           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %.036106.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !619

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.0.6.i = phi i8 [ %i.ap, %bb.n ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %.06095.i.i.i = phi i64 [ %.7.i.i.i, %bb.n ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %.06095.i.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !106   ; 4 uses
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.0.7.i = phi i8 [ %.sroa.0.9.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.6.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %.pre.i.i.i = phi i8 [ %i.m, %.lr.ph.split.us.i.i.i ], [ %i.u, %.lr.ph.split.i.i.i ] ; 2 uses
  %.us-phi96.i.i.i = phi i64 [ %.06095.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.06095.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.x = icmp eq i8 %.pre.i.i.i, 46
  br i1 %i.x, label %bb.f, label %.thread80.i.i.i

bb.f:                                             ; preds = %.split.us.i.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ult i64 %.us-phi96.i.i.i, 2         ; 2 uses
  %i.z = add nuw i64 %.us-phi96.i.i.i, 1          ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.036106.i.i
  br i1 %i.aa, label %bb.h, label %.thread82.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !106 ; 2 uses
  %i.ad = add i8 %i.ac, -48
  %i.ae = icmp ult i8 %i.ad, 10
  %brmerge.i.i.i = or i1 %i.y, %i.ae
  br i1 %brmerge.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %.thread80.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.g
  br i1 %i.y, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i

.thread80.i.i.i:                                  ; preds = %bb.h, %.split.us.i.i.i
  %i.af = phi i8 [ %i.ac, %bb.h ], [ %.pre.i.i.i, %.split.us.i.i.i ]
  %.4.i.i.i = phi i64 [ %i.z, %bb.h ], [ %.us-phi96.i.i.i, %.split.us.i.i.i ]
  switch i8 %i.af, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i
  %i.ag = add i64 %.4.i.i.i, 1                    ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %.036106.i.i
  br i1 %i.ah, label %.lr.ph98.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i

.lr.ph98.i.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  %i.ai = phi i64 [ %i.al, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.ag, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !106
  switch i8 %i.ak, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i: ; preds = %.lr.ph98.i.i.i, %.lr.ph98.i.i.i, %.lr.ph98.i.i.i, %.lr.ph98.i.i.i, %.lr.ph98.i.i.i, %.lr.ph98.i.i.i
  %i.al = add nuw i64 %i.ai, 1                    ; 2 uses
  %exitcond118.not.i.i.i = icmp eq i64 %i.al, %.036106.i.i
  br i1 %exitcond118.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph98.i.i.i, !llvm.loop !620

bb.i:                                             ; preds = %.lr.ph.split.i.i.i
  %i.am = add nuw i64 %.06095.i.i.i, 1            ; 3 uses
  %.lhs.trunc.i.nonneg.i.i.i = sub nuw i8 -80, %i.u
  %i.an = udiv i8 %.lhs.trunc.i.nonneg.i.i.i, 10
  %.neg.i.i.i = sub nsw i8 0, %i.an
  %.not.i.i.i = icmp slt i8 %.sroa.0.6.i, %.neg.i.i.i
  br i1 %.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.j, !prof !125

bb.j:                                             ; preds = %bb.i
  %i.ao = mul i8 %.sroa.0.6.i, 10
  %reass.sub.i.i.i = sub i8 %i.ao, %i.u
  %i.ap = add i8 %reass.sub.i.i.i, 48             ; 3 uses
  %.not76.i.i.i = icmp eq i64 %i.am, %.036106.i.i
  br i1 %.not76.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.am
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !106
  %.not100.i.i.i = icmp eq i8 %i.ar, 95
  br i1 %.not100.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = add i64 %.06095.i.i.i, 2                ; 3 uses
  %i.at = icmp eq i64 %i.as, %.036106.i.i
  br i1 %i.at, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1, !tbaa !106
  %i.aw = add i8 %i.av, -48
  %i.ax = icmp ult i8 %i.aw, 10
  br i1 %i.ax, label %bb.n, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.7.i.i.i = phi i64 [ %i.am, %bb.k ], [ %i.as, %bb.m ] ; 3 uses
  %i.ay = icmp ult i64 %.7.i.i.i, %.036106.i.i
  br i1 %i.ay, label %.lr.ph.split.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, !llvm.loop !619

bb.o:                                             ; preds = %.lr.ph.i.i
  %.not39.i.i = icmp ne i64 %.036106.i.i, 1
  %i.az = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not39.i.i, %i.az
  br i1 %or.cond.i.i, label %bb.p, label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 1 ; 7 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !106 ; 2 uses
  %i.bc = add i8 %i.bb, -66                       ; 2 uses
  %i.bd = tail call i8 @llvm.fshl.i8(i8 %i.bc, i8 %i.bc, i8 7)
  switch i8 %i.bd, label %bb.ad [
    i8 27, label %bb.q
    i8 11, label %bb.q
    i8 16, label %bb.w
    i8 0, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.be = add i64 %.036106.i.i, -1                ; 5 uses
  %i.bf = icmp ugt i64 %i.be, 1
  br i1 %i.bf, label %.lr.ph.i41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

.lr.ph.i41.i.i:                                   ; preds = %bb.q, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %.02640.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.q ] ; 3 uses
  %i.bg = phi i8 [ %i.cg, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.02640.i.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !106 ; 3 uses
  %i.bj = add i8 %i.bi, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bj, 26
  %i.bk = or disjoint i8 %i.bi, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bk, i8 %i.bi ; 4 uses
  %i.bl = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.bl, 10
  %i.bm = and i8 %spec.select.i.i.i.i, -33
  %i.bn = add i8 %i.bm, -65
  %i.bo = icmp ult i8 %i.bn, 6
  %i.bp = or i1 %or.cond.i36.i.i.i, %i.bo
  br i1 %i.bp, label %bb.r, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.r:                                             ; preds = %.lr.ph.i41.i.i
  %i.bq = icmp sgt i8 %spec.select.i.i.i.i, 96
  %.0.v.i.i.i = select i1 %i.bq, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i.i ; 2 uses
  %i.br = add nuw i64 %.02640.i.i.i, 1            ; 3 uses
  %.not.i42.i.i = icmp eq i64 %i.br, %i.be
  br i1 %.not.i42.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !106
  %i.bu = icmp eq i8 %i.bt, 95
  br i1 %i.bu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bv = add nuw i64 %.02640.i.i.i, 2            ; 3 uses
  %i.bw = icmp eq i64 %i.bv, %i.be
  br i1 %i.bw, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !106 ; 2 uses
  %i.bz = add i8 %i.by, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.bz, 10
  %i.ca = and i8 %i.by, -33
  %i.cb = add i8 %i.ca, -65
  %i.cc = icmp ult i8 %i.cb, 6
  %i.cd = or i1 %or.cond.i37.i.i.i, %i.cc
  br i1 %i.cd, label %bb.v, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.1.i.i.i = phi i64 [ %i.bv, %bb.u ], [ %i.br, %bb.s ], [ %i.be, %bb.r ] ; 2 uses
  %.lhs.trunc.i.i.i.i = sub i8 127, %.0.i.i.i
  %i.ce = sdiv i8 %.lhs.trunc.i.i.i.i, 16
  %.not38.i.i.i = icmp slt i8 %i.ce, %i.bg
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.v
  %i.cf = shl i8 %i.bg, 4
  %i.cg = add i8 %.0.i.i.i, %i.cf                 ; 2 uses
  %i.ch = icmp ult i64 %.1.i.i.i, %i.be
  br i1 %i.ch, label %.lr.ph.i41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i

bb.w:                                             ; preds = %bb.p, %bb.p
  %i.ci = add i64 %.036106.i.i, -1                ; 5 uses
  %i.cj = icmp ugt i64 %i.ci, 1
  br i1 %i.cj, label %.lr.ph.i45.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

.lr.ph.i45.i.i:                                   ; preds = %bb.w, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %.02435.i.i.i = phi i64 [ %.1.i48.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.w ] ; 3 uses
  %i.ck = phi i8 [ %i.cy, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.02435.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !106
  switch i8 %i.cm, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i [
    i8 48, label %bb.y
    i8 49, label %bb.x
  ]

bb.x:                                             ; preds = %.lr.ph.i45.i.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i45.i.i
  %.0.i46.i.i = phi i8 [ 1, %bb.x ], [ 0, %.lr.ph.i45.i.i ]
  %i.cn = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i47.i.i = icmp eq i64 %i.cn, %i.ci
  br i1 %.not.i47.i.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !106
  %i.cq = icmp eq i8 %i.cp, 95
  br i1 %i.cq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cr = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.cs = icmp eq i64 %i.cr, %i.ci
  br i1 %i.cs, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106
  %i.cv = and i8 %i.cu, -2
  %switch.i.i.i = icmp eq i8 %i.cv, 48
  br i1 %switch.i.i.i, label %bb.ac, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %.1.i48.i.i = phi i64 [ %i.ci, %bb.y ], [ %i.cr, %bb.ab ], [ %i.cn, %bb.z ] ; 2 uses
  %i.cw = icmp slt i8 %i.ck, 64
  br i1 %i.cw, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.ac
  %i.cx = shl i8 %i.ck, 1
  %i.cy = or disjoint i8 %.0.i46.i.i, %i.cx       ; 2 uses
  %i.cz = icmp ult i64 %.1.i48.i.i, %i.ci
  br i1 %i.cz, label %.lr.ph.i45.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i

bb.ad:                                            ; preds = %bb.p
  %i.da = add i8 %i.bb, -48
  %i.db = icmp ult i8 %i.da, 10
  %or.cond68.i.i = and i1 %3, %i.db
  br i1 %or.cond68.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %.preheader.i.i.i

bb.ae:                                            ; preds = %bb.o
  %i.dc = icmp eq i8 %i.i, 43                     ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.dc
  %.mux.i.i.i = zext i1 %i.dc to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ae, %bb.ad
  %.mux.i66.i.i = phi i64 [ %.mux.i.i.i, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %i.dd = icmp ugt i64 %.036106.i.i, %.mux.i66.i.i
  br i1 %i.dd, label %.lr.ph.i50.i.i, label %.thread90.i.i.i

.lr.ph.i50.i.i:                                   ; preds = %.preheader.i.i.i
  br i1 %3, label %.lr.ph.split.us.i61.i.i, label %.lr.ph.split.i52.i.i

.lr.ph.split.us.i61.i.i:                          ; preds = %.lr.ph.i50.i.i, %bb.ag
  %.sroa.0.3.i = phi i8 [ %i.dl, %bb.ag ], [ 0, %.lr.ph.i50.i.i ] ; 3 uses
  %.099.us.i.i.i = phi i64 [ %i.dj, %bb.ag ], [ %.mux.i66.i.i, %.lr.ph.i50.i.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %.099.us.i.i.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !106 ; 3 uses
  %i.dg = add i8 %i.df, -48                       ; 2 uses
  %i.dh = icmp ult i8 %i.dg, 10
  br i1 %i.dh, label %bb.af, label %.split.us.i53.i.i

bb.af:                                            ; preds = %.lr.ph.split.us.i61.i.i
  %.lhs.trunc.i.us.i.i.i = sub nuw i8 -81, %i.df
  %i.di = udiv i8 %.lhs.trunc.i.us.i.i.i, 10
  %.not.us.i62.i.i = icmp slt i8 %i.di, %.sroa.0.3.i
  br i1 %.not.us.i62.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.ag, !prof !125

bb.ag:                                            ; preds = %bb.af
  %i.dj = add i64 %.099.us.i.i.i, 1               ; 2 uses
  %i.dk = mul i8 %.sroa.0.3.i, 10
  %i.dl = add i8 %i.dg, %i.dk                     ; 2 uses
  %exitcond.not.i63.i.i = icmp eq i64 %i.dj, %.036106.i.i
  br i1 %exitcond.not.i63.i.i, label %.thread90.i.i.i, label %.lr.ph.split.us.i61.i.i, !llvm.loop !621

.lr.ph.split.i52.i.i:                             ; preds = %.lr.ph.i50.i.i, %bb.ap
  %.sroa.0.1.i = phi i8 [ %i.ei, %bb.ap ], [ 0, %.lr.ph.i50.i.i ] ; 3 uses
  %.099.i.i.i = phi i64 [ %.7.i60.i.i, %bb.ap ], [ %.mux.i66.i.i, %.lr.ph.i50.i.i ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %.099.i.i.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !106 ; 3 uses
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.ak, label %.split.us.i53.i.i

.split.us.i53.i.i:                                ; preds = %.lr.ph.split.i52.i.i, %.lr.ph.split.us.i61.i.i
  %.sroa.0.2.i = phi i8 [ %.sroa.0.3.i, %.lr.ph.split.us.i61.i.i ], [ %.sroa.0.1.i, %.lr.ph.split.i52.i.i ] ; 3 uses
  %.pre.i54.i.i = phi i8 [ %i.df, %.lr.ph.split.us.i61.i.i ], [ %i.dn, %.lr.ph.split.i52.i.i ] ; 2 uses
  %.us-phi100.i.i.i = phi i64 [ %.099.us.i.i.i, %.lr.ph.split.us.i61.i.i ], [ %.099.i.i.i, %.lr.ph.split.i52.i.i ] ; 3 uses
  %i.dq = icmp eq i8 %.pre.i54.i.i, 46
  br i1 %i.dq, label %bb.ah, label %.thread86.i.i.i

bb.ah:                                            ; preds = %.split.us.i53.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = icmp ule i64 %.us-phi100.i.i.i, %.mux.i66.i.i ; 2 uses
  %i.ds = add nuw i64 %.us-phi100.i.i.i, 1        ; 4 uses
  %i.dt = icmp ult i64 %i.ds, %.036106.i.i
  br i1 %i.dt, label %bb.aj, label %.thread88.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !106 ; 2 uses
  %i.dw = add i8 %i.dv, -48
  %i.dx = icmp ult i8 %i.dw, 10
  %brmerge.i57.i.i = or i1 %i.dr, %i.dx
  br i1 %brmerge.i57.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %.thread86.i.i.i

.thread88.i.i.i:                                  ; preds = %bb.ai
  br i1 %i.dr, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %.thread90.i.i.i

.thread86.i.i.i:                                  ; preds = %bb.aj, %.split.us.i53.i.i
  %i.dy = phi i8 [ %i.dv, %bb.aj ], [ %.pre.i54.i.i, %.split.us.i53.i.i ]
  %.4.i55.i.i = phi i64 [ %i.ds, %bb.aj ], [ %.us-phi100.i.i.i, %.split.us.i53.i.i ]
  switch i8 %i.dy, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i: ; preds = %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i
  %i.dz = add i64 %.4.i55.i.i, 1                  ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %.036106.i.i
  br i1 %i.ea, label %.lr.ph102.i.i.i, label %.thread90.i.i.i

.lr.ph102.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  %i.eb = phi i64 [ %i.ee, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.dz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !106
  switch i8 %i.ed, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i: ; preds = %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i
  %i.ee = add nuw i64 %i.eb, 1                    ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %i.ee, %.036106.i.i
  br i1 %exitcond121.not.i.i.i, label %.thread90.i.i.i, label %.lr.ph102.i.i.i, !llvm.loop !622

bb.ak:                                            ; preds = %.lr.ph.split.i52.i.i
  %i.ef = add nuw i64 %.099.i.i.i, 1              ; 3 uses
  %.lhs.trunc.i.i58.i.i = sub nuw i8 -81, %i.dn
  %i.eg = udiv i8 %.lhs.trunc.i.i58.i.i, 10
  %.not.i59.i.i = icmp slt i8 %i.eg, %.sroa.0.1.i
  br i1 %.not.i59.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.al, !prof !125

bb.al:                                            ; preds = %bb.ak
  %i.eh = mul i8 %.sroa.0.1.i, 10
  %i.ei = add i8 %i.do, %i.eh                     ; 3 uses
  %.not80.i.i.i = icmp eq i64 %i.ef, %.036106.i.i
  br i1 %.not80.i.i.i, label %.thread90.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.ef
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !106
  %.not104.i.i.i = icmp eq i8 %i.ek, 95
  br i1 %.not104.i.i.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.el = add i64 %.099.i.i.i, 2                  ; 3 uses
  %i.em = icmp eq i64 %i.el, %.036106.i.i
  br i1 %i.em, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = getelementptr inbounds nuw i8, ptr %.035107.i.i, i64 %i.el
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !106
  %i.ep = add i8 %i.eo, -48
  %i.eq = icmp ult i8 %i.ep, 10
  br i1 %i.eq, label %bb.ap, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.7.i60.i.i = phi i64 [ %i.ef, %bb.am ], [ %i.el, %bb.ao ] ; 3 uses
  %i.er = icmp ult i64 %.7.i60.i.i, %.036106.i.i
  br i1 %i.er, label %.lr.ph.split.i52.i.i, label %.thread90.i.i.i, !llvm.loop !621

.thread90.i.i.i:                                  ; preds = %bb.ap, %bb.al, %bb.ag, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i, %.thread88.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.dl, %bb.ag ], [ 0, %.preheader.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ], [ %.sroa.0.2.i, %.thread88.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.ei, %bb.al ], [ %i.ei, %bb.ap ]
  %.8.i49.i.i = phi i64 [ %.036106.i.i, %bb.ag ], [ 1, %.preheader.i.i.i ], [ %i.dz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ], [ %i.ds, %.thread88.i.i.i ], [ %.036106.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %.036106.i.i, %bb.al ], [ %.7.i60.i.i, %bb.ap ]
  %i.es = icmp ugt i64 %.8.i49.i.i, %.mux.i66.i.i
  br i1 %i.es, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %bb.n, %bb.j, %bb.e, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  %.sroa.0.8.i = phi i8 [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %i.s, %bb.e ], [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.ap, %bb.j ], [ %i.ap, %bb.n ]
  %.8.i.i.i = phi i64 [ %i.ag, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.036106.i.i, %bb.e ], [ %.036106.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %.036106.i.i, %bb.j ], [ %.7.i.i.i, %bb.n ]
  %i.et = icmp ugt i64 %.8.i.i.i, 1
  br i1 %i.et, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread82.i.i.i
  %.sroa.0.1041.i = phi i8 [ %.sroa.0.7.i, %.thread82.i.i.i ], [ %.sroa.0.8.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i ], [ %.sroa.0.0.i, %.thread90.i.i.i ], [ %i.cg, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i ], [ %i.cy, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIaEELb0EEEbRT_h.exit.i.i.i ]
  store i8 %.sroa.0.1041.i, ptr %2, align 1, !tbaa !106
  br label %_ZN6duckdbL20TrySimpleIntegerCastIaLb1EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i: ; preds = %bb.b, %bb.m, %bb.l, %bb.i, %bb.d, %.lr.ph98.i.i.i, %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i45.i.i, %bb.v, %bb.u, %bb.t, %.lr.ph.i41.i.i, %bb.ao, %bb.an, %bb.ak, %bb.af, %.lr.ph102.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread86.i.i.i, %.thread88.i.i.i, %bb.aj, %bb.ah, %bb.ae, %bb.ad, %bb.w, %bb.q, %.thread80.i.i.i, %.thread82.i.i.i, %bb.h, %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.aq, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i
  %.035159.i.i = phi ptr [ %i.ev, %bb.aq ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i ] ; 20 uses
  %.036158.i.i = phi i64 [ %i.ew, %bb.aq ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i ] ; 34 uses
  %i.eu = load i8, ptr %.035159.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.eu, label %.critedge.i11.i [
    i8 32, label %bb.aq
    i8 12, label %bb.aq
    i8 11, label %bb.aq
    i8 10, label %bb.aq
    i8 9, label %bb.aq
    i8 13, label %bb.aq
  ]

bb.aq:                                            ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 1
  %i.ew = add i64 %.036158.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.ew, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !623

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ex = icmp eq i8 %i.eu, 45
  br i1 %i.ex, label %bb.ar, label %bb.bo

bb.ar:                                            ; preds = %.critedge.i11.i
  %.not.i25.i = icmp eq i64 %.036158.i.i, 1
  br i1 %.not.i25.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i, label %.lr.ph.i.i26.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread115.i.i.i

.lr.ph.i.i26.i:                                   ; preds = %bb.ar, %bb.bn
  %i.ey = phi i64 [ %i.hk, %bb.bn ], [ 0, %bb.ar ] ; 6 uses
  %.084132.i.i.i = phi i64 [ %.7.i.i34.i, %bb.bn ], [ 1, %bb.ar ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.084132.i.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !106 ; 3 uses
  %i.fb = add i8 %i.fa, -48                       ; 2 uses
  %i.fc = icmp ult i8 %i.fb, 10
  br i1 %i.fc, label %bb.bi, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i26.i
  store i64 %i.ey, ptr %6, align 8
  %i.fd = icmp eq i8 %i.fa, 46
  br i1 %i.fd, label %bb.at, label %.thread111.i.i.i

bb.at:                                            ; preds = %bb.as
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fe = icmp ugt i64 %.084132.i.i.i, 1          ; 2 uses
  %i.ff = add nuw i64 %.084132.i.i.i, 1           ; 5 uses
  %i.fg = icmp ult i64 %i.ff, %.036158.i.i
  br i1 %i.fg, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %.lr.ph134.i.i.i
  %i.fj = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.fy, %bb.bb ] ; 2 uses
  %i.fk = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.fz, %bb.bb ] ; 2 uses
  %i.fl = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.ga, %bb.bb ] ; 3 uses
  %i.fm = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gb, %bb.bb ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.ff, %.lr.ph134.i.i.i ], [ %.2.i.i.i, %bb.bb ] ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.185133.i.i.i
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !106 ; 2 uses
  %i.fp = add i8 %i.fo, -48                       ; 2 uses
  %i.fq = icmp ult i8 %i.fp, 10
  br i1 %i.fq, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.fr = zext nneg i8 %i.fp to i64               ; 2 uses
  %i.fs = xor i64 %i.fr, 9223372036854775806
  %i.ft = udiv i64 %i.fs, 10
  %i.fu = icmp sgt i64 %i.fm, %i.ft
  br i1 %i.fu, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.ax, !prof !125

bb.ax:                                            ; preds = %bb.aw
  %i.fv = add i16 %i.fl, 1                        ; 2 uses
  %i.fw = mul nsw i64 %i.fm, 10
  %i.fx = add nsw i64 %i.fw, %i.fr                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.fy = phi i64 [ %i.fx, %bb.ax ], [ %i.fj, %bb.aw ] ; 2 uses
  %i.fz = phi i16 [ %i.fv, %bb.ax ], [ %i.fk, %bb.aw ] ; 2 uses
  %i.ga = phi i16 [ %i.fv, %bb.ax ], [ %i.fl, %bb.aw ] ; 2 uses
  %i.gb = phi i64 [ %i.fx, %bb.ax ], [ %i.fm, %bb.aw ] ; 2 uses
  %i.gc = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.gc, %.036158.i.i
  br i1 %.not103.i.i.i, label %.thread117.i.i.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !106
  %i.gf = icmp eq i8 %i.ge, 95
  br i1 %i.gf, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gg = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.gh = icmp eq i64 %i.gg, %.036158.i.i
  br i1 %i.gh, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gi = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.gg
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !106
  %i.gk = add i8 %i.gj, -48
  %i.gl = icmp ult i8 %i.gk, 10
  br i1 %i.gl, label %bb.bb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %.2.i.i.i = phi i64 [ %i.gg, %bb.ba ], [ %i.gc, %bb.ay ] ; 3 uses
  %i.gm = icmp ult i64 %.2.i.i.i, %.036158.i.i
  br i1 %i.gm, label %bb.av, label %.thread117.i.i.loopexit.i, !llvm.loop !624

bb.bc:                                            ; preds = %bb.av
  store i16 %i.fk, ptr %i.fi, align 8
  store i64 %i.fj, ptr %i.fh, align 8
  %i.gn = icmp ugt i64 %.185133.i.i.i, %i.ff
  %or.cond106.i.i.i = or i1 %i.fe, %i.gn
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i.i.loopexit.i:                        ; preds = %bb.bb, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.bb ], [ %.036158.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.fz, ptr %i.fi, align 8
  store i64 %i.fy, ptr %i.fh, align 8
  br label %.thread117.i.i.i

.thread117.i.i.i:                                 ; preds = %.thread117.i.i.loopexit.i, %bb.au
  %.promoted11.i.i225.i.i = phi i16 [ 0, %bb.au ], [ %i.ga, %.thread117.i.i.loopexit.i ]
  %.promoted.i.i221.i.i = phi i64 [ 0, %bb.au ], [ %i.gb, %.thread117.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.ff, %bb.au ], [ %.185.lcssa.i.i.ph.i, %.thread117.i.i.loopexit.i ] ; 2 uses
  %i.go = icmp ugt i64 %.185.lcssa.i.i.i, %i.ff
  %or.cond106118.i.i.i = or i1 %i.fe, %i.go
  br i1 %or.cond106118.i.i.i, label %.thread119.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.bc, %bb.as
  %.promoted11.i.i224.i.i = phi i16 [ 0, %bb.as ], [ %i.fl, %bb.bc ] ; 2 uses
  %.promoted.i.i220.i.i = phi i64 [ 0, %bb.as ], [ %i.fm, %bb.bc ] ; 2 uses
  %i.gp = phi i8 [ %i.fa, %bb.as ], [ %i.fo, %bb.bc ]
  %.4.i.i27.i = phi i64 [ %.084132.i.i.i, %bb.as ], [ %.185133.i.i.i, %bb.bc ] ; 3 uses
  switch i8 %i.gp, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 101, label %bb.bd
    i8 69, label %bb.bd
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.gq = add nuw i64 %.4.i.i27.i, 1              ; 3 uses
  %i.gr = icmp ult i64 %i.gq, %.036158.i.i
  br i1 %i.gr, label %.lr.ph136.i.i.i, label %.thread119.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.gs = phi i64 [ %i.gv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.gq, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !106
  switch i8 %i.gu, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i
  %i.gv = add nuw i64 %i.gs, 1                    ; 2 uses
  %exitcond.not.i.i32.i = icmp eq i64 %i.gv, %.036158.i.i
  br i1 %exitcond.not.i.i32.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !625

bb.bd:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.gw = icmp eq i64 %.4.i.i27.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.gw
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gx = add nuw i64 %.4.i.i27.i, 1              ; 3 uses
  %.not104.i.i28.i = icmp ult i64 %i.gx, %.036158.i.i
  br i1 %.not104.i.i28.i, label %bb.bf, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.gy = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.gx ; 3 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !106
  %i.ha = icmp eq i8 %i.gz, 45
  %i.hb = sub nuw i64 %.036158.i.i, %i.gx         ; 2 uses
  br i1 %i.ha, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hc = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.gy, i64 noundef %i.hb, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hc, label %.split53.i, label %.split53.thread.i

bb.bh:                                            ; preds = %bb.bf
  %i.hd = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.gy, i64 noundef %i.hb, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hd, label %.split53.i, label %.split53.thread.i

.split53.thread.i:                                ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split53.i:                                       ; preds = %bb.bh, %bb.bg
  %i.he = load i16, ptr %5, align 2, !tbaa !128
  %i.hf = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIaEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.hf, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bi:                                            ; preds = %.lr.ph.i.i26.i
  %i.hg = add nuw i64 %.084132.i.i.i, 1           ; 3 uses
  %i.hh = zext nneg i8 %i.fb to i64               ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i64 -9223372036854775808, %i.hh
  %i.hi = udiv i64 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i64 0, %i.hi
  %.not.i.i33.i = icmp slt i64 %i.ey, %.neg.i.i.i.i
  br i1 %.not.i.i33.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bj, !prof !125

bb.bj:                                            ; preds = %bb.bi
  %i.hj = mul nsw i64 %i.ey, 10
  %i.hk = sub nsw i64 %i.hj, %i.hh                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.hg, %.036158.i.i
  br i1 %.not105.i.i.i, label %.thread119.i.i.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hl = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.hg
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !106
  %i.hn = icmp ne i8 %i.hm, 95
  %or.cond.i.i.i = or i1 %3, %i.hn
  br i1 %or.cond.i.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ho = add i64 %.084132.i.i.i, 2               ; 3 uses
  %i.hp = icmp eq i64 %i.ho, %.036158.i.i
  br i1 %i.hp, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hq = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.ho
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !106
  %i.hs = add i8 %i.hr, -48
  %i.ht = icmp ult i8 %i.hs, 10
  br i1 %i.ht, label %bb.bn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.7.i.i34.i = phi i64 [ %i.hg, %bb.bk ], [ %i.ho, %bb.bm ] ; 3 uses
  %i.hu = icmp ult i64 %.7.i.i34.i, %.036158.i.i
  br i1 %i.hu, label %.lr.ph.i.i26.i, label %.thread119.i.i.thread.i, !llvm.loop !626

.thread119.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i, %.thread117.i.i.i
  %.promoted11.i.i223.i.i = phi i16 [ %.promoted11.i.i225.i.i, %.thread117.i.i.i ], [ %.promoted11.i.i224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ], [ %.promoted11.i.i224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i219.i.i = phi i64 [ %.promoted.i.i221.i.i, %.thread117.i.i.i ], [ %.promoted.i.i220.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ], [ %.promoted.i.i220.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i30.i = phi i64 [ %.185.lcssa.i.i.i, %.thread117.i.i.i ], [ %i.gq, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ], [ %.036158.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.hv = add i64 %i.ey, 128
  %or.cond.i.i.i.i.i.i.i = icmp ult i64 %i.hv, 256
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i

.thread119.i.i.thread.i:                          ; preds = %bb.bn, %bb.bj
  %.8.i.i30.ph.i = phi i64 [ %.036158.i.i, %bb.bj ], [ %.7.i.i34.i, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.hw = add i64 %i.hk, 128
  %or.cond.i.i.i.i.i.i436.i = icmp ult i64 %i.hw, 256
  br i1 %or.cond.i.i.i.i.i.i436.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread115.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %.thread119.i.i.thread.i, %.thread119.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i: ; preds = %.thread119.i.i.i
  %i.hx = trunc nsw i64 %i.ey to i8               ; 2 uses
  store i8 %i.hx, ptr %i.b, align 1, !tbaa !106
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hz = icmp sgt i64 %.promoted.i.i219.i.i, 10
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.hz, label %.lr.ph.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ib = phi i16 [ %i.ie, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i223.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i ]
  %i.ic = phi i64 [ %i.id, %.lr.ph.i.i.i.i ], [ %.promoted.i.i219.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i ] ; 2 uses
  %i.id = udiv i64 %i.ic, 10                      ; 3 uses
  %i.ie = add i16 %i.ib, -1                       ; 3 uses
  %i.if = icmp samesign ugt i64 %i.ic, 109
  br i1 %i.if, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.id, ptr %i.hy, align 8, !tbaa !130
  store i16 %i.ie, ptr %i.ia, align 8, !tbaa !131
  br label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i
  %i.ig = phi i16 [ %i.ie, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i223.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.id, %._crit_edge.i.i.i.i ], [ %.promoted.i.i219.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i.i.i ]
  %i.ih = icmp eq i16 %i.ig, 1
  %i.ii = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i31.i = and i1 %i.ih, %i.ii
  br i1 %or.cond.i.i.i31.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread115.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread115.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i, %.thread119.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i
  %.8.i96271276.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i30.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i30.ph.i, %.thread119.i.i.thread.i ]
  %i.ij = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %i.ey, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %i.hk, %.thread119.i.i.thread.i ]
  store i64 %i.ij, ptr %6, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split52.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i
  %i.ik = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.hx, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre15.i.i.i.i = load i8, ptr %i.b, align 1, !tbaa !106
  %i.il = sext i8 %.pre15.i.i.i.i to i64
  store i64 %i.il, ptr %6, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.ik, label %.split52.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split52.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread115.i.i.i
  %.8.i96271275.i.i = phi i64 [ %.8.i.i30.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i ], [ %.8.i96271276.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread115.i.i.i ]
  %i.im = icmp ugt i64 %.8.i96271275.i.i, 1
  br i1 %i.im, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bo:                                            ; preds = %.critedge.i11.i
  %.not39.i12.i = icmp ne i64 %.036158.i.i, 1
  %i.in = icmp eq i8 %i.eu, 48
  %or.cond.i13.i = and i1 %.not39.i12.i, %i.in
  br i1 %or.cond.i13.i, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %bb.bo
  %i.io = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 1 ; 7 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !106 ; 2 uses
  %i.iq = add i8 %i.ip, -66                       ; 2 uses
  %i.ir = tail call i8 @llvm.fshl.i8(i8 %i.iq, i8 %i.iq, i8 7)
  switch i8 %i.ir, label %bb.cc [
    i8 27, label %bb.bq
    i8 11, label %bb.bq
    i8 16, label %bb.bv
    i8 0, label %bb.bv
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp
  %i.is = add i64 %.036158.i.i, -1                ; 5 uses
  %i.it = icmp ugt i64 %i.is, 1
  br i1 %i.it, label %.lr.ph.i50.i18.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i50.i18.preheader.i:                       ; preds = %bb.bq
  %i.iu = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !106 ; 3 uses
  %i.iw = add i8 %i.iv, -65
  %or.cond.i.i51.i186.i = icmp ult i8 %i.iw, 26
  %i.ix = or disjoint i8 %i.iv, 32
  %spec.select.i.i.i19187.i = select i1 %or.cond.i.i51.i186.i, i8 %i.ix, i8 %i.iv ; 3 uses
  %i.iy = add i8 %spec.select.i.i.i19187.i, -48
  %or.cond.i36.i.i20188.i = icmp ult i8 %i.iy, 10
  %i.iz = and i8 %spec.select.i.i.i19187.i, -33
  %i.ja = add i8 %i.iz, -65
  %i.jb = icmp ult i8 %i.ja, 6
  %i.jc = or i1 %or.cond.i36.i.i20188.i, %i.jb
  br i1 %i.jc, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i50.i18.i:                                 ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 %.1.i.i23.i
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !106 ; 3 uses
  %i.jf = add i8 %i.je, -65
  %or.cond.i.i51.i.i = icmp ult i8 %i.jf, 26
  %i.jg = or disjoint i8 %i.je, 32
  %spec.select.i.i.i19.i = select i1 %or.cond.i.i51.i.i, i8 %i.jg, i8 %i.je ; 3 uses
  %i.jh = add i8 %spec.select.i.i.i19.i, -48
  %or.cond.i36.i.i20.i = icmp ult i8 %i.jh, 10
  %i.ji = and i8 %spec.select.i.i.i19.i, -33
  %i.jj = add i8 %i.ji, -65
  %i.jk = icmp ult i8 %i.jj, 6
  %i.jl = or i1 %or.cond.i36.i.i20.i, %i.jk
  br i1 %i.jl, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i50.i18.preheader.i, %.lr.ph.i50.i18.i
  %spec.select.i.i.i19190.i = phi i8 [ %spec.select.i.i.i19.i, %.lr.ph.i50.i18.i ], [ %spec.select.i.i.i19187.i, %.lr.ph.i50.i18.preheader.i ] ; 2 uses
  %i.jm = phi i64 [ %i.kf, %.lr.ph.i50.i18.i ], [ 0, %.lr.ph.i50.i18.preheader.i ] ; 2 uses
  %.02642.i.i189.i = phi i64 [ %.1.i.i23.i, %.lr.ph.i50.i18.i ], [ 1, %.lr.ph.i50.i18.preheader.i ] ; 2 uses
  %i.jn = icmp sgt i8 %spec.select.i.i.i19190.i, 96
  %.0.v.i.i21.i = select i1 %i.jn, i8 -87, i8 -48
  %.0.i.i22.i = add i8 %.0.v.i.i21.i, %spec.select.i.i.i19190.i
  %i.jo = add nuw i64 %.02642.i.i189.i, 1         ; 3 uses
  %.not.i52.i.i = icmp eq i64 %i.jo, %i.is
  br i1 %.not.i52.i.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !106
  %i.jr = icmp eq i8 %i.jq, 95
  br i1 %i.jr, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.js = add nuw i64 %.02642.i.i189.i, 2         ; 3 uses
  %i.jt = icmp eq i64 %i.js, %i.is
  br i1 %i.jt, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ju = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.js
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !106 ; 2 uses
  %i.jw = add i8 %i.jv, -48
  %or.cond.i37.i.i24.i = icmp ult i8 %i.jw, 10
  %i.jx = and i8 %i.jv, -33
  %i.jy = add i8 %i.jx, -65
  %i.jz = icmp ult i8 %i.jy, 6
  %i.ka = or i1 %or.cond.i37.i.i24.i, %i.jz
  br i1 %i.ka, label %bb.bu, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bu:                                            ; preds = %bb.bt, %bb.br, %.lr.ph.i
  %.1.i.i23.i = phi i64 [ %i.js, %bb.bt ], [ %i.jo, %bb.br ], [ %i.is, %.lr.ph.i ] ; 3 uses
  %i.kb = zext i8 %.0.i.i22.i to i64              ; 2 uses
  %i.kc = lshr i64 %i.kb, 4
  %i.kd = xor i64 %i.kc, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.jm, %i.kd
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bu
  %i.ke = shl nsw i64 %i.jm, 4
  %i.kf = add nsw i64 %i.ke, %i.kb                ; 3 uses
  %i.kg = icmp ult i64 %.1.i.i23.i, %i.is
  br i1 %i.kg, label %.lr.ph.i50.i18.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %i.kh = add i64 %i.kf, 128
  %or.cond.i.i.i.i.i41.i.i = icmp ult i64 %i.kh, 256
  br i1 %or.cond.i.i.i.i.i41.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bv:                                            ; preds = %bb.bp, %bb.bp
  %i.ki = add i64 %.036158.i.i, -1                ; 5 uses
  %i.kj = icmp ugt i64 %i.ki, 1
  br i1 %i.kj, label %.lr.ph.i68.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i68.i.i:                                   ; preds = %bb.bv, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %i.kk = phi i64 [ %i.ky, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.bv ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i71.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.bv ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.io, i64 %.02436.i.i.i
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !106
  switch i8 %i.km, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.bx
    i8 49, label %bb.bw
  ]

bb.bw:                                            ; preds = %.lr.ph.i68.i.i
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i68.i.i
  %.0.i69.i.i = phi i64 [ 1, %bb.bw ], [ 0, %.lr.ph.i68.i.i ]
  %i.kn = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i70.i.i = icmp eq i64 %i.kn, %i.ki
  br i1 %.not.i70.i.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ko = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !106
  %i.kq = icmp eq i8 %i.kp, 95
  br i1 %i.kq, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.kr = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.ks = icmp eq i64 %i.kr, %i.ki
  br i1 %i.ks, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kt = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.kr
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !106
  %i.kv = and i8 %i.ku, -2
  %switch.i.i17.i = icmp eq i8 %i.kv, 48
  br i1 %switch.i.i17.i, label %bb.cb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bx
  %.1.i71.i.i = phi i64 [ %i.ki, %bb.bx ], [ %i.kr, %bb.ca ], [ %i.kn, %bb.by ] ; 2 uses
  %i.kw = icmp slt i64 %i.kk, 4611686018427387904
  br i1 %i.kw, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.cb
  %i.kx = shl nsw i64 %i.kk, 1                    ; 2 uses
  %i.ky = or disjoint i64 %.0.i69.i.i, %i.kx      ; 2 uses
  %i.kz = icmp ult i64 %.1.i71.i.i, %i.ki
  br i1 %i.kz, label %.lr.ph.i68.i.i, label %._crit_edge.i54.i.i

._crit_edge.i54.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %i.la = add i64 %i.kx, 128
  %or.cond.i.i.i.i.i55.i.i = icmp ult i64 %i.la, 256
  br i1 %or.cond.i.i.i.i.i55.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cc:                                            ; preds = %bb.bp
  %i.lb = add i8 %i.ip, -48
  %i.lc = icmp ult i8 %i.lb, 10
  %or.cond106.i.i = and i1 %3, %i.lc
  br i1 %or.cond106.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

bb.cd:                                            ; preds = %bb.bo
  %i.ld = icmp eq i8 %i.eu, 43                    ; 2 uses
  %brmerge.not.i.i14.i = and i1 %3, %i.ld
  %.mux.i.i15.i = zext i1 %i.ld to i64
  br i1 %brmerge.not.i.i14.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

.preheader.i.i16.i:                               ; preds = %bb.cd, %bb.cc
  %.mux.i101.i.i = phi i64 [ %.mux.i.i15.i, %bb.cd ], [ 0, %bb.cc ] ; 5 uses
  %i.le = icmp ugt i64 %.036158.i.i, %.mux.i101.i.i
  br i1 %i.le, label %.lr.ph.i85.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i: ; preds = %.preheader.i.i16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i

.lr.ph.i85.i.i:                                   ; preds = %.preheader.i.i16.i, %bb.cz
  %i.lf = phi i64 [ %i.ns, %bb.cz ], [ 0, %.preheader.i.i16.i ] ; 6 uses
  %.0138.i.i.i = phi i64 [ %.7.i93.i.i, %bb.cz ], [ %.mux.i101.i.i, %.preheader.i.i16.i ] ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.0138.i.i.i
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !106 ; 3 uses
  %i.li = add i8 %i.lh, -48                       ; 2 uses
  %i.lj = icmp ult i8 %i.li, 10
  br i1 %i.lj, label %bb.cu, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i85.i.i
  store i64 %i.lf, ptr %6, align 8
  %i.lk = icmp eq i8 %i.lh, 46
  br i1 %i.lk, label %bb.cf, label %.thread117.i86.i.i

bb.cf:                                            ; preds = %bb.ce
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ll = icmp ugt i64 %.0138.i.i.i, %.mux.i101.i.i ; 2 uses
  %i.lm = add nuw i64 %.0138.i.i.i, 1             ; 5 uses
  %i.ln = icmp ult i64 %i.lm, %.036158.i.i
  br i1 %i.ln, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %bb.cg
  %i.lo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cn, %.lr.ph140.i.i.i
  %i.lq = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mf, %bb.cn ] ; 2 uses
  %i.lr = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mg, %bb.cn ] ; 2 uses
  %i.ls = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mh, %bb.cn ] ; 3 uses
  %i.lt = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mi, %bb.cn ] ; 4 uses
  %.1139.i.i.i = phi i64 [ %i.lm, %.lr.ph140.i.i.i ], [ %.2.i90.i.i, %bb.cn ] ; 5 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.1139.i.i.i
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !106 ; 2 uses
  %i.lw = add i8 %i.lv, -48                       ; 2 uses
  %i.lx = icmp ult i8 %i.lw, 10
  br i1 %i.lx, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.ly = zext nneg i8 %i.lw to i64               ; 2 uses
  %i.lz = xor i64 %i.ly, 9223372036854775806
  %i.ma = udiv i64 %i.lz, 10
  %i.mb = icmp sgt i64 %i.lt, %i.ma
  br i1 %i.mb, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cj, !prof !125

bb.cj:                                            ; preds = %bb.ci
  %i.mc = add i16 %i.ls, 1                        ; 2 uses
  %i.md = mul nsw i64 %i.lt, 10
  %i.me = add nsw i64 %i.md, %i.ly                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.cj, %bb.ci
  %i.mf = phi i64 [ %i.me, %bb.cj ], [ %i.lq, %bb.ci ] ; 2 uses
  %i.mg = phi i16 [ %i.mc, %bb.cj ], [ %i.lr, %bb.ci ] ; 2 uses
  %i.mh = phi i16 [ %i.mc, %bb.cj ], [ %i.ls, %bb.ci ] ; 2 uses
  %i.mi = phi i64 [ %i.me, %bb.cj ], [ %i.lt, %bb.ci ] ; 2 uses
  %i.mj = add nuw i64 %.1139.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.mj, %.036158.i.i
  br i1 %.not107.i.i.i, label %.thread123.i.i.loopexit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !106
  %i.mm = icmp eq i8 %i.ml, 95
  br i1 %i.mm, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.mn = add i64 %.1139.i.i.i, 2                 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, %.036158.i.i
  br i1 %i.mo, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mp = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.mn
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !106
  %i.mr = add i8 %i.mq, -48
  %i.ms = icmp ult i8 %i.mr, 10
  br i1 %i.ms, label %bb.cn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %.2.i90.i.i = phi i64 [ %i.mn, %bb.cm ], [ %i.mj, %bb.ck ] ; 3 uses
  %i.mt = icmp ult i64 %.2.i90.i.i, %.036158.i.i
  br i1 %i.mt, label %bb.ch, label %.thread123.i.i.loopexit.i, !llvm.loop !627

bb.co:                                            ; preds = %bb.ch
  store i16 %i.lr, ptr %i.lp, align 8
  store i64 %i.lq, ptr %i.lo, align 8
  %i.mu = icmp ugt i64 %.1139.i.i.i, %i.lm
  %or.cond110.i.i.i = or i1 %i.ll, %i.mu
  br i1 %or.cond110.i.i.i, label %.thread117.i86.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread123.i.i.loopexit.i:                        ; preds = %bb.cn, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i90.i.i, %bb.cn ], [ %.036158.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.mg, ptr %i.lp, align 8
  store i64 %i.mf, ptr %i.lo, align 8
  br label %.thread123.i.i.i

.thread123.i.i.i:                                 ; preds = %.thread123.i.i.loopexit.i, %bb.cg
  %.promoted11.i.i77217.i.i = phi i16 [ 0, %bb.cg ], [ %i.mh, %.thread123.i.i.loopexit.i ]
  %.promoted.i.i76213.i.i = phi i64 [ 0, %bb.cg ], [ %i.mi, %.thread123.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.lm, %bb.cg ], [ %.1.lcssa.i.i.ph.i, %.thread123.i.i.loopexit.i ] ; 2 uses
  %i.mv = icmp ugt i64 %.1.lcssa.i.i.i, %i.lm
  %or.cond110124.i.i.i = or i1 %i.ll, %i.mv
  br i1 %or.cond110124.i.i.i, label %.thread125.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i86.i.i:                               ; preds = %bb.co, %bb.ce
  %.promoted11.i.i77216.i.i = phi i16 [ 0, %bb.ce ], [ %i.ls, %bb.co ] ; 2 uses
  %.promoted.i.i76212.i.i = phi i64 [ 0, %bb.ce ], [ %i.lt, %bb.co ] ; 2 uses
  %i.mw = phi i8 [ %i.lh, %bb.ce ], [ %i.lv, %bb.co ]
  %.4.i87.i.i = phi i64 [ %.0138.i.i.i, %bb.ce ], [ %.1139.i.i.i, %bb.co ] ; 3 uses
  switch i8 %i.mw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 101, label %bb.cp
    i8 69, label %bb.cp
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i: ; preds = %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb7TryCast9OperationINS_8string_tEaEEbT_RT0_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.nm, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cu:                                            ; preds = %.lr.ph.i85.i.i
  %i.nn = add nuw i64 %.0138.i.i.i, 1             ; 3 uses
  %i.no = zext nneg i8 %i.li to i64               ; 2 uses
  %i.np = xor i64 %i.no, 9223372036854775806
  %i.nq = udiv i64 %i.np, 10
  %.not.i91.i.i = icmp sgt i64 %i.lf, %i.nq
  br i1 %.not.i91.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cv, !prof !125

bb.cv:                                            ; preds = %bb.cu
  %i.nr = mul nsw i64 %i.lf, 10
  %i.ns = add nsw i64 %i.nr, %i.no                ; 3 uses
  %.not109.i.i.i = icmp eq i64 %i.nn, %.036158.i.i
  br i1 %.not109.i.i.i, label %.thread125.i.i.thread.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nt = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.nn
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !106
  %i.nv = icmp ne i8 %i.nu, 95
  %or.cond.i92.i.i = or i1 %3, %i.nv
  br i1 %or.cond.i92.i.i, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nw = add i64 %.0138.i.i.i, 2                 ; 3 uses
  %i.nx = icmp eq i64 %i.nw, %.036158.i.i
  br i1 %i.nx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ny = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.nw
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !106
  %i.oa = add i8 %i.nz, -48
  %i.ob = icmp ult i8 %i.oa, 10
  br i1 %i.ob, label %bb.cz, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cz:                                            ; preds = %bb.cy, %bb.cw
  %.7.i93.i.i = phi i64 [ %i.nn, %bb.cw ], [ %i.nw, %bb.cy ] ; 3 uses
  %i.oc = icmp ult i64 %.7.i93.i.i, %.036158.i.i
  br i1 %i.oc, label %.lr.ph.i85.i.i, label %.thread125.i.i.thread.i, !llvm.loop !629

.thread125.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i, %.thread123.i.i.i
  %.promoted11.i.i77215.i.i = phi i16 [ %.promoted11.i.i77217.i.i, %.thread123.i.i.i ], [ %.promoted11.i.i77216.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i ], [ %.promoted11.i.i77216.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 2 uses
  %.promoted.i.i76211.i.i = phi i64 [ %.promoted.i.i76213.i.i, %.thread123.i.i.i ], [ %.promoted.i.i76212.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i ], [ %.promoted.i.i76212.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 3 uses
  %.8.i73.i.i = phi i64 [ %.1.lcssa.i.i.i, %.thread123.i.i.i ], [ %i.mx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i ], [ %.036158.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.od = add i64 %i.lf, 128
  %or.cond.i.i.i.i.i74.i.i = icmp ult i64 %i.od, 256
  br i1 %or.cond.i.i.i.i.i74.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i

.thread125.i.i.thread.i:                          ; preds = %bb.cz, %bb.cv
  %.8.i73.i.ph.i = phi i64 [ %.036158.i.i, %bb.cv ], [ %.7.i93.i.i, %bb.cz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.oe = add i64 %i.ns, 128
  %or.cond.i.i.i.i.i74.i450.i = icmp ult i64 %i.oe, 256
  br i1 %or.cond.i.i.i.i.i74.i450.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i: ; preds = %.thread125.i.i.thread.i, %.thread125.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i: ; preds = %.thread125.i.i.i
  %i.of = trunc nsw i64 %i.lf to i8               ; 2 uses
  store i8 %i.of, ptr %i.a, align 1, !tbaa !106
  %i.og = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.oh = icmp sgt i64 %.promoted.i.i76211.i.i, 10
  %i.oi = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.oh, label %.lr.ph.i.i83.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i

.lr.ph.i.i83.i.i:                                 ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i, %.lr.ph.i.i83.i.i
  %i.oj = phi i16 [ %i.om, %.lr.ph.i.i83.i.i ], [ %.promoted11.i.i77215.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ]
  %i.ok = phi i64 [ %i.ol, %.lr.ph.i.i83.i.i ], [ %.promoted.i.i76211.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ] ; 2 uses
  %i.ol = udiv i64 %i.ok, 10                      ; 3 uses
  %i.om = add i16 %i.oj, -1                       ; 3 uses
  %i.on = icmp samesign ugt i64 %i.ok, 109
  br i1 %i.on, label %.lr.ph.i.i83.i.i, label %._crit_edge.i.i84.i.i, !llvm.loop !2

._crit_edge.i.i84.i.i:                            ; preds = %.lr.ph.i.i83.i.i
  store i64 %i.ol, ptr %i.og, align 8, !tbaa !130
  store i16 %i.om, ptr %i.oi, align 8, !tbaa !131
  br label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i: ; preds = %._crit_edge.i.i84.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i
  %i.oo = phi i16 [ %i.om, %._crit_edge.i.i84.i.i ], [ %.promoted11.i.i77215.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ]
  %.lcssa.i.i79.i.i = phi i64 [ %i.ol, %._crit_edge.i.i84.i.i ], [ %.promoted.i.i76211.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ]
  %i.op = icmp eq i16 %i.oo, 1
  %i.oq = icmp sgt i64 %.lcssa.i.i79.i.i, 4
  %or.cond.i.i80.i.i = and i1 %i.op, %i.oq
  br i1 %or.cond.i.i80.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i, %.thread125.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i
  %.8.i73104280285.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i ], [ %.8.i73.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i ], [ %.8.i73.i.ph.i, %.thread125.i.i.thread.i ]
  %i.or = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i ], [ %i.lf, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i ], [ %i.ns, %.thread125.i.i.thread.i ]
  store i64 %i.or, ptr %6, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.split.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i
  %i.os = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.of, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre15.i.i82.i.i = load i8, ptr %i.a, align 1, !tbaa !106
  %i.ot = sext i8 %.pre15.i.i82.i.i to i64
  store i64 %i.ot, ptr %6, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.os, label %.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split.i:                                         ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i
  %.8.i73104280284.i.i = phi i64 [ %.8.i73.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i ], [ %.8.i73104280285.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i ]
  %i.ou = icmp ugt i64 %.8.i73104280284.i.i, %.mux.i101.i.i
  br i1 %i.ou, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.sink.split.i:                                    ; preds = %._crit_edge.i54.i.i, %._crit_edge.i.i.i
  %.lcssa549.sink.i = phi i64 [ %i.ky, %._crit_edge.i54.i.i ], [ %i.kf, %._crit_edge.i.i.i ]
  store i64 %.lcssa549.sink.i, ptr %6, align 8, !tbaa !132
  br label %bb.da

bb.da:                                            ; preds = %.sink.split.i, %.split.i, %.split51.i, %.split52.i, %.split53.i
  %i.ov = load i64, ptr %6, align 8, !tbaa !132
  %i.ow = trunc i64 %i.ov to i8
  store i8 %i.ow, ptr %2, align 1, !tbaa !106
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i: ; preds = %bb.aq, %bb.cb, %bb.ca, %bb.bz, %.lr.ph.i68.i.i, %bb.bu, %bb.bt, %bb.bs, %.lr.ph.i50.i18.i, %bb.cy, %bb.cx, %bb.cu, %bb.cm, %bb.cl, %.lr.ph142.i.i.i, %bb.bm, %bb.bl, %bb.bi, %bb.ba, %bb.az, %.lr.ph136.i.i.i, %bb.da, %.split.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i, %.split51.i, %.split51.thread.i, %bb.cq, %bb.cp, %.thread117.i86.i.i, %.thread123.i.i.i, %bb.co, %bb.cf, %bb.cd, %bb.cc, %._crit_edge.i54.i.i, %bb.bv, %._crit_edge.i.i.i, %.lr.ph.i50.i18.preheader.i, %bb.bq, %.split52.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i, %.split53.i, %.split53.thread.i, %bb.be, %bb.bd, %.thread111.i.i.i, %.thread117.i.i.i, %bb.bc, %bb.at, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.thread.i
  %.0.i1049.i = phi i1 [ false, %.split51.thread.i ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i ], [ true, %bb.da ], [ false, %.lr.ph.i50.i18.preheader.i ], [ false, %.split.i ], [ false, %.split51.i ], [ false, %.split52.i ], [ false, %.split53.i ], [ false, %bb.cb ], [ false, %.split53.thread.i ], [ false, %bb.bq ], [ false, %bb.cf ], [ false, %bb.cy ], [ false, %bb.bv ], [ false, %.thread123.i.i.i ], [ false, %bb.cc ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i ], [ false, %bb.be ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i ], [ false, %bb.at ], [ false, %.thread111.i.i.i ], [ false, %.thread117.i.i.i ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bm ], [ false, %bb.bu ], [ false, %._crit_edge.i54.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.thread.i ], [ false, %bb.cm ], [ false, %bb.cp ], [ false, %bb.co ], [ false, %.lr.ph136.i.i.i ], [ false, %._crit_edge.i.i.i ], [ false, %.thread117.i86.i.i ], [ false, %.lr.ph142.i.i.i ], [ false, %bb.cd ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i ], [ false, %bb.cq ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %bb.bi ], [ false, %bb.bl ], [ false, %bb.cl ], [ false, %bb.cu ], [ false, %bb.cx ], [ false, %.lr.ph.i50.i18.i ], [ false, %bb.bs ], [ false, %bb.bt ], [ false, %.lr.ph.i68.i.i ], [ false, %bb.bz ], [ false, %bb.ca ], [ false, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL20TrySimpleIntegerCastIaLb1EEEbPKcmRT_b.exit

_ZN6duckdbL20TrySimpleIntegerCastIaLb1EEEbPKcmRT_b.exit: ; preds = %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i, %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i
  %.1.i = phi i1 [ true, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread42.i ], [ %.0.i1049.i, %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEsEEbT_RT0_b(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 9 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i16, align 2                      ; 9 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %7 = alloca %"struct.duckdb::IntegerDecimalCastData.154", align 8 ; 22 uses
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %cond53.i.i = icmp eq i32 %i.d, 0
  br i1 %cond53.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.03555.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 6 uses
  %.03654.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 6 uses
  %i.i = load i8, ptr %.03555.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %.critedge.i.i [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.03555.i.i, i64 1
  %i.k = add nsw i64 %.03654.i.i, -1              ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !630

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  store i16 0, ptr %6, align 2
  %i.l = icmp eq i8 %i.i, 45
  br i1 %i.l, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.c

bb.c:                                             ; preds = %.critedge.i.i
  %.not39.i.i = icmp ne i64 %.03654.i.i, 1
  %i.m = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not39.i.i, %i.m
  br i1 %or.cond.i.i, label %bb.d, label %.split.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.03555.i.i, i64 1 ; 7 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !106   ; 2 uses
  %i.p = add i8 %i.o, -66                         ; 2 uses
  %i.q = tail call i8 @llvm.fshl.i8(i8 %i.p, i8 %i.p, i8 7)
  switch i8 %i.q, label %bb.q [
    i8 27, label %bb.e
    i8 11, label %bb.e
    i8 16, label %bb.j
    i8 0, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.r = add i64 %.03654.i.i, -1                  ; 5 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.lr.ph.i.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.03555.i.i, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !106   ; 3 uses
  %i.v = add i8 %i.u, -65
  %or.cond.i.i.i118.i = icmp ult i8 %i.v, 26
  %i.w = or disjoint i8 %i.u, 32
  %spec.select.i.i.i119.i = select i1 %or.cond.i.i.i118.i, i8 %i.w, i8 %i.u ; 3 uses
  %i.x = add i8 %spec.select.i.i.i119.i, -48
  %or.cond.i36.i.i120.i = icmp ult i8 %i.x, 10
  %i.y = and i8 %spec.select.i.i.i119.i, -33
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 6
  %i.ab = or i1 %or.cond.i36.i.i120.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.1.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !106 ; 3 uses
  %i.ae = add i8 %i.ad, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ae, 26
  %i.af = or disjoint i8 %i.ad, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.af, i8 %i.ad ; 3 uses
  %i.ag = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.ag, 10
  %i.ah = and i8 %spec.select.i.i.i.i, -33
  %i.ai = add i8 %i.ah, -65
  %i.aj = icmp ult i8 %i.ai, 6
  %i.ak = or i1 %or.cond.i36.i.i.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i
  %spec.select.i.i.i122.i = phi i8 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i119.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.al = phi i16 [ %i.be, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.02640.i.i121.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.am = icmp sgt i8 %spec.select.i.i.i122.i, 96
  %.0.v.i.i.i = select i1 %i.am, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i122.i ; 2 uses
  %i.an = add nuw i64 %.02640.i.i121.i, 1         ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.an, %i.r
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !106
  %i.aq = icmp eq i8 %i.ap, 95
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ar = add nuw i64 %.02640.i.i121.i, 2         ; 3 uses
  %i.as = icmp eq i64 %i.ar, %i.r
  br i1 %i.as, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !106 ; 2 uses
  %i.av = add i8 %i.au, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.av, 10
  %i.aw = and i8 %i.au, -33
  %i.ax = add i8 %i.aw, -65
  %i.ay = icmp ult i8 %i.ax, 6
  %i.az = or i1 %or.cond.i37.i.i.i, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.1.i.i.i = phi i64 [ %i.ar, %bb.h ], [ %i.an, %bb.f ], [ %i.r, %.lr.ph.i ] ; 3 uses
  %i.ba = sext i16 %i.al to i32
  %i.bb = lshr i8 %.0.i.i.i, 4
  %.lhs.trunc.i.i.i.i = zext nneg i8 %i.bb to i32
  %.zext.i.i.i.i = xor i32 %.lhs.trunc.i.i.i.i, 2047
  %.not38.i.i.i = icmp slt i32 %.zext.i.i.i.i, %i.ba
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.i
  %i.bc = zext i8 %.0.i.i.i to i16
  %i.bd = shl i16 %i.al, 4
  %i.be = add i16 %i.bd, %i.bc                    ; 2 uses
  %i.bf = icmp ult i64 %.1.i.i.i, %i.r
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.sink.split.i

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.bg = add i64 %.03654.i.i, -1                 ; 5 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.i42.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i42.i.i:                                   ; preds = %bb.j, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.bi = phi i16 [ %i.bw, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %.02435.i.i.i = phi i64 [ %.1.i45.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.j ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %.02435.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !106
  switch i8 %i.bk, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.l
    i8 49, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i42.i.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i42.i.i
  %.0.i43.i.i = phi i16 [ 1, %bb.k ], [ 0, %.lr.ph.i42.i.i ]
  %i.bl = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i44.i.i = icmp eq i64 %i.bl, %i.bg
  br i1 %.not.i44.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !106
  %i.bo = icmp eq i8 %i.bn, 95
  br i1 %i.bo, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.bq = icmp eq i64 %i.bp, %i.bg
  br i1 %i.bq, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !106
  %i.bt = and i8 %i.bs, -2
  %switch.i.i.i = icmp eq i8 %i.bt, 48
  br i1 %switch.i.i.i, label %bb.p, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %.1.i45.i.i = phi i64 [ %i.bg, %bb.l ], [ %i.bp, %bb.o ], [ %i.bl, %bb.m ] ; 2 uses
  %i.bu = icmp slt i16 %i.bi, 16384
  br i1 %i.bu, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.p
  %i.bv = shl i16 %i.bi, 1
  %i.bw = or disjoint i16 %.0.i43.i.i, %i.bv      ; 2 uses
  %i.bx = icmp ult i64 %.1.i45.i.i, %i.bg
  br i1 %i.bx, label %.lr.ph.i42.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.sink.split.i

bb.q:                                             ; preds = %bb.d
  %i.by = add i8 %i.o, -48
  %i.bz = icmp ult i8 %i.by, 10
  %or.cond47.i.i = and i1 %3, %i.bz
  br i1 %or.cond47.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.q, %bb.c
  %i.ca = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull %.03555.i.i, i64 noundef %.03654.i.i, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext %3)
  br i1 %i.ca, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %.critedge.i.i
  %i.cb = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull %.03555.i.i, i64 noundef %.03654.i.i, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext %3)
  br i1 %i.cb, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.sink.split.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %.lcssa429.sink.i = phi i16 [ %i.be, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ %i.bw, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ]
  store i16 %.lcssa429.sink.i, ptr %6, align 2
  br label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.i: ; preds = %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread26.sink.split.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.split.i
  %i.cc = load i16, ptr %6, align 2, !tbaa !128
  store i16 %i.cc, ptr %2, align 2, !tbaa !116
  br label %_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i: ; preds = %bb.b, %bb.p, %bb.o, %bb.n, %.lr.ph.i42.i.i, %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.split.i, %bb.q, %bb.j, %.lr.ph.i.i.preheader.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.r, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i
  %.035159.i.i = phi ptr [ %i.ce, %bb.r ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i ] ; 20 uses
  %.036158.i.i = phi i64 [ %i.cf, %bb.r ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i ] ; 34 uses
  %i.cd = load i8, ptr %.035159.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.cd, label %.critedge.i11.i [
    i8 32, label %bb.r
    i8 12, label %bb.r
    i8 11, label %bb.r
    i8 10, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 1
  %i.cf = add i64 %.036158.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.cf, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !631

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cg = icmp eq i8 %i.cd, 45
  br i1 %i.cg, label %bb.s, label %bb.ap

bb.s:                                             ; preds = %.critedge.i11.i
  %.not.i.i = icmp eq i64 %.036158.i.i, 1
  br i1 %.not.i.i, label %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i, label %.lr.ph.i.i21.i

_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread115.i.i.i

.lr.ph.i.i21.i:                                   ; preds = %bb.s, %bb.ao
  %i.ch = phi i64 [ %i.et, %bb.ao ], [ 0, %bb.s ] ; 6 uses
  %.084132.i.i.i = phi i64 [ %.7.i.i.i, %bb.ao ], [ 1, %bb.s ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.084132.i.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !106 ; 3 uses
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i21.i
  store i64 %i.ch, ptr %7, align 8
  %i.cm = icmp eq i8 %i.cj, 46
  br i1 %i.cm, label %bb.u, label %.thread111.i.i.i

bb.u:                                             ; preds = %bb.t
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = icmp ugt i64 %.084132.i.i.i, 1          ; 2 uses
  %i.co = add nuw i64 %.084132.i.i.i, 1           ; 5 uses
  %i.cp = icmp ult i64 %i.co, %.036158.i.i
  br i1 %i.cp, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %.lr.ph134.i.i.i
  %i.cs = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.dh, %bb.ac ] ; 2 uses
  %i.ct = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.di, %bb.ac ] ; 2 uses
  %i.cu = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.dj, %bb.ac ] ; 3 uses
  %i.cv = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.dk, %bb.ac ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.co, %.lr.ph134.i.i.i ], [ %.2.i.i.i, %bb.ac ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.185133.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !106 ; 2 uses
  %i.cy = add i8 %i.cx, -48                       ; 2 uses
  %i.cz = icmp ult i8 %i.cy, 10
  br i1 %i.cz, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.da = zext nneg i8 %i.cy to i64               ; 2 uses
  %i.db = xor i64 %i.da, 9223372036854775806
  %i.dc = udiv i64 %i.db, 10
  %i.dd = icmp sgt i64 %i.cv, %i.dc
  br i1 %i.dd, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.y, !prof !125

bb.y:                                             ; preds = %bb.x
  %i.de = add i16 %i.cu, 1                        ; 2 uses
  %i.df = mul nsw i64 %i.cv, 10
  %i.dg = add nsw i64 %i.df, %i.da                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.y, %bb.x
  %i.dh = phi i64 [ %i.dg, %bb.y ], [ %i.cs, %bb.x ] ; 2 uses
  %i.di = phi i16 [ %i.de, %bb.y ], [ %i.ct, %bb.x ] ; 2 uses
  %i.dj = phi i16 [ %i.de, %bb.y ], [ %i.cu, %bb.x ] ; 2 uses
  %i.dk = phi i64 [ %i.dg, %bb.y ], [ %i.cv, %bb.x ] ; 2 uses
  %i.dl = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.dl, %.036158.i.i
  br i1 %.not103.i.i.i, label %.thread117.i.i.loopexit.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !106
  %i.do = icmp eq i8 %i.dn, 95
  br i1 %i.do, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dp = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.dq = icmp eq i64 %i.dp, %.036158.i.i
  br i1 %i.dq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.dp
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !106
  %i.dt = add i8 %i.ds, -48
  %i.du = icmp ult i8 %i.dt, 10
  br i1 %i.du, label %bb.ac, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.2.i.i.i = phi i64 [ %i.dp, %bb.ab ], [ %i.dl, %bb.z ] ; 3 uses
  %i.dv = icmp ult i64 %.2.i.i.i, %.036158.i.i
  br i1 %i.dv, label %bb.w, label %.thread117.i.i.loopexit.i, !llvm.loop !632

bb.ad:                                            ; preds = %bb.w
  store i16 %i.ct, ptr %i.cr, align 8
  store i64 %i.cs, ptr %i.cq, align 8
  %i.dw = icmp ugt i64 %.185133.i.i.i, %i.co
  %or.cond106.i.i.i = or i1 %i.cn, %i.dw
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i.i.loopexit.i:                        ; preds = %bb.ac, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.ac ], [ %.036158.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.di, ptr %i.cr, align 8
  store i64 %i.dh, ptr %i.cq, align 8
  br label %.thread117.i.i.i

.thread117.i.i.i:                                 ; preds = %.thread117.i.i.loopexit.i, %bb.v
  %.promoted11.i.i225.i.i = phi i16 [ 0, %bb.v ], [ %i.dj, %.thread117.i.i.loopexit.i ]
  %.promoted.i.i221.i.i = phi i64 [ 0, %bb.v ], [ %i.dk, %.thread117.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.co, %bb.v ], [ %.185.lcssa.i.i.ph.i, %.thread117.i.i.loopexit.i ] ; 2 uses
  %i.dx = icmp ugt i64 %.185.lcssa.i.i.i, %i.co
  %or.cond106118.i.i.i = or i1 %i.cn, %i.dx
  br i1 %or.cond106118.i.i.i, label %.thread119.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.ad, %bb.t
  %.promoted11.i.i224.i.i = phi i16 [ 0, %bb.t ], [ %i.cu, %bb.ad ] ; 2 uses
  %.promoted.i.i220.i.i = phi i64 [ 0, %bb.t ], [ %i.cv, %bb.ad ] ; 2 uses
  %i.dy = phi i8 [ %i.cj, %bb.t ], [ %i.cx, %bb.ad ]
  %.4.i.i.i = phi i64 [ %.084132.i.i.i, %bb.t ], [ %.185133.i.i.i, %bb.ad ] ; 3 uses
  switch i8 %i.dy, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 101, label %bb.ae
    i8 69, label %bb.ae
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.dz = add nuw i64 %.4.i.i.i, 1                ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %.036158.i.i
  br i1 %i.ea, label %.lr.ph136.i.i.i, label %.thread119.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.eb = phi i64 [ %i.ee, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.dz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !106
  switch i8 %i.ed, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i
  %i.ee = add nuw i64 %i.eb, 1                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ee, %.036158.i.i
  br i1 %exitcond.not.i.i.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !633

bb.ae:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.ef = icmp eq i64 %.4.i.i.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.ef
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = add nuw i64 %.4.i.i.i, 1                ; 3 uses
  %.not104.i.i.i = icmp ult i64 %i.eg, %.036158.i.i
  br i1 %.not104.i.i.i, label %bb.ag, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.eg ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !106
  %i.ej = icmp eq i8 %i.ei, 45
  %i.ek = sub nuw i64 %.036158.i.i, %i.eg         ; 2 uses
  br i1 %i.ej, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.el = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.eh, i64 noundef %i.ek, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.el, label %.split34.i, label %.split34.thread.i

bb.ai:                                            ; preds = %bb.ag
  %i.em = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.eh, i64 noundef %i.ek, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.em, label %.split34.i, label %.split34.thread.i

.split34.thread.i:                                ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split34.i:                                       ; preds = %bb.ai, %bb.ah
  %i.en = load i16, ptr %5, align 2, !tbaa !128
  %i.eo = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIsEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.eo, label %bb.cb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.aj:                                            ; preds = %.lr.ph.i.i21.i
  %i.ep = add nuw i64 %.084132.i.i.i, 1           ; 3 uses
  %i.eq = zext nneg i8 %i.ck to i64               ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i64 -9223372036854775808, %i.eq
  %i.er = udiv i64 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i64 0, %i.er
  %.not.i.i23.i = icmp slt i64 %i.ch, %.neg.i.i.i.i
  br i1 %.not.i.i23.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ak, !prof !125

bb.ak:                                            ; preds = %bb.aj
  %i.es = mul nsw i64 %i.ch, 10
  %i.et = sub nsw i64 %i.es, %i.eq                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.ep, %.036158.i.i
  br i1 %.not105.i.i.i, label %.thread119.i.i.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.ep
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !106
  %i.ew = icmp ne i8 %i.ev, 95
  %or.cond.i.i.i = or i1 %3, %i.ew
  br i1 %or.cond.i.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = add i64 %.084132.i.i.i, 2               ; 3 uses
  %i.ey = icmp eq i64 %i.ex, %.036158.i.i
  br i1 %i.ey, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.ex
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !106
  %i.fb = add i8 %i.fa, -48
  %i.fc = icmp ult i8 %i.fb, 10
  br i1 %i.fc, label %bb.ao, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.7.i.i.i = phi i64 [ %i.ep, %bb.al ], [ %i.ex, %bb.an ] ; 3 uses
  %i.fd = icmp ult i64 %.7.i.i.i, %.036158.i.i
  br i1 %i.fd, label %.lr.ph.i.i21.i, label %.thread119.i.i.thread.i, !llvm.loop !634

.thread119.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %.thread117.i.i.i
  %.promoted11.i.i223.i.i = phi i16 [ %.promoted11.i.i225.i.i, %.thread117.i.i.i ], [ %.promoted11.i.i224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.promoted11.i.i224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i219.i.i = phi i64 [ %.promoted.i.i221.i.i, %.thread117.i.i.i ], [ %.promoted.i.i220.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.promoted.i.i220.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i.i = phi i64 [ %.185.lcssa.i.i.i, %.thread117.i.i.i ], [ %i.dz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.036158.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.fe = add i64 %i.ch, 32768
  %or.cond.i.i.i.i.i.i.i = icmp ult i64 %i.fe, 65536
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread.i.i.i

.thread119.i.i.thread.i:                          ; preds = %bb.ao, %bb.ak
  %.8.i.i.ph.i = phi i64 [ %.036158.i.i, %bb.ak ], [ %.7.i.i.i, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ff = add i64 %i.et, 32768
  %or.cond.i.i.i.i.i.i322.i = icmp ult i64 %i.ff, 65536
  br i1 %or.cond.i.i.i.i.i.i322.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread115.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %.thread119.i.i.thread.i, %.thread119.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i: ; preds = %.thread119.i.i.i
  %i.fg = trunc nsw i64 %i.ch to i16              ; 2 uses
  store i16 %i.fg, ptr %i.b, align 2, !tbaa !116
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fi = icmp sgt i64 %.promoted.i.i219.i.i, 10
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16
  br i1 %i.fi, label %.lr.ph.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.fk = phi i16 [ %i.fn, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i223.i.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i ]
  %i.fl = phi i64 [ %i.fm, %.lr.ph.i.i.i.i ], [ %.promoted.i.i219.i.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i ] ; 2 uses
  %i.fm = udiv i64 %i.fl, 10                      ; 3 uses
  %i.fn = add i16 %i.fk, -1                       ; 3 uses
  %i.fo = icmp samesign ugt i64 %i.fl, 109
  br i1 %i.fo, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.fm, ptr %i.fh, align 8, !tbaa !134
  store i16 %i.fn, ptr %i.fj, align 8, !tbaa !135
  br label %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i

_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i
  %i.fp = phi i16 [ %i.fn, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i223.i.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.fm, %._crit_edge.i.i.i.i ], [ %.promoted.i.i219.i.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit.i.i.i.i ]
  %i.fq = icmp eq i16 %i.fp, 1
  %i.fr = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i22.i = and i1 %i.fq, %i.fr
  br i1 %or.cond.i.i.i22.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread115.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread115.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i, %.thread119.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i
  %.8.i96271276.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i.ph.i, %.thread119.i.i.thread.i ]
  %i.fs = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %i.ch, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %i.et, %.thread119.i.i.thread.i ]
  store i64 %i.fs, ptr %7, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split33.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i
  %i.ft = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %i.fg, i16 noundef signext 1, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  %.pre15.i.i.i.i = load i16, ptr %i.b, align 2, !tbaa !116
  %i.fu = sext i16 %.pre15.i.i.i.i to i64
  store i64 %i.fu, ptr %7, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.ft, label %.split33.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split33.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread115.i.i.i
  %.8.i96271275.i.i = phi i64 [ %.8.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ], [ %.8.i96271276.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread115.i.i.i ]
  %i.fv = icmp ugt i64 %.8.i96271275.i.i, 1
  br i1 %i.fv, label %bb.cb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ap:                                            ; preds = %.critedge.i11.i
  %.not39.i12.i = icmp ne i64 %.036158.i.i, 1
  %i.fw = icmp eq i8 %i.cd, 48
  %or.cond.i13.i = and i1 %.not39.i12.i, %i.fw
  br i1 %or.cond.i13.i, label %bb.aq, label %bb.be

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 1 ; 7 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !106 ; 2 uses
  %i.fz = add i8 %i.fy, -66                       ; 2 uses
  %i.ga = tail call i8 @llvm.fshl.i8(i8 %i.fz, i8 %i.fz, i8 7)
  switch i8 %i.ga, label %bb.bd [
    i8 27, label %bb.ar
    i8 11, label %bb.ar
    i8 16, label %bb.aw
    i8 0, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.gb = add i64 %.036158.i.i, -1                ; 5 uses
  %i.gc = icmp ugt i64 %i.gb, 1
  br i1 %i.gc, label %.lr.ph.i50.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i50.i.preheader.i:                         ; preds = %bb.ar
  %i.gd = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 2
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !106 ; 3 uses
  %i.gf = add i8 %i.ge, -65
  %or.cond.i.i51.i134.i = icmp ult i8 %i.gf, 26
  %i.gg = or disjoint i8 %i.ge, 32
  %spec.select.i.i.i15135.i = select i1 %or.cond.i.i51.i134.i, i8 %i.gg, i8 %i.ge ; 3 uses
  %i.gh = add i8 %spec.select.i.i.i15135.i, -48
  %or.cond.i36.i.i16136.i = icmp ult i8 %i.gh, 10
  %i.gi = and i8 %spec.select.i.i.i15135.i, -33
  %i.gj = add i8 %i.gi, -65
  %i.gk = icmp ult i8 %i.gj, 6
  %i.gl = or i1 %or.cond.i36.i.i16136.i, %i.gk
  br i1 %i.gl, label %.lr.ph139.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i50.i.i:                                   ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.1.i.i19.i
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !106 ; 3 uses
  %i.go = add i8 %i.gn, -65
  %or.cond.i.i51.i.i = icmp ult i8 %i.go, 26
  %i.gp = or disjoint i8 %i.gn, 32
  %spec.select.i.i.i15.i = select i1 %or.cond.i.i51.i.i, i8 %i.gp, i8 %i.gn ; 3 uses
  %i.gq = add i8 %spec.select.i.i.i15.i, -48
  %or.cond.i36.i.i16.i = icmp ult i8 %i.gq, 10
  %i.gr = and i8 %spec.select.i.i.i15.i, -33
  %i.gs = add i8 %i.gr, -65
  %i.gt = icmp ult i8 %i.gs, 6
  %i.gu = or i1 %or.cond.i36.i.i16.i, %i.gt
  br i1 %i.gu, label %.lr.ph139.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph139.i:                                      ; preds = %.lr.ph.i50.i.preheader.i, %.lr.ph.i50.i.i
  %spec.select.i.i.i15138.i = phi i8 [ %spec.select.i.i.i15.i, %.lr.ph.i50.i.i ], [ %spec.select.i.i.i15135.i, %.lr.ph.i50.i.preheader.i ] ; 2 uses
  %i.gv = phi i64 [ %i.ho, %.lr.ph.i50.i.i ], [ 0, %.lr.ph.i50.i.preheader.i ] ; 2 uses
  %.02642.i.i137.i = phi i64 [ %.1.i.i19.i, %.lr.ph.i50.i.i ], [ 1, %.lr.ph.i50.i.preheader.i ] ; 2 uses
  %i.gw = icmp sgt i8 %spec.select.i.i.i15138.i, 96
  %.0.v.i.i17.i = select i1 %i.gw, i8 -87, i8 -48
  %.0.i.i18.i = add i8 %.0.v.i.i17.i, %spec.select.i.i.i15138.i
  %i.gx = add nuw i64 %.02642.i.i137.i, 1         ; 3 uses
  %.not.i52.i.i = icmp eq i64 %i.gx, %i.gb
  br i1 %.not.i52.i.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.lr.ph139.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !106
  %i.ha = icmp eq i8 %i.gz, 95
  br i1 %i.ha, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hb = add nuw i64 %.02642.i.i137.i, 2         ; 3 uses
  %i.hc = icmp eq i64 %i.hb, %i.gb
  br i1 %i.hc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hb
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !106 ; 2 uses
  %i.hf = add i8 %i.he, -48
  %or.cond.i37.i.i20.i = icmp ult i8 %i.hf, 10
  %i.hg = and i8 %i.he, -33
  %i.hh = add i8 %i.hg, -65
  %i.hi = icmp ult i8 %i.hh, 6
  %i.hj = or i1 %or.cond.i37.i.i20.i, %i.hi
  br i1 %i.hj, label %bb.av, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.av:                                            ; preds = %bb.au, %bb.as, %.lr.ph139.i
  %.1.i.i19.i = phi i64 [ %i.hb, %bb.au ], [ %i.gx, %bb.as ], [ %i.gb, %.lr.ph139.i ] ; 3 uses
  %i.hk = zext i8 %.0.i.i18.i to i64              ; 2 uses
  %i.hl = lshr i64 %i.hk, 4
  %i.hm = xor i64 %i.hl, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.gv, %i.hm
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.av
  %i.hn = shl nsw i64 %i.gv, 4
  %i.ho = add nsw i64 %i.hn, %i.hk                ; 3 uses
  %i.hp = icmp ult i64 %.1.i.i19.i, %i.gb
  br i1 %i.hp, label %.lr.ph.i50.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.hq = add i64 %i.ho, 32768
  %or.cond.i.i.i.i.i41.i.i = icmp ult i64 %i.hq, 65536
  br i1 %or.cond.i.i.i.i.i41.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.aw:                                            ; preds = %bb.aq, %bb.aq
  %i.hr = add i64 %.036158.i.i, -1                ; 5 uses
  %i.hs = icmp ugt i64 %i.hr, 1
  br i1 %i.hs, label %.lr.ph.i68.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i68.i.i:                                   ; preds = %bb.aw, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.ht = phi i64 [ %i.ih, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.aw ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i71.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.aw ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.02436.i.i.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !106
  switch i8 %i.hv, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.ay
    i8 49, label %bb.ax
  ]

bb.ax:                                            ; preds = %.lr.ph.i68.i.i
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i68.i.i
  %.0.i69.i.i = phi i64 [ 1, %bb.ax ], [ 0, %.lr.ph.i68.i.i ]
  %i.hw = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i70.i.i = icmp eq i64 %i.hw, %i.hr
  br i1 %.not.i70.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !106
  %i.hz = icmp eq i8 %i.hy, 95
  br i1 %i.hz, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ia = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.ib = icmp eq i64 %i.ia, %i.hr
  br i1 %i.ib, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ia
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !106
  %i.ie = and i8 %i.id, -2
  %switch.i.i14.i = icmp eq i8 %i.ie, 48
  br i1 %switch.i.i14.i, label %bb.bc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.ay
  %.1.i71.i.i = phi i64 [ %i.hr, %bb.ay ], [ %i.ia, %bb.bb ], [ %i.hw, %bb.az ] ; 2 uses
  %i.if = icmp slt i64 %i.ht, 4611686018427387904
  br i1 %i.if, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bc
  %i.ig = shl nsw i64 %i.ht, 1                    ; 2 uses
  %i.ih = or disjoint i64 %.0.i69.i.i, %i.ig      ; 2 uses
  %i.ii = icmp ult i64 %.1.i71.i.i, %i.hr
  br i1 %i.ii, label %.lr.ph.i68.i.i, label %._crit_edge.i54.i.i

._crit_edge.i54.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.ij = add i64 %i.ig, 32768
  %or.cond.i.i.i.i.i55.i.i = icmp ult i64 %i.ij, 65536
  br i1 %or.cond.i.i.i.i.i55.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bd:                                            ; preds = %bb.aq
  %i.ik = add i8 %i.fy, -48
  %i.il = icmp ult i8 %i.ik, 10
  %or.cond106.i.i = and i1 %3, %i.il
  br i1 %or.cond106.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i.i

bb.be:                                            ; preds = %bb.ap
  %i.im = icmp eq i8 %i.cd, 43                    ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.im
  %.mux.i.i.i = zext i1 %i.im to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.be, %bb.bd
  %.mux.i101.i.i = phi i64 [ %.mux.i.i.i, %bb.be ], [ 0, %bb.bd ] ; 5 uses
  %i.in = icmp ugt i64 %.036158.i.i, %.mux.i101.i.i
  br i1 %i.in, label %.lr.ph.i85.i.i, label %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i

_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i: ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb0EEEbRT_.exit.thread121.i.i.i

.lr.ph.i85.i.i:                                   ; preds = %.preheader.i.i.i, %bb.ca
  %i.io = phi i64 [ %i.lb, %bb.ca ], [ 0, %.preheader.i.i.i ] ; 6 uses
  %.0138.i.i.i = phi i64 [ %.7.i93.i.i, %bb.ca ], [ %.mux.i101.i.i, %.preheader.i.i.i ] ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.0138.i.i.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !106 ; 3 uses
  %i.ir = add i8 %i.iq, -48                       ; 2 uses
  %i.is = icmp ult i8 %i.ir, 10
  br i1 %i.is, label %bb.bv, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i85.i.i
  store i64 %i.io, ptr %7, align 8
  %i.it = icmp eq i8 %i.iq, 46
  br i1 %i.it, label %bb.bg, label %.thread117.i86.i.i

bb.bg:                                            ; preds = %bb.bf
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iu = icmp ugt i64 %.0138.i.i.i, %.mux.i101.i.i ; 2 uses
  %i.iv = add nuw i64 %.0138.i.i.i, 1             ; 5 uses
  %i.iw = icmp ult i64 %i.iv, %.036158.i.i
  br i1 %i.iw, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %bb.bh
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bo, %.lr.ph140.i.i.i
  %i.iz = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.jo, %bb.bo ] ; 2 uses
  %i.ja = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.jp, %bb.bo ] ; 2 uses
  %i.jb = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.jq, %bb.bo ] ; 3 uses
  %i.jc = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.jr, %bb.bo ] ; 4 uses
  %.1139.i.i.i = phi i64 [ %i.iv, %.lr.ph140.i.i.i ], [ %.2.i90.i.i, %bb.bo ] ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.1139.i.i.i
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !106 ; 2 uses
  %i.jf = add i8 %i.je, -48                       ; 2 uses
  %i.jg = icmp ult i8 %i.jf, 10
  br i1 %i.jg, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.jh = zext nneg i8 %i.jf to i64               ; 2 uses
  %i.ji = xor i64 %i.jh, 9223372036854775806
  %i.jj = udiv i64 %i.ji, 10
  %i.jk = icmp sgt i64 %i.jc, %i.jj
  br i1 %i.jk, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.bk, !prof !125

bb.bk:                                            ; preds = %bb.bj
  %i.jl = add i16 %i.jb, 1                        ; 2 uses
  %i.jm = mul nsw i64 %i.jc, 10
  %i.jn = add nsw i64 %i.jm, %i.jh                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.jo = phi i64 [ %i.jn, %bb.bk ], [ %i.iz, %bb.bj ] ; 2 uses
  %i.jp = phi i16 [ %i.jl, %bb.bk ], [ %i.ja, %bb.bj ] ; 2 uses
  %i.jq = phi i16 [ %i.jl, %bb.bk ], [ %i.jb, %bb.bj ] ; 2 uses
  %i.jr = phi i64 [ %i.jn, %bb.bk ], [ %i.jc, %bb.bj ] ; 2 uses
  %i.js = add nuw i64 %.1139.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.js, %.036158.i.i
  br i1 %.not107.i.i.i, label %.thread123.i.i.loopexit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !106
  %i.jv = icmp eq i8 %i.ju, 95
  br i1 %i.jv, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.jw = add i64 %.1139.i.i.i, 2                 ; 3 uses
  %i.jx = icmp eq i64 %i.jw, %.036158.i.i
  br i1 %i.jx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jy = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.jw
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !106
  %i.ka = add i8 %i.jz, -48
  %i.kb = icmp ult i8 %i.ka, 10
  br i1 %i.kb, label %bb.bo, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %.2.i90.i.i = phi i64 [ %i.jw, %bb.bn ], [ %i.js, %bb.bl ] ; 3 uses
  %i.kc = icmp ult i64 %.2.i90.i.i, %.036158.i.i
  br i1 %i.kc, label %bb.bi, label %.thread123.i.i.loopexit.i, !llvm.loop !635

bb.bp:                                            ; preds = %bb.bi
  store i16 %i.ja, ptr %i.iy, align 8
  store i64 %i.iz, ptr %i.ix, align 8
  %i.kd = icmp ugt i64 %.1139.i.i.i, %i.iv
  %or.cond110.i.i.i = or i1 %i.iu, %i.kd
  br i1 %or.cond110.i.i.i, label %.thread117.i86.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread123.i.i.loopexit.i:                        ; preds = %bb.bo, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i90.i.i, %bb.bo ], [ %.036158.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.jp, ptr %i.iy, align 8
  store i64 %i.jo, ptr %i.ix, align 8
  br label %.thread123.i.i.i

.thread123.i.i.i:                                 ; preds = %.thread123.i.i.loopexit.i, %bb.bh
  %.promoted11.i.i77217.i.i = phi i16 [ 0, %bb.bh ], [ %i.jq, %.thread123.i.i.loopexit.i ]
  %.promoted.i.i76213.i.i = phi i64 [ 0, %bb.bh ], [ %i.jr, %.thread123.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.iv, %bb.bh ], [ %.1.lcssa.i.i.ph.i, %.thread123.i.i.loopexit.i ] ; 2 uses
  %i.ke = icmp ugt i64 %.1.lcssa.i.i.i, %i.iv
  %or.cond110124.i.i.i = or i1 %i.iu, %i.ke
  br i1 %or.cond110124.i.i.i, label %.thread125.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i86.i.i:                               ; preds = %bb.bp, %bb.bf
  %.promoted11.i.i77216.i.i = phi i16 [ 0, %bb.bf ], [ %i.jb, %bb.bp ] ; 2 uses
  %.promoted.i.i76212.i.i = phi i64 [ 0, %bb.bf ], [ %i.jc, %bb.bp ] ; 2 uses
  %i.kf = phi i8 [ %i.iq, %bb.bf ], [ %i.je, %bb.bp ]
  %.4.i87.i.i = phi i64 [ %.0138.i.i.i, %bb.bf ], [ %.1139.i.i.i, %bb.bp ] ; 3 uses
  switch i8 %i.kf, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 101, label %bb.bq
    i8 69, label %bb.bq
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i: ; preds = %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb7TryCast9OperationINS_8string_tEiEEbT_RT0_b:bb.a
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerDecimalCastData.156", align 8 ; 22 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  %cond104.i.i = icmp eq i32 %i.d, 0
  br i1 %cond104.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.035106.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 15 uses
  %.036105.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 26 uses
  %i.i = load i8, ptr %.035106.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %bb.o [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 1
  %i.k = add nsw i64 %.036105.i.i, -1             ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %.lr.ph.i.i, !llvm.loop !638

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %.036105.i.i, 1
  br i1 %.not.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  br i1 %3, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.0.9.i = phi i32 [ %i.t, %bb.e ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %.06093.us.i.i.i = phi i64 [ %i.r, %bb.e ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.06093.us.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !106   ; 2 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.d, label %.split.us.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.p = zext nneg i8 %i.n to i32                 ; 2 uses
  %.nonneg.i.us.i.i.i = sub nuw i32 -2147483648, %i.p
  %i.q = udiv i32 %.nonneg.i.us.i.i.i, 10
  %.neg.i.us.i.i.i = sub nsw i32 0, %i.q
  %.not.us.i.i.i = icmp slt i32 %.sroa.0.9.i, %.neg.i.us.i.i.i
  br i1 %.not.us.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.e, !prof !125

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i64 %.06093.us.i.i.i, 1          ; 2 uses
  %i.s = mul nsw i32 %.sroa.0.9.i, 10
  %i.t = sub nsw i32 %i.s, %i.p                   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %.036105.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !639

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.0.6.i = phi i32 [ %i.ar, %bb.n ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %.06093.i.i.i = phi i64 [ %.7.i.i.i, %bb.n ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.06093.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !106   ; 2 uses
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.0.7.i = phi i32 [ %.sroa.0.9.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.6.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %.pre.i.i.i = phi i8 [ %i.m, %.lr.ph.split.us.i.i.i ], [ %i.v, %.lr.ph.split.i.i.i ] ; 2 uses
  %.us-phi94.i.i.i = phi i64 [ %.06093.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.06093.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.y = icmp eq i8 %.pre.i.i.i, 46
  br i1 %i.y, label %bb.f, label %.thread80.i.i.i

bb.f:                                             ; preds = %.split.us.i.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %.us-phi94.i.i.i, 2         ; 2 uses
  %i.aa = add nuw i64 %.us-phi94.i.i.i, 1         ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %.036105.i.i
  br i1 %i.ab, label %bb.h, label %.thread82.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !106 ; 2 uses
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  %brmerge.i.i.i = or i1 %i.z, %i.af
  br i1 %brmerge.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %.thread80.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.g
  br i1 %i.z, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread44.i

.thread80.i.i.i:                                  ; preds = %bb.h, %.split.us.i.i.i
  %i.ag = phi i8 [ %i.ad, %bb.h ], [ %.pre.i.i.i, %.split.us.i.i.i ]
  %.4.i.i.i = phi i64 [ %i.aa, %bb.h ], [ %.us-phi94.i.i.i, %.split.us.i.i.i ]
  switch i8 %i.ag, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i
  %i.ah = add i64 %.4.i.i.i, 1                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %.036105.i.i
  br i1 %i.ai, label %.lr.ph96.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i

.lr.ph96.i.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  %i.aj = phi i64 [ %i.am, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.ah, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !106
  switch i8 %i.al, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i: ; preds = %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i
  %i.am = add nuw i64 %i.aj, 1                    ; 2 uses
  %exitcond115.not.i.i.i = icmp eq i64 %i.am, %.036105.i.i
  br i1 %exitcond115.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph96.i.i.i, !llvm.loop !640

bb.i:                                             ; preds = %.lr.ph.split.i.i.i
  %i.an = add nuw i64 %.06093.i.i.i, 1            ; 3 uses
  %i.ao = zext nneg i8 %i.w to i32                ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i32 -2147483648, %i.ao
  %i.ap = udiv i32 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i32 0, %i.ap
  %.not.i.i.i = icmp slt i32 %.sroa.0.6.i, %.neg.i.i.i.i
  br i1 %.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.j, !prof !125

bb.j:                                             ; preds = %bb.i
  %i.aq = mul nsw i32 %.sroa.0.6.i, 10
  %i.ar = sub nsw i32 %i.aq, %i.ao                ; 3 uses
  %.not76.i.i.i = icmp eq i64 %i.an, %.036105.i.i
  br i1 %.not76.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.an
  %i.at = load i8, ptr %i.as, align 1, !tbaa !106
  %.not98.i.i.i = icmp eq i8 %i.at, 95
  br i1 %.not98.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %.06093.i.i.i, 2                ; 3 uses
  %i.av = icmp eq i64 %i.au, %.036105.i.i
  br i1 %i.av, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !106
  %i.ay = add i8 %i.ax, -48
  %i.az = icmp ult i8 %i.ay, 10
  br i1 %i.az, label %bb.n, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.7.i.i.i = phi i64 [ %i.an, %bb.k ], [ %i.au, %bb.m ] ; 3 uses
  %i.ba = icmp ult i64 %.7.i.i.i, %.036105.i.i
  br i1 %i.ba, label %.lr.ph.split.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, !llvm.loop !639

bb.o:                                             ; preds = %.lr.ph.i.i
  %.not39.i.i = icmp ne i64 %.036105.i.i, 1
  %i.bb = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not39.i.i, %i.bb
  br i1 %or.cond.i.i, label %bb.p, label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 1 ; 7 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !106 ; 2 uses
  %i.be = add i8 %i.bd, -66                       ; 2 uses
  %i.bf = tail call i8 @llvm.fshl.i8(i8 %i.be, i8 %i.be, i8 7)
  switch i8 %i.bf, label %bb.ad [
    i8 27, label %bb.q
    i8 11, label %bb.q
    i8 16, label %bb.w
    i8 0, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bg = add i64 %.036105.i.i, -1                ; 5 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.i41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

.lr.ph.i41.i.i:                                   ; preds = %bb.q, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i
  %.02640.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.q ] ; 3 uses
  %i.bi = phi i32 [ %i.ck, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02640.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !106 ; 3 uses
  %i.bl = add i8 %i.bk, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bl, 26
  %i.bm = or disjoint i8 %i.bk, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bm, i8 %i.bk ; 4 uses
  %i.bn = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.bn, 10
  %i.bo = and i8 %spec.select.i.i.i.i, -33
  %i.bp = add i8 %i.bo, -65
  %i.bq = icmp ult i8 %i.bp, 6
  %i.br = or i1 %or.cond.i36.i.i.i, %i.bq
  br i1 %i.br, label %bb.r, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

bb.r:                                             ; preds = %.lr.ph.i41.i.i
  %i.bs = icmp sgt i8 %spec.select.i.i.i.i, 96
  %.0.v.i.i.i = select i1 %i.bs, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i.i
  %i.bt = add nuw i64 %.02640.i.i.i, 1            ; 3 uses
  %.not.i42.i.i = icmp eq i64 %i.bt, %i.bg
  br i1 %.not.i42.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !106
  %i.bw = icmp eq i8 %i.bv, 95
  br i1 %i.bw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bx = add nuw i64 %.02640.i.i.i, 2            ; 3 uses
  %i.by = icmp eq i64 %i.bx, %i.bg
  br i1 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !106 ; 2 uses
  %i.cb = add i8 %i.ca, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.cb, 10
  %i.cc = and i8 %i.ca, -33
  %i.cd = add i8 %i.cc, -65
  %i.ce = icmp ult i8 %i.cd, 6
  %i.cf = or i1 %or.cond.i37.i.i.i, %i.ce
  br i1 %i.cf, label %bb.v, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.1.i.i.i = phi i64 [ %i.bx, %bb.u ], [ %i.bt, %bb.s ], [ %i.bg, %bb.r ] ; 2 uses
  %i.cg = zext i8 %.0.i.i.i to i32                ; 2 uses
  %i.ch = lshr i32 %i.cg, 4
  %i.ci = xor i32 %i.ch, 134217727
  %.not38.i.i.i = icmp sgt i32 %i.bi, %i.ci
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.v
  %i.cj = shl nsw i32 %i.bi, 4
  %i.ck = add nsw i32 %i.cj, %i.cg                ; 2 uses
  %i.cl = icmp ult i64 %.1.i.i.i, %i.bg
  br i1 %i.cl, label %.lr.ph.i41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread44.i

bb.w:                                             ; preds = %bb.p, %bb.p
  %i.cm = add i64 %.036105.i.i, -1                ; 5 uses
  %i.cn = icmp ugt i64 %i.cm, 1
  br i1 %i.cn, label %.lr.ph.i45.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

.lr.ph.i45.i.i:                                   ; preds = %bb.w, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i
  %.02435.i.i.i = phi i64 [ %.1.i48.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.w ] ; 3 uses
  %i.co = phi i32 [ %i.dc, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02435.i.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !106
  switch i8 %i.cq, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i [
    i8 48, label %bb.y
    i8 49, label %bb.x
  ]

bb.x:                                             ; preds = %.lr.ph.i45.i.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i45.i.i
  %.0.i46.i.i = phi i32 [ 1, %bb.x ], [ 0, %.lr.ph.i45.i.i ]
  %i.cr = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i47.i.i = icmp eq i64 %i.cr, %i.cm
  br i1 %.not.i47.i.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !106
  %i.cu = icmp eq i8 %i.ct, 95
  br i1 %i.cu, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cv = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.cw = icmp eq i64 %i.cv, %i.cm
  br i1 %i.cw, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !106
  %i.cz = and i8 %i.cy, -2
  %switch.i.i.i = icmp eq i8 %i.cz, 48
  br i1 %switch.i.i.i, label %bb.ac, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %.1.i48.i.i = phi i64 [ %i.cm, %bb.y ], [ %i.cv, %bb.ab ], [ %i.cr, %bb.z ] ; 2 uses
  %i.da = icmp slt i32 %i.co, 1073741824
  br i1 %i.da, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.ac
  %i.db = shl nsw i32 %i.co, 1
  %i.dc = or disjoint i32 %.0.i46.i.i, %i.db      ; 2 uses
  %i.dd = icmp ult i64 %.1.i48.i.i, %i.cm
  br i1 %i.dd, label %.lr.ph.i45.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread44.i

bb.ad:                                            ; preds = %bb.p
  %i.de = add i8 %i.bd, -48
  %i.df = icmp ult i8 %i.de, 10
  %or.cond67.i.i = and i1 %3, %i.df
  br i1 %or.cond67.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %.preheader.i.i.i

bb.ae:                                            ; preds = %bb.o
  %i.dg = icmp eq i8 %i.i, 43                     ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.dg
  %.mux.i.i.i = zext i1 %i.dg to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ae, %bb.ad
  %.mux.i65.i.i = phi i64 [ %.mux.i.i.i, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %i.dh = icmp ugt i64 %.036105.i.i, %.mux.i65.i.i
  br i1 %i.dh, label %.lr.ph.i50.i.i, label %.thread90.i.i.i

.lr.ph.i50.i.i:                                   ; preds = %.preheader.i.i.i
  br i1 %3, label %.lr.ph.split.us.i60.i.i, label %.lr.ph.split.i52.i.i

.lr.ph.split.us.i60.i.i:                          ; preds = %.lr.ph.i50.i.i, %bb.ag
  %.sroa.0.3.i = phi i32 [ %i.dr, %bb.ag ], [ 0, %.lr.ph.i50.i.i ] ; 3 uses
  %.099.us.i.i.i = phi i64 [ %i.dp, %bb.ag ], [ %.mux.i65.i.i, %.lr.ph.i50.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.099.us.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !106 ; 2 uses
  %i.dk = add i8 %i.dj, -48                       ; 2 uses
  %i.dl = icmp ult i8 %i.dk, 10
  br i1 %i.dl, label %bb.af, label %.split.us.i53.i.i

bb.af:                                            ; preds = %.lr.ph.split.us.i60.i.i
  %i.dm = zext nneg i8 %i.dk to i32               ; 2 uses
  %i.dn = xor i32 %i.dm, 2147483646
  %i.do = udiv i32 %i.dn, 10
  %.not.us.i61.i.i = icmp sgt i32 %.sroa.0.3.i, %i.do
  br i1 %.not.us.i61.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.ag, !prof !125

bb.ag:                                            ; preds = %bb.af
  %i.dp = add i64 %.099.us.i.i.i, 1               ; 2 uses
  %i.dq = mul nsw i32 %.sroa.0.3.i, 10
  %i.dr = add nsw i32 %i.dq, %i.dm                ; 2 uses
  %exitcond.not.i62.i.i = icmp eq i64 %i.dp, %.036105.i.i
  br i1 %exitcond.not.i62.i.i, label %.thread90.i.i.i, label %.lr.ph.split.us.i60.i.i, !llvm.loop !641

.lr.ph.split.i52.i.i:                             ; preds = %.lr.ph.i50.i.i, %bb.ap
  %.sroa.0.1.i = phi i32 [ %i.eq, %bb.ap ], [ 0, %.lr.ph.i50.i.i ] ; 3 uses
  %.099.i.i.i = phi i64 [ %.7.i59.i.i, %bb.ap ], [ %.mux.i65.i.i, %.lr.ph.i50.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.099.i.i.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !106 ; 2 uses
  %i.du = add i8 %i.dt, -48                       ; 2 uses
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %bb.ak, label %.split.us.i53.i.i

.split.us.i53.i.i:                                ; preds = %.lr.ph.split.i52.i.i, %.lr.ph.split.us.i60.i.i
  %.sroa.0.2.i = phi i32 [ %.sroa.0.3.i, %.lr.ph.split.us.i60.i.i ], [ %.sroa.0.1.i, %.lr.ph.split.i52.i.i ] ; 3 uses
  %.pre.i54.i.i = phi i8 [ %i.dj, %.lr.ph.split.us.i60.i.i ], [ %i.dt, %.lr.ph.split.i52.i.i ] ; 2 uses
  %.us-phi100.i.i.i = phi i64 [ %.099.us.i.i.i, %.lr.ph.split.us.i60.i.i ], [ %.099.i.i.i, %.lr.ph.split.i52.i.i ] ; 3 uses
  %i.dw = icmp eq i8 %.pre.i54.i.i, 46
  br i1 %i.dw, label %bb.ah, label %.thread86.i.i.i

bb.ah:                                            ; preds = %.split.us.i53.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = icmp ule i64 %.us-phi100.i.i.i, %.mux.i65.i.i ; 2 uses
  %i.dy = add nuw i64 %.us-phi100.i.i.i, 1        ; 4 uses
  %i.dz = icmp ult i64 %i.dy, %.036105.i.i
  br i1 %i.dz, label %bb.aj, label %.thread88.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !106 ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  %brmerge.i57.i.i = or i1 %i.dx, %i.ed
  br i1 %brmerge.i57.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %.thread86.i.i.i

.thread88.i.i.i:                                  ; preds = %bb.ai
  br i1 %i.dx, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %.thread90.i.i.i

.thread86.i.i.i:                                  ; preds = %bb.aj, %.split.us.i53.i.i
  %i.ee = phi i8 [ %i.eb, %bb.aj ], [ %.pre.i54.i.i, %.split.us.i53.i.i ]
  %.4.i55.i.i = phi i64 [ %i.dy, %bb.aj ], [ %.us-phi100.i.i.i, %.split.us.i53.i.i ]
  switch i8 %i.ee, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i: ; preds = %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i
  %i.ef = add i64 %.4.i55.i.i, 1                  ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %.036105.i.i
  br i1 %i.eg, label %.lr.ph102.i.i.i, label %.thread90.i.i.i

.lr.ph102.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  %i.eh = phi i64 [ %i.ek, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.ef, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !106
  switch i8 %i.ej, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i: ; preds = %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i
  %i.ek = add nuw i64 %i.eh, 1                    ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %i.ek, %.036105.i.i
  br i1 %exitcond121.not.i.i.i, label %.thread90.i.i.i, label %.lr.ph102.i.i.i, !llvm.loop !642

bb.ak:                                            ; preds = %.lr.ph.split.i52.i.i
  %i.el = add nuw i64 %.099.i.i.i, 1              ; 3 uses
  %i.em = zext nneg i8 %i.du to i32               ; 2 uses
  %i.en = xor i32 %i.em, 2147483646
  %i.eo = udiv i32 %i.en, 10
  %.not.i58.i.i = icmp sgt i32 %.sroa.0.1.i, %i.eo
  br i1 %.not.i58.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.al, !prof !125

bb.al:                                            ; preds = %bb.ak
  %i.ep = mul nsw i32 %.sroa.0.1.i, 10
  %i.eq = add nsw i32 %i.ep, %i.em                ; 3 uses
  %.not80.i.i.i = icmp eq i64 %i.el, %.036105.i.i
  br i1 %.not80.i.i.i, label %.thread90.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.el
  %i.es = load i8, ptr %i.er, align 1, !tbaa !106
  %.not104.i.i.i = icmp eq i8 %i.es, 95
  br i1 %.not104.i.i.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.et = add i64 %.099.i.i.i, 2                  ; 3 uses
  %i.eu = icmp eq i64 %i.et, %.036105.i.i
  br i1 %i.eu, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ev = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !106
  %i.ex = add i8 %i.ew, -48
  %i.ey = icmp ult i8 %i.ex, 10
  br i1 %i.ey, label %bb.ap, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.7.i59.i.i = phi i64 [ %i.el, %bb.am ], [ %i.et, %bb.ao ] ; 3 uses
  %i.ez = icmp ult i64 %.7.i59.i.i, %.036105.i.i
  br i1 %i.ez, label %.lr.ph.split.i52.i.i, label %.thread90.i.i.i, !llvm.loop !641

.thread90.i.i.i:                                  ; preds = %bb.ap, %bb.al, %bb.ag, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i, %.thread88.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i = phi i32 [ %i.dr, %bb.ag ], [ 0, %.preheader.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ], [ %.sroa.0.2.i, %.thread88.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.eq, %bb.al ], [ %i.eq, %bb.ap ]
  %.8.i49.i.i = phi i64 [ %.036105.i.i, %bb.ag ], [ 1, %.preheader.i.i.i ], [ %i.ef, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ], [ %i.dy, %.thread88.i.i.i ], [ %.036105.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %.036105.i.i, %bb.al ], [ %.7.i59.i.i, %bb.ap ]
  %i.fa = icmp ugt i64 %.8.i49.i.i, %.mux.i65.i.i
  br i1 %i.fa, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread44.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %bb.n, %bb.j, %bb.e, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  %.sroa.0.8.i = phi i32 [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %i.t, %bb.e ], [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.ar, %bb.j ], [ %i.ar, %bb.n ]
  %.8.i.i.i = phi i64 [ %i.ah, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.036105.i.i, %bb.e ], [ %.036105.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %.036105.i.i, %bb.j ], [ %.7.i.i.i, %bb.n ]
  %i.fb = icmp ugt i64 %.8.i.i.i, 1
  br i1 %i.fb, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread44.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread44.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread82.i.i.i
  %.sroa.0.1043.i = phi i32 [ %.sroa.0.7.i, %.thread82.i.i.i ], [ %.sroa.0.8.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i ], [ %.sroa.0.0.i, %.thread90.i.i.i ], [ %i.ck, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i ], [ %i.dc, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i ]
  store i32 %.sroa.0.1043.i, ptr %2, align 4, !tbaa !89
  br label %_ZN6duckdbL20TrySimpleIntegerCastIiLb1EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i: ; preds = %bb.b, %bb.m, %bb.l, %bb.i, %bb.d, %.lr.ph96.i.i.i, %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i45.i.i, %bb.v, %bb.u, %bb.t, %.lr.ph.i41.i.i, %bb.ao, %bb.an, %bb.ak, %bb.af, %.lr.ph102.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread86.i.i.i, %.thread88.i.i.i, %bb.aj, %bb.ah, %bb.ae, %bb.ad, %bb.w, %bb.q, %.thread80.i.i.i, %.thread82.i.i.i, %bb.h, %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.aq, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i
  %.035159.i.i = phi ptr [ %i.fd, %bb.aq ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i ] ; 20 uses
  %.036158.i.i = phi i64 [ %i.fe, %bb.aq ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIiEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread47.i ] ; 34 uses
  %i.fc = load i8, ptr %.035159.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.fc, label %.critedge.i11.i [
    i8 32, label %bb.aq
    i8 12, label %bb.aq
    i8 11, label %bb.aq
    i8 10, label %bb.aq
    i8 9, label %bb.aq
    i8 13, label %bb.aq
  ]

bb.aq:                                            ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 1
  %i.fe = add i64 %.036158.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.fe, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !643

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ff = icmp eq i8 %i.fc, 45
  br i1 %i.ff, label %bb.ar, label %bb.bo

bb.ar:                                            ; preds = %.critedge.i11.i
  %.not.i25.i = icmp eq i64 %.036158.i.i, 1
  br i1 %.not.i25.i, label %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i, label %.lr.ph.i.i26.i

_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread115.i.i.i

.lr.ph.i.i26.i:                                   ; preds = %bb.ar, %bb.bn
  %i.fg = phi i64 [ %i.hs, %bb.bn ], [ 0, %bb.ar ] ; 6 uses
  %.084132.i.i.i = phi i64 [ %.7.i.i36.i, %bb.bn ], [ 1, %bb.ar ] ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.084132.i.i.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !106 ; 3 uses
  %i.fj = add i8 %i.fi, -48                       ; 2 uses
  %i.fk = icmp ult i8 %i.fj, 10
  br i1 %i.fk, label %bb.bi, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i26.i
  store i64 %i.fg, ptr %6, align 8
  %i.fl = icmp eq i8 %i.fi, 46
  br i1 %i.fl, label %bb.at, label %.thread111.i.i.i

bb.at:                                            ; preds = %bb.as
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fm = icmp ugt i64 %.084132.i.i.i, 1          ; 2 uses
  %i.fn = add nuw i64 %.084132.i.i.i, 1           ; 5 uses
  %i.fo = icmp ult i64 %i.fn, %.036158.i.i
  br i1 %i.fo, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %bb.au
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %.lr.ph134.i.i.i
  %i.fr = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gg, %bb.bb ] ; 2 uses
  %i.fs = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.gh, %bb.bb ] ; 2 uses
  %i.ft = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.gi, %bb.bb ] ; 3 uses
  %i.fu = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gj, %bb.bb ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.fn, %.lr.ph134.i.i.i ], [ %.2.i.i.i, %bb.bb ] ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.185133.i.i.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !106 ; 2 uses
  %i.fx = add i8 %i.fw, -48                       ; 2 uses
  %i.fy = icmp ult i8 %i.fx, 10
  br i1 %i.fy, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.fz = zext nneg i8 %i.fx to i64               ; 2 uses
  %i.ga = xor i64 %i.fz, 9223372036854775806
  %i.gb = udiv i64 %i.ga, 10
  %i.gc = icmp sgt i64 %i.fu, %i.gb
  br i1 %i.gc, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.ax, !prof !125

bb.ax:                                            ; preds = %bb.aw
  %i.gd = add i16 %i.ft, 1                        ; 2 uses
  %i.ge = mul nsw i64 %i.fu, 10
  %i.gf = add nsw i64 %i.ge, %i.fz                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.gg = phi i64 [ %i.gf, %bb.ax ], [ %i.fr, %bb.aw ] ; 2 uses
  %i.gh = phi i16 [ %i.gd, %bb.ax ], [ %i.fs, %bb.aw ] ; 2 uses
  %i.gi = phi i16 [ %i.gd, %bb.ax ], [ %i.ft, %bb.aw ] ; 2 uses
  %i.gj = phi i64 [ %i.gf, %bb.ax ], [ %i.fu, %bb.aw ] ; 2 uses
  %i.gk = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.gk, %.036158.i.i
  br i1 %.not103.i.i.i, label %.thread117.i.i.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !106
  %i.gn = icmp eq i8 %i.gm, 95
  br i1 %i.gn, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.go = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.gp = icmp eq i64 %i.go, %.036158.i.i
  br i1 %i.gp, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !106
  %i.gs = add i8 %i.gr, -48
  %i.gt = icmp ult i8 %i.gs, 10
  br i1 %i.gt, label %bb.bb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %.2.i.i.i = phi i64 [ %i.go, %bb.ba ], [ %i.gk, %bb.ay ] ; 3 uses
  %i.gu = icmp ult i64 %.2.i.i.i, %.036158.i.i
  br i1 %i.gu, label %bb.av, label %.thread117.i.i.loopexit.i, !llvm.loop !644

bb.bc:                                            ; preds = %bb.av
  store i16 %i.fs, ptr %i.fq, align 8
  store i64 %i.fr, ptr %i.fp, align 8
  %i.gv = icmp ugt i64 %.185133.i.i.i, %i.fn
  %or.cond106.i.i.i = or i1 %i.fm, %i.gv
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i.i.loopexit.i:                        ; preds = %bb.bb, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.bb ], [ %.036158.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.gh, ptr %i.fq, align 8
  store i64 %i.gg, ptr %i.fp, align 8
  br label %.thread117.i.i.i

.thread117.i.i.i:                                 ; preds = %.thread117.i.i.loopexit.i, %bb.au
  %.promoted11.i.i225.i.i = phi i16 [ 0, %bb.au ], [ %i.gi, %.thread117.i.i.loopexit.i ]
  %.promoted.i.i221.i.i = phi i64 [ 0, %bb.au ], [ %i.gj, %.thread117.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.fn, %bb.au ], [ %.185.lcssa.i.i.ph.i, %.thread117.i.i.loopexit.i ] ; 2 uses
  %i.gw = icmp ugt i64 %.185.lcssa.i.i.i, %i.fn
  %or.cond106118.i.i.i = or i1 %i.fm, %i.gw
  br i1 %or.cond106118.i.i.i, label %.thread119.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.bc, %bb.as
  %.promoted11.i.i224.i.i = phi i16 [ 0, %bb.as ], [ %i.ft, %bb.bc ] ; 2 uses
  %.promoted.i.i220.i.i = phi i64 [ 0, %bb.as ], [ %i.fu, %bb.bc ] ; 2 uses
  %i.gx = phi i8 [ %i.fi, %bb.as ], [ %i.fw, %bb.bc ]
  %.4.i.i27.i = phi i64 [ %.084132.i.i.i, %bb.as ], [ %.185133.i.i.i, %bb.bc ] ; 3 uses
  switch i8 %i.gx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i
    i8 101, label %bb.bd
    i8 69, label %bb.bd
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.gy = add nuw i64 %.4.i.i27.i, 1              ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %.036158.i.i
  br i1 %i.gz, label %.lr.ph136.i.i.i, label %.thread119.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.ha = phi i64 [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.gy, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !106
  switch i8 %i.hc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i
  %i.hd = add nuw i64 %i.ha, 1                    ; 2 uses
  %exitcond.not.i.i32.i = icmp eq i64 %i.hd, %.036158.i.i
  br i1 %exitcond.not.i.i32.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !645

bb.bd:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.he = icmp eq i64 %.4.i.i27.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.he
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hf = add nuw i64 %.4.i.i27.i, 1              ; 3 uses
  %.not104.i.i28.i = icmp ult i64 %i.hf, %.036158.i.i
  br i1 %.not104.i.i28.i, label %bb.bf, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.hg = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.hf ; 3 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !106
  %i.hi = icmp eq i8 %i.hh, 45
  %i.hj = sub nuw i64 %.036158.i.i, %i.hf         ; 2 uses
  br i1 %i.hi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hk = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hg, i64 noundef %i.hj, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hk, label %.split55.i, label %.split55.thread.i

bb.bh:                                            ; preds = %bb.bf
  %i.hl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hg, i64 noundef %i.hj, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hl, label %.split55.i, label %.split55.thread.i

.split55.thread.i:                                ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split55.i:                                       ; preds = %bb.bh, %bb.bg
  %i.hm = load i16, ptr %5, align 2, !tbaa !128
  %i.hn = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIiEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.hn, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bi:                                            ; preds = %.lr.ph.i.i26.i
  %i.ho = add nuw i64 %.084132.i.i.i, 1           ; 3 uses
  %i.hp = zext nneg i8 %i.fj to i64               ; 2 uses
  %.nonneg.i.i.i33.i = sub nuw i64 -9223372036854775808, %i.hp
  %i.hq = udiv i64 %.nonneg.i.i.i33.i, 10
  %.neg.i.i.i34.i = sub nsw i64 0, %i.hq
  %.not.i.i35.i = icmp slt i64 %i.fg, %.neg.i.i.i34.i
  br i1 %.not.i.i35.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bj, !prof !125

bb.bj:                                            ; preds = %bb.bi
  %i.hr = mul nsw i64 %i.fg, 10
  %i.hs = sub nsw i64 %i.hr, %i.hp                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.ho, %.036158.i.i
  br i1 %.not105.i.i.i, label %.thread119.i.i.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ht = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.ho
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !106
  %i.hv = icmp ne i8 %i.hu, 95
  %or.cond.i.i.i = or i1 %3, %i.hv
  br i1 %or.cond.i.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = add i64 %.084132.i.i.i, 2               ; 3 uses
  %i.hx = icmp eq i64 %i.hw, %.036158.i.i
  br i1 %i.hx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hy = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.hw
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !106
  %i.ia = add i8 %i.hz, -48
  %i.ib = icmp ult i8 %i.ia, 10
  br i1 %i.ib, label %bb.bn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.7.i.i36.i = phi i64 [ %i.ho, %bb.bk ], [ %i.hw, %bb.bm ] ; 3 uses
  %i.ic = icmp ult i64 %.7.i.i36.i, %.036158.i.i
  br i1 %i.ic, label %.lr.ph.i.i26.i, label %.thread119.i.i.thread.i, !llvm.loop !646

.thread119.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i, %.thread117.i.i.i
  %.promoted11.i.i223.i.i = phi i16 [ %.promoted11.i.i225.i.i, %.thread117.i.i.i ], [ %.promoted11.i.i224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ], [ %.promoted11.i.i224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i219.i.i = phi i64 [ %.promoted.i.i221.i.i, %.thread117.i.i.i ], [ %.promoted.i.i220.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ], [ %.promoted.i.i220.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i30.i = phi i64 [ %.185.lcssa.i.i.i, %.thread117.i.i.i ], [ %i.gy, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i29.i ], [ %.036158.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.id = add i64 %i.fg, 2147483648
  %or.cond.i.i.i.i.i.i.i = icmp ult i64 %i.id, 4294967296
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread.i.i.i

.thread119.i.i.thread.i:                          ; preds = %bb.bn, %bb.bj
  %.8.i.i30.ph.i = phi i64 [ %.036158.i.i, %bb.bj ], [ %.7.i.i36.i, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ie = add i64 %i.hs, 2147483648
  %or.cond.i.i.i.i.i.i440.i = icmp ult i64 %i.ie, 4294967296
  br i1 %or.cond.i.i.i.i.i.i440.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread115.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %.thread119.i.i.thread.i, %.thread119.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i: ; preds = %.thread119.i.i.i
  %i.if = trunc nsw i64 %i.fg to i32              ; 2 uses
  store i32 %i.if, ptr %i.b, align 4, !tbaa !89
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ih = icmp sgt i64 %.promoted.i.i219.i.i, 10
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.ih, label %.lr.ph.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ij = phi i16 [ %i.im, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i223.i.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i ]
  %i.ik = phi i64 [ %i.il, %.lr.ph.i.i.i.i ], [ %.promoted.i.i219.i.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i ] ; 2 uses
  %i.il = udiv i64 %i.ik, 10                      ; 3 uses
  %i.im = add i16 %i.ij, -1                       ; 3 uses
  %i.in = icmp samesign ugt i64 %i.ik, 109
  br i1 %i.in, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.il, ptr %i.ig, align 8, !tbaa !138
  store i16 %i.im, ptr %i.ii, align 8, !tbaa !139
  br label %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i

_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i
  %i.io = phi i16 [ %i.im, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i223.i.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.il, %._crit_edge.i.i.i.i ], [ %.promoted.i.i219.i.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit.i.i.i.i ]
  %i.ip = icmp eq i16 %i.io, 1
  %i.iq = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i31.i = and i1 %i.ip, %i.iq
  br i1 %or.cond.i.i.i31.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread115.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread115.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i, %.thread119.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i
  %.8.i96271276.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i30.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i30.ph.i, %.thread119.i.i.thread.i ]
  %i.ir = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %i.fg, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %i.hs, %.thread119.i.i.thread.i ]
  store i64 %i.ir, ptr %6, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split54.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i
  %i.is = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.if, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pre15.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !89
  %i.it = sext i32 %.pre15.i.i.i.i to i64
  store i64 %i.it, ptr %6, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.is, label %.split54.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split54.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread115.i.i.i
  %.8.i96271275.i.i = phi i64 [ %.8.i.i30.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ], [ %.8.i96271276.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb1EEEbRT_.exit.thread115.i.i.i ]
  %i.iu = icmp ugt i64 %.8.i96271275.i.i, 1
  br i1 %i.iu, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bo:                                            ; preds = %.critedge.i11.i
  %.not39.i12.i = icmp ne i64 %.036158.i.i, 1
  %i.iv = icmp eq i8 %i.fc, 48
  %or.cond.i13.i = and i1 %.not39.i12.i, %i.iv
  br i1 %or.cond.i13.i, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %bb.bo
  %i.iw = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 1 ; 7 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !106 ; 2 uses
  %i.iy = add i8 %i.ix, -66                       ; 2 uses
  %i.iz = tail call i8 @llvm.fshl.i8(i8 %i.iy, i8 %i.iy, i8 7)
  switch i8 %i.iz, label %bb.cc [
    i8 27, label %bb.bq
    i8 11, label %bb.bq
    i8 16, label %bb.bv
    i8 0, label %bb.bv
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp
  %i.ja = add i64 %.036158.i.i, -1                ; 5 uses
  %i.jb = icmp ugt i64 %i.ja, 1
  br i1 %i.jb, label %.lr.ph.i50.i18.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i50.i18.preheader.i:                       ; preds = %bb.bq
  %i.jc = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !106 ; 3 uses
  %i.je = add i8 %i.jd, -65
  %or.cond.i.i51.i188.i = icmp ult i8 %i.je, 26
  %i.jf = or disjoint i8 %i.jd, 32
  %spec.select.i.i.i19189.i = select i1 %or.cond.i.i51.i188.i, i8 %i.jf, i8 %i.jd ; 3 uses
  %i.jg = add i8 %spec.select.i.i.i19189.i, -48
  %or.cond.i36.i.i20190.i = icmp ult i8 %i.jg, 10
  %i.jh = and i8 %spec.select.i.i.i19189.i, -33
  %i.ji = add i8 %i.jh, -65
  %i.jj = icmp ult i8 %i.ji, 6
  %i.jk = or i1 %or.cond.i36.i.i20190.i, %i.jj
  br i1 %i.jk, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i50.i18.i:                                 ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.1.i.i23.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !106 ; 3 uses
  %i.jn = add i8 %i.jm, -65
  %or.cond.i.i51.i.i = icmp ult i8 %i.jn, 26
  %i.jo = or disjoint i8 %i.jm, 32
  %spec.select.i.i.i19.i = select i1 %or.cond.i.i51.i.i, i8 %i.jo, i8 %i.jm ; 3 uses
  %i.jp = add i8 %spec.select.i.i.i19.i, -48
  %or.cond.i36.i.i20.i = icmp ult i8 %i.jp, 10
  %i.jq = and i8 %spec.select.i.i.i19.i, -33
  %i.jr = add i8 %i.jq, -65
  %i.js = icmp ult i8 %i.jr, 6
  %i.jt = or i1 %or.cond.i36.i.i20.i, %i.js
  br i1 %i.jt, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i50.i18.preheader.i, %.lr.ph.i50.i18.i
  %spec.select.i.i.i19192.i = phi i8 [ %spec.select.i.i.i19.i, %.lr.ph.i50.i18.i ], [ %spec.select.i.i.i19189.i, %.lr.ph.i50.i18.preheader.i ] ; 2 uses
  %i.ju = phi i64 [ %i.kn, %.lr.ph.i50.i18.i ], [ 0, %.lr.ph.i50.i18.preheader.i ] ; 2 uses
  %.02642.i.i191.i = phi i64 [ %.1.i.i23.i, %.lr.ph.i50.i18.i ], [ 1, %.lr.ph.i50.i18.preheader.i ] ; 2 uses
  %i.jv = icmp sgt i8 %spec.select.i.i.i19192.i, 96
  %.0.v.i.i21.i = select i1 %i.jv, i8 -87, i8 -48
  %.0.i.i22.i = add i8 %.0.v.i.i21.i, %spec.select.i.i.i19192.i
  %i.jw = add nuw i64 %.02642.i.i191.i, 1         ; 3 uses
  %.not.i52.i.i = icmp eq i64 %i.jw, %i.ja
  br i1 %.not.i52.i.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !106
  %i.jz = icmp eq i8 %i.jy, 95
  br i1 %i.jz, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.ka = add nuw i64 %.02642.i.i191.i, 2         ; 3 uses
  %i.kb = icmp eq i64 %i.ka, %i.ja
  br i1 %i.kb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ka
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !106 ; 2 uses
  %i.ke = add i8 %i.kd, -48
  %or.cond.i37.i.i24.i = icmp ult i8 %i.ke, 10
  %i.kf = and i8 %i.kd, -33
  %i.kg = add i8 %i.kf, -65
  %i.kh = icmp ult i8 %i.kg, 6
  %i.ki = or i1 %or.cond.i37.i.i24.i, %i.kh
  br i1 %i.ki, label %bb.bu, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bu:                                            ; preds = %bb.bt, %bb.br, %.lr.ph.i
  %.1.i.i23.i = phi i64 [ %i.ka, %bb.bt ], [ %i.jw, %bb.br ], [ %i.ja, %.lr.ph.i ] ; 3 uses
  %i.kj = zext i8 %.0.i.i22.i to i64              ; 2 uses
  %i.kk = lshr i64 %i.kj, 4
  %i.kl = xor i64 %i.kk, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.ju, %i.kl
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bu
  %i.km = shl nsw i64 %i.ju, 4
  %i.kn = add nsw i64 %i.km, %i.kj                ; 3 uses
  %i.ko = icmp ult i64 %.1.i.i23.i, %i.ja
  br i1 %i.ko, label %.lr.ph.i50.i18.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i
  %i.kp = add i64 %i.kn, 2147483648
  %or.cond.i.i.i.i.i41.i.i = icmp ult i64 %i.kp, 4294967296
  br i1 %or.cond.i.i.i.i.i41.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bv:                                            ; preds = %bb.bp, %bb.bp
  %i.kq = add i64 %.036158.i.i, -1                ; 5 uses
  %i.kr = icmp ugt i64 %i.kq, 1
  br i1 %i.kr, label %.lr.ph.i68.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i68.i.i:                                   ; preds = %bb.bv, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i
  %i.ks = phi i64 [ %i.lg, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.bv ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i71.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.bv ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.02436.i.i.i
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !106
  switch i8 %i.ku, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.bx
    i8 49, label %bb.bw
  ]

bb.bw:                                            ; preds = %.lr.ph.i68.i.i
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i68.i.i
  %.0.i69.i.i = phi i64 [ 1, %bb.bw ], [ 0, %.lr.ph.i68.i.i ]
  %i.kv = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i70.i.i = icmp eq i64 %i.kv, %i.kq
  br i1 %.not.i70.i.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !106
  %i.ky = icmp eq i8 %i.kx, 95
  br i1 %i.ky, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.kz = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.la = icmp eq i64 %i.kz, %i.kq
  br i1 %i.la, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !106
  %i.ld = and i8 %i.lc, -2
  %switch.i.i17.i = icmp eq i8 %i.ld, 48
  br i1 %switch.i.i17.i, label %bb.cb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bx
  %.1.i71.i.i = phi i64 [ %i.kq, %bb.bx ], [ %i.kz, %bb.ca ], [ %i.kv, %bb.by ] ; 2 uses
  %i.le = icmp slt i64 %i.ks, 4611686018427387904
  br i1 %i.le, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.cb
  %i.lf = shl nsw i64 %i.ks, 1                    ; 2 uses
  %i.lg = or disjoint i64 %.0.i69.i.i, %i.lf      ; 2 uses
  %i.lh = icmp ult i64 %.1.i71.i.i, %i.kq
  br i1 %i.lh, label %.lr.ph.i68.i.i, label %._crit_edge.i54.i.i

._crit_edge.i54.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i
  %i.li = add i64 %i.lf, 2147483648
  %or.cond.i.i.i.i.i55.i.i = icmp ult i64 %i.li, 4294967296
  br i1 %or.cond.i.i.i.i.i55.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cc:                                            ; preds = %bb.bp
  %i.lj = add i8 %i.ix, -48
  %i.lk = icmp ult i8 %i.lj, 10
  %or.cond106.i.i = and i1 %3, %i.lk
  br i1 %or.cond106.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

bb.cd:                                            ; preds = %bb.bo
  %i.ll = icmp eq i8 %i.fc, 43                    ; 2 uses
  %brmerge.not.i.i14.i = and i1 %3, %i.ll
  %.mux.i.i15.i = zext i1 %i.ll to i64
  br i1 %brmerge.not.i.i14.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

.preheader.i.i16.i:                               ; preds = %bb.cd, %bb.cc
  %.mux.i101.i.i = phi i64 [ %.mux.i.i15.i, %bb.cd ], [ 0, %bb.cc ] ; 5 uses
  %i.lm = icmp ugt i64 %.036158.i.i, %.mux.i101.i.i
  br i1 %i.lm, label %.lr.ph.i85.i.i, label %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i

_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i: ; preds = %.preheader.i.i16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIiEELb0EEEbRT_.exit.thread121.i.i.i

.lr.ph.i85.i.i:                                   ; preds = %.preheader.i.i16.i, %bb.cz
  %i.ln = phi i64 [ %i.oa, %bb.cz ], [ 0, %.preheader.i.i16.i ] ; 6 uses
  %.0138.i.i.i = phi i64 [ %.7.i93.i.i, %bb.cz ], [ %.mux.i101.i.i, %.preheader.i.i16.i ] ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.0138.i.i.i
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !106 ; 3 uses
  %i.lq = add i8 %i.lp, -48                       ; 2 uses
  %i.lr = icmp ult i8 %i.lq, 10
  br i1 %i.lr, label %bb.cu, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i85.i.i
  store i64 %i.ln, ptr %6, align 8
  %i.ls = icmp eq i8 %i.lp, 46
  br i1 %i.ls, label %bb.cf, label %.thread117.i86.i.i

bb.cf:                                            ; preds = %bb.ce
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lt = icmp ugt i64 %.0138.i.i.i, %.mux.i101.i.i ; 2 uses
  %i.lu = add nuw i64 %.0138.i.i.i, 1             ; 5 uses
  %i.lv = icmp ult i64 %i.lu, %.036158.i.i
  br i1 %i.lv, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cn, %.lr.ph140.i.i.i
  %i.ly = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mn, %bb.cn ] ; 2 uses
  %i.lz = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mo, %bb.cn ] ; 2 uses
  %i.ma = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mp, %bb.cn ] ; 3 uses
  %i.mb = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mq, %bb.cn ] ; 4 uses
  %.1139.i.i.i = phi i64 [ %i.lu, %.lr.ph140.i.i.i ], [ %.2.i90.i.i, %bb.cn ] ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %.1139.i.i.i
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !106 ; 2 uses
  %i.me = add i8 %i.md, -48                       ; 2 uses
  %i.mf = icmp ult i8 %i.me, 10
  br i1 %i.mf, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.mg = zext nneg i8 %i.me to i64               ; 2 uses
  %i.mh = xor i64 %i.mg, 9223372036854775806
  %i.mi = udiv i64 %i.mh, 10
  %i.mj = icmp sgt i64 %i.mb, %i.mi
  br i1 %i.mj, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cj, !prof !125

bb.cj:                                            ; preds = %bb.ci
  %i.mk = add i16 %i.ma, 1                        ; 2 uses
  %i.ml = mul nsw i64 %i.mb, 10
  %i.mm = add nsw i64 %i.ml, %i.mg                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.cj, %bb.ci
  %i.mn = phi i64 [ %i.mm, %bb.cj ], [ %i.ly, %bb.ci ] ; 2 uses
  %i.mo = phi i16 [ %i.mk, %bb.cj ], [ %i.lz, %bb.ci ] ; 2 uses
  %i.mp = phi i16 [ %i.mk, %bb.cj ], [ %i.ma, %bb.ci ] ; 2 uses
  %i.mq = phi i64 [ %i.mm, %bb.cj ], [ %i.mb, %bb.ci ] ; 2 uses
  %i.mr = add nuw i64 %.1139.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.mr, %.036158.i.i
  br i1 %.not107.i.i.i, label %.thread123.i.i.loopexit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !106
  %i.mu = icmp eq i8 %i.mt, 95
  br i1 %i.mu, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.mv = add i64 %.1139.i.i.i, 2                 ; 3 uses
  %i.mw = icmp eq i64 %i.mv, %.036158.i.i
  br i1 %i.mw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mx = getelementptr inbounds nuw i8, ptr %.035159.i.i, i64 %i.mv
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !106
  %i.mz = add i8 %i.my, -48
  %i.na = icmp ult i8 %i.mz, 10
  br i1 %i.na, label %bb.cn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %.2.i90.i.i = phi i64 [ %i.mv, %bb.cm ], [ %i.mr, %bb.ck ] ; 3 uses
  %i.nb = icmp ult i64 %.2.i90.i.i, %.036158.i.i
  br i1 %i.nb, label %bb.ch, label %.thread123.i.i.loopexit.i, !llvm.loop !647

bb.co:                                            ; preds = %bb.ch
  store i16 %i.lz, ptr %i.lx, align 8
  store i64 %i.ly, ptr %i.lw, align 8
  %i.nc = icmp ugt i64 %.1139.i.i.i, %i.lu
  %or.cond110.i.i.i = or i1 %i.lt, %i.nc
  br i1 %or.cond110.i.i.i, label %.thread117.i86.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread123.i.i.loopexit.i:                        ; preds = %bb.cn, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i90.i.i, %bb.cn ], [ %.036158.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.mo, ptr %i.lx, align 8
  store i64 %i.mn, ptr %i.lw, align 8
  br label %.thread123.i.i.i

.thread123.i.i.i:                                 ; preds = %.thread123.i.i.loopexit.i, %bb.cg
  %.promoted11.i.i77217.i.i = phi i16 [ 0, %bb.cg ], [ %i.mp, %.thread123.i.i.loopexit.i ]
  %.promoted.i.i76213.i.i = phi i64 [ 0, %bb.cg ], [ %i.mq, %.thread123.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.lu, %bb.cg ], [ %.1.lcssa.i.i.ph.i, %.thread123.i.i.loopexit.i ] ; 2 uses
  %i.nd = icmp ugt i64 %.1.lcssa.i.i.i, %i.lu
  %or.cond110124.i.i.i = or i1 %i.lt, %i.nd
  br i1 %or.cond110124.i.i.i, label %.thread125.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i86.i.i:                               ; preds = %bb.co, %bb.ce
  %.promoted11.i.i77216.i.i = phi i16 [ 0, %bb.ce ], [ %i.ma, %bb.co ] ; 2 uses
  %.promoted.i.i76212.i.i = phi i64 [ 0, %bb.ce ], [ %i.mb, %bb.co ] ; 2 uses
  %i.ne = phi i8 [ %i.lp, %bb.ce ], [ %i.md, %bb.co ]
  %.4.i87.i.i = phi i64 [ %.0138.i.i.i, %bb.ce ], [ %.1139.i.i.i, %bb.co ] ; 3 uses
  switch i8 %i.ne, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIiEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 101, label %bb.cp
    i8 69, label %bb.cp
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i: ; preds = %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb7TryCast9OperationINS_8string_tElEEbT_RT0_b:bb.a
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerDecimalCastData.158", align 8 ; 22 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  %cond104.i.i = icmp eq i32 %i.d, 0
  br i1 %cond104.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.035106.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 15 uses
  %.036105.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 26 uses
  %i.i = load i8, ptr %.035106.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %bb.o [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 1
  %i.k = add nsw i64 %.036105.i.i, -1             ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %.lr.ph.i.i, !llvm.loop !650

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %.036105.i.i, 1
  br i1 %.not.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  br i1 %3, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.0.9.i = phi i64 [ %i.t, %bb.e ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %.06093.us.i.i.i = phi i64 [ %i.r, %bb.e ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.06093.us.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !106   ; 2 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.d, label %.split.us.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.p = zext nneg i8 %i.n to i64                 ; 2 uses
  %.nonneg.i.us.i.i.i = sub nuw i64 -9223372036854775808, %i.p
  %i.q = udiv i64 %.nonneg.i.us.i.i.i, 10
  %.neg.i.us.i.i.i = sub nsw i64 0, %i.q
  %.not.us.i.i.i = icmp slt i64 %.sroa.0.9.i, %.neg.i.us.i.i.i
  br i1 %.not.us.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.e, !prof !125

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i64 %.06093.us.i.i.i, 1          ; 2 uses
  %i.s = mul nsw i64 %.sroa.0.9.i, 10
  %i.t = sub nsw i64 %i.s, %i.p                   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %.036105.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !651

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.0.6.i = phi i64 [ %i.ar, %bb.n ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %.06093.i.i.i = phi i64 [ %.7.i.i.i, %bb.n ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.06093.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !106   ; 2 uses
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.0.7.i = phi i64 [ %.sroa.0.9.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.6.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %.pre.i.i.i = phi i8 [ %i.m, %.lr.ph.split.us.i.i.i ], [ %i.v, %.lr.ph.split.i.i.i ] ; 2 uses
  %.us-phi94.i.i.i = phi i64 [ %.06093.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.06093.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.y = icmp eq i8 %.pre.i.i.i, 46
  br i1 %i.y, label %bb.f, label %.thread80.i.i.i

bb.f:                                             ; preds = %.split.us.i.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %.us-phi94.i.i.i, 2         ; 2 uses
  %i.aa = add nuw i64 %.us-phi94.i.i.i, 1         ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %.036105.i.i
  br i1 %i.ab, label %bb.h, label %.thread82.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !106 ; 2 uses
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  %brmerge.i.i.i = or i1 %i.z, %i.af
  br i1 %brmerge.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %.thread80.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.g
  br i1 %i.z, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43.i

.thread80.i.i.i:                                  ; preds = %bb.h, %.split.us.i.i.i
  %i.ag = phi i8 [ %i.ad, %bb.h ], [ %.pre.i.i.i, %.split.us.i.i.i ]
  %.4.i.i.i = phi i64 [ %i.aa, %bb.h ], [ %.us-phi94.i.i.i, %.split.us.i.i.i ]
  switch i8 %i.ag, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i
  %i.ah = add i64 %.4.i.i.i, 1                    ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %.036105.i.i
  br i1 %i.ai, label %.lr.ph96.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i

.lr.ph96.i.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  %i.aj = phi i64 [ %i.am, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.ah, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !106
  switch i8 %i.al, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i: ; preds = %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i
  %i.am = add nuw i64 %i.aj, 1                    ; 2 uses
  %exitcond115.not.i.i.i = icmp eq i64 %i.am, %.036105.i.i
  br i1 %exitcond115.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph96.i.i.i, !llvm.loop !652

bb.i:                                             ; preds = %.lr.ph.split.i.i.i
  %i.an = add nuw i64 %.06093.i.i.i, 1            ; 3 uses
  %i.ao = zext nneg i8 %i.w to i64                ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i64 -9223372036854775808, %i.ao
  %i.ap = udiv i64 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i64 0, %i.ap
  %.not.i.i.i = icmp slt i64 %.sroa.0.6.i, %.neg.i.i.i.i
  br i1 %.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.j, !prof !125

bb.j:                                             ; preds = %bb.i
  %i.aq = mul nsw i64 %.sroa.0.6.i, 10
  %i.ar = sub nsw i64 %i.aq, %i.ao                ; 3 uses
  %.not76.i.i.i = icmp eq i64 %i.an, %.036105.i.i
  br i1 %.not76.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.an
  %i.at = load i8, ptr %i.as, align 1, !tbaa !106
  %.not98.i.i.i = icmp eq i8 %i.at, 95
  br i1 %.not98.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %.06093.i.i.i, 2                ; 3 uses
  %i.av = icmp eq i64 %i.au, %.036105.i.i
  br i1 %i.av, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !106
  %i.ay = add i8 %i.ax, -48
  %i.az = icmp ult i8 %i.ay, 10
  br i1 %i.az, label %bb.n, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.7.i.i.i = phi i64 [ %i.an, %bb.k ], [ %i.au, %bb.m ] ; 3 uses
  %i.ba = icmp ult i64 %.7.i.i.i, %.036105.i.i
  br i1 %i.ba, label %.lr.ph.split.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, !llvm.loop !651

bb.o:                                             ; preds = %.lr.ph.i.i
  %.not39.i.i = icmp ne i64 %.036105.i.i, 1
  %i.bb = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not39.i.i, %i.bb
  br i1 %or.cond.i.i, label %bb.p, label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 1 ; 7 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !106 ; 2 uses
  %i.be = add i8 %i.bd, -66                       ; 2 uses
  %i.bf = tail call i8 @llvm.fshl.i8(i8 %i.be, i8 %i.be, i8 7)
  switch i8 %i.bf, label %bb.ad [
    i8 27, label %bb.q
    i8 11, label %bb.q
    i8 16, label %bb.w
    i8 0, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bg = add i64 %.036105.i.i, -1                ; 5 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.i41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

.lr.ph.i41.i.i:                                   ; preds = %bb.q, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i
  %.02640.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.q ] ; 3 uses
  %i.bi = phi i64 [ %i.ck, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02640.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !106 ; 3 uses
  %i.bl = add i8 %i.bk, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bl, 26
  %i.bm = or disjoint i8 %i.bk, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bm, i8 %i.bk ; 4 uses
  %i.bn = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.bn, 10
  %i.bo = and i8 %spec.select.i.i.i.i, -33
  %i.bp = add i8 %i.bo, -65
  %i.bq = icmp ult i8 %i.bp, 6
  %i.br = or i1 %or.cond.i36.i.i.i, %i.bq
  br i1 %i.br, label %bb.r, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

bb.r:                                             ; preds = %.lr.ph.i41.i.i
  %i.bs = icmp sgt i8 %spec.select.i.i.i.i, 96
  %.0.v.i.i.i = select i1 %i.bs, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i.i
  %i.bt = add nuw i64 %.02640.i.i.i, 1            ; 3 uses
  %.not.i42.i.i = icmp eq i64 %i.bt, %i.bg
  br i1 %.not.i42.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !106
  %i.bw = icmp eq i8 %i.bv, 95
  br i1 %i.bw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bx = add nuw i64 %.02640.i.i.i, 2            ; 3 uses
  %i.by = icmp eq i64 %i.bx, %i.bg
  br i1 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !106 ; 2 uses
  %i.cb = add i8 %i.ca, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.cb, 10
  %i.cc = and i8 %i.ca, -33
  %i.cd = add i8 %i.cc, -65
  %i.ce = icmp ult i8 %i.cd, 6
  %i.cf = or i1 %or.cond.i37.i.i.i, %i.ce
  br i1 %i.cf, label %bb.v, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.1.i.i.i = phi i64 [ %i.bx, %bb.u ], [ %i.bt, %bb.s ], [ %i.bg, %bb.r ] ; 2 uses
  %i.cg = zext i8 %.0.i.i.i to i64                ; 2 uses
  %i.ch = lshr i64 %i.cg, 4
  %i.ci = xor i64 %i.ch, 576460752303423487
  %.not38.i.i.i = icmp sgt i64 %i.bi, %i.ci
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.v
  %i.cj = shl nsw i64 %i.bi, 4
  %i.ck = add nsw i64 %i.cj, %i.cg                ; 2 uses
  %i.cl = icmp ult i64 %.1.i.i.i, %i.bg
  br i1 %i.cl, label %.lr.ph.i41.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43.i

bb.w:                                             ; preds = %bb.p, %bb.p
  %i.cm = add i64 %.036105.i.i, -1                ; 5 uses
  %i.cn = icmp ugt i64 %i.cm, 1
  br i1 %i.cn, label %.lr.ph.i45.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

.lr.ph.i45.i.i:                                   ; preds = %bb.w, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i
  %.02435.i.i.i = phi i64 [ %.1.i48.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.w ] ; 3 uses
  %i.co = phi i64 [ %i.dc, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.w ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.02435.i.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !106
  switch i8 %i.cq, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i [
    i8 48, label %bb.y
    i8 49, label %bb.x
  ]

bb.x:                                             ; preds = %.lr.ph.i45.i.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i45.i.i
  %.0.i46.i.i = phi i64 [ 1, %bb.x ], [ 0, %.lr.ph.i45.i.i ]
  %i.cr = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i47.i.i = icmp eq i64 %i.cr, %i.cm
  br i1 %.not.i47.i.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !106
  %i.cu = icmp eq i8 %i.ct, 95
  br i1 %i.cu, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cv = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.cw = icmp eq i64 %i.cv, %i.cm
  br i1 %i.cw, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !106
  %i.cz = and i8 %i.cy, -2
  %switch.i.i.i = icmp eq i8 %i.cz, 48
  br i1 %switch.i.i.i, label %bb.ac, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %.1.i48.i.i = phi i64 [ %i.cm, %bb.y ], [ %i.cv, %bb.ab ], [ %i.cr, %bb.z ] ; 2 uses
  %i.da = icmp slt i64 %i.co, 4611686018427387904
  br i1 %i.da, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.ac
  %i.db = shl nsw i64 %i.co, 1
  %i.dc = or disjoint i64 %.0.i46.i.i, %i.db      ; 2 uses
  %i.dd = icmp ult i64 %.1.i48.i.i, %i.cm
  br i1 %i.dd, label %.lr.ph.i45.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43.i

bb.ad:                                            ; preds = %bb.p
  %i.de = add i8 %i.bd, -48
  %i.df = icmp ult i8 %i.de, 10
  %or.cond67.i.i = and i1 %3, %i.df
  br i1 %or.cond67.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %.preheader.i.i.i

bb.ae:                                            ; preds = %bb.o
  %i.dg = icmp eq i8 %i.i, 43                     ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.dg
  %.mux.i.i.i = zext i1 %i.dg to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ae, %bb.ad
  %.mux.i65.i.i = phi i64 [ %.mux.i.i.i, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %i.dh = icmp ugt i64 %.036105.i.i, %.mux.i65.i.i
  br i1 %i.dh, label %.lr.ph.i50.i.i, label %.thread90.i.i.i

.lr.ph.i50.i.i:                                   ; preds = %.preheader.i.i.i
  br i1 %3, label %.lr.ph.split.us.i60.i.i, label %.lr.ph.split.i52.i.i

.lr.ph.split.us.i60.i.i:                          ; preds = %.lr.ph.i50.i.i, %bb.ag
  %.sroa.0.3.i = phi i64 [ %i.dr, %bb.ag ], [ 0, %.lr.ph.i50.i.i ] ; 3 uses
  %.099.us.i.i.i = phi i64 [ %i.dp, %bb.ag ], [ %.mux.i65.i.i, %.lr.ph.i50.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.099.us.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !106 ; 2 uses
  %i.dk = add i8 %i.dj, -48                       ; 2 uses
  %i.dl = icmp ult i8 %i.dk, 10
  br i1 %i.dl, label %bb.af, label %.split.us.i53.i.i

bb.af:                                            ; preds = %.lr.ph.split.us.i60.i.i
  %i.dm = zext nneg i8 %i.dk to i64               ; 2 uses
  %i.dn = xor i64 %i.dm, 9223372036854775806
  %i.do = udiv i64 %i.dn, 10
  %.not.us.i61.i.i = icmp sgt i64 %.sroa.0.3.i, %i.do
  br i1 %.not.us.i61.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.ag, !prof !125

bb.ag:                                            ; preds = %bb.af
  %i.dp = add i64 %.099.us.i.i.i, 1               ; 2 uses
  %i.dq = mul nsw i64 %.sroa.0.3.i, 10
  %i.dr = add nsw i64 %i.dq, %i.dm                ; 2 uses
  %exitcond.not.i62.i.i = icmp eq i64 %i.dp, %.036105.i.i
  br i1 %exitcond.not.i62.i.i, label %.thread90.i.i.i, label %.lr.ph.split.us.i60.i.i, !llvm.loop !653

.lr.ph.split.i52.i.i:                             ; preds = %.lr.ph.i50.i.i, %bb.ap
  %.sroa.0.1.i = phi i64 [ %i.eq, %bb.ap ], [ 0, %.lr.ph.i50.i.i ] ; 3 uses
  %.099.i.i.i = phi i64 [ %.7.i59.i.i, %bb.ap ], [ %.mux.i65.i.i, %.lr.ph.i50.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %.099.i.i.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !106 ; 2 uses
  %i.du = add i8 %i.dt, -48                       ; 2 uses
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %bb.ak, label %.split.us.i53.i.i

.split.us.i53.i.i:                                ; preds = %.lr.ph.split.i52.i.i, %.lr.ph.split.us.i60.i.i
  %.sroa.0.2.i = phi i64 [ %.sroa.0.3.i, %.lr.ph.split.us.i60.i.i ], [ %.sroa.0.1.i, %.lr.ph.split.i52.i.i ] ; 3 uses
  %.pre.i54.i.i = phi i8 [ %i.dj, %.lr.ph.split.us.i60.i.i ], [ %i.dt, %.lr.ph.split.i52.i.i ] ; 2 uses
  %.us-phi100.i.i.i = phi i64 [ %.099.us.i.i.i, %.lr.ph.split.us.i60.i.i ], [ %.099.i.i.i, %.lr.ph.split.i52.i.i ] ; 3 uses
  %i.dw = icmp eq i8 %.pre.i54.i.i, 46
  br i1 %i.dw, label %bb.ah, label %.thread86.i.i.i

bb.ah:                                            ; preds = %.split.us.i53.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = icmp ule i64 %.us-phi100.i.i.i, %.mux.i65.i.i ; 2 uses
  %i.dy = add nuw i64 %.us-phi100.i.i.i, 1        ; 4 uses
  %i.dz = icmp ult i64 %i.dy, %.036105.i.i
  br i1 %i.dz, label %bb.aj, label %.thread88.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !106 ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  %brmerge.i57.i.i = or i1 %i.dx, %i.ed
  br i1 %brmerge.i57.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %.thread86.i.i.i

.thread88.i.i.i:                                  ; preds = %bb.ai
  br i1 %i.dx, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %.thread90.i.i.i

.thread86.i.i.i:                                  ; preds = %bb.aj, %.split.us.i53.i.i
  %i.ee = phi i8 [ %i.eb, %bb.aj ], [ %.pre.i54.i.i, %.split.us.i53.i.i ]
  %.4.i55.i.i = phi i64 [ %i.dy, %bb.aj ], [ %.us-phi100.i.i.i, %.split.us.i53.i.i ]
  switch i8 %i.ee, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i: ; preds = %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i
  %i.ef = add i64 %.4.i55.i.i, 1                  ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %.036105.i.i
  br i1 %i.eg, label %.lr.ph102.i.i.i, label %.thread90.i.i.i

.lr.ph102.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  %i.eh = phi i64 [ %i.ek, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.ef, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !106
  switch i8 %i.ej, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i: ; preds = %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i
  %i.ek = add nuw i64 %i.eh, 1                    ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %i.ek, %.036105.i.i
  br i1 %exitcond121.not.i.i.i, label %.thread90.i.i.i, label %.lr.ph102.i.i.i, !llvm.loop !654

bb.ak:                                            ; preds = %.lr.ph.split.i52.i.i
  %i.el = add nuw i64 %.099.i.i.i, 1              ; 3 uses
  %i.em = zext nneg i8 %i.du to i64               ; 2 uses
  %i.en = xor i64 %i.em, 9223372036854775806
  %i.eo = udiv i64 %i.en, 10
  %.not.i58.i.i = icmp sgt i64 %.sroa.0.1.i, %i.eo
  br i1 %.not.i58.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.al, !prof !125

bb.al:                                            ; preds = %bb.ak
  %i.ep = mul nsw i64 %.sroa.0.1.i, 10
  %i.eq = add nsw i64 %i.ep, %i.em                ; 3 uses
  %.not80.i.i.i = icmp eq i64 %i.el, %.036105.i.i
  br i1 %.not80.i.i.i, label %.thread90.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.el
  %i.es = load i8, ptr %i.er, align 1, !tbaa !106
  %.not104.i.i.i = icmp eq i8 %i.es, 95
  br i1 %.not104.i.i.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.et = add i64 %.099.i.i.i, 2                  ; 3 uses
  %i.eu = icmp eq i64 %i.et, %.036105.i.i
  br i1 %i.eu, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ev = getelementptr inbounds nuw i8, ptr %.035106.i.i, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !106
  %i.ex = add i8 %i.ew, -48
  %i.ey = icmp ult i8 %i.ex, 10
  br i1 %i.ey, label %bb.ap, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.7.i59.i.i = phi i64 [ %i.el, %bb.am ], [ %i.et, %bb.ao ] ; 3 uses
  %i.ez = icmp ult i64 %.7.i59.i.i, %.036105.i.i
  br i1 %i.ez, label %.lr.ph.split.i52.i.i, label %.thread90.i.i.i, !llvm.loop !653

.thread90.i.i.i:                                  ; preds = %bb.ap, %bb.al, %bb.ag, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i, %.thread88.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i = phi i64 [ %i.dr, %bb.ag ], [ 0, %.preheader.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ], [ %.sroa.0.2.i, %.thread88.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.eq, %bb.al ], [ %i.eq, %bb.ap ]
  %.8.i49.i.i = phi i64 [ %.036105.i.i, %bb.ag ], [ 1, %.preheader.i.i.i ], [ %i.ef, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i56.i.i ], [ %i.dy, %.thread88.i.i.i ], [ %.036105.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %.036105.i.i, %bb.al ], [ %.7.i59.i.i, %bb.ap ]
  %i.fa = icmp ugt i64 %.8.i49.i.i, %.mux.i65.i.i
  br i1 %i.fa, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %bb.n, %bb.j, %bb.e, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  %.sroa.0.8.i = phi i64 [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %i.t, %bb.e ], [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.ar, %bb.j ], [ %i.ar, %bb.n ]
  %.8.i.i.i = phi i64 [ %i.ah, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.036105.i.i, %bb.e ], [ %.036105.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %.036105.i.i, %bb.j ], [ %.7.i.i.i, %bb.n ]
  %i.fb = icmp ugt i64 %.8.i.i.i, 1
  br i1 %i.fb, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread43.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread82.i.i.i
  %.sroa.0.1042.i = phi i64 [ %.sroa.0.7.i, %.thread82.i.i.i ], [ %.sroa.0.8.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i ], [ %.sroa.0.0.i, %.thread90.i.i.i ], [ %i.ck, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i ], [ %i.dc, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i ]
  store i64 %.sroa.0.1042.i, ptr %2, align 8, !tbaa !97
  br label %_ZN6duckdbL20TrySimpleIntegerCastIlLb1EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i: ; preds = %bb.b, %bb.m, %bb.l, %bb.i, %bb.d, %.lr.ph96.i.i.i, %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i45.i.i, %bb.v, %bb.u, %bb.t, %.lr.ph.i41.i.i, %bb.ao, %bb.an, %bb.ak, %bb.af, %.lr.ph102.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread86.i.i.i, %.thread88.i.i.i, %bb.aj, %bb.ah, %bb.ae, %bb.ad, %bb.w, %bb.q, %.thread80.i.i.i, %.thread82.i.i.i, %bb.h, %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.aq, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i
  %.035143.i.i = phi ptr [ %i.fd, %bb.aq ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i ] ; 20 uses
  %.036142.i.i = phi i64 [ %i.fe, %bb.aq ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIlEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread46.i ] ; 34 uses
  %i.fc = load i8, ptr %.035143.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.fc, label %.critedge.i11.i [
    i8 32, label %bb.aq
    i8 12, label %bb.aq
    i8 11, label %bb.aq
    i8 10, label %bb.aq
    i8 9, label %bb.aq
    i8 13, label %bb.aq
  ]

bb.aq:                                            ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 1
  %i.fe = add i64 %.036142.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.fe, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !655

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ff = icmp eq i8 %i.fc, 45
  br i1 %i.ff, label %bb.ar, label %bb.bo

bb.ar:                                            ; preds = %.critedge.i11.i
  %.not.i24.i = icmp eq i64 %.036142.i.i, 1
  br i1 %.not.i24.i, label %._crit_edge15.i.i.thread.i.i, label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %bb.ar, %bb.bn
  %i.fg = phi i64 [ %i.hs, %bb.bn ], [ 0, %bb.ar ] ; 6 uses
  %.084130.i.i.i = phi i64 [ %.7.i.i35.i, %bb.bn ], [ 1, %bb.ar ] ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %.084130.i.i.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !106 ; 3 uses
  %i.fj = add i8 %i.fi, -48                       ; 2 uses
  %i.fk = icmp ult i8 %i.fj, 10
  br i1 %i.fk, label %bb.bi, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i25.i
  store i64 %i.fg, ptr %6, align 8
  %i.fl = icmp eq i8 %i.fi, 46
  br i1 %i.fl, label %bb.at, label %.thread111.i.i.i

bb.at:                                            ; preds = %bb.as
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fm = icmp ugt i64 %.084130.i.i.i, 1          ; 2 uses
  %i.fn = add nuw i64 %.084130.i.i.i, 1           ; 5 uses
  %i.fo = icmp ult i64 %i.fn, %.036142.i.i
  br i1 %i.fo, label %.lr.ph132.i.i.i, label %.thread115.i.i.i

.lr.ph132.i.i.i:                                  ; preds = %bb.au
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %.lr.ph132.i.i.i
  %i.fr = phi i64 [ 0, %.lr.ph132.i.i.i ], [ %i.gg, %bb.bb ] ; 2 uses
  %i.fs = phi i16 [ 0, %.lr.ph132.i.i.i ], [ %i.gh, %bb.bb ] ; 2 uses
  %i.ft = phi i16 [ 0, %.lr.ph132.i.i.i ], [ %i.gi, %bb.bb ] ; 3 uses
  %i.fu = phi i64 [ 0, %.lr.ph132.i.i.i ], [ %i.gj, %bb.bb ] ; 4 uses
  %.185131.i.i.i = phi i64 [ %i.fn, %.lr.ph132.i.i.i ], [ %.2.i.i.i, %bb.bb ] ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %.185131.i.i.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !106 ; 2 uses
  %i.fx = add i8 %i.fw, -48                       ; 2 uses
  %i.fy = icmp ult i8 %i.fx, 10
  br i1 %i.fy, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.fz = zext nneg i8 %i.fx to i64               ; 2 uses
  %i.ga = xor i64 %i.fz, 9223372036854775806
  %i.gb = udiv i64 %i.ga, 10
  %i.gc = icmp sgt i64 %i.fu, %i.gb
  br i1 %i.gc, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.ax, !prof !125

bb.ax:                                            ; preds = %bb.aw
  %i.gd = add i16 %i.ft, 1                        ; 2 uses
  %i.ge = mul nsw i64 %i.fu, 10
  %i.gf = add nsw i64 %i.ge, %i.fz                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.gg = phi i64 [ %i.gf, %bb.ax ], [ %i.fr, %bb.aw ] ; 2 uses
  %i.gh = phi i16 [ %i.gd, %bb.ax ], [ %i.fs, %bb.aw ] ; 2 uses
  %i.gi = phi i16 [ %i.gd, %bb.ax ], [ %i.ft, %bb.aw ] ; 2 uses
  %i.gj = phi i64 [ %i.gf, %bb.ax ], [ %i.fu, %bb.aw ] ; 2 uses
  %i.gk = add nuw i64 %.185131.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.gk, %.036142.i.i
  br i1 %.not103.i.i.i, label %.thread115.i.i.loopexit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !106
  %i.gn = icmp eq i8 %i.gm, 95
  br i1 %i.gn, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.go = add i64 %.185131.i.i.i, 2               ; 3 uses
  %i.gp = icmp eq i64 %i.go, %.036142.i.i
  br i1 %i.gp, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !106
  %i.gs = add i8 %i.gr, -48
  %i.gt = icmp ult i8 %i.gs, 10
  br i1 %i.gt, label %bb.bb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %.2.i.i.i = phi i64 [ %i.go, %bb.ba ], [ %i.gk, %bb.ay ] ; 3 uses
  %i.gu = icmp ult i64 %.2.i.i.i, %.036142.i.i
  br i1 %i.gu, label %bb.av, label %.thread115.i.i.loopexit.i, !llvm.loop !656

bb.bc:                                            ; preds = %bb.av
  store i16 %i.fs, ptr %i.fq, align 8
  store i64 %i.fr, ptr %i.fp, align 8
  %i.gv = icmp ugt i64 %.185131.i.i.i, %i.fn
  %or.cond106.i.i.i = or i1 %i.fm, %i.gv
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread115.i.i.loopexit.i:                        ; preds = %bb.bb, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.bb ], [ %.036142.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.gh, ptr %i.fq, align 8
  store i64 %i.gg, ptr %i.fp, align 8
  br label %.thread115.i.i.i

.thread115.i.i.i:                                 ; preds = %.thread115.i.i.loopexit.i, %bb.au
  %.promoted11.i.i203.i.i = phi i16 [ 0, %bb.au ], [ %i.gi, %.thread115.i.i.loopexit.i ]
  %.promoted.i.i200.i.i = phi i64 [ 0, %bb.au ], [ %i.gj, %.thread115.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.fn, %bb.au ], [ %.185.lcssa.i.i.ph.i, %.thread115.i.i.loopexit.i ] ; 2 uses
  %i.gw = icmp ugt i64 %.185.lcssa.i.i.i, %i.fn
  %or.cond106116.i.i.i = or i1 %i.fm, %i.gw
  br i1 %or.cond106116.i.i.i, label %.thread117.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.bc, %bb.as
  %.promoted11.i.i202.i.i = phi i16 [ 0, %bb.as ], [ %i.ft, %bb.bc ] ; 2 uses
  %.promoted.i.i199.i.i = phi i64 [ 0, %bb.as ], [ %i.fu, %bb.bc ] ; 2 uses
  %i.gx = phi i8 [ %i.fi, %bb.as ], [ %i.fw, %bb.bc ]
  %.4.i.i26.i = phi i64 [ %.084130.i.i.i, %bb.as ], [ %.185131.i.i.i, %bb.bc ] ; 3 uses
  switch i8 %i.gx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i
    i8 101, label %bb.bd
    i8 69, label %bb.bd
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.gy = add nuw i64 %.4.i.i26.i, 1              ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %.036142.i.i
  br i1 %i.gz, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.ha = phi i64 [ %i.hd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.gy, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !106
  switch i8 %i.hc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph134.i.i.i, %.lr.ph134.i.i.i, %.lr.ph134.i.i.i, %.lr.ph134.i.i.i, %.lr.ph134.i.i.i, %.lr.ph134.i.i.i
  %i.hd = add nuw i64 %i.ha, 1                    ; 2 uses
  %exitcond.not.i.i31.i = icmp eq i64 %i.hd, %.036142.i.i
  br i1 %exitcond.not.i.i31.i, label %.thread117.i.i.i, label %.lr.ph134.i.i.i, !llvm.loop !657

bb.bd:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.he = icmp eq i64 %.4.i.i26.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.he
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hf = add nuw i64 %.4.i.i26.i, 1              ; 3 uses
  %.not104.i.i27.i = icmp ult i64 %i.hf, %.036142.i.i
  br i1 %.not104.i.i27.i, label %bb.bf, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.hg = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.hf ; 3 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !106
  %i.hi = icmp eq i8 %i.hh, 45
  %i.hj = sub nuw i64 %.036142.i.i, %i.hf         ; 2 uses
  br i1 %i.hi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hk = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hg, i64 noundef %i.hj, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hk, label %.split54.i, label %.split54.thread.i

bb.bh:                                            ; preds = %bb.bf
  %i.hl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hg, i64 noundef %i.hj, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hl, label %.split54.i, label %.split54.thread.i

.split54.thread.i:                                ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split54.i:                                       ; preds = %bb.bh, %bb.bg
  %i.hm = load i16, ptr %5, align 2, !tbaa !128
  %i.hn = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIlEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.hn, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bi:                                            ; preds = %.lr.ph.i.i25.i
  %i.ho = add nuw i64 %.084130.i.i.i, 1           ; 3 uses
  %i.hp = zext nneg i8 %i.fj to i64               ; 2 uses
  %.nonneg.i.i.i32.i = sub nuw i64 -9223372036854775808, %i.hp
  %i.hq = udiv i64 %.nonneg.i.i.i32.i, 10
  %.neg.i.i.i33.i = sub nsw i64 0, %i.hq
  %.not.i.i34.i = icmp slt i64 %i.fg, %.neg.i.i.i33.i
  br i1 %.not.i.i34.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bj, !prof !125

bb.bj:                                            ; preds = %bb.bi
  %i.hr = mul nsw i64 %i.fg, 10
  %i.hs = sub nsw i64 %i.hr, %i.hp                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.ho, %.036142.i.i
  br i1 %.not105.i.i.i, label %._crit_edge15.i.i.thread.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ht = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.ho
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !106
  %i.hv = icmp ne i8 %i.hu, 95
  %or.cond.i.i.i = or i1 %3, %i.hv
  br i1 %or.cond.i.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = add i64 %.084130.i.i.i, 2               ; 3 uses
  %i.hx = icmp eq i64 %i.hw, %.036142.i.i
  br i1 %i.hx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hy = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.hw
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !106
  %i.ia = add i8 %i.hz, -48
  %i.ib = icmp ult i8 %i.ia, 10
  br i1 %i.ib, label %bb.bn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.7.i.i35.i = phi i64 [ %i.ho, %bb.bk ], [ %i.hw, %bb.bm ] ; 3 uses
  %i.ic = icmp ult i64 %.7.i.i35.i, %.036142.i.i
  br i1 %i.ic, label %.lr.ph.i.i25.i, label %._crit_edge15.i.i.thread.i.i, !llvm.loop !658

._crit_edge15.i.i.thread.i.i:                     ; preds = %bb.bn, %bb.bj, %bb.ar
  %.ph.i.i = phi i64 [ 0, %bb.ar ], [ %i.hs, %bb.bj ], [ %i.hs, %bb.bn ]
  %.8.i.ph.i.i = phi i64 [ 1, %bb.ar ], [ %.7.i.i35.i, %bb.bn ], [ %.036142.i.i, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.thread.i.i.i

.thread117.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i, %.thread115.i.i.i
  %.promoted11.i.i.i.i = phi i16 [ %.promoted11.i.i203.i.i, %.thread115.i.i.i ], [ %.promoted11.i.i202.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i ], [ %.promoted11.i.i202.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i200.i.i, %.thread115.i.i.i ], [ %.promoted.i.i199.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i ], [ %.promoted.i.i199.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i29.i = phi i64 [ %.185.lcssa.i.i.i, %.thread115.i.i.i ], [ %i.gy, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i28.i ], [ %.036142.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.fg, ptr %i.b, align 8, !tbaa !97
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ie = icmp sgt i64 %.promoted.i.i.i.i, 10
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.ie, label %.lr.ph.i.i.i.i, label %._crit_edge15.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread117.i.i.i, %.lr.ph.i.i.i.i
  %i.ig = phi i16 [ %i.ij, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i.i.i, %.thread117.i.i.i ]
  %i.ih = phi i64 [ %i.ii, %.lr.ph.i.i.i.i ], [ %.promoted.i.i.i.i, %.thread117.i.i.i ] ; 2 uses
  %i.ii = udiv i64 %i.ih, 10                      ; 3 uses
  %i.ij = add i16 %i.ig, -1                       ; 3 uses
  %i.ik = icmp samesign ugt i64 %i.ih, 109
  br i1 %i.ik, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !7

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.ii, ptr %i.id, align 8, !tbaa !142
  store i16 %i.ij, ptr %i.if, align 8, !tbaa !143
  br label %._crit_edge15.i.i.i.i

._crit_edge15.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %.thread117.i.i.i
  %i.il = phi i16 [ %i.ij, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i.i.i, %.thread117.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.ii, %._crit_edge.i.i.i.i ], [ %.promoted.i.i.i.i, %.thread117.i.i.i ]
  %i.im = icmp eq i16 %i.il, 1
  %i.in = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i30.i = and i1 %i.im, %i.in
  br i1 %or.cond.i.i.i30.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %._crit_edge15.i.i.i.i, %._crit_edge15.i.i.thread.i.i
  %i.io = phi i64 [ %.ph.i.i, %._crit_edge15.i.i.thread.i.i ], [ %i.fg, %._crit_edge15.i.i.i.i ]
  %.8.i250255.i.i = phi i64 [ %.8.i.ph.i.i, %._crit_edge15.i.i.thread.i.i ], [ %.8.i.i29.i, %._crit_edge15.i.i.i.i ]
  store i64 %i.io, ptr %6, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split53.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %._crit_edge15.i.i.i.i
  %i.ip = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.fg, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre16.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !97
  store i64 %.pre16.i.i.i.i, ptr %6, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.ip, label %.split53.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split53.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.thread.i.i.i
  %.8.i250254.i.i = phi i64 [ %.8.i.i29.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ], [ %.8.i250255.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIlEELb1EEEbRT_.exit.thread.i.i.i ]
  %i.iq = icmp ugt i64 %.8.i250254.i.i, 1
  br i1 %i.iq, label %bb.da, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bo:                                            ; preds = %.critedge.i11.i
  %.not39.i12.i = icmp ne i64 %.036142.i.i, 1
  %i.ir = icmp eq i8 %i.fc, 48
  %or.cond.i13.i = and i1 %.not39.i12.i, %i.ir
  br i1 %or.cond.i13.i, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %bb.bo
  %i.is = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 1 ; 7 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !106 ; 2 uses
  %i.iu = add i8 %i.it, -66                       ; 2 uses
  %i.iv = tail call i8 @llvm.fshl.i8(i8 %i.iu, i8 %i.iu, i8 7)
  switch i8 %i.iv, label %bb.cc [
    i8 27, label %bb.bq
    i8 11, label %bb.bq
    i8 16, label %bb.bv
    i8 0, label %bb.bv
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp
  %i.iw = add i64 %.036142.i.i, -1                ; 5 uses
  %i.ix = icmp ugt i64 %i.iw, 1
  br i1 %i.ix, label %.lr.ph.i48.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i48.i.preheader.i:                         ; preds = %bb.bq
  %i.iy = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 2
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !106 ; 3 uses
  %i.ja = add i8 %i.iz, -65
  %or.cond.i.i49.i184.i = icmp ult i8 %i.ja, 26
  %i.jb = or disjoint i8 %i.iz, 32
  %spec.select.i.i.i18185.i = select i1 %or.cond.i.i49.i184.i, i8 %i.jb, i8 %i.iz ; 3 uses
  %i.jc = add i8 %spec.select.i.i.i18185.i, -48
  %or.cond.i36.i.i19186.i = icmp ult i8 %i.jc, 10
  %i.jd = and i8 %spec.select.i.i.i18185.i, -33
  %i.je = add i8 %i.jd, -65
  %i.jf = icmp ult i8 %i.je, 6
  %i.jg = or i1 %or.cond.i36.i.i19186.i, %i.jf
  br i1 %i.jg, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i48.i.i:                                   ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 %.1.i.i22.i
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !106 ; 3 uses
  %i.jj = add i8 %i.ji, -65
  %or.cond.i.i49.i.i = icmp ult i8 %i.jj, 26
  %i.jk = or disjoint i8 %i.ji, 32
  %spec.select.i.i.i18.i = select i1 %or.cond.i.i49.i.i, i8 %i.jk, i8 %i.ji ; 3 uses
  %i.jl = add i8 %spec.select.i.i.i18.i, -48
  %or.cond.i36.i.i19.i = icmp ult i8 %i.jl, 10
  %i.jm = and i8 %spec.select.i.i.i18.i, -33
  %i.jn = add i8 %i.jm, -65
  %i.jo = icmp ult i8 %i.jn, 6
  %i.jp = or i1 %or.cond.i36.i.i19.i, %i.jo
  br i1 %i.jp, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i48.i.preheader.i, %.lr.ph.i48.i.i
  %spec.select.i.i.i18188.i = phi i8 [ %spec.select.i.i.i18.i, %.lr.ph.i48.i.i ], [ %spec.select.i.i.i18185.i, %.lr.ph.i48.i.preheader.i ] ; 2 uses
  %i.jq = phi i64 [ %i.kj, %.lr.ph.i48.i.i ], [ 0, %.lr.ph.i48.i.preheader.i ] ; 2 uses
  %.02642.i.i187.i = phi i64 [ %.1.i.i22.i, %.lr.ph.i48.i.i ], [ 1, %.lr.ph.i48.i.preheader.i ] ; 2 uses
  %i.jr = icmp sgt i8 %spec.select.i.i.i18188.i, 96
  %.0.v.i.i20.i = select i1 %i.jr, i8 -87, i8 -48
  %.0.i.i21.i = add i8 %.0.v.i.i20.i, %spec.select.i.i.i18188.i
  %i.js = add nuw i64 %.02642.i.i187.i, 1         ; 3 uses
  %.not.i50.i.i = icmp eq i64 %i.js, %i.iw
  br i1 %.not.i50.i.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !106
  %i.jv = icmp eq i8 %i.ju, 95
  br i1 %i.jv, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.jw = add nuw i64 %.02642.i.i187.i, 2         ; 3 uses
  %i.jx = icmp eq i64 %i.jw, %i.iw
  br i1 %i.jx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jy = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.jw
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !106 ; 2 uses
  %i.ka = add i8 %i.jz, -48
  %or.cond.i37.i.i23.i = icmp ult i8 %i.ka, 10
  %i.kb = and i8 %i.jz, -33
  %i.kc = add i8 %i.kb, -65
  %i.kd = icmp ult i8 %i.kc, 6
  %i.ke = or i1 %or.cond.i37.i.i23.i, %i.kd
  br i1 %i.ke, label %bb.bu, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bu:                                            ; preds = %bb.bt, %bb.br, %.lr.ph.i
  %.1.i.i22.i = phi i64 [ %i.jw, %bb.bt ], [ %i.js, %bb.br ], [ %i.iw, %.lr.ph.i ] ; 3 uses
  %i.kf = zext i8 %.0.i.i21.i to i64              ; 2 uses
  %i.kg = lshr i64 %i.kf, 4
  %i.kh = xor i64 %i.kg, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.jq, %i.kh
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bu
  %i.ki = shl nsw i64 %i.jq, 4
  %i.kj = add nsw i64 %i.ki, %i.kf                ; 2 uses
  %i.kk = icmp ult i64 %.1.i.i22.i, %i.iw
  br i1 %i.kk, label %.lr.ph.i48.i.i, label %.sink.split.i

bb.bv:                                            ; preds = %bb.bp, %bb.bp
  %i.kl = add i64 %.036142.i.i, -1                ; 5 uses
  %i.km = icmp ugt i64 %i.kl, 1
  br i1 %i.km, label %.lr.ph.i63.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i63.i.i:                                   ; preds = %bb.bv, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i
  %i.kn = phi i64 [ %i.lb, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.bv ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i66.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.bv ] ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.is, i64 %.02436.i.i.i
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !106
  switch i8 %i.kp, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.bx
    i8 49, label %bb.bw
  ]

bb.bw:                                            ; preds = %.lr.ph.i63.i.i
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i63.i.i
  %.0.i64.i.i = phi i64 [ 1, %bb.bw ], [ 0, %.lr.ph.i63.i.i ]
  %i.kq = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i65.i.i = icmp eq i64 %i.kq, %i.kl
  br i1 %.not.i65.i.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kr = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !106
  %i.kt = icmp eq i8 %i.ks, 95
  br i1 %i.kt, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ku = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.kv = icmp eq i64 %i.ku, %i.kl
  br i1 %i.kv, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kw = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ku
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !106
  %i.ky = and i8 %i.kx, -2
  %switch.i.i17.i = icmp eq i8 %i.ky, 48
  br i1 %switch.i.i17.i, label %bb.cb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bx
  %.1.i66.i.i = phi i64 [ %i.kl, %bb.bx ], [ %i.ku, %bb.ca ], [ %i.kq, %bb.by ] ; 2 uses
  %i.kz = icmp slt i64 %i.kn, 4611686018427387904
  br i1 %i.kz, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.cb
  %i.la = shl nsw i64 %i.kn, 1
  %i.lb = or disjoint i64 %.0.i64.i.i, %i.la      ; 2 uses
  %i.lc = icmp ult i64 %.1.i66.i.i, %i.kl
  br i1 %i.lc, label %.lr.ph.i63.i.i, label %.sink.split.i

bb.cc:                                            ; preds = %bb.bp
  %i.ld = add i8 %i.it, -48
  %i.le = icmp ult i8 %i.ld, 10
  %or.cond91.i.i = and i1 %3, %i.le
  br i1 %or.cond91.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

bb.cd:                                            ; preds = %bb.bo
  %i.lf = icmp eq i8 %i.fc, 43                    ; 2 uses
  %brmerge.not.i.i14.i = and i1 %3, %i.lf
  %.mux.i.i15.i = zext i1 %i.lf to i64
  br i1 %brmerge.not.i.i14.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

.preheader.i.i16.i:                               ; preds = %bb.cd, %bb.cc
  %.mux.i89.i.i = phi i64 [ %.mux.i.i15.i, %bb.cd ], [ 0, %bb.cc ] ; 5 uses
  %i.lg = icmp ugt i64 %.036142.i.i, %.mux.i89.i.i
  br i1 %i.lg, label %.lr.ph.i78.i.i, label %._crit_edge15.i.i71.thread.i.i

.lr.ph.i78.i.i:                                   ; preds = %.preheader.i.i16.i, %bb.cz
  %i.lh = phi i64 [ %i.nu, %bb.cz ], [ 0, %.preheader.i.i16.i ] ; 6 uses
  %.0136.i.i.i = phi i64 [ %.7.i86.i.i, %bb.cz ], [ %.mux.i89.i.i, %.preheader.i.i16.i ] ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %.0136.i.i.i
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !106 ; 3 uses
  %i.lk = add i8 %i.lj, -48                       ; 2 uses
  %i.ll = icmp ult i8 %i.lk, 10
  br i1 %i.ll, label %bb.cu, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i78.i.i
  store i64 %i.lh, ptr %6, align 8
  %i.lm = icmp eq i8 %i.lj, 46
  br i1 %i.lm, label %bb.cf, label %.thread117.i79.i.i

bb.cf:                                            ; preds = %bb.ce
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ln = icmp ugt i64 %.0136.i.i.i, %.mux.i89.i.i ; 2 uses
  %i.lo = add nuw i64 %.0136.i.i.i, 1             ; 5 uses
  %i.lp = icmp ult i64 %i.lo, %.036142.i.i
  br i1 %i.lp, label %.lr.ph138.i.i.i, label %.thread121.i.i.i

.lr.ph138.i.i.i:                                  ; preds = %bb.cg
  %i.lq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cn, %.lr.ph138.i.i.i
  %i.ls = phi i64 [ 0, %.lr.ph138.i.i.i ], [ %i.mh, %bb.cn ] ; 2 uses
  %i.lt = phi i16 [ 0, %.lr.ph138.i.i.i ], [ %i.mi, %bb.cn ] ; 2 uses
  %i.lu = phi i16 [ 0, %.lr.ph138.i.i.i ], [ %i.mj, %bb.cn ] ; 3 uses
  %i.lv = phi i64 [ 0, %.lr.ph138.i.i.i ], [ %i.mk, %bb.cn ] ; 4 uses
  %.1137.i.i.i = phi i64 [ %i.lo, %.lr.ph138.i.i.i ], [ %.2.i83.i.i, %bb.cn ] ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %.1137.i.i.i
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !106 ; 2 uses
  %i.ly = add i8 %i.lx, -48                       ; 2 uses
  %i.lz = icmp ult i8 %i.ly, 10
  br i1 %i.lz, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.ma = zext nneg i8 %i.ly to i64               ; 2 uses
  %i.mb = xor i64 %i.ma, 9223372036854775806
  %i.mc = udiv i64 %i.mb, 10
  %i.md = icmp sgt i64 %i.lv, %i.mc
  br i1 %i.md, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cj, !prof !125

bb.cj:                                            ; preds = %bb.ci
  %i.me = add i16 %i.lu, 1                        ; 2 uses
  %i.mf = mul nsw i64 %i.lv, 10
  %i.mg = add nsw i64 %i.mf, %i.ma                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.cj, %bb.ci
  %i.mh = phi i64 [ %i.mg, %bb.cj ], [ %i.ls, %bb.ci ] ; 2 uses
  %i.mi = phi i16 [ %i.me, %bb.cj ], [ %i.lt, %bb.ci ] ; 2 uses
  %i.mj = phi i16 [ %i.me, %bb.cj ], [ %i.lu, %bb.ci ] ; 2 uses
  %i.mk = phi i64 [ %i.mg, %bb.cj ], [ %i.lv, %bb.ci ] ; 2 uses
  %i.ml = add nuw i64 %.1137.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.ml, %.036142.i.i
  br i1 %.not107.i.i.i, label %.thread121.i.i.loopexit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !106
  %i.mo = icmp eq i8 %i.mn, 95
  br i1 %i.mo, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.mp = add i64 %.1137.i.i.i, 2                 ; 3 uses
  %i.mq = icmp eq i64 %i.mp, %.036142.i.i
  br i1 %i.mq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mr = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.mp
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !106
  %i.mt = add i8 %i.ms, -48
  %i.mu = icmp ult i8 %i.mt, 10
  br i1 %i.mu, label %bb.cn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %.2.i83.i.i = phi i64 [ %i.mp, %bb.cm ], [ %i.ml, %bb.ck ] ; 3 uses
  %i.mv = icmp ult i64 %.2.i83.i.i, %.036142.i.i
  br i1 %i.mv, label %bb.ch, label %.thread121.i.i.loopexit.i, !llvm.loop !659

bb.co:                                            ; preds = %bb.ch
  store i16 %i.lt, ptr %i.lr, align 8
  store i64 %i.ls, ptr %i.lq, align 8
  %i.mw = icmp ugt i64 %.1137.i.i.i, %i.lo
  %or.cond110.i.i.i = or i1 %i.ln, %i.mw
  br i1 %or.cond110.i.i.i, label %.thread117.i79.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread121.i.i.loopexit.i:                        ; preds = %bb.cn, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i83.i.i, %bb.cn ], [ %.036142.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.mi, ptr %i.lr, align 8
  store i64 %i.mh, ptr %i.lq, align 8
  br label %.thread121.i.i.i

.thread121.i.i.i:                                 ; preds = %.thread121.i.i.loopexit.i, %bb.cg
  %.promoted11.i.i70198.i.i = phi i16 [ 0, %bb.cg ], [ %i.mj, %.thread121.i.i.loopexit.i ]
  %.promoted.i.i69195.i.i = phi i64 [ 0, %bb.cg ], [ %i.mk, %.thread121.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.lo, %bb.cg ], [ %.1.lcssa.i.i.ph.i, %.thread121.i.i.loopexit.i ] ; 2 uses
  %i.mx = icmp ugt i64 %.1.lcssa.i.i.i, %i.lo
  %or.cond110122.i.i.i = or i1 %i.ln, %i.mx
  br i1 %or.cond110122.i.i.i, label %.thread123.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i79.i.i:                               ; preds = %bb.co, %bb.ce
  %.promoted11.i.i70197.i.i = phi i16 [ 0, %bb.ce ], [ %i.lu, %bb.co ] ; 2 uses
  %.promoted.i.i69194.i.i = phi i64 [ 0, %bb.ce ], [ %i.lv, %bb.co ] ; 2 uses
  %i.my = phi i8 [ %i.lj, %bb.ce ], [ %i.lx, %bb.co ]
  %.4.i80.i.i = phi i64 [ %.0136.i.i.i, %bb.ce ], [ %.1137.i.i.i, %bb.co ] ; 3 uses
  switch i8 %i.my, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i
    i8 101, label %bb.cp
    i8 69, label %bb.cp
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i: ; preds = %.thread117.i79.i.i, %.thread117.i79.i.i, %.thread117.i79.i.i, %.thread117.i79.i.i, %.thread117.i79.i.i, %.thread117.i79.i.i
  %i.mz = add nuw i64 %.4.i80.i.i, 1              ; 3 uses
  %i.na = icmp ult i64 %i.mz, %.036142.i.i
  br i1 %i.na, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
  %i.nb = phi i64 [ %i.ne, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ], [ %i.mz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i81.i.i ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.035143.i.i, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !106
  switch i8 %i.nd, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIlEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
end_hunk_3
begin_hunk_4_@_ZN6duckdb7TryCast9OperationINS_8string_tEhEEbT_RT0_b
define noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEhEEbT_RT0_b(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerDecimalCastData.160", align 8 ; 22 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  %cond110.i.i = icmp eq i32 %i.d, 0
  br i1 %cond110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.042112.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 16 uses
  %.043111.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 27 uses
  %i.i = load i8, ptr %.042112.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %bb.l [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %.preheader.i.i.preheader
  ]

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %cond = icmp eq i64 %.043111.i.i, 1
  br i1 %cond, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 1
  %i.k = add nsw i64 %.043111.i.i, -1             ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.lr.ph.i.i, !llvm.loop !662

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.l = add i64 %.040.i.i637, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %.043111.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !663

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.040.i.i637 = phi i64 [ %i.l, %.preheader.i.i ], [ 1, %.preheader.i.i.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.040.i.i637
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106
  %.not47.i.i = icmp eq i8 %i.n, 48
  br i1 %.not47.i.i, label %.preheader.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, !llvm.loop !663

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i
  br i1 %3, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.0.9.i = phi i8 [ %i.u, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06093.us.i.i.i = phi i64 [ %i.s, %bb.c ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.06093.us.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106   ; 3 uses
  %i.q = add i8 %i.p, -48
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.c, label %.split.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.s = add nuw i64 %.06093.us.i.i.i, 1          ; 2 uses
  %i.t = mul i8 %.sroa.0.9.i, 10
  %reass.sub99.i.i.i = sub i8 %i.t, %i.p
  %i.u = add i8 %reass.sub99.i.i.i, 48            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %.043111.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !664

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.k
  %.sroa.0.6.i = phi i8 [ %i.aq, %bb.k ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06093.i.i.i = phi i64 [ %.7.i.i.i, %bb.k ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.06093.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !106   ; 3 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10
  br i1 %i.y, label %bb.g, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.0.7.i = phi i8 [ %.sroa.0.9.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.6.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %.pre.i.i.i = phi i8 [ %i.p, %.lr.ph.split.us.i.i.i ], [ %i.w, %.lr.ph.split.i.i.i ] ; 2 uses
  %.us-phi94.i.i.i = phi i64 [ %.06093.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.06093.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.z = icmp eq i8 %.pre.i.i.i, 46
  br i1 %i.z, label %bb.d, label %.thread80.i.i.i

bb.d:                                             ; preds = %.split.us.i.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %.us-phi94.i.i.i, 2        ; 2 uses
  %i.ab = add nuw i64 %.us-phi94.i.i.i, 1         ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %.043111.i.i
  br i1 %i.ac, label %bb.f, label %.thread82.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !106 ; 2 uses
  %i.af = add i8 %i.ae, -48
  %i.ag = icmp ult i8 %i.af, 10
  %brmerge.i.i.i = or i1 %i.aa, %i.ag
  br i1 %brmerge.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread80.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.e
  br i1 %i.aa, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

.thread80.i.i.i:                                  ; preds = %bb.f, %.split.us.i.i.i
  %i.ah = phi i8 [ %i.ae, %bb.f ], [ %.pre.i.i.i, %.split.us.i.i.i ]
  %.4.i.i.i = phi i64 [ %i.ab, %bb.f ], [ %.us-phi94.i.i.i, %.split.us.i.i.i ]
  switch i8 %i.ah, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i
  %i.ai = add i64 %.4.i.i.i, 1                    ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %.043111.i.i
  br i1 %i.aj, label %.lr.ph96.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i

.lr.ph96.i.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  %i.ak = phi i64 [ %i.an, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.ai, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !106
  switch i8 %i.am, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i: ; preds = %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i, %.lr.ph96.i.i.i
  %i.an = add nuw i64 %i.ak, 1                    ; 2 uses
  %exitcond113.not.i.i.i = icmp eq i64 %i.an, %.043111.i.i
  br i1 %exitcond113.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph96.i.i.i, !llvm.loop !665

bb.g:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ao = add nuw i64 %.06093.i.i.i, 1            ; 3 uses
  %i.ap = mul i8 %.sroa.0.6.i, 10
  %reass.sub.i.i.i = sub i8 %i.ap, %i.w
  %i.aq = add i8 %reass.sub.i.i.i, 48             ; 3 uses
  %.not76.i.i.i = icmp eq i64 %i.ao, %.043111.i.i
  br i1 %.not76.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !106
  %.not98.i.i.i = icmp eq i8 %i.as, 95
  br i1 %.not98.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = add i64 %.06093.i.i.i, 2                ; 3 uses
  %i.au = icmp eq i64 %i.at, %.043111.i.i
  br i1 %i.au, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !106
  %i.ax = add i8 %i.aw, -48
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.k:                                             ; preds = %bb.j, %bb.h
  %.7.i.i.i = phi i64 [ %i.ao, %bb.h ], [ %i.at, %bb.j ] ; 3 uses
  %i.az = icmp ult i64 %.7.i.i.i, %.043111.i.i
  br i1 %i.az, label %.lr.ph.split.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, !llvm.loop !664

bb.l:                                             ; preds = %.lr.ph.i.i
  %.not46.i.i = icmp ne i64 %.043111.i.i, 1
  %i.ba = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not46.i.i, %i.ba
  br i1 %or.cond.i.i, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 1 ; 7 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !106 ; 2 uses
  %i.bd = add i8 %i.bc, -66                       ; 2 uses
  %i.be = tail call i8 @llvm.fshl.i8(i8 %i.bd, i8 %i.bd, i8 7)
  switch i8 %i.be, label %bb.aa [
    i8 27, label %bb.n
    i8 11, label %bb.n
    i8 16, label %bb.t
    i8 0, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bf = add i64 %.043111.i.i, -1                ; 5 uses
  %i.bg = icmp ugt i64 %i.bf, 1
  br i1 %i.bg, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

.lr.ph.i49.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i
  %.02640.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.n ] ; 3 uses
  %i.bh = phi i8 [ %i.ch, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.02640.i.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !106 ; 3 uses
  %i.bk = add i8 %i.bj, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bk, 26
  %i.bl = or disjoint i8 %i.bj, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bl, i8 %i.bj ; 4 uses
  %i.bm = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.bm, 10
  %i.bn = and i8 %spec.select.i.i.i.i, -33
  %i.bo = add i8 %i.bn, -65
  %i.bp = icmp ult i8 %i.bo, 6
  %i.bq = or i1 %or.cond.i36.i.i.i, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.o:                                             ; preds = %.lr.ph.i49.i.i
  %i.br = icmp sgt i8 %spec.select.i.i.i.i, 96
  %.0.v.i.i.i = select i1 %i.br, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i.i ; 2 uses
  %i.bs = add nuw i64 %.02640.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bs, %i.bf
  br i1 %.not.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !106
  %i.bv = icmp eq i8 %i.bu, 95
  br i1 %i.bv, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bw = add nuw i64 %.02640.i.i.i, 2            ; 3 uses
  %i.bx = icmp eq i64 %i.bw, %i.bf
  br i1 %i.bx, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !106 ; 2 uses
  %i.ca = add i8 %i.bz, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.ca, 10
  %i.cb = and i8 %i.bz, -33
  %i.cc = add i8 %i.cb, -65
  %i.cd = icmp ult i8 %i.cc, 6
  %i.ce = or i1 %or.cond.i37.i.i.i, %i.cd
  br i1 %i.ce, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.1.i.i.i = phi i64 [ %i.bw, %bb.r ], [ %i.bs, %bb.p ], [ %i.bf, %bb.o ] ; 2 uses
  %.lhs.trunc.i.i.i.i = xor i8 %.0.i.i.i, -1
  %i.cf = lshr i8 %.lhs.trunc.i.i.i.i, 4
  %.not38.i.i.i = icmp ult i8 %i.cf, %i.bh
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.s
  %i.cg = shl nuw i8 %i.bh, 4
  %i.ch = add i8 %.0.i.i.i, %i.cg                 ; 2 uses
  %i.ci = icmp ult i64 %.1.i.i.i, %i.bf
  br i1 %i.ci, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.t:                                             ; preds = %bb.m, %bb.m
  %i.cj = add i64 %.043111.i.i, -1                ; 5 uses
  %i.ck = icmp ugt i64 %i.cj, 1
  br i1 %i.ck, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i
  %.02435.i.i.i = phi i64 [ %.1.i55.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.t ] ; 3 uses
  %i.cl = phi i8 [ %i.cz, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.02435.i.i.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !106
  switch i8 %i.cn, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 48, label %bb.v
    i8 49, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i52.i.i
  %.0.i53.i.i = phi i8 [ 1, %bb.u ], [ 0, %.lr.ph.i52.i.i ]
  %i.co = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i54.i.i = icmp eq i64 %i.co, %i.cj
  br i1 %.not.i54.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !106
  %i.cr = icmp eq i8 %i.cq, 95
  br i1 %i.cr, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.ct = icmp eq i64 %i.cs, %i.cj
  br i1 %i.ct, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cs
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !106
  %i.cw = and i8 %i.cv, -2
  %switch.i.i.i = icmp eq i8 %i.cw, 48
  br i1 %switch.i.i.i, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %.1.i55.i.i = phi i64 [ %i.cj, %bb.v ], [ %i.cs, %bb.y ], [ %i.co, %bb.w ] ; 2 uses
  %i.cx = icmp sgt i8 %i.cl, -1
  br i1 %i.cx, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.z
  %i.cy = shl nuw i8 %i.cl, 1
  %i.cz = or disjoint i8 %.0.i53.i.i, %i.cy       ; 2 uses
  %i.da = icmp ult i64 %.1.i55.i.i, %i.cj
  br i1 %i.da, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.aa:                                            ; preds = %bb.m
  %i.db = add i8 %i.bc, -48
  %i.dc = icmp ult i8 %i.db, 10
  %or.cond75.i.i = and i1 %3, %i.dc
  br i1 %or.cond75.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.preheader.i.i.i

bb.ab:                                            ; preds = %bb.l
  %i.dd = icmp eq i8 %i.i, 43                     ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.dd
  %.mux.i.i.i = zext i1 %i.dd to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ab, %bb.aa
  %.mux.i73.i.i = phi i64 [ %.mux.i.i.i, %bb.ab ], [ 0, %bb.aa ] ; 5 uses
  %i.de = icmp ugt i64 %.043111.i.i, %.mux.i73.i.i
  br i1 %i.de, label %.lr.ph.i57.i.i, label %.thread90.i.i.i

.lr.ph.i57.i.i:                                   ; preds = %.preheader.i.i.i
  br i1 %3, label %.lr.ph.split.us.i68.i.i, label %.lr.ph.split.i59.i.i

.lr.ph.split.us.i68.i.i:                          ; preds = %.lr.ph.i57.i.i, %bb.ad
  %.sroa.0.3.i = phi i8 [ %i.dm, %bb.ad ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.us.i.i.i = phi i64 [ %i.dk, %bb.ad ], [ %.mux.i73.i.i, %.lr.ph.i57.i.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.099.us.i.i.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !106 ; 3 uses
  %i.dh = add i8 %i.dg, -48                       ; 2 uses
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.ac, label %.split.us.i60.i.i

bb.ac:                                            ; preds = %.lr.ph.split.us.i68.i.i
  %.lhs.trunc.i.us.i.i.i = sub nsw i8 47, %i.dg
  %i.dj = udiv i8 %.lhs.trunc.i.us.i.i.i, 10
  %.not.us.i.i.i = icmp ult i8 %i.dj, %.sroa.0.3.i
  br i1 %.not.us.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.ad, !prof !125

bb.ad:                                            ; preds = %bb.ac
  %i.dk = add i64 %.099.us.i.i.i, 1               ; 2 uses
  %i.dl = mul nuw i8 %.sroa.0.3.i, 10
  %i.dm = add i8 %i.dh, %i.dl                     ; 2 uses
  %exitcond.not.i69.i.i = icmp eq i64 %i.dk, %.043111.i.i
  br i1 %exitcond.not.i69.i.i, label %.thread90.i.i.i, label %.lr.ph.split.us.i68.i.i, !llvm.loop !666

.lr.ph.split.i59.i.i:                             ; preds = %.lr.ph.i57.i.i, %bb.am
  %.sroa.0.1.i = phi i8 [ %i.ej, %bb.am ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.i.i.i = phi i64 [ %.7.i67.i.i, %bb.am ], [ %.mux.i73.i.i, %.lr.ph.i57.i.i ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.099.i.i.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !106 ; 3 uses
  %i.dp = add i8 %i.do, -48                       ; 2 uses
  %i.dq = icmp ult i8 %i.dp, 10
  br i1 %i.dq, label %bb.ah, label %.split.us.i60.i.i

.split.us.i60.i.i:                                ; preds = %.lr.ph.split.i59.i.i, %.lr.ph.split.us.i68.i.i
  %.sroa.0.2.i = phi i8 [ %.sroa.0.3.i, %.lr.ph.split.us.i68.i.i ], [ %.sroa.0.1.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %.pre.i61.i.i = phi i8 [ %i.dg, %.lr.ph.split.us.i68.i.i ], [ %i.do, %.lr.ph.split.i59.i.i ] ; 2 uses
  %.us-phi100.i.i.i = phi i64 [ %.099.us.i.i.i, %.lr.ph.split.us.i68.i.i ], [ %.099.i.i.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %i.dr = icmp eq i8 %.pre.i61.i.i, 46
  br i1 %i.dr, label %bb.ae, label %.thread86.i.i.i

bb.ae:                                            ; preds = %.split.us.i60.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = icmp ule i64 %.us-phi100.i.i.i, %.mux.i73.i.i ; 2 uses
  %i.dt = add nuw i64 %.us-phi100.i.i.i, 1        ; 4 uses
  %i.du = icmp ult i64 %i.dt, %.043111.i.i
  br i1 %i.du, label %bb.ag, label %.thread88.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !106 ; 2 uses
  %i.dx = add i8 %i.dw, -48
  %i.dy = icmp ult i8 %i.dx, 10
  %brmerge.i64.i.i = or i1 %i.ds, %i.dy
  br i1 %brmerge.i64.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread86.i.i.i

.thread88.i.i.i:                                  ; preds = %bb.af
  br i1 %i.ds, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread90.i.i.i

.thread86.i.i.i:                                  ; preds = %bb.ag, %.split.us.i60.i.i
  %i.dz = phi i8 [ %i.dw, %bb.ag ], [ %.pre.i61.i.i, %.split.us.i60.i.i ]
  %.4.i62.i.i = phi i64 [ %i.dt, %bb.ag ], [ %.us-phi100.i.i.i, %.split.us.i60.i.i ]
  switch i8 %i.dz, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i: ; preds = %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i
  %i.ea = add i64 %.4.i62.i.i, 1                  ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %.043111.i.i
  br i1 %i.eb, label %.lr.ph102.i.i.i, label %.thread90.i.i.i

.lr.ph102.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  %i.ec = phi i64 [ %i.ef, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.ea, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !106
  switch i8 %i.ee, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i: ; preds = %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i
  %i.ef = add nuw i64 %i.ec, 1                    ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %i.ef, %.043111.i.i
  br i1 %exitcond121.not.i.i.i, label %.thread90.i.i.i, label %.lr.ph102.i.i.i, !llvm.loop !667

bb.ah:                                            ; preds = %.lr.ph.split.i59.i.i
  %i.eg = add nuw i64 %.099.i.i.i, 1              ; 3 uses
  %.lhs.trunc.i.i65.i.i = sub nsw i8 47, %i.do
  %i.eh = udiv i8 %.lhs.trunc.i.i65.i.i, 10
  %.not.i66.i.i = icmp ult i8 %i.eh, %.sroa.0.1.i
  br i1 %.not.i66.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %bb.ah
  %i.ei = mul nuw i8 %.sroa.0.1.i, 10
  %i.ej = add i8 %i.dp, %i.ei                     ; 3 uses
  %.not80.i.i.i = icmp eq i64 %i.eg, %.043111.i.i
  br i1 %.not80.i.i.i, label %.thread90.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.eg
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !106
  %.not104.i.i.i = icmp eq i8 %i.el, 95
  br i1 %.not104.i.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.em = add i64 %.099.i.i.i, 2                  ; 3 uses
  %i.en = icmp eq i64 %i.em, %.043111.i.i
  br i1 %i.en, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eo = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !106
  %i.eq = add i8 %i.ep, -48
  %i.er = icmp ult i8 %i.eq, 10
  br i1 %i.er, label %bb.am, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.7.i67.i.i = phi i64 [ %i.eg, %bb.aj ], [ %i.em, %bb.al ] ; 3 uses
  %i.es = icmp ult i64 %.7.i67.i.i, %.043111.i.i
  br i1 %i.es, label %.lr.ph.split.i59.i.i, label %.thread90.i.i.i, !llvm.loop !666

.thread90.i.i.i:                                  ; preds = %bb.am, %bb.ai, %bb.ad, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %.thread88.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.dm, %bb.ad ], [ 0, %.preheader.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %.sroa.0.2.i, %.thread88.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.ej, %bb.ai ], [ %i.ej, %bb.am ]
  %.8.i56.i.i = phi i64 [ %.043111.i.i, %bb.ad ], [ 1, %.preheader.i.i.i ], [ %i.ea, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %i.dt, %.thread88.i.i.i ], [ %.043111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %.043111.i.i, %bb.ai ], [ %.7.i67.i.i, %bb.am ]
  %i.et = icmp ugt i64 %.8.i56.i.i, %.mux.i73.i.i
  br i1 %i.et, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %bb.k, %bb.g, %bb.c, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  %.sroa.0.8.i = phi i8 [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %i.u, %bb.c ], [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.aq, %bb.g ], [ %i.aq, %bb.k ]
  %.8.i.i.i = phi i64 [ %i.ai, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.043111.i.i, %bb.c ], [ %.043111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %.043111.i.i, %bb.g ], [ %.7.i.i.i, %bb.k ]
  %i.eu = icmp ugt i64 %.8.i.i.i, 1
  br i1 %i.eu, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread82.i.i.i
  %.sroa.0.1044.i = phi i8 [ %.sroa.0.7.i, %.thread82.i.i.i ], [ %.sroa.0.8.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i ], [ %.sroa.0.0.i, %.thread90.i.i.i ], [ %i.ch, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i ], [ %i.cz, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIhEELb0EEEbRT_h.exit.i.i.i ]
  store i8 %.sroa.0.1044.i, ptr %2, align 1, !tbaa !106
  br label %_ZN6duckdbL20TrySimpleIntegerCastIhLb0EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i: ; preds = %bb.b, %.lr.ph, %bb.j, %bb.i, %.lr.ph96.i.i.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i52.i.i, %bb.s, %bb.r, %bb.q, %.lr.ph.i49.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ac, %.lr.ph102.i.i.i, %.preheader.i.i.preheader, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread86.i.i.i, %.thread88.i.i.i, %bb.ag, %bb.ae, %bb.ab, %bb.aa, %bb.t, %bb.n, %.thread80.i.i.i, %.thread82.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.an, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i
  %.042169.i.i = phi ptr [ %i.ew, %bb.an ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i ] ; 21 uses
  %.043168.i.i = phi i64 [ %i.ex, %bb.an ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIhEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i ] ; 35 uses
  %i.ev = load i8, ptr %.042169.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.ev, label %.critedge.i11.i [
    i8 32, label %bb.an
    i8 12, label %bb.an
    i8 11, label %bb.an
    i8 10, label %bb.an
    i8 9, label %bb.an
    i8 13, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 1
  %i.ex = add i64 %.043168.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.ex, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !668

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ey = icmp eq i8 %i.ev, 45
  br i1 %i.ey, label %.preheader.i24.i.preheader, label %bb.bk

.preheader.i24.i.preheader:                       ; preds = %.critedge.i11.i
  %cond641 = icmp eq i64 %.043168.i.i, 1
  br i1 %cond641, label %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i, label %.lr.ph640

.preheader.i24.i:                                 ; preds = %.lr.ph640
  %i.ez = add i64 %.040.i25.i639, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ez, %.043168.i.i
  br i1 %exitcond.not.i26.i, label %.lr.ph.i.i29.i, label %.lr.ph640, !llvm.loop !669

.lr.ph640:                                        ; preds = %.preheader.i24.i.preheader, %.preheader.i24.i
  %.040.i25.i639 = phi i64 [ %i.ez, %.preheader.i24.i ], [ 1, %.preheader.i24.i.preheader ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.040.i25.i639
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !106
  %.not47.i27.i = icmp eq i8 %i.fb, 48
  br i1 %.not47.i27.i, label %.preheader.i24.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !llvm.loop !669

_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i: ; preds = %.preheader.i24.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread115.i.i.i

.lr.ph.i.i29.i:                                   ; preds = %.preheader.i24.i, %bb.bj
  %i.fc = phi i64 [ %i.ho, %bb.bj ], [ 0, %.preheader.i24.i ] ; 6 uses
  %.084132.i.i.i = phi i64 [ %.7.i.i37.i, %bb.bj ], [ 1, %.preheader.i24.i ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.084132.i.i.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !106 ; 3 uses
  %i.ff = add i8 %i.fe, -48                       ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 10
  br i1 %i.fg, label %bb.be, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i29.i
  store i64 %i.fc, ptr %6, align 8
  %i.fh = icmp eq i8 %i.fe, 46
  br i1 %i.fh, label %bb.ap, label %.thread111.i.i.i

bb.ap:                                            ; preds = %bb.ao
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = icmp ugt i64 %.084132.i.i.i, 1          ; 2 uses
  %i.fj = add nuw i64 %.084132.i.i.i, 1           ; 5 uses
  %i.fk = icmp ult i64 %i.fj, %.043168.i.i
  br i1 %i.fk, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %bb.aq
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ax, %.lr.ph134.i.i.i
  %i.fn = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gc, %bb.ax ] ; 2 uses
  %i.fo = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.gd, %bb.ax ] ; 2 uses
  %i.fp = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.ge, %bb.ax ] ; 3 uses
  %i.fq = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gf, %bb.ax ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.fj, %.lr.ph134.i.i.i ], [ %.2.i.i.i, %bb.ax ] ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.185133.i.i.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !106 ; 2 uses
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
  %i.fu = icmp ult i8 %i.ft, 10
  br i1 %i.fu, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.fv = zext nneg i8 %i.ft to i64               ; 2 uses
  %i.fw = xor i64 %i.fv, 9223372036854775806
  %i.fx = udiv i64 %i.fw, 10
  %i.fy = icmp sgt i64 %i.fq, %i.fx
  br i1 %i.fy, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.at, !prof !125

bb.at:                                            ; preds = %bb.as
  %i.fz = add i16 %i.fp, 1                        ; 2 uses
  %i.ga = mul nsw i64 %i.fq, 10
  %i.gb = add nsw i64 %i.ga, %i.fv                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.at, %bb.as
  %i.gc = phi i64 [ %i.gb, %bb.at ], [ %i.fn, %bb.as ] ; 2 uses
  %i.gd = phi i16 [ %i.fz, %bb.at ], [ %i.fo, %bb.as ] ; 2 uses
  %i.ge = phi i16 [ %i.fz, %bb.at ], [ %i.fp, %bb.as ] ; 2 uses
  %i.gf = phi i64 [ %i.gb, %bb.at ], [ %i.fq, %bb.as ] ; 2 uses
  %i.gg = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.gg, %.043168.i.i
  br i1 %.not103.i.i.i, label %.thread117.i.i.loopexit.i, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !106
  %i.gj = icmp eq i8 %i.gi, 95
  br i1 %i.gj, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gk = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.gl = icmp eq i64 %i.gk, %.043168.i.i
  br i1 %i.gl, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.gk
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !106
  %i.go = add i8 %i.gn, -48
  %i.gp = icmp ult i8 %i.go, 10
  br i1 %i.gp, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.2.i.i.i = phi i64 [ %i.gk, %bb.aw ], [ %i.gg, %bb.au ] ; 3 uses
  %i.gq = icmp ult i64 %.2.i.i.i, %.043168.i.i
  br i1 %i.gq, label %bb.ar, label %.thread117.i.i.loopexit.i, !llvm.loop !670

bb.ay:                                            ; preds = %bb.ar
  store i16 %i.fo, ptr %i.fm, align 8
  store i64 %i.fn, ptr %i.fl, align 8
  %i.gr = icmp ugt i64 %.185133.i.i.i, %i.fj
  %or.cond106.i.i.i = or i1 %i.fi, %i.gr
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i.i.loopexit.i:                        ; preds = %bb.ax, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.ax ], [ %.043168.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.gd, ptr %i.fm, align 8
  store i64 %i.gc, ptr %i.fl, align 8
  br label %.thread117.i.i.i

.thread117.i.i.i:                                 ; preds = %.thread117.i.i.loopexit.i, %bb.aq
  %.promoted11.i.i238.i.i = phi i16 [ 0, %bb.aq ], [ %i.ge, %.thread117.i.i.loopexit.i ]
  %.promoted.i.i234.i.i = phi i64 [ 0, %bb.aq ], [ %i.gf, %.thread117.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.fj, %bb.aq ], [ %.185.lcssa.i.i.ph.i, %.thread117.i.i.loopexit.i ] ; 2 uses
  %i.gs = icmp ugt i64 %.185.lcssa.i.i.i, %i.fj
  %or.cond106118.i.i.i = or i1 %i.fi, %i.gs
  br i1 %or.cond106118.i.i.i, label %.thread119.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.ay, %bb.ao
  %.promoted11.i.i237.i.i = phi i16 [ 0, %bb.ao ], [ %i.fp, %bb.ay ] ; 2 uses
  %.promoted.i.i233.i.i = phi i64 [ 0, %bb.ao ], [ %i.fq, %bb.ay ] ; 2 uses
  %i.gt = phi i8 [ %i.fe, %bb.ao ], [ %i.fs, %bb.ay ]
  %.4.i.i30.i = phi i64 [ %.084132.i.i.i, %bb.ao ], [ %.185133.i.i.i, %bb.ay ] ; 3 uses
  switch i8 %i.gt, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 101, label %bb.az
    i8 69, label %bb.az
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.gu = add nuw i64 %.4.i.i30.i, 1              ; 3 uses
  %i.gv = icmp ult i64 %i.gu, %.043168.i.i
  br i1 %i.gv, label %.lr.ph136.i.i.i, label %.thread119.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.gw = phi i64 [ %i.gz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.gu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !106
  switch i8 %i.gy, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i
  %i.gz = add nuw i64 %i.gw, 1                    ; 2 uses
  %exitcond.not.i.i35.i = icmp eq i64 %i.gz, %.043168.i.i
  br i1 %exitcond.not.i.i35.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !671

bb.az:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.ha = icmp eq i64 %.4.i.i30.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.ha
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hb = add nuw i64 %.4.i.i30.i, 1              ; 3 uses
  %.not104.i.i31.i = icmp ult i64 %i.hb, %.043168.i.i
  br i1 %.not104.i.i31.i, label %bb.bb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hb ; 3 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !106
  %i.he = icmp eq i8 %i.hd, 45
  %i.hf = sub nuw i64 %.043168.i.i, %i.hb         ; 2 uses
  br i1 %i.he, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hg = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hc, i64 noundef %i.hf, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hg, label %.split56.i, label %.split56.thread.i

bb.bd:                                            ; preds = %bb.bb
  %i.hh = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hc, i64 noundef %i.hf, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hh, label %.split56.i, label %.split56.thread.i

.split56.thread.i:                                ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split56.i:                                       ; preds = %bb.bd, %bb.bc
  %i.hi = load i16, ptr %5, align 2, !tbaa !128
  %i.hj = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIhEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.hi)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.hj, label %bb.cw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.be:                                            ; preds = %.lr.ph.i.i29.i
  %i.hk = add nuw i64 %.084132.i.i.i, 1           ; 3 uses
  %i.hl = zext nneg i8 %i.ff to i64               ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i64 -9223372036854775808, %i.hl
  %i.hm = udiv i64 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i64 0, %i.hm
  %.not.i.i36.i = icmp slt i64 %i.fc, %.neg.i.i.i.i
  br i1 %.not.i.i36.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bf, !prof !125

bb.bf:                                            ; preds = %bb.be
  %i.hn = mul nsw i64 %i.fc, 10
  %i.ho = sub nsw i64 %i.hn, %i.hl                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.hk, %.043168.i.i
  br i1 %.not105.i.i.i, label %.thread119.i.i.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hp = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hk
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !106
  %i.hr = icmp ne i8 %i.hq, 95
  %or.cond.i.i.i = or i1 %3, %i.hr
  br i1 %or.cond.i.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hs = add i64 %.084132.i.i.i, 2               ; 3 uses
  %i.ht = icmp eq i64 %i.hs, %.043168.i.i
  br i1 %i.ht, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hu = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hs
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !106
  %i.hw = add i8 %i.hv, -48
  %i.hx = icmp ult i8 %i.hw, 10
  br i1 %i.hx, label %bb.bj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.7.i.i37.i = phi i64 [ %i.hk, %bb.bg ], [ %i.hs, %bb.bi ] ; 3 uses
  %i.hy = icmp ult i64 %.7.i.i37.i, %.043168.i.i
  br i1 %i.hy, label %.lr.ph.i.i29.i, label %.thread119.i.i.thread.i, !llvm.loop !672

.thread119.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i, %.thread117.i.i.i
  %.promoted11.i.i236.i.i = phi i16 [ %.promoted11.i.i238.i.i, %.thread117.i.i.i ], [ %.promoted11.i.i237.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.promoted11.i.i237.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i232.i.i = phi i64 [ %.promoted.i.i234.i.i, %.thread117.i.i.i ], [ %.promoted.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.promoted.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i33.i = phi i64 [ %.185.lcssa.i.i.i, %.thread117.i.i.i ], [ %i.gu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.043168.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %or.cond.not.i.i.i.i.i.i.i = icmp ult i64 %i.fc, 256
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread.i.i.i

.thread119.i.i.thread.i:                          ; preds = %bb.bj, %bb.bf
  %.8.i.i33.ph.i = phi i64 [ %.043168.i.i, %bb.bf ], [ %.7.i.i37.i, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %or.cond.not.i.i.i.i.i.i440.i = icmp ult i64 %i.ho, 256
  br i1 %or.cond.not.i.i.i.i.i.i440.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread115.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %.thread119.i.i.thread.i, %.thread119.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i: ; preds = %.thread119.i.i.i
  %i.hz = trunc nuw i64 %i.fc to i8               ; 2 uses
  store i8 %i.hz, ptr %i.b, align 1, !tbaa !106
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ib = icmp sgt i64 %.promoted.i.i232.i.i, 10
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.ib, label %.lr.ph.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.id = phi i16 [ %i.ig, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i236.i.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i ]
  %i.ie = phi i64 [ %i.if, %.lr.ph.i.i.i.i ], [ %.promoted.i.i232.i.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i ] ; 2 uses
  %i.if = udiv i64 %i.ie, 10                      ; 3 uses
  %i.ig = add i16 %i.id, -1                       ; 3 uses
  %i.ih = icmp samesign ugt i64 %i.ie, 109
  br i1 %i.ih, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.if, ptr %i.ia, align 8, !tbaa !146
  store i16 %i.ig, ptr %i.ic, align 8, !tbaa !147
  br label %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i

_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i
  %i.ii = phi i16 [ %i.ig, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i236.i.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.if, %._crit_edge.i.i.i.i ], [ %.promoted.i.i232.i.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit.i.i.i.i ]
  %i.ij = icmp eq i16 %i.ii, 1
  %i.ik = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i34.i = and i1 %i.ij, %i.ik
  br i1 %or.cond.i.i.i34.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread115.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread115.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i, %.thread119.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i
  %.8.i104287292.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i33.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i33.ph.i, %.thread119.i.i.thread.i ]
  %i.il = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %i.fc, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %i.ho, %.thread119.i.i.thread.i ]
  store i64 %i.il, ptr %6, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split55.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i
  %i.im = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIhhhEEbT_T0_RT1_(i8 noundef zeroext %i.hz, i8 noundef zeroext 1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre15.i.i.i.i = load i8, ptr %i.b, align 1, !tbaa !106
  %i.in = zext i8 %.pre15.i.i.i.i to i64
  store i64 %i.in, ptr %6, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.im, label %.split55.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split55.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread115.i.i.i
  %.8.i104287291.i.i = phi i64 [ %.8.i.i33.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.i.i.i ], [ %.8.i104287292.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb1EEEbRT_.exit.thread115.i.i.i ]
  %i.io = icmp ugt i64 %.8.i104287291.i.i, 1
  br i1 %i.io, label %bb.cw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bk:                                            ; preds = %.critedge.i11.i
  %.not46.i12.i = icmp ne i64 %.043168.i.i, 1
  %i.ip = icmp eq i8 %i.ev, 48
  %or.cond.i13.i = and i1 %.not46.i12.i, %i.ip
  br i1 %or.cond.i13.i, label %bb.bl, label %bb.bz

bb.bl:                                            ; preds = %bb.bk
  %i.iq = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 1 ; 7 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !106 ; 2 uses
  %i.is = add i8 %i.ir, -66                       ; 2 uses
  %i.it = tail call i8 @llvm.fshl.i8(i8 %i.is, i8 %i.is, i8 7)
  switch i8 %i.it, label %bb.by [
    i8 27, label %bb.bm
    i8 11, label %bb.bm
    i8 16, label %bb.br
    i8 0, label %bb.br
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  %i.iu = add i64 %.043168.i.i, -1                ; 5 uses
  %i.iv = icmp ugt i64 %i.iu, 1
  br i1 %i.iv, label %.lr.ph.i58.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i58.i.preheader.i:                         ; preds = %bb.bm
  %i.iw = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !106 ; 3 uses
  %i.iy = add i8 %i.ix, -65
  %or.cond.i.i59.i188.i = icmp ult i8 %i.iy, 26
  %i.iz = or disjoint i8 %i.ix, 32
  %spec.select.i.i.i18189.i = select i1 %or.cond.i.i59.i188.i, i8 %i.iz, i8 %i.ix ; 3 uses
  %i.ja = add i8 %spec.select.i.i.i18189.i, -48
  %or.cond.i36.i.i19190.i = icmp ult i8 %i.ja, 10
  %i.jb = and i8 %spec.select.i.i.i18189.i, -33
  %i.jc = add i8 %i.jb, -65
  %i.jd = icmp ult i8 %i.jc, 6
  %i.je = or i1 %or.cond.i36.i.i19190.i, %i.jd
  br i1 %i.je, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i58.i.i:                                   ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.1.i.i22.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !106 ; 3 uses
  %i.jh = add i8 %i.jg, -65
  %or.cond.i.i59.i.i = icmp ult i8 %i.jh, 26
  %i.ji = or disjoint i8 %i.jg, 32
  %spec.select.i.i.i18.i = select i1 %or.cond.i.i59.i.i, i8 %i.ji, i8 %i.jg ; 3 uses
  %i.jj = add i8 %spec.select.i.i.i18.i, -48
  %or.cond.i36.i.i19.i = icmp ult i8 %i.jj, 10
  %i.jk = and i8 %spec.select.i.i.i18.i, -33
  %i.jl = add i8 %i.jk, -65
  %i.jm = icmp ult i8 %i.jl, 6
  %i.jn = or i1 %or.cond.i36.i.i19.i, %i.jm
  br i1 %i.jn, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i58.i.preheader.i, %.lr.ph.i58.i.i
  %spec.select.i.i.i18192.i = phi i8 [ %spec.select.i.i.i18.i, %.lr.ph.i58.i.i ], [ %spec.select.i.i.i18189.i, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %i.jo = phi i64 [ %i.kh, %.lr.ph.i58.i.i ], [ 0, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %.02642.i.i191.i = phi i64 [ %.1.i.i22.i, %.lr.ph.i58.i.i ], [ 1, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %i.jp = icmp sgt i8 %spec.select.i.i.i18192.i, 96
  %.0.v.i.i20.i = select i1 %i.jp, i8 -87, i8 -48
  %.0.i.i21.i = add i8 %.0.v.i.i20.i, %spec.select.i.i.i18192.i
  %i.jq = add nuw i64 %.02642.i.i191.i, 1         ; 3 uses
  %.not.i60.i.i = icmp eq i64 %i.jq, %i.iu
  br i1 %.not.i60.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !106
  %i.jt = icmp eq i8 %i.js, 95
  br i1 %i.jt, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ju = add nuw i64 %.02642.i.i191.i, 2         ; 3 uses
  %i.jv = icmp eq i64 %i.ju, %i.iu
  br i1 %i.jv, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ju
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !106 ; 2 uses
  %i.jy = add i8 %i.jx, -48
  %or.cond.i37.i.i23.i = icmp ult i8 %i.jy, 10
  %i.jz = and i8 %i.jx, -33
  %i.ka = add i8 %i.jz, -65
  %i.kb = icmp ult i8 %i.ka, 6
  %i.kc = or i1 %or.cond.i37.i.i23.i, %i.kb
  br i1 %i.kc, label %bb.bq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %.lr.ph.i
  %.1.i.i22.i = phi i64 [ %i.ju, %bb.bp ], [ %i.jq, %bb.bn ], [ %i.iu, %.lr.ph.i ] ; 3 uses
  %i.kd = zext i8 %.0.i.i21.i to i64              ; 2 uses
  %i.ke = lshr i64 %i.kd, 4
  %i.kf = xor i64 %i.ke, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.jo, %i.kf
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bq
  %i.kg = shl nsw i64 %i.jo, 4
  %i.kh = add nsw i64 %i.kg, %i.kd                ; 3 uses
  %i.ki = icmp ult i64 %.1.i.i22.i, %i.iu
  br i1 %i.ki, label %.lr.ph.i58.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i
  %or.cond.not.i.i.i.i.i49.i.i = icmp ult i64 %i.kh, 256
  br i1 %or.cond.not.i.i.i.i.i49.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.br:                                            ; preds = %bb.bl, %bb.bl
  %i.kj = add i64 %.043168.i.i, -1                ; 5 uses
  %i.kk = icmp ugt i64 %i.kj, 1
  br i1 %i.kk, label %.lr.ph.i76.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i76.i.i:                                   ; preds = %bb.br, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i
  %i.kl = phi i64 [ %i.kz, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.br ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i79.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.br ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.02436.i.i.i
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !106
  switch i8 %i.kn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.bt
    i8 49, label %bb.bs
  ]

bb.bs:                                            ; preds = %.lr.ph.i76.i.i
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.i76.i.i
  %.0.i77.i.i = phi i64 [ 1, %bb.bs ], [ 0, %.lr.ph.i76.i.i ]
  %i.ko = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i78.i.i = icmp eq i64 %i.ko, %i.kj
  br i1 %.not.i78.i.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kp = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !106
  %i.kr = icmp eq i8 %i.kq, 95
  br i1 %i.kr, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ks = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.kt = icmp eq i64 %i.ks, %i.kj
  br i1 %i.kt, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ks
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !106
  %i.kw = and i8 %i.kv, -2
  %switch.i.i17.i = icmp eq i8 %i.kw, 48
  br i1 %switch.i.i17.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %bb.bt
  %.1.i79.i.i = phi i64 [ %i.kj, %bb.bt ], [ %i.ks, %bb.bw ], [ %i.ko, %bb.bu ] ; 2 uses
  %i.kx = icmp slt i64 %i.kl, 4611686018427387904
  br i1 %i.kx, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bx
  %i.ky = shl nsw i64 %i.kl, 1                    ; 2 uses
  %i.kz = or disjoint i64 %.0.i77.i.i, %i.ky      ; 2 uses
  %i.la = icmp ult i64 %.1.i79.i.i, %i.kj
  br i1 %i.la, label %.lr.ph.i76.i.i, label %._crit_edge.i62.i.i

._crit_edge.i62.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i
  %or.cond.not.i.i.i.i.i63.i.i = icmp ult i64 %i.ky, 256
  br i1 %or.cond.not.i.i.i.i.i63.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.by:                                            ; preds = %bb.bl
  %i.lb = add i8 %i.ir, -48
  %i.lc = icmp ult i8 %i.lb, 10
  %or.cond115.i.i = and i1 %3, %i.lc
  br i1 %or.cond115.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

bb.bz:                                            ; preds = %bb.bk
  %i.ld = icmp eq i8 %i.ev, 43                    ; 2 uses
  %brmerge.not.i.i14.i = and i1 %3, %i.ld
  %.mux.i.i15.i = zext i1 %i.ld to i64
  br i1 %brmerge.not.i.i14.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

.preheader.i.i16.i:                               ; preds = %bb.bz, %bb.by
  %.mux.i110.i.i = phi i64 [ %.mux.i.i15.i, %bb.bz ], [ 0, %bb.by ] ; 5 uses
  %i.le = icmp ugt i64 %.043168.i.i, %.mux.i110.i.i
  br i1 %i.le, label %.lr.ph.i93.i.i, label %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i86.thread.i.i

_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i86.thread.i.i: ; preds = %.preheader.i.i16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIhEELb0EEEbRT_.exit.thread121.i.i.i

.lr.ph.i93.i.i:                                   ; preds = %.preheader.i.i16.i, %bb.cv
  %i.lf = phi i64 [ %i.ns, %bb.cv ], [ 0, %.preheader.i.i16.i ] ; 6 uses
  %.0138.i.i.i = phi i64 [ %.7.i101.i.i, %bb.cv ], [ %.mux.i110.i.i, %.preheader.i.i16.i ] ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.0138.i.i.i
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !106 ; 3 uses
  %i.li = add i8 %i.lh, -48                       ; 2 uses
  %i.lj = icmp ult i8 %i.li, 10
  br i1 %i.lj, label %bb.cq, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i93.i.i
  store i64 %i.lf, ptr %6, align 8
  %i.lk = icmp eq i8 %i.lh, 46
  br i1 %i.lk, label %bb.cb, label %.thread117.i94.i.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ll = icmp ugt i64 %.0138.i.i.i, %.mux.i110.i.i ; 2 uses
  %i.lm = add nuw i64 %.0138.i.i.i, 1             ; 5 uses
  %i.ln = icmp ult i64 %i.lm, %.043168.i.i
  br i1 %i.ln, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %bb.cc
  %i.lo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cj, %.lr.ph140.i.i.i
  %i.lq = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mf, %bb.cj ] ; 2 uses
  %i.lr = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mg, %bb.cj ] ; 2 uses
  %i.ls = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mh, %bb.cj ] ; 3 uses
  %i.lt = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mi, %bb.cj ] ; 4 uses
  %.1139.i.i.i = phi i64 [ %i.lm, %.lr.ph140.i.i.i ], [ %.2.i98.i.i, %bb.cj ] ; 5 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.1139.i.i.i
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !106 ; 2 uses
  %i.lw = add i8 %i.lv, -48                       ; 2 uses
  %i.lx = icmp ult i8 %i.lw, 10
  br i1 %i.lx, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.ly = zext nneg i8 %i.lw to i64               ; 2 uses
  %i.lz = xor i64 %i.ly, 9223372036854775806
  %i.ma = udiv i64 %i.lz, 10
  %i.mb = icmp sgt i64 %i.lt, %i.ma
  br i1 %i.mb, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cf, !prof !125

bb.cf:                                            ; preds = %bb.ce
  %i.mc = add i16 %i.ls, 1                        ; 2 uses
  %i.md = mul nsw i64 %i.lt, 10
  %i.me = add nsw i64 %i.md, %i.ly                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.cf, %bb.ce
  %i.mf = phi i64 [ %i.me, %bb.cf ], [ %i.lq, %bb.ce ] ; 2 uses
  %i.mg = phi i16 [ %i.mc, %bb.cf ], [ %i.lr, %bb.ce ] ; 2 uses
  %i.mh = phi i16 [ %i.mc, %bb.cf ], [ %i.ls, %bb.ce ] ; 2 uses
  %i.mi = phi i64 [ %i.me, %bb.cf ], [ %i.lt, %bb.ce ] ; 2 uses
  %i.mj = add nuw i64 %.1139.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.mj, %.043168.i.i
  br i1 %.not107.i.i.i, label %.thread123.i.i.loopexit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !106
  %i.mm = icmp eq i8 %i.ml, 95
  br i1 %i.mm, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.mn = add i64 %.1139.i.i.i, 2                 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, %.043168.i.i
  br i1 %i.mo, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mp = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.mn
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !106
  %i.mr = add i8 %i.mq, -48
  %i.ms = icmp ult i8 %i.mr, 10
  br i1 %i.ms, label %bb.cj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.2.i98.i.i = phi i64 [ %i.mn, %bb.ci ], [ %i.mj, %bb.cg ] ; 3 uses
  %i.mt = icmp ult i64 %.2.i98.i.i, %.043168.i.i
  br i1 %i.mt, label %bb.cd, label %.thread123.i.i.loopexit.i, !llvm.loop !673

bb.ck:                                            ; preds = %bb.cd
  store i16 %i.lr, ptr %i.lp, align 8
  store i64 %i.lq, ptr %i.lo, align 8
  %i.mu = icmp ugt i64 %.1139.i.i.i, %i.lm
  %or.cond110.i.i.i = or i1 %i.ll, %i.mu
  br i1 %or.cond110.i.i.i, label %.thread117.i94.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread123.i.i.loopexit.i:                        ; preds = %bb.cj, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i98.i.i, %bb.cj ], [ %.043168.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIhEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.mg, ptr %i.lp, align 8
  store i64 %i.mf, ptr %i.lo, align 8
  br label %.thread123.i.i.i

.thread123.i.i.i:                                 ; preds = %.thread123.i.i.loopexit.i, %bb.cc
  %.promoted11.i.i85230.i.i = phi i16 [ 0, %bb.cc ], [ %i.mh, %.thread123.i.i.loopexit.i ]
  %.promoted.i.i84226.i.i = phi i64 [ 0, %bb.cc ], [ %i.mi, %.thread123.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.lm, %bb.cc ], [ %.1.lcssa.i.i.ph.i, %.thread123.i.i.loopexit.i ] ; 2 uses
  %i.mv = icmp ugt i64 %.1.lcssa.i.i.i, %i.lm
  %or.cond110124.i.i.i = or i1 %i.ll, %i.mv
  br i1 %or.cond110124.i.i.i, label %.thread125.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i94.i.i:                               ; preds = %bb.ck, %bb.ca
  %.promoted11.i.i85229.i.i = phi i16 [ 0, %bb.ca ], [ %i.ls, %bb.ck ] ; 2 uses
  %.promoted.i.i84225.i.i = phi i64 [ 0, %bb.ca ], [ %i.lt, %bb.ck ] ; 2 uses
  %i.mw = phi i8 [ %i.lh, %bb.ca ], [ %i.lv, %bb.ck ]
  %.4.i95.i.i = phi i64 [ %.0138.i.i.i, %bb.ca ], [ %.1139.i.i.i, %bb.ck ] ; 3 uses
  switch i8 %i.mw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIhEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 101, label %bb.cl
    i8 69, label %bb.cl
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i: ; preds = %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i
  %i.mx = add nuw i64 %.4.i95.i.i, 1              ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb7TryCast9OperationINS_8string_tEtEEbT_RT0_b
define noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEtEEbT_RT0_b(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 9 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i16, align 2                      ; 9 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerDecimalCastData.162", align 8 ; 22 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  %cond110.i.i = icmp eq i32 %i.d, 0
  br i1 %cond110.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.042112.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 16 uses
  %.043111.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 27 uses
  %i.i = load i8, ptr %.042112.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %bb.l [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %.preheader.i.i.preheader
  ]

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %cond = icmp eq i64 %.043111.i.i, 1
  br i1 %cond, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 1
  %i.k = add nsw i64 %.043111.i.i, -1             ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.lr.ph.i.i, !llvm.loop !676

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.l = add i64 %.040.i.i638, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %.043111.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !677

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.040.i.i638 = phi i64 [ %i.l, %.preheader.i.i ], [ 1, %.preheader.i.i.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.040.i.i638
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106
  %.not47.i.i = icmp eq i8 %i.n, 48
  br i1 %.not47.i.i, label %.preheader.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, !llvm.loop !677

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i
  br i1 %3, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.0.9.i = phi i16 [ %i.v, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06092.us.i.i.i = phi i64 [ %i.s, %bb.c ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.06092.us.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106   ; 2 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.c, label %.split.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.s = add nuw i64 %.06092.us.i.i.i, 1          ; 2 uses
  %i.t = zext nneg i8 %i.q to i16
  %i.u = mul i16 %.sroa.0.9.i, 10
  %i.v = sub i16 %i.u, %i.t                       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %.043111.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !678

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.k
  %.sroa.0.6.i = phi i16 [ %i.as, %bb.k ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06092.i.i.i = phi i64 [ %.7.i.i.i, %bb.k ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.06092.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !106   ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %bb.g, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.0.7.i = phi i16 [ %.sroa.0.9.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.6.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %.pre.i.i.i = phi i8 [ %i.p, %.lr.ph.split.us.i.i.i ], [ %i.x, %.lr.ph.split.i.i.i ] ; 2 uses
  %.us-phi93.i.i.i = phi i64 [ %.06092.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.06092.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.aa = icmp eq i8 %.pre.i.i.i, 46
  br i1 %i.aa, label %bb.d, label %.thread80.i.i.i

bb.d:                                             ; preds = %.split.us.i.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %.us-phi93.i.i.i, 2        ; 2 uses
  %i.ac = add nuw i64 %.us-phi93.i.i.i, 1         ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.043111.i.i
  br i1 %i.ad, label %bb.f, label %.thread82.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !106 ; 2 uses
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp ult i8 %i.ag, 10
  %brmerge.i.i.i = or i1 %i.ab, %i.ah
  br i1 %brmerge.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread80.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.e
  br i1 %i.ab, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

.thread80.i.i.i:                                  ; preds = %bb.f, %.split.us.i.i.i
  %i.ai = phi i8 [ %i.af, %bb.f ], [ %.pre.i.i.i, %.split.us.i.i.i ]
  %.4.i.i.i = phi i64 [ %i.ac, %bb.f ], [ %.us-phi93.i.i.i, %.split.us.i.i.i ]
  switch i8 %i.ai, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i
  %i.aj = add i64 %.4.i.i.i, 1                    ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.043111.i.i
  br i1 %i.ak, label %.lr.ph95.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i

.lr.ph95.i.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  %i.al = phi i64 [ %i.ao, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.aj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106
  switch i8 %i.an, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i: ; preds = %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i
  %i.ao = add nuw i64 %i.al, 1                    ; 2 uses
  %exitcond111.not.i.i.i = icmp eq i64 %i.ao, %.043111.i.i
  br i1 %exitcond111.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph95.i.i.i, !llvm.loop !679

bb.g:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ap = add nuw i64 %.06092.i.i.i, 1            ; 3 uses
  %i.aq = zext nneg i8 %i.y to i16
  %i.ar = mul i16 %.sroa.0.6.i, 10
  %i.as = sub i16 %i.ar, %i.aq                    ; 3 uses
  %.not76.i.i.i = icmp eq i64 %i.ap, %.043111.i.i
  br i1 %.not76.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !106
  %.not97.i.i.i = icmp eq i8 %i.au, 95
  br i1 %.not97.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = add i64 %.06092.i.i.i, 2                ; 3 uses
  %i.aw = icmp eq i64 %i.av, %.043111.i.i
  br i1 %i.aw, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !106
  %i.az = add i8 %i.ay, -48
  %i.ba = icmp ult i8 %i.az, 10
  br i1 %i.ba, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.k:                                             ; preds = %bb.j, %bb.h
  %.7.i.i.i = phi i64 [ %i.ap, %bb.h ], [ %i.av, %bb.j ] ; 3 uses
  %i.bb = icmp ult i64 %.7.i.i.i, %.043111.i.i
  br i1 %i.bb, label %.lr.ph.split.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, !llvm.loop !678

bb.l:                                             ; preds = %.lr.ph.i.i
  %.not46.i.i = icmp ne i64 %.043111.i.i, 1
  %i.bc = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not46.i.i, %i.bc
  br i1 %or.cond.i.i, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 1 ; 7 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !106 ; 2 uses
  %i.bf = add i8 %i.be, -66                       ; 2 uses
  %i.bg = tail call i8 @llvm.fshl.i8(i8 %i.bf, i8 %i.bf, i8 7)
  switch i8 %i.bg, label %bb.aa [
    i8 27, label %bb.n
    i8 11, label %bb.n
    i8 16, label %bb.t
    i8 0, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bh = add i64 %.043111.i.i, -1                ; 5 uses
  %i.bi = icmp ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

.lr.ph.i49.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i
  %.02640.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.n ] ; 3 uses
  %i.bj = phi i16 [ %i.cl, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.02640.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !106 ; 3 uses
  %i.bm = add i8 %i.bl, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bm, 26
  %i.bn = or disjoint i8 %i.bl, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bn, i8 %i.bl ; 4 uses
  %i.bo = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.bo, 10
  %i.bp = and i8 %spec.select.i.i.i.i, -33
  %i.bq = add i8 %i.bp, -65
  %i.br = icmp ult i8 %i.bq, 6
  %i.bs = or i1 %or.cond.i36.i.i.i, %i.br
  br i1 %i.bs, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.o:                                             ; preds = %.lr.ph.i49.i.i
  %i.bt = icmp sgt i8 %spec.select.i.i.i.i, 96
  %.0.v.i.i.i = select i1 %i.bt, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i.i ; 2 uses
  %i.bu = add nuw i64 %.02640.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bu, %i.bh
  br i1 %.not.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !106
  %i.bx = icmp eq i8 %i.bw, 95
  br i1 %i.bx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.by = add nuw i64 %.02640.i.i.i, 2            ; 3 uses
  %i.bz = icmp eq i64 %i.by, %i.bh
  br i1 %i.bz, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !106 ; 2 uses
  %i.cc = add i8 %i.cb, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.cc, 10
  %i.cd = and i8 %i.cb, -33
  %i.ce = add i8 %i.cd, -65
  %i.cf = icmp ult i8 %i.ce, 6
  %i.cg = or i1 %or.cond.i37.i.i.i, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.1.i.i.i = phi i64 [ %i.by, %bb.r ], [ %i.bu, %bb.p ], [ %i.bh, %bb.o ] ; 2 uses
  %i.ch = zext i16 %i.bj to i32
  %i.ci = lshr i8 %.0.i.i.i, 4
  %.lhs.trunc.i.i.i.i = zext nneg i8 %i.ci to i32
  %.zext.i.i.i.i = xor i32 %.lhs.trunc.i.i.i.i, 4095
  %.not38.i.i.i = icmp samesign ult i32 %.zext.i.i.i.i, %i.ch
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.s
  %i.cj = zext i8 %.0.i.i.i to i16
  %i.ck = shl i16 %i.bj, 4
  %i.cl = add i16 %i.ck, %i.cj                    ; 2 uses
  %i.cm = icmp ult i64 %.1.i.i.i, %i.bh
  br i1 %i.cm, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.t:                                             ; preds = %bb.m, %bb.m
  %i.cn = add i64 %.043111.i.i, -1                ; 5 uses
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i
  %.02435.i.i.i = phi i64 [ %.1.i55.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.t ] ; 3 uses
  %i.cp = phi i16 [ %i.dd, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.02435.i.i.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !106
  switch i8 %i.cr, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 48, label %bb.v
    i8 49, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i52.i.i
  %.0.i53.i.i = phi i16 [ 1, %bb.u ], [ 0, %.lr.ph.i52.i.i ]
  %i.cs = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i54.i.i = icmp eq i64 %i.cs, %i.cn
  br i1 %.not.i54.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106
  %i.cv = icmp eq i8 %i.cu, 95
  br i1 %i.cv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cw = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.cx = icmp eq i64 %i.cw, %i.cn
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !106
  %i.da = and i8 %i.cz, -2
  %switch.i.i.i = icmp eq i8 %i.da, 48
  br i1 %switch.i.i.i, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %.1.i55.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.cw, %bb.y ], [ %i.cs, %bb.w ] ; 2 uses
  %i.db = icmp sgt i16 %i.cp, -1
  br i1 %i.db, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.z
  %i.dc = shl nuw i16 %i.cp, 1
  %i.dd = or disjoint i16 %.0.i53.i.i, %i.dc      ; 2 uses
  %i.de = icmp ult i64 %.1.i55.i.i, %i.cn
  br i1 %i.de, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.aa:                                            ; preds = %bb.m
  %i.df = add i8 %i.be, -48
  %i.dg = icmp ult i8 %i.df, 10
  %or.cond75.i.i = and i1 %3, %i.dg
  br i1 %or.cond75.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.preheader.i.i.i

bb.ab:                                            ; preds = %bb.l
  %i.dh = icmp eq i8 %i.i, 43                     ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.dh
  %.mux.i.i.i = zext i1 %i.dh to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ab, %bb.aa
  %.mux.i73.i.i = phi i64 [ %.mux.i.i.i, %bb.ab ], [ 0, %bb.aa ] ; 5 uses
  %i.di = icmp ugt i64 %.043111.i.i, %.mux.i73.i.i
  br i1 %i.di, label %.lr.ph.i57.i.i, label %.thread90.i.i.i

.lr.ph.i57.i.i:                                   ; preds = %.preheader.i.i.i
  br i1 %3, label %.lr.ph.split.us.i68.i.i, label %.lr.ph.split.i59.i.i

.lr.ph.split.us.i68.i.i:                          ; preds = %.lr.ph.i57.i.i, %bb.ad
  %.sroa.0.3.i = phi i16 [ %i.dr, %bb.ad ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.us.i.i.i = phi i64 [ %i.dp, %bb.ad ], [ %.mux.i73.i.i, %.lr.ph.i57.i.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.099.us.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !106 ; 2 uses
  %i.dl = add i8 %i.dk, -48                       ; 2 uses
  %i.dm = icmp ult i8 %i.dl, 10
  br i1 %i.dm, label %bb.ac, label %.split.us.i60.i.i

bb.ac:                                            ; preds = %.lr.ph.split.us.i68.i.i
  %i.dn = zext nneg i8 %i.dl to i16               ; 2 uses
  %.lhs.trunc.i.us.i.i.i = xor i16 %i.dn, -1
  %i.do = udiv i16 %.lhs.trunc.i.us.i.i.i, 10
  %.not.us.i.i.i = icmp ult i16 %i.do, %.sroa.0.3.i
  br i1 %.not.us.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.ad, !prof !125

bb.ad:                                            ; preds = %bb.ac
  %i.dp = add i64 %.099.us.i.i.i, 1               ; 2 uses
  %i.dq = mul nuw i16 %.sroa.0.3.i, 10
  %i.dr = add i16 %i.dq, %i.dn                    ; 2 uses
  %exitcond.not.i69.i.i = icmp eq i64 %i.dp, %.043111.i.i
  br i1 %exitcond.not.i69.i.i, label %.thread90.i.i.i, label %.lr.ph.split.us.i68.i.i, !llvm.loop !680

.lr.ph.split.i59.i.i:                             ; preds = %.lr.ph.i57.i.i, %bb.am
  %.sroa.0.1.i = phi i16 [ %i.ep, %bb.am ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.i.i.i = phi i64 [ %.7.i67.i.i, %bb.am ], [ %.mux.i73.i.i, %.lr.ph.i57.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %.099.i.i.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !106 ; 2 uses
  %i.du = add i8 %i.dt, -48                       ; 2 uses
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %bb.ah, label %.split.us.i60.i.i

.split.us.i60.i.i:                                ; preds = %.lr.ph.split.i59.i.i, %.lr.ph.split.us.i68.i.i
  %.sroa.0.2.i = phi i16 [ %.sroa.0.3.i, %.lr.ph.split.us.i68.i.i ], [ %.sroa.0.1.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %.pre.i61.i.i = phi i8 [ %i.dk, %.lr.ph.split.us.i68.i.i ], [ %i.dt, %.lr.ph.split.i59.i.i ] ; 2 uses
  %.us-phi100.i.i.i = phi i64 [ %.099.us.i.i.i, %.lr.ph.split.us.i68.i.i ], [ %.099.i.i.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %i.dw = icmp eq i8 %.pre.i61.i.i, 46
  br i1 %i.dw, label %bb.ae, label %.thread86.i.i.i

bb.ae:                                            ; preds = %.split.us.i60.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = icmp ule i64 %.us-phi100.i.i.i, %.mux.i73.i.i ; 2 uses
  %i.dy = add nuw i64 %.us-phi100.i.i.i, 1        ; 4 uses
  %i.dz = icmp ult i64 %i.dy, %.043111.i.i
  br i1 %i.dz, label %bb.ag, label %.thread88.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !106 ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  %brmerge.i64.i.i = or i1 %i.dx, %i.ed
  br i1 %brmerge.i64.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread86.i.i.i

.thread88.i.i.i:                                  ; preds = %bb.af
  br i1 %i.dx, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread90.i.i.i

.thread86.i.i.i:                                  ; preds = %bb.ag, %.split.us.i60.i.i
  %i.ee = phi i8 [ %i.eb, %bb.ag ], [ %.pre.i61.i.i, %.split.us.i60.i.i ]
  %.4.i62.i.i = phi i64 [ %i.dy, %bb.ag ], [ %.us-phi100.i.i.i, %.split.us.i60.i.i ]
  switch i8 %i.ee, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i: ; preds = %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i
  %i.ef = add i64 %.4.i62.i.i, 1                  ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %.043111.i.i
  br i1 %i.eg, label %.lr.ph102.i.i.i, label %.thread90.i.i.i

.lr.ph102.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  %i.eh = phi i64 [ %i.ek, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.ef, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !106
  switch i8 %i.ej, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i: ; preds = %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i
  %i.ek = add nuw i64 %i.eh, 1                    ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %i.ek, %.043111.i.i
  br i1 %exitcond121.not.i.i.i, label %.thread90.i.i.i, label %.lr.ph102.i.i.i, !llvm.loop !681

bb.ah:                                            ; preds = %.lr.ph.split.i59.i.i
  %i.el = add nuw i64 %.099.i.i.i, 1              ; 3 uses
  %i.em = zext nneg i8 %i.du to i16               ; 2 uses
  %.lhs.trunc.i.i65.i.i = xor i16 %i.em, -1
  %i.en = udiv i16 %.lhs.trunc.i.i65.i.i, 10
  %.not.i66.i.i = icmp ult i16 %i.en, %.sroa.0.1.i
  br i1 %.not.i66.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %bb.ah
  %i.eo = mul nuw i16 %.sroa.0.1.i, 10
  %i.ep = add i16 %i.eo, %i.em                    ; 3 uses
  %.not80.i.i.i = icmp eq i64 %i.el, %.043111.i.i
  br i1 %.not80.i.i.i, label %.thread90.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.el
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !106
  %.not104.i.i.i = icmp eq i8 %i.er, 95
  br i1 %.not104.i.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.es = add i64 %.099.i.i.i, 2                  ; 3 uses
  %i.et = icmp eq i64 %i.es, %.043111.i.i
  br i1 %i.et, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %.042112.i.i, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !106
  %i.ew = add i8 %i.ev, -48
  %i.ex = icmp ult i8 %i.ew, 10
  br i1 %i.ex, label %bb.am, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.7.i67.i.i = phi i64 [ %i.el, %bb.aj ], [ %i.es, %bb.al ] ; 3 uses
  %i.ey = icmp ult i64 %.7.i67.i.i, %.043111.i.i
  br i1 %i.ey, label %.lr.ph.split.i59.i.i, label %.thread90.i.i.i, !llvm.loop !680

.thread90.i.i.i:                                  ; preds = %bb.am, %bb.ai, %bb.ad, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %.thread88.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i = phi i16 [ %i.dr, %bb.ad ], [ 0, %.preheader.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %.sroa.0.2.i, %.thread88.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.ep, %bb.ai ], [ %i.ep, %bb.am ]
  %.8.i56.i.i = phi i64 [ %.043111.i.i, %bb.ad ], [ 1, %.preheader.i.i.i ], [ %i.ef, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %i.dy, %.thread88.i.i.i ], [ %.043111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %.043111.i.i, %bb.ai ], [ %.7.i67.i.i, %bb.am ]
  %i.ez = icmp ugt i64 %.8.i56.i.i, %.mux.i73.i.i
  br i1 %i.ez, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %bb.k, %bb.g, %bb.c, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  %.sroa.0.8.i = phi i16 [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %i.v, %bb.c ], [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.as, %bb.g ], [ %i.as, %bb.k ]
  %.8.i.i.i = phi i64 [ %i.aj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.043111.i.i, %bb.c ], [ %.043111.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %.043111.i.i, %bb.g ], [ %.7.i.i.i, %bb.k ]
  %i.fa = icmp ugt i64 %.8.i.i.i, 1
  br i1 %i.fa, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread82.i.i.i
  %.sroa.0.1044.i = phi i16 [ %.sroa.0.7.i, %.thread82.i.i.i ], [ %.sroa.0.8.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i ], [ %.sroa.0.0.i, %.thread90.i.i.i ], [ %i.cl, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i ], [ %i.dd, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataItEELb0EEEbRT_h.exit.i.i.i ]
  store i16 %.sroa.0.1044.i, ptr %2, align 2, !tbaa !116
  br label %_ZN6duckdbL20TrySimpleIntegerCastItLb0EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i: ; preds = %bb.b, %.lr.ph, %bb.j, %bb.i, %.lr.ph95.i.i.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i52.i.i, %bb.s, %bb.r, %bb.q, %.lr.ph.i49.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ac, %.lr.ph102.i.i.i, %.preheader.i.i.preheader, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread86.i.i.i, %.thread88.i.i.i, %bb.ag, %bb.ae, %bb.ab, %bb.aa, %bb.t, %bb.n, %.thread80.i.i.i, %.thread82.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.an, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i
  %.042169.i.i = phi ptr [ %i.fc, %bb.an ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i ] ; 21 uses
  %.043168.i.i = phi i64 [ %i.fd, %bb.an ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataItEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i ] ; 35 uses
  %i.fb = load i8, ptr %.042169.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.fb, label %.critedge.i11.i [
    i8 32, label %bb.an
    i8 12, label %bb.an
    i8 11, label %bb.an
    i8 10, label %bb.an
    i8 9, label %bb.an
    i8 13, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 1
  %i.fd = add i64 %.043168.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.fd, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !682

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.fe = icmp eq i8 %i.fb, 45
  br i1 %i.fe, label %.preheader.i24.i.preheader, label %bb.bk

.preheader.i24.i.preheader:                       ; preds = %.critedge.i11.i
  %cond642 = icmp eq i64 %.043168.i.i, 1
  br i1 %cond642, label %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i, label %.lr.ph641

.preheader.i24.i:                                 ; preds = %.lr.ph641
  %i.ff = add i64 %.040.i25.i640, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.ff, %.043168.i.i
  br i1 %exitcond.not.i26.i, label %.lr.ph.i.i29.i, label %.lr.ph641, !llvm.loop !683

.lr.ph641:                                        ; preds = %.preheader.i24.i.preheader, %.preheader.i24.i
  %.040.i25.i640 = phi i64 [ %i.ff, %.preheader.i24.i ], [ 1, %.preheader.i24.i.preheader ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.040.i25.i640
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !106
  %.not47.i27.i = icmp eq i8 %i.fh, 48
  br i1 %.not47.i27.i, label %.preheader.i24.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !llvm.loop !683

_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i: ; preds = %.preheader.i24.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread115.i.i.i

.lr.ph.i.i29.i:                                   ; preds = %.preheader.i24.i, %bb.bj
  %i.fi = phi i64 [ %i.hu, %bb.bj ], [ 0, %.preheader.i24.i ] ; 6 uses
  %.084132.i.i.i = phi i64 [ %.7.i.i37.i, %bb.bj ], [ 1, %.preheader.i24.i ] ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.084132.i.i.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !106 ; 3 uses
  %i.fl = add i8 %i.fk, -48                       ; 2 uses
  %i.fm = icmp ult i8 %i.fl, 10
  br i1 %i.fm, label %bb.be, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i29.i
  store i64 %i.fi, ptr %6, align 8
  %i.fn = icmp eq i8 %i.fk, 46
  br i1 %i.fn, label %bb.ap, label %.thread111.i.i.i

bb.ap:                                            ; preds = %bb.ao
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = icmp ugt i64 %.084132.i.i.i, 1          ; 2 uses
  %i.fp = add nuw i64 %.084132.i.i.i, 1           ; 5 uses
  %i.fq = icmp ult i64 %i.fp, %.043168.i.i
  br i1 %i.fq, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %bb.aq
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ax, %.lr.ph134.i.i.i
  %i.ft = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gi, %bb.ax ] ; 2 uses
  %i.fu = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.gj, %bb.ax ] ; 2 uses
  %i.fv = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.gk, %bb.ax ] ; 3 uses
  %i.fw = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gl, %bb.ax ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.fp, %.lr.ph134.i.i.i ], [ %.2.i.i.i, %bb.ax ] ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.185133.i.i.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !106 ; 2 uses
  %i.fz = add i8 %i.fy, -48                       ; 2 uses
  %i.ga = icmp ult i8 %i.fz, 10
  br i1 %i.ga, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.gb = zext nneg i8 %i.fz to i64               ; 2 uses
  %i.gc = xor i64 %i.gb, 9223372036854775806
  %i.gd = udiv i64 %i.gc, 10
  %i.ge = icmp sgt i64 %i.fw, %i.gd
  br i1 %i.ge, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.at, !prof !125

bb.at:                                            ; preds = %bb.as
  %i.gf = add i16 %i.fv, 1                        ; 2 uses
  %i.gg = mul nsw i64 %i.fw, 10
  %i.gh = add nsw i64 %i.gg, %i.gb                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.at, %bb.as
  %i.gi = phi i64 [ %i.gh, %bb.at ], [ %i.ft, %bb.as ] ; 2 uses
  %i.gj = phi i16 [ %i.gf, %bb.at ], [ %i.fu, %bb.as ] ; 2 uses
  %i.gk = phi i16 [ %i.gf, %bb.at ], [ %i.fv, %bb.as ] ; 2 uses
  %i.gl = phi i64 [ %i.gh, %bb.at ], [ %i.fw, %bb.as ] ; 2 uses
  %i.gm = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.gm, %.043168.i.i
  br i1 %.not103.i.i.i, label %.thread117.i.i.loopexit.i, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !106
  %i.gp = icmp eq i8 %i.go, 95
  br i1 %i.gp, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gq = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.gr = icmp eq i64 %i.gq, %.043168.i.i
  br i1 %i.gr, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !106
  %i.gu = add i8 %i.gt, -48
  %i.gv = icmp ult i8 %i.gu, 10
  br i1 %i.gv, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.2.i.i.i = phi i64 [ %i.gq, %bb.aw ], [ %i.gm, %bb.au ] ; 3 uses
  %i.gw = icmp ult i64 %.2.i.i.i, %.043168.i.i
  br i1 %i.gw, label %bb.ar, label %.thread117.i.i.loopexit.i, !llvm.loop !684

bb.ay:                                            ; preds = %bb.ar
  store i16 %i.fu, ptr %i.fs, align 8
  store i64 %i.ft, ptr %i.fr, align 8
  %i.gx = icmp ugt i64 %.185133.i.i.i, %i.fp
  %or.cond106.i.i.i = or i1 %i.fo, %i.gx
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i.i.loopexit.i:                        ; preds = %bb.ax, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.ax ], [ %.043168.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.gj, ptr %i.fs, align 8
  store i64 %i.gi, ptr %i.fr, align 8
  br label %.thread117.i.i.i

.thread117.i.i.i:                                 ; preds = %.thread117.i.i.loopexit.i, %bb.aq
  %.promoted11.i.i238.i.i = phi i16 [ 0, %bb.aq ], [ %i.gk, %.thread117.i.i.loopexit.i ]
  %.promoted.i.i234.i.i = phi i64 [ 0, %bb.aq ], [ %i.gl, %.thread117.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.fp, %bb.aq ], [ %.185.lcssa.i.i.ph.i, %.thread117.i.i.loopexit.i ] ; 2 uses
  %i.gy = icmp ugt i64 %.185.lcssa.i.i.i, %i.fp
  %or.cond106118.i.i.i = or i1 %i.fo, %i.gy
  br i1 %or.cond106118.i.i.i, label %.thread119.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.ay, %bb.ao
  %.promoted11.i.i237.i.i = phi i16 [ 0, %bb.ao ], [ %i.fv, %bb.ay ] ; 2 uses
  %.promoted.i.i233.i.i = phi i64 [ 0, %bb.ao ], [ %i.fw, %bb.ay ] ; 2 uses
  %i.gz = phi i8 [ %i.fk, %bb.ao ], [ %i.fy, %bb.ay ]
  %.4.i.i30.i = phi i64 [ %.084132.i.i.i, %bb.ao ], [ %.185133.i.i.i, %bb.ay ] ; 3 uses
  switch i8 %i.gz, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 101, label %bb.az
    i8 69, label %bb.az
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.ha = add nuw i64 %.4.i.i30.i, 1              ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %.043168.i.i
  br i1 %i.hb, label %.lr.ph136.i.i.i, label %.thread119.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.hc = phi i64 [ %i.hf, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.ha, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !106
  switch i8 %i.he, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i
  %i.hf = add nuw i64 %i.hc, 1                    ; 2 uses
  %exitcond.not.i.i35.i = icmp eq i64 %i.hf, %.043168.i.i
  br i1 %exitcond.not.i.i35.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !685

bb.az:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.hg = icmp eq i64 %.4.i.i30.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.hg
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hh = add nuw i64 %.4.i.i30.i, 1              ; 3 uses
  %.not104.i.i31.i = icmp ult i64 %i.hh, %.043168.i.i
  br i1 %.not104.i.i31.i, label %bb.bb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.hi = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hh ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !106
  %i.hk = icmp eq i8 %i.hj, 45
  %i.hl = sub nuw i64 %.043168.i.i, %i.hh         ; 2 uses
  br i1 %i.hk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hi, i64 noundef %i.hl, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hm, label %.split56.i, label %.split56.thread.i

bb.bd:                                            ; preds = %bb.bb
  %i.hn = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hi, i64 noundef %i.hl, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hn, label %.split56.i, label %.split56.thread.i

.split56.thread.i:                                ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split56.i:                                       ; preds = %bb.bd, %bb.bc
  %i.ho = load i16, ptr %5, align 2, !tbaa !128
  %i.hp = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataItEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.hp, label %bb.cw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.be:                                            ; preds = %.lr.ph.i.i29.i
  %i.hq = add nuw i64 %.084132.i.i.i, 1           ; 3 uses
  %i.hr = zext nneg i8 %i.fl to i64               ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i64 -9223372036854775808, %i.hr
  %i.hs = udiv i64 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i64 0, %i.hs
  %.not.i.i36.i = icmp slt i64 %i.fi, %.neg.i.i.i.i
  br i1 %.not.i.i36.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bf, !prof !125

bb.bf:                                            ; preds = %bb.be
  %i.ht = mul nsw i64 %i.fi, 10
  %i.hu = sub nsw i64 %i.ht, %i.hr                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.hq, %.043168.i.i
  br i1 %.not105.i.i.i, label %.thread119.i.i.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hv = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hq
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !106
  %i.hx = icmp ne i8 %i.hw, 95
  %or.cond.i.i.i = or i1 %3, %i.hx
  br i1 %or.cond.i.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hy = add i64 %.084132.i.i.i, 2               ; 3 uses
  %i.hz = icmp eq i64 %i.hy, %.043168.i.i
  br i1 %i.hz, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ia = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hy
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !106
  %i.ic = add i8 %i.ib, -48
  %i.id = icmp ult i8 %i.ic, 10
  br i1 %i.id, label %bb.bj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.7.i.i37.i = phi i64 [ %i.hq, %bb.bg ], [ %i.hy, %bb.bi ] ; 3 uses
  %i.ie = icmp ult i64 %.7.i.i37.i, %.043168.i.i
  br i1 %i.ie, label %.lr.ph.i.i29.i, label %.thread119.i.i.thread.i, !llvm.loop !686

.thread119.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i, %.thread117.i.i.i
  %.promoted11.i.i236.i.i = phi i16 [ %.promoted11.i.i238.i.i, %.thread117.i.i.i ], [ %.promoted11.i.i237.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.promoted11.i.i237.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i232.i.i = phi i64 [ %.promoted.i.i234.i.i, %.thread117.i.i.i ], [ %.promoted.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.promoted.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i33.i = phi i64 [ %.185.lcssa.i.i.i, %.thread117.i.i.i ], [ %i.ha, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.043168.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %or.cond.not.i.i.i.i.i.i.i = icmp ult i64 %i.fi, 65536
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread.i.i.i

.thread119.i.i.thread.i:                          ; preds = %bb.bj, %bb.bf
  %.8.i.i33.ph.i = phi i64 [ %.043168.i.i, %bb.bf ], [ %.7.i.i37.i, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %or.cond.not.i.i.i.i.i.i441.i = icmp ult i64 %i.hu, 65536
  br i1 %or.cond.not.i.i.i.i.i.i441.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread115.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %.thread119.i.i.thread.i, %.thread119.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i: ; preds = %.thread119.i.i.i
  %i.if = trunc nuw i64 %i.fi to i16              ; 2 uses
  store i16 %i.if, ptr %i.b, align 2, !tbaa !116
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ih = icmp sgt i64 %.promoted.i.i232.i.i, 10
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.ih, label %.lr.ph.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ij = phi i16 [ %i.im, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i236.i.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i ]
  %i.ik = phi i64 [ %i.il, %.lr.ph.i.i.i.i ], [ %.promoted.i.i232.i.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i ] ; 2 uses
  %i.il = udiv i64 %i.ik, 10                      ; 3 uses
  %i.im = add i16 %i.ij, -1                       ; 3 uses
  %i.in = icmp samesign ugt i64 %i.ik, 109
  br i1 %i.in, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.il, ptr %i.ig, align 8, !tbaa !150
  store i16 %i.im, ptr %i.ii, align 8, !tbaa !151
  br label %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i

_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i
  %i.io = phi i16 [ %i.im, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i236.i.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.il, %._crit_edge.i.i.i.i ], [ %.promoted.i.i232.i.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit.i.i.i.i ]
  %i.ip = icmp eq i16 %i.io, 1
  %i.iq = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i34.i = and i1 %i.ip, %i.iq
  br i1 %or.cond.i.i.i34.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread115.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread115.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i, %.thread119.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i
  %.8.i104287292.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i33.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i33.ph.i, %.thread119.i.i.thread.i ]
  %i.ir = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %i.fi, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %i.hu, %.thread119.i.i.thread.i ]
  store i64 %i.ir, ptr %6, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split55.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i
  %i.is = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationItttEEbT_T0_RT1_(i16 noundef zeroext %i.if, i16 noundef zeroext 1, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  %.pre15.i.i.i.i = load i16, ptr %i.b, align 2, !tbaa !116
  %i.it = zext i16 %.pre15.i.i.i.i to i64
  store i64 %i.it, ptr %6, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.is, label %.split55.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split55.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread115.i.i.i
  %.8.i104287291.i.i = phi i64 [ %.8.i.i33.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.i.i.i ], [ %.8.i104287292.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb1EEEbRT_.exit.thread115.i.i.i ]
  %i.iu = icmp ugt i64 %.8.i104287291.i.i, 1
  br i1 %i.iu, label %bb.cw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bk:                                            ; preds = %.critedge.i11.i
  %.not46.i12.i = icmp ne i64 %.043168.i.i, 1
  %i.iv = icmp eq i8 %i.fb, 48
  %or.cond.i13.i = and i1 %.not46.i12.i, %i.iv
  br i1 %or.cond.i13.i, label %bb.bl, label %bb.bz

bb.bl:                                            ; preds = %bb.bk
  %i.iw = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 1 ; 7 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !106 ; 2 uses
  %i.iy = add i8 %i.ix, -66                       ; 2 uses
  %i.iz = tail call i8 @llvm.fshl.i8(i8 %i.iy, i8 %i.iy, i8 7)
  switch i8 %i.iz, label %bb.by [
    i8 27, label %bb.bm
    i8 11, label %bb.bm
    i8 16, label %bb.br
    i8 0, label %bb.br
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  %i.ja = add i64 %.043168.i.i, -1                ; 5 uses
  %i.jb = icmp ugt i64 %i.ja, 1
  br i1 %i.jb, label %.lr.ph.i58.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i58.i.preheader.i:                         ; preds = %bb.bm
  %i.jc = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !106 ; 3 uses
  %i.je = add i8 %i.jd, -65
  %or.cond.i.i59.i188.i = icmp ult i8 %i.je, 26
  %i.jf = or disjoint i8 %i.jd, 32
  %spec.select.i.i.i18189.i = select i1 %or.cond.i.i59.i188.i, i8 %i.jf, i8 %i.jd ; 3 uses
  %i.jg = add i8 %spec.select.i.i.i18189.i, -48
  %or.cond.i36.i.i19190.i = icmp ult i8 %i.jg, 10
  %i.jh = and i8 %spec.select.i.i.i18189.i, -33
  %i.ji = add i8 %i.jh, -65
  %i.jj = icmp ult i8 %i.ji, 6
  %i.jk = or i1 %or.cond.i36.i.i19190.i, %i.jj
  br i1 %i.jk, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i58.i.i:                                   ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.1.i.i22.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !106 ; 3 uses
  %i.jn = add i8 %i.jm, -65
  %or.cond.i.i59.i.i = icmp ult i8 %i.jn, 26
  %i.jo = or disjoint i8 %i.jm, 32
  %spec.select.i.i.i18.i = select i1 %or.cond.i.i59.i.i, i8 %i.jo, i8 %i.jm ; 3 uses
  %i.jp = add i8 %spec.select.i.i.i18.i, -48
  %or.cond.i36.i.i19.i = icmp ult i8 %i.jp, 10
  %i.jq = and i8 %spec.select.i.i.i18.i, -33
  %i.jr = add i8 %i.jq, -65
  %i.js = icmp ult i8 %i.jr, 6
  %i.jt = or i1 %or.cond.i36.i.i19.i, %i.js
  br i1 %i.jt, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i58.i.preheader.i, %.lr.ph.i58.i.i
  %spec.select.i.i.i18192.i = phi i8 [ %spec.select.i.i.i18.i, %.lr.ph.i58.i.i ], [ %spec.select.i.i.i18189.i, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %i.ju = phi i64 [ %i.kn, %.lr.ph.i58.i.i ], [ 0, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %.02642.i.i191.i = phi i64 [ %.1.i.i22.i, %.lr.ph.i58.i.i ], [ 1, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %i.jv = icmp sgt i8 %spec.select.i.i.i18192.i, 96
  %.0.v.i.i20.i = select i1 %i.jv, i8 -87, i8 -48
  %.0.i.i21.i = add i8 %.0.v.i.i20.i, %spec.select.i.i.i18192.i
  %i.jw = add nuw i64 %.02642.i.i191.i, 1         ; 3 uses
  %.not.i60.i.i = icmp eq i64 %i.jw, %i.ja
  br i1 %.not.i60.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !106
  %i.jz = icmp eq i8 %i.jy, 95
  br i1 %i.jz, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ka = add nuw i64 %.02642.i.i191.i, 2         ; 3 uses
  %i.kb = icmp eq i64 %i.ka, %i.ja
  br i1 %i.kb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ka
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !106 ; 2 uses
  %i.ke = add i8 %i.kd, -48
  %or.cond.i37.i.i23.i = icmp ult i8 %i.ke, 10
  %i.kf = and i8 %i.kd, -33
  %i.kg = add i8 %i.kf, -65
  %i.kh = icmp ult i8 %i.kg, 6
  %i.ki = or i1 %or.cond.i37.i.i23.i, %i.kh
  br i1 %i.ki, label %bb.bq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %.lr.ph.i
  %.1.i.i22.i = phi i64 [ %i.ka, %bb.bp ], [ %i.jw, %bb.bn ], [ %i.ja, %.lr.ph.i ] ; 3 uses
  %i.kj = zext i8 %.0.i.i21.i to i64              ; 2 uses
  %i.kk = lshr i64 %i.kj, 4
  %i.kl = xor i64 %i.kk, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.ju, %i.kl
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bq
  %i.km = shl nsw i64 %i.ju, 4
  %i.kn = add nsw i64 %i.km, %i.kj                ; 3 uses
  %i.ko = icmp ult i64 %.1.i.i22.i, %i.ja
  br i1 %i.ko, label %.lr.ph.i58.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i
  %or.cond.not.i.i.i.i.i49.i.i = icmp ult i64 %i.kn, 65536
  br i1 %or.cond.not.i.i.i.i.i49.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.br:                                            ; preds = %bb.bl, %bb.bl
  %i.kp = add i64 %.043168.i.i, -1                ; 5 uses
  %i.kq = icmp ugt i64 %i.kp, 1
  br i1 %i.kq, label %.lr.ph.i76.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i76.i.i:                                   ; preds = %bb.br, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i
  %i.kr = phi i64 [ %i.lf, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.br ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i79.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.br ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.02436.i.i.i
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !106
  switch i8 %i.kt, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.bt
    i8 49, label %bb.bs
  ]

bb.bs:                                            ; preds = %.lr.ph.i76.i.i
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.i76.i.i
  %.0.i77.i.i = phi i64 [ 1, %bb.bs ], [ 0, %.lr.ph.i76.i.i ]
  %i.ku = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i78.i.i = icmp eq i64 %i.ku, %i.kp
  br i1 %.not.i78.i.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !106
  %i.kx = icmp eq i8 %i.kw, 95
  br i1 %i.kx, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ky = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.kz = icmp eq i64 %i.ky, %i.kp
  br i1 %i.kz, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.la = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ky
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !106
  %i.lc = and i8 %i.lb, -2
  %switch.i.i17.i = icmp eq i8 %i.lc, 48
  br i1 %switch.i.i17.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %bb.bt
  %.1.i79.i.i = phi i64 [ %i.kp, %bb.bt ], [ %i.ky, %bb.bw ], [ %i.ku, %bb.bu ] ; 2 uses
  %i.ld = icmp slt i64 %i.kr, 4611686018427387904
  br i1 %i.ld, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bx
  %i.le = shl nsw i64 %i.kr, 1                    ; 2 uses
  %i.lf = or disjoint i64 %.0.i77.i.i, %i.le      ; 2 uses
  %i.lg = icmp ult i64 %.1.i79.i.i, %i.kp
  br i1 %i.lg, label %.lr.ph.i76.i.i, label %._crit_edge.i62.i.i

._crit_edge.i62.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i
  %or.cond.not.i.i.i.i.i63.i.i = icmp ult i64 %i.le, 65536
  br i1 %or.cond.not.i.i.i.i.i63.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.by:                                            ; preds = %bb.bl
  %i.lh = add i8 %i.ix, -48
  %i.li = icmp ult i8 %i.lh, 10
  %or.cond115.i.i = and i1 %3, %i.li
  br i1 %or.cond115.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

bb.bz:                                            ; preds = %bb.bk
  %i.lj = icmp eq i8 %i.fb, 43                    ; 2 uses
  %brmerge.not.i.i14.i = and i1 %3, %i.lj
  %.mux.i.i15.i = zext i1 %i.lj to i64
  br i1 %brmerge.not.i.i14.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

.preheader.i.i16.i:                               ; preds = %bb.bz, %bb.by
  %.mux.i110.i.i = phi i64 [ %.mux.i.i15.i, %bb.bz ], [ 0, %bb.by ] ; 5 uses
  %i.lk = icmp ugt i64 %.043168.i.i, %.mux.i110.i.i
  br i1 %i.lk, label %.lr.ph.i93.i.i, label %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i86.thread.i.i

_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i86.thread.i.i: ; preds = %.preheader.i.i16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataItEELb0EEEbRT_.exit.thread121.i.i.i

.lr.ph.i93.i.i:                                   ; preds = %.preheader.i.i16.i, %bb.cv
  %i.ll = phi i64 [ %i.ny, %bb.cv ], [ 0, %.preheader.i.i16.i ] ; 6 uses
  %.0138.i.i.i = phi i64 [ %.7.i101.i.i, %bb.cv ], [ %.mux.i110.i.i, %.preheader.i.i16.i ] ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.0138.i.i.i
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !106 ; 3 uses
  %i.lo = add i8 %i.ln, -48                       ; 2 uses
  %i.lp = icmp ult i8 %i.lo, 10
  br i1 %i.lp, label %bb.cq, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i93.i.i
  store i64 %i.ll, ptr %6, align 8
  %i.lq = icmp eq i8 %i.ln, 46
  br i1 %i.lq, label %bb.cb, label %.thread117.i94.i.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lr = icmp ugt i64 %.0138.i.i.i, %.mux.i110.i.i ; 2 uses
  %i.ls = add nuw i64 %.0138.i.i.i, 1             ; 5 uses
  %i.lt = icmp ult i64 %i.ls, %.043168.i.i
  br i1 %i.lt, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %bb.cc
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cj, %.lr.ph140.i.i.i
  %i.lw = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.ml, %bb.cj ] ; 2 uses
  %i.lx = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mm, %bb.cj ] ; 2 uses
  %i.ly = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mn, %bb.cj ] ; 3 uses
  %i.lz = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mo, %bb.cj ] ; 4 uses
  %.1139.i.i.i = phi i64 [ %i.ls, %.lr.ph140.i.i.i ], [ %.2.i98.i.i, %bb.cj ] ; 5 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.1139.i.i.i
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !106 ; 2 uses
  %i.mc = add i8 %i.mb, -48                       ; 2 uses
  %i.md = icmp ult i8 %i.mc, 10
  br i1 %i.md, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.me = zext nneg i8 %i.mc to i64               ; 2 uses
  %i.mf = xor i64 %i.me, 9223372036854775806
  %i.mg = udiv i64 %i.mf, 10
  %i.mh = icmp sgt i64 %i.lz, %i.mg
  br i1 %i.mh, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cf, !prof !125

bb.cf:                                            ; preds = %bb.ce
  %i.mi = add i16 %i.ly, 1                        ; 2 uses
  %i.mj = mul nsw i64 %i.lz, 10
  %i.mk = add nsw i64 %i.mj, %i.me                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.cf, %bb.ce
  %i.ml = phi i64 [ %i.mk, %bb.cf ], [ %i.lw, %bb.ce ] ; 2 uses
  %i.mm = phi i16 [ %i.mi, %bb.cf ], [ %i.lx, %bb.ce ] ; 2 uses
  %i.mn = phi i16 [ %i.mi, %bb.cf ], [ %i.ly, %bb.ce ] ; 2 uses
  %i.mo = phi i64 [ %i.mk, %bb.cf ], [ %i.lz, %bb.ce ] ; 2 uses
  %i.mp = add nuw i64 %.1139.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.mp, %.043168.i.i
  br i1 %.not107.i.i.i, label %.thread123.i.i.loopexit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !106
  %i.ms = icmp eq i8 %i.mr, 95
  br i1 %i.ms, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.mt = add i64 %.1139.i.i.i, 2                 ; 3 uses
  %i.mu = icmp eq i64 %i.mt, %.043168.i.i
  br i1 %i.mu, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mv = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.mt
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !106
  %i.mx = add i8 %i.mw, -48
  %i.my = icmp ult i8 %i.mx, 10
  br i1 %i.my, label %bb.cj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.2.i98.i.i = phi i64 [ %i.mt, %bb.ci ], [ %i.mp, %bb.cg ] ; 3 uses
  %i.mz = icmp ult i64 %.2.i98.i.i, %.043168.i.i
  br i1 %i.mz, label %bb.cd, label %.thread123.i.i.loopexit.i, !llvm.loop !687

bb.ck:                                            ; preds = %bb.cd
  store i16 %i.lx, ptr %i.lv, align 8
  store i64 %i.lw, ptr %i.lu, align 8
  %i.na = icmp ugt i64 %.1139.i.i.i, %i.ls
  %or.cond110.i.i.i = or i1 %i.lr, %i.na
  br i1 %or.cond110.i.i.i, label %.thread117.i94.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread123.i.i.loopexit.i:                        ; preds = %bb.cj, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i98.i.i, %bb.cj ], [ %.043168.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataItEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.mm, ptr %i.lv, align 8
  store i64 %i.ml, ptr %i.lu, align 8
  br label %.thread123.i.i.i

.thread123.i.i.i:                                 ; preds = %.thread123.i.i.loopexit.i, %bb.cc
  %.promoted11.i.i85230.i.i = phi i16 [ 0, %bb.cc ], [ %i.mn, %.thread123.i.i.loopexit.i ]
  %.promoted.i.i84226.i.i = phi i64 [ 0, %bb.cc ], [ %i.mo, %.thread123.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.ls, %bb.cc ], [ %.1.lcssa.i.i.ph.i, %.thread123.i.i.loopexit.i ] ; 2 uses
  %i.nb = icmp ugt i64 %.1.lcssa.i.i.i, %i.ls
  %or.cond110124.i.i.i = or i1 %i.lr, %i.nb
  br i1 %or.cond110124.i.i.i, label %.thread125.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i94.i.i:                               ; preds = %bb.ck, %bb.ca
  %.promoted11.i.i85229.i.i = phi i16 [ 0, %bb.ca ], [ %i.ly, %bb.ck ] ; 2 uses
  %.promoted.i.i84225.i.i = phi i64 [ 0, %bb.ca ], [ %i.lz, %bb.ck ] ; 2 uses
  %i.nc = phi i8 [ %i.ln, %bb.ca ], [ %i.mb, %bb.ck ]
  %.4.i95.i.i = phi i64 [ %.0138.i.i.i, %bb.ca ], [ %.1139.i.i.i, %bb.ck ] ; 3 uses
  switch i8 %i.nc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataItEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 101, label %bb.cl
    i8 69, label %bb.cl
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i: ; preds = %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i
  %i.nd = add nuw i64 %.4.i95.i.i, 1              ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdb7TryCast9OperationINS_8string_tEjEEbT_RT0_b
define noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEjEEbT_RT0_b(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerDecimalCastData.164", align 8 ; 22 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  %cond109.i.i = icmp eq i32 %i.d, 0
  br i1 %cond109.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.042111.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 16 uses
  %.043110.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 27 uses
  %i.i = load i8, ptr %.042111.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %bb.l [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %.preheader.i.i.preheader
  ]

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %cond = icmp eq i64 %.043110.i.i, 1
  br i1 %cond, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 1
  %i.k = add nsw i64 %.043110.i.i, -1             ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.lr.ph.i.i, !llvm.loop !690

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.l = add i64 %.040.i.i639, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %.043110.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !691

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.040.i.i639 = phi i64 [ %i.l, %.preheader.i.i ], [ 1, %.preheader.i.i.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.040.i.i639
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106
  %.not47.i.i = icmp eq i8 %i.n, 48
  br i1 %.not47.i.i, label %.preheader.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, !llvm.loop !691

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i
  br i1 %3, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.0.9.i = phi i32 [ %i.v, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06092.us.i.i.i = phi i64 [ %i.s, %bb.c ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.06092.us.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106   ; 2 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.c, label %.split.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.s = add nuw i64 %.06092.us.i.i.i, 1          ; 2 uses
  %i.t = zext nneg i8 %i.q to i32
  %i.u = mul i32 %.sroa.0.9.i, 10
  %i.v = sub i32 %i.u, %i.t                       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %.043110.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !692

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.k
  %.sroa.0.6.i = phi i32 [ %i.as, %bb.k ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06092.i.i.i = phi i64 [ %.7.i.i.i, %bb.k ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.06092.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !106   ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %bb.g, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.0.7.i = phi i32 [ %.sroa.0.9.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.6.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %.pre.i.i.i = phi i8 [ %i.p, %.lr.ph.split.us.i.i.i ], [ %i.x, %.lr.ph.split.i.i.i ] ; 2 uses
  %.us-phi93.i.i.i = phi i64 [ %.06092.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.06092.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.aa = icmp eq i8 %.pre.i.i.i, 46
  br i1 %i.aa, label %bb.d, label %.thread80.i.i.i

bb.d:                                             ; preds = %.split.us.i.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %.us-phi93.i.i.i, 2        ; 2 uses
  %i.ac = add nuw i64 %.us-phi93.i.i.i, 1         ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.043110.i.i
  br i1 %i.ad, label %bb.f, label %.thread82.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !106 ; 2 uses
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp ult i8 %i.ag, 10
  %brmerge.i.i.i = or i1 %i.ab, %i.ah
  br i1 %brmerge.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread80.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.e
  br i1 %i.ab, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

.thread80.i.i.i:                                  ; preds = %bb.f, %.split.us.i.i.i
  %i.ai = phi i8 [ %i.af, %bb.f ], [ %.pre.i.i.i, %.split.us.i.i.i ]
  %.4.i.i.i = phi i64 [ %i.ac, %bb.f ], [ %.us-phi93.i.i.i, %.split.us.i.i.i ]
  switch i8 %i.ai, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i
  %i.aj = add i64 %.4.i.i.i, 1                    ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.043110.i.i
  br i1 %i.ak, label %.lr.ph95.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i

.lr.ph95.i.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  %i.al = phi i64 [ %i.ao, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.aj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106
  switch i8 %i.an, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i: ; preds = %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i
  %i.ao = add nuw i64 %i.al, 1                    ; 2 uses
  %exitcond111.not.i.i.i = icmp eq i64 %i.ao, %.043110.i.i
  br i1 %exitcond111.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph95.i.i.i, !llvm.loop !693

bb.g:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ap = add nuw i64 %.06092.i.i.i, 1            ; 3 uses
  %i.aq = zext nneg i8 %i.y to i32
  %i.ar = mul i32 %.sroa.0.6.i, 10
  %i.as = sub i32 %i.ar, %i.aq                    ; 3 uses
  %.not76.i.i.i = icmp eq i64 %i.ap, %.043110.i.i
  br i1 %.not76.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !106
  %.not97.i.i.i = icmp eq i8 %i.au, 95
  br i1 %.not97.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = add i64 %.06092.i.i.i, 2                ; 3 uses
  %i.aw = icmp eq i64 %i.av, %.043110.i.i
  br i1 %i.aw, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !106
  %i.az = add i8 %i.ay, -48
  %i.ba = icmp ult i8 %i.az, 10
  br i1 %i.ba, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.k:                                             ; preds = %bb.j, %bb.h
  %.7.i.i.i = phi i64 [ %i.ap, %bb.h ], [ %i.av, %bb.j ] ; 3 uses
  %i.bb = icmp ult i64 %.7.i.i.i, %.043110.i.i
  br i1 %i.bb, label %.lr.ph.split.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, !llvm.loop !692

bb.l:                                             ; preds = %.lr.ph.i.i
  %.not46.i.i = icmp ne i64 %.043110.i.i, 1
  %i.bc = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not46.i.i, %i.bc
  br i1 %or.cond.i.i, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 1 ; 7 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !106 ; 2 uses
  %i.bf = add i8 %i.be, -66                       ; 2 uses
  %i.bg = tail call i8 @llvm.fshl.i8(i8 %i.bf, i8 %i.bf, i8 7)
  switch i8 %i.bg, label %bb.aa [
    i8 27, label %bb.n
    i8 11, label %bb.n
    i8 16, label %bb.t
    i8 0, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bh = add i64 %.043110.i.i, -1                ; 5 uses
  %i.bi = icmp ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

.lr.ph.i49.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i
  %.02640.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.n ] ; 3 uses
  %i.bj = phi i32 [ %i.cl, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.02640.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !106 ; 3 uses
  %i.bm = add i8 %i.bl, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bm, 26
  %i.bn = or disjoint i8 %i.bl, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bn, i8 %i.bl ; 4 uses
  %i.bo = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.bo, 10
  %i.bp = and i8 %spec.select.i.i.i.i, -33
  %i.bq = add i8 %i.bp, -65
  %i.br = icmp ult i8 %i.bq, 6
  %i.bs = or i1 %or.cond.i36.i.i.i, %i.br
  br i1 %i.bs, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.o:                                             ; preds = %.lr.ph.i49.i.i
  %i.bt = icmp sgt i8 %spec.select.i.i.i.i, 96
  %.0.v.i.i.i = select i1 %i.bt, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i.i
  %i.bu = add nuw i64 %.02640.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bu, %i.bh
  br i1 %.not.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !106
  %i.bx = icmp eq i8 %i.bw, 95
  br i1 %i.bx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.by = add nuw i64 %.02640.i.i.i, 2            ; 3 uses
  %i.bz = icmp eq i64 %i.by, %i.bh
  br i1 %i.bz, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !106 ; 2 uses
  %i.cc = add i8 %i.cb, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.cc, 10
  %i.cd = and i8 %i.cb, -33
  %i.ce = add i8 %i.cd, -65
  %i.cf = icmp ult i8 %i.ce, 6
  %i.cg = or i1 %or.cond.i37.i.i.i, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.1.i.i.i = phi i64 [ %i.by, %bb.r ], [ %i.bu, %bb.p ], [ %i.bh, %bb.o ] ; 2 uses
  %i.ch = zext i8 %.0.i.i.i to i32                ; 2 uses
  %i.ci = xor i32 %i.ch, -1
  %i.cj = lshr i32 %i.ci, 4
  %.not38.i.i.i = icmp ugt i32 %i.bj, %i.cj
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.s
  %i.ck = shl nuw i32 %i.bj, 4
  %i.cl = add i32 %i.ck, %i.ch                    ; 2 uses
  %i.cm = icmp ult i64 %.1.i.i.i, %i.bh
  br i1 %i.cm, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.t:                                             ; preds = %bb.m, %bb.m
  %i.cn = add i64 %.043110.i.i, -1                ; 5 uses
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i
  %.02435.i.i.i = phi i64 [ %.1.i55.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.t ] ; 3 uses
  %i.cp = phi i32 [ %i.dd, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.02435.i.i.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !106
  switch i8 %i.cr, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 48, label %bb.v
    i8 49, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i52.i.i
  %.0.i53.i.i = phi i32 [ 1, %bb.u ], [ 0, %.lr.ph.i52.i.i ]
  %i.cs = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i54.i.i = icmp eq i64 %i.cs, %i.cn
  br i1 %.not.i54.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106
  %i.cv = icmp eq i8 %i.cu, 95
  br i1 %i.cv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cw = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.cx = icmp eq i64 %i.cw, %i.cn
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !106
  %i.da = and i8 %i.cz, -2
  %switch.i.i.i = icmp eq i8 %i.da, 48
  br i1 %switch.i.i.i, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %.1.i55.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.cw, %bb.y ], [ %i.cs, %bb.w ] ; 2 uses
  %i.db = icmp sgt i32 %i.cp, -1
  br i1 %i.db, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.z
  %i.dc = shl nuw i32 %i.cp, 1
  %i.dd = or disjoint i32 %.0.i53.i.i, %i.dc      ; 2 uses
  %i.de = icmp ult i64 %.1.i55.i.i, %i.cn
  br i1 %i.de, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i

bb.aa:                                            ; preds = %bb.m
  %i.df = add i8 %i.be, -48
  %i.dg = icmp ult i8 %i.df, 10
  %or.cond74.i.i = and i1 %3, %i.dg
  br i1 %or.cond74.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.preheader.i.i.i

bb.ab:                                            ; preds = %bb.l
  %i.dh = icmp eq i8 %i.i, 43                     ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.dh
  %.mux.i.i.i = zext i1 %i.dh to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ab, %bb.aa
  %.mux.i72.i.i = phi i64 [ %.mux.i.i.i, %bb.ab ], [ 0, %bb.aa ] ; 5 uses
  %i.di = icmp ugt i64 %.043110.i.i, %.mux.i72.i.i
  br i1 %i.di, label %.lr.ph.i57.i.i, label %.thread90.i.i.i

.lr.ph.i57.i.i:                                   ; preds = %.preheader.i.i.i
  br i1 %3, label %.lr.ph.split.us.i67.i.i, label %.lr.ph.split.i59.i.i

.lr.ph.split.us.i67.i.i:                          ; preds = %.lr.ph.i57.i.i, %bb.ad
  %.sroa.0.3.i = phi i32 [ %i.ds, %bb.ad ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.us.i.i.i = phi i64 [ %i.dq, %bb.ad ], [ %.mux.i72.i.i, %.lr.ph.i57.i.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.099.us.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !106 ; 2 uses
  %i.dl = add i8 %i.dk, -48                       ; 2 uses
  %i.dm = icmp ult i8 %i.dl, 10
  br i1 %i.dm, label %bb.ac, label %.split.us.i60.i.i

bb.ac:                                            ; preds = %.lr.ph.split.us.i67.i.i
  %i.dn = zext nneg i8 %i.dl to i32               ; 2 uses
  %i.do = xor i32 %i.dn, -1
  %i.dp = udiv i32 %i.do, 10
  %.not.us.i.i.i = icmp ugt i32 %.sroa.0.3.i, %i.dp
  br i1 %.not.us.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.ad, !prof !125

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add i64 %.099.us.i.i.i, 1               ; 2 uses
  %i.dr = mul nuw i32 %.sroa.0.3.i, 10
  %i.ds = add i32 %i.dr, %i.dn                    ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %i.dq, %.043110.i.i
  br i1 %exitcond.not.i68.i.i, label %.thread90.i.i.i, label %.lr.ph.split.us.i67.i.i, !llvm.loop !694

.lr.ph.split.i59.i.i:                             ; preds = %.lr.ph.i57.i.i, %bb.am
  %.sroa.0.1.i = phi i32 [ %i.er, %bb.am ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.i.i.i = phi i64 [ %.7.i66.i.i, %bb.am ], [ %.mux.i72.i.i, %.lr.ph.i57.i.i ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.099.i.i.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !106 ; 2 uses
  %i.dv = add i8 %i.du, -48                       ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 10
  br i1 %i.dw, label %bb.ah, label %.split.us.i60.i.i

.split.us.i60.i.i:                                ; preds = %.lr.ph.split.i59.i.i, %.lr.ph.split.us.i67.i.i
  %.sroa.0.2.i = phi i32 [ %.sroa.0.3.i, %.lr.ph.split.us.i67.i.i ], [ %.sroa.0.1.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %.pre.i61.i.i = phi i8 [ %i.dk, %.lr.ph.split.us.i67.i.i ], [ %i.du, %.lr.ph.split.i59.i.i ] ; 2 uses
  %.us-phi100.i.i.i = phi i64 [ %.099.us.i.i.i, %.lr.ph.split.us.i67.i.i ], [ %.099.i.i.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %i.dx = icmp eq i8 %.pre.i61.i.i, 46
  br i1 %i.dx, label %bb.ae, label %.thread86.i.i.i

bb.ae:                                            ; preds = %.split.us.i60.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = icmp ule i64 %.us-phi100.i.i.i, %.mux.i72.i.i ; 2 uses
  %i.dz = add nuw i64 %.us-phi100.i.i.i, 1        ; 4 uses
  %i.ea = icmp ult i64 %i.dz, %.043110.i.i
  br i1 %i.ea, label %bb.ag, label %.thread88.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !106 ; 2 uses
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  %brmerge.i64.i.i = or i1 %i.dy, %i.ee
  br i1 %brmerge.i64.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread86.i.i.i

.thread88.i.i.i:                                  ; preds = %bb.af
  br i1 %i.dy, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %.thread90.i.i.i

.thread86.i.i.i:                                  ; preds = %bb.ag, %.split.us.i60.i.i
  %i.ef = phi i8 [ %i.ec, %bb.ag ], [ %.pre.i61.i.i, %.split.us.i60.i.i ]
  %.4.i62.i.i = phi i64 [ %i.dz, %bb.ag ], [ %.us-phi100.i.i.i, %.split.us.i60.i.i ]
  switch i8 %i.ef, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i: ; preds = %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i
  %i.eg = add i64 %.4.i62.i.i, 1                  ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %.043110.i.i
  br i1 %i.eh, label %.lr.ph102.i.i.i, label %.thread90.i.i.i

.lr.ph102.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  %i.ei = phi i64 [ %i.el, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.eg, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !106
  switch i8 %i.ek, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i: ; preds = %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i
  %i.el = add nuw i64 %i.ei, 1                    ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %i.el, %.043110.i.i
  br i1 %exitcond121.not.i.i.i, label %.thread90.i.i.i, label %.lr.ph102.i.i.i, !llvm.loop !695

bb.ah:                                            ; preds = %.lr.ph.split.i59.i.i
  %i.em = add nuw i64 %.099.i.i.i, 1              ; 3 uses
  %i.en = zext nneg i8 %i.dv to i32               ; 2 uses
  %i.eo = xor i32 %i.en, -1
  %i.ep = udiv i32 %i.eo, 10
  %.not.i65.i.i = icmp ugt i32 %.sroa.0.1.i, %i.ep
  br i1 %.not.i65.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %bb.ah
  %i.eq = mul nuw i32 %.sroa.0.1.i, 10
  %i.er = add i32 %i.eq, %i.en                    ; 3 uses
  %.not80.i.i.i = icmp eq i64 %i.em, %.043110.i.i
  br i1 %.not80.i.i.i, label %.thread90.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.em
  %i.et = load i8, ptr %i.es, align 1, !tbaa !106
  %.not104.i.i.i = icmp eq i8 %i.et, 95
  br i1 %.not104.i.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.eu = add i64 %.099.i.i.i, 2                  ; 3 uses
  %i.ev = icmp eq i64 %i.eu, %.043110.i.i
  br i1 %i.ev, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !106
  %i.ey = add i8 %i.ex, -48
  %i.ez = icmp ult i8 %i.ey, 10
  br i1 %i.ez, label %bb.am, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.7.i66.i.i = phi i64 [ %i.em, %bb.aj ], [ %i.eu, %bb.al ] ; 3 uses
  %i.fa = icmp ult i64 %.7.i66.i.i, %.043110.i.i
  br i1 %i.fa, label %.lr.ph.split.i59.i.i, label %.thread90.i.i.i, !llvm.loop !694

.thread90.i.i.i:                                  ; preds = %bb.am, %bb.ai, %bb.ad, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %.thread88.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i = phi i32 [ %i.ds, %bb.ad ], [ 0, %.preheader.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %.sroa.0.2.i, %.thread88.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.er, %bb.ai ], [ %i.er, %bb.am ]
  %.8.i56.i.i = phi i64 [ %.043110.i.i, %bb.ad ], [ 1, %.preheader.i.i.i ], [ %i.eg, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %i.dz, %.thread88.i.i.i ], [ %.043110.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %.043110.i.i, %bb.ai ], [ %.7.i66.i.i, %bb.am ]
  %i.fb = icmp ugt i64 %.8.i56.i.i, %.mux.i72.i.i
  br i1 %i.fb, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %bb.k, %bb.g, %bb.c, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  %.sroa.0.8.i = phi i32 [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %i.v, %bb.c ], [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.as, %bb.g ], [ %i.as, %bb.k ]
  %.8.i.i.i = phi i64 [ %i.aj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.043110.i.i, %bb.c ], [ %.043110.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %.043110.i.i, %bb.g ], [ %.7.i.i.i, %bb.k ]
  %i.fc = icmp ugt i64 %.8.i.i.i, 1
  br i1 %i.fc, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread82.i.i.i
  %.sroa.0.1044.i = phi i32 [ %.sroa.0.7.i, %.thread82.i.i.i ], [ %.sroa.0.8.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i ], [ %.sroa.0.0.i, %.thread90.i.i.i ], [ %i.cl, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i ], [ %i.dd, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIjEELb0EEEbRT_h.exit.i.i.i ]
  store i32 %.sroa.0.1044.i, ptr %2, align 4, !tbaa !89
  br label %_ZN6duckdbL20TrySimpleIntegerCastIjLb0EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i: ; preds = %bb.b, %.lr.ph, %bb.j, %bb.i, %.lr.ph95.i.i.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i52.i.i, %bb.s, %bb.r, %bb.q, %.lr.ph.i49.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ac, %.lr.ph102.i.i.i, %.preheader.i.i.preheader, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread86.i.i.i, %.thread88.i.i.i, %bb.ag, %bb.ae, %bb.ab, %bb.aa, %bb.t, %bb.n, %.thread80.i.i.i, %.thread82.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.an, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i
  %.042169.i.i = phi ptr [ %i.fe, %bb.an ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i ] ; 21 uses
  %.043168.i.i = phi i64 [ %i.ff, %bb.an ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIjEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread48.i ] ; 35 uses
  %i.fd = load i8, ptr %.042169.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.fd, label %.critedge.i11.i [
    i8 32, label %bb.an
    i8 12, label %bb.an
    i8 11, label %bb.an
    i8 10, label %bb.an
    i8 9, label %bb.an
    i8 13, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 1
  %i.ff = add i64 %.043168.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.ff, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !696

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.fg = icmp eq i8 %i.fd, 45
  br i1 %i.fg, label %.preheader.i24.i.preheader, label %bb.bk

.preheader.i24.i.preheader:                       ; preds = %.critedge.i11.i
  %cond643 = icmp eq i64 %.043168.i.i, 1
  br i1 %cond643, label %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i, label %.lr.ph642

.preheader.i24.i:                                 ; preds = %.lr.ph642
  %i.fh = add i64 %.040.i25.i641, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fh, %.043168.i.i
  br i1 %exitcond.not.i26.i, label %.lr.ph.i.i29.i, label %.lr.ph642, !llvm.loop !697

.lr.ph642:                                        ; preds = %.preheader.i24.i.preheader, %.preheader.i24.i
  %.040.i25.i641 = phi i64 [ %i.fh, %.preheader.i24.i ], [ 1, %.preheader.i24.i.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.040.i25.i641
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !106
  %.not47.i27.i = icmp eq i8 %i.fj, 48
  br i1 %.not47.i27.i, label %.preheader.i24.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !llvm.loop !697

_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i: ; preds = %.preheader.i24.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread115.i.i.i

.lr.ph.i.i29.i:                                   ; preds = %.preheader.i24.i, %bb.bj
  %i.fk = phi i64 [ %i.hw, %bb.bj ], [ 0, %.preheader.i24.i ] ; 6 uses
  %.084132.i.i.i = phi i64 [ %.7.i.i37.i, %bb.bj ], [ 1, %.preheader.i24.i ] ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.084132.i.i.i
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !106 ; 3 uses
  %i.fn = add i8 %i.fm, -48                       ; 2 uses
  %i.fo = icmp ult i8 %i.fn, 10
  br i1 %i.fo, label %bb.be, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i29.i
  store i64 %i.fk, ptr %6, align 8
  %i.fp = icmp eq i8 %i.fm, 46
  br i1 %i.fp, label %bb.ap, label %.thread111.i.i.i

bb.ap:                                            ; preds = %bb.ao
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fq = icmp ugt i64 %.084132.i.i.i, 1          ; 2 uses
  %i.fr = add nuw i64 %.084132.i.i.i, 1           ; 5 uses
  %i.fs = icmp ult i64 %i.fr, %.043168.i.i
  br i1 %i.fs, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ax, %.lr.ph134.i.i.i
  %i.fv = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gk, %bb.ax ] ; 2 uses
  %i.fw = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.gl, %bb.ax ] ; 2 uses
  %i.fx = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.gm, %bb.ax ] ; 3 uses
  %i.fy = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gn, %bb.ax ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.fr, %.lr.ph134.i.i.i ], [ %.2.i.i.i, %bb.ax ] ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.185133.i.i.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !106 ; 2 uses
  %i.gb = add i8 %i.ga, -48                       ; 2 uses
  %i.gc = icmp ult i8 %i.gb, 10
  br i1 %i.gc, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.gd = zext nneg i8 %i.gb to i64               ; 2 uses
  %i.ge = xor i64 %i.gd, 9223372036854775806
  %i.gf = udiv i64 %i.ge, 10
  %i.gg = icmp sgt i64 %i.fy, %i.gf
  br i1 %i.gg, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.at, !prof !125

bb.at:                                            ; preds = %bb.as
  %i.gh = add i16 %i.fx, 1                        ; 2 uses
  %i.gi = mul nsw i64 %i.fy, 10
  %i.gj = add nsw i64 %i.gi, %i.gd                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.at, %bb.as
  %i.gk = phi i64 [ %i.gj, %bb.at ], [ %i.fv, %bb.as ] ; 2 uses
  %i.gl = phi i16 [ %i.gh, %bb.at ], [ %i.fw, %bb.as ] ; 2 uses
  %i.gm = phi i16 [ %i.gh, %bb.at ], [ %i.fx, %bb.as ] ; 2 uses
  %i.gn = phi i64 [ %i.gj, %bb.at ], [ %i.fy, %bb.as ] ; 2 uses
  %i.go = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.go, %.043168.i.i
  br i1 %.not103.i.i.i, label %.thread117.i.i.loopexit.i, label %bb.au

bb.au:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !106
  %i.gr = icmp eq i8 %i.gq, 95
  br i1 %i.gr, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gs = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.gt = icmp eq i64 %i.gs, %.043168.i.i
  br i1 %i.gt, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gu = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.gs
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !106
  %i.gw = add i8 %i.gv, -48
  %i.gx = icmp ult i8 %i.gw, 10
  br i1 %i.gx, label %bb.ax, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.2.i.i.i = phi i64 [ %i.gs, %bb.aw ], [ %i.go, %bb.au ] ; 3 uses
  %i.gy = icmp ult i64 %.2.i.i.i, %.043168.i.i
  br i1 %i.gy, label %bb.ar, label %.thread117.i.i.loopexit.i, !llvm.loop !698

bb.ay:                                            ; preds = %bb.ar
  store i16 %i.fw, ptr %i.fu, align 8
  store i64 %i.fv, ptr %i.ft, align 8
  %i.gz = icmp ugt i64 %.185133.i.i.i, %i.fr
  %or.cond106.i.i.i = or i1 %i.fq, %i.gz
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i.i.loopexit.i:                        ; preds = %bb.ax, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.ax ], [ %.043168.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.gl, ptr %i.fu, align 8
  store i64 %i.gk, ptr %i.ft, align 8
  br label %.thread117.i.i.i

.thread117.i.i.i:                                 ; preds = %.thread117.i.i.loopexit.i, %bb.aq
  %.promoted11.i.i238.i.i = phi i16 [ 0, %bb.aq ], [ %i.gm, %.thread117.i.i.loopexit.i ]
  %.promoted.i.i234.i.i = phi i64 [ 0, %bb.aq ], [ %i.gn, %.thread117.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.fr, %bb.aq ], [ %.185.lcssa.i.i.ph.i, %.thread117.i.i.loopexit.i ] ; 2 uses
  %i.ha = icmp ugt i64 %.185.lcssa.i.i.i, %i.fr
  %or.cond106118.i.i.i = or i1 %i.fq, %i.ha
  br i1 %or.cond106118.i.i.i, label %.thread119.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.ay, %bb.ao
  %.promoted11.i.i237.i.i = phi i16 [ 0, %bb.ao ], [ %i.fx, %bb.ay ] ; 2 uses
  %.promoted.i.i233.i.i = phi i64 [ 0, %bb.ao ], [ %i.fy, %bb.ay ] ; 2 uses
  %i.hb = phi i8 [ %i.fm, %bb.ao ], [ %i.ga, %bb.ay ]
  %.4.i.i30.i = phi i64 [ %.084132.i.i.i, %bb.ao ], [ %.185133.i.i.i, %bb.ay ] ; 3 uses
  switch i8 %i.hb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i
    i8 101, label %bb.az
    i8 69, label %bb.az
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.hc = add nuw i64 %.4.i.i30.i, 1              ; 3 uses
  %i.hd = icmp ult i64 %i.hc, %.043168.i.i
  br i1 %i.hd, label %.lr.ph136.i.i.i, label %.thread119.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.he = phi i64 [ %i.hh, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.hc, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !106
  switch i8 %i.hg, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i
  %i.hh = add nuw i64 %i.he, 1                    ; 2 uses
  %exitcond.not.i.i35.i = icmp eq i64 %i.hh, %.043168.i.i
  br i1 %exitcond.not.i.i35.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !699

bb.az:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.hi = icmp eq i64 %.4.i.i30.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.hi
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hj = add nuw i64 %.4.i.i30.i, 1              ; 3 uses
  %.not104.i.i31.i = icmp ult i64 %i.hj, %.043168.i.i
  br i1 %.not104.i.i31.i, label %bb.bb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hj ; 3 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !106
  %i.hm = icmp eq i8 %i.hl, 45
  %i.hn = sub nuw i64 %.043168.i.i, %i.hj         ; 2 uses
  br i1 %i.hm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ho = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hk, i64 noundef %i.hn, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.ho, label %.split56.i, label %.split56.thread.i

bb.bd:                                            ; preds = %bb.bb
  %i.hp = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hk, i64 noundef %i.hn, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.hp, label %.split56.i, label %.split56.thread.i

.split56.thread.i:                                ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split56.i:                                       ; preds = %bb.bd, %bb.bc
  %i.hq = load i16, ptr %5, align 2, !tbaa !128
  %i.hr = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIjEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.hq)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.hr, label %bb.cw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.be:                                            ; preds = %.lr.ph.i.i29.i
  %i.hs = add nuw i64 %.084132.i.i.i, 1           ; 3 uses
  %i.ht = zext nneg i8 %i.fn to i64               ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i64 -9223372036854775808, %i.ht
  %i.hu = udiv i64 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i64 0, %i.hu
  %.not.i.i36.i = icmp slt i64 %i.fk, %.neg.i.i.i.i
  br i1 %.not.i.i36.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bf, !prof !125

bb.bf:                                            ; preds = %bb.be
  %i.hv = mul nsw i64 %i.fk, 10
  %i.hw = sub nsw i64 %i.hv, %i.ht                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.hs, %.043168.i.i
  br i1 %.not105.i.i.i, label %.thread119.i.i.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hx = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.hs
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !106
  %i.hz = icmp ne i8 %i.hy, 95
  %or.cond.i.i.i = or i1 %3, %i.hz
  br i1 %or.cond.i.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ia = add i64 %.084132.i.i.i, 2               ; 3 uses
  %i.ib = icmp eq i64 %i.ia, %.043168.i.i
  br i1 %i.ib, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ic = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.ia
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !106
  %i.ie = add i8 %i.id, -48
  %i.if = icmp ult i8 %i.ie, 10
  br i1 %i.if, label %bb.bj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.7.i.i37.i = phi i64 [ %i.hs, %bb.bg ], [ %i.ia, %bb.bi ] ; 3 uses
  %i.ig = icmp ult i64 %.7.i.i37.i, %.043168.i.i
  br i1 %i.ig, label %.lr.ph.i.i29.i, label %.thread119.i.i.thread.i, !llvm.loop !700

.thread119.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i, %.thread117.i.i.i
  %.promoted11.i.i236.i.i = phi i16 [ %.promoted11.i.i238.i.i, %.thread117.i.i.i ], [ %.promoted11.i.i237.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.promoted11.i.i237.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i232.i.i = phi i64 [ %.promoted.i.i234.i.i, %.thread117.i.i.i ], [ %.promoted.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.promoted.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i33.i = phi i64 [ %.185.lcssa.i.i.i, %.thread117.i.i.i ], [ %i.hc, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i32.i ], [ %.043168.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %or.cond.not.i.i.i.i.i.i.i = icmp ult i64 %i.fk, 4294967296
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread.i.i.i

.thread119.i.i.thread.i:                          ; preds = %bb.bj, %bb.bf
  %.8.i.i33.ph.i = phi i64 [ %.043168.i.i, %bb.bf ], [ %.7.i.i37.i, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %or.cond.not.i.i.i.i.i.i442.i = icmp ult i64 %i.hw, 4294967296
  br i1 %or.cond.not.i.i.i.i.i.i442.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread115.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %.thread119.i.i.thread.i, %.thread119.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i: ; preds = %.thread119.i.i.i
  %i.ih = trunc nuw i64 %i.fk to i32              ; 2 uses
  store i32 %i.ih, ptr %i.b, align 4, !tbaa !89
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ij = icmp sgt i64 %.promoted.i.i232.i.i, 10
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.ij, label %.lr.ph.i.i.i.i, label %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.il = phi i16 [ %i.io, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i236.i.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i ]
  %i.im = phi i64 [ %i.in, %.lr.ph.i.i.i.i ], [ %.promoted.i.i232.i.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i ] ; 2 uses
  %i.in = udiv i64 %i.im, 10                      ; 3 uses
  %i.io = add i16 %i.il, -1                       ; 3 uses
  %i.ip = icmp samesign ugt i64 %i.im, 109
  br i1 %i.ip, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !13

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.in, ptr %i.ii, align 8, !tbaa !154
  store i16 %i.io, ptr %i.ik, align 8, !tbaa !155
  br label %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i

_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i
  %i.iq = phi i16 [ %i.io, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i236.i.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.in, %._crit_edge.i.i.i.i ], [ %.promoted.i.i232.i.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit.i.i.i.i ]
  %i.ir = icmp eq i16 %i.iq, 1
  %i.is = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i34.i = and i1 %i.ir, %i.is
  br i1 %or.cond.i.i.i34.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread115.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread115.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i, %.thread119.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i
  %.8.i104287292.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i33.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i33.ph.i, %.thread119.i.i.thread.i ]
  %i.it = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %i.fk, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %i.hw, %.thread119.i.i.thread.i ]
  store i64 %i.it, ptr %6, align 8, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split55.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i
  %i.iu = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIjjjEEbT_T0_RT1_(i32 noundef %i.ih, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pre15.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !89
  %i.iv = zext i32 %.pre15.i.i.i.i to i64
  store i64 %i.iv, ptr %6, align 8, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.iu, label %.split55.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split55.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread115.i.i.i
  %.8.i104287291.i.i = phi i64 [ %.8.i.i33.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.i.i.i ], [ %.8.i104287292.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb1EEEbRT_.exit.thread115.i.i.i ]
  %i.iw = icmp ugt i64 %.8.i104287291.i.i, 1
  br i1 %i.iw, label %bb.cw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bk:                                            ; preds = %.critedge.i11.i
  %.not46.i12.i = icmp ne i64 %.043168.i.i, 1
  %i.ix = icmp eq i8 %i.fd, 48
  %or.cond.i13.i = and i1 %.not46.i12.i, %i.ix
  br i1 %or.cond.i13.i, label %bb.bl, label %bb.bz

bb.bl:                                            ; preds = %bb.bk
  %i.iy = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 1 ; 7 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !106 ; 2 uses
  %i.ja = add i8 %i.iz, -66                       ; 2 uses
  %i.jb = tail call i8 @llvm.fshl.i8(i8 %i.ja, i8 %i.ja, i8 7)
  switch i8 %i.jb, label %bb.by [
    i8 27, label %bb.bm
    i8 11, label %bb.bm
    i8 16, label %bb.br
    i8 0, label %bb.br
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  %i.jc = add i64 %.043168.i.i, -1                ; 5 uses
  %i.jd = icmp ugt i64 %i.jc, 1
  br i1 %i.jd, label %.lr.ph.i58.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i58.i.preheader.i:                         ; preds = %bb.bm
  %i.je = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 2
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !106 ; 3 uses
  %i.jg = add i8 %i.jf, -65
  %or.cond.i.i59.i188.i = icmp ult i8 %i.jg, 26
  %i.jh = or disjoint i8 %i.jf, 32
  %spec.select.i.i.i18189.i = select i1 %or.cond.i.i59.i188.i, i8 %i.jh, i8 %i.jf ; 3 uses
  %i.ji = add i8 %spec.select.i.i.i18189.i, -48
  %or.cond.i36.i.i19190.i = icmp ult i8 %i.ji, 10
  %i.jj = and i8 %spec.select.i.i.i18189.i, -33
  %i.jk = add i8 %i.jj, -65
  %i.jl = icmp ult i8 %i.jk, 6
  %i.jm = or i1 %or.cond.i36.i.i19190.i, %i.jl
  br i1 %i.jm, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i58.i.i:                                   ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.1.i.i22.i
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !106 ; 3 uses
  %i.jp = add i8 %i.jo, -65
  %or.cond.i.i59.i.i = icmp ult i8 %i.jp, 26
  %i.jq = or disjoint i8 %i.jo, 32
  %spec.select.i.i.i18.i = select i1 %or.cond.i.i59.i.i, i8 %i.jq, i8 %i.jo ; 3 uses
  %i.jr = add i8 %spec.select.i.i.i18.i, -48
  %or.cond.i36.i.i19.i = icmp ult i8 %i.jr, 10
  %i.js = and i8 %spec.select.i.i.i18.i, -33
  %i.jt = add i8 %i.js, -65
  %i.ju = icmp ult i8 %i.jt, 6
  %i.jv = or i1 %or.cond.i36.i.i19.i, %i.ju
  br i1 %i.jv, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i58.i.preheader.i, %.lr.ph.i58.i.i
  %spec.select.i.i.i18192.i = phi i8 [ %spec.select.i.i.i18.i, %.lr.ph.i58.i.i ], [ %spec.select.i.i.i18189.i, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %i.jw = phi i64 [ %i.kp, %.lr.ph.i58.i.i ], [ 0, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %.02642.i.i191.i = phi i64 [ %.1.i.i22.i, %.lr.ph.i58.i.i ], [ 1, %.lr.ph.i58.i.preheader.i ] ; 2 uses
  %i.jx = icmp sgt i8 %spec.select.i.i.i18192.i, 96
  %.0.v.i.i20.i = select i1 %i.jx, i8 -87, i8 -48
  %.0.i.i21.i = add i8 %.0.v.i.i20.i, %spec.select.i.i.i18192.i
  %i.jy = add nuw i64 %.02642.i.i191.i, 1         ; 3 uses
  %.not.i60.i.i = icmp eq i64 %i.jy, %i.jc
  br i1 %.not.i60.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !106
  %i.kb = icmp eq i8 %i.ka, 95
  br i1 %i.kb, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.kc = add nuw i64 %.02642.i.i191.i, 2         ; 3 uses
  %i.kd = icmp eq i64 %i.kc, %i.jc
  br i1 %i.kd, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.kc
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !106 ; 2 uses
  %i.kg = add i8 %i.kf, -48
  %or.cond.i37.i.i23.i = icmp ult i8 %i.kg, 10
  %i.kh = and i8 %i.kf, -33
  %i.ki = add i8 %i.kh, -65
  %i.kj = icmp ult i8 %i.ki, 6
  %i.kk = or i1 %or.cond.i37.i.i23.i, %i.kj
  br i1 %i.kk, label %bb.bq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %.lr.ph.i
  %.1.i.i22.i = phi i64 [ %i.kc, %bb.bp ], [ %i.jy, %bb.bn ], [ %i.jc, %.lr.ph.i ] ; 3 uses
  %i.kl = zext i8 %.0.i.i21.i to i64              ; 2 uses
  %i.km = lshr i64 %i.kl, 4
  %i.kn = xor i64 %i.km, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.jw, %i.kn
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bq
  %i.ko = shl nsw i64 %i.jw, 4
  %i.kp = add nsw i64 %i.ko, %i.kl                ; 3 uses
  %i.kq = icmp ult i64 %.1.i.i22.i, %i.jc
  br i1 %i.kq, label %.lr.ph.i58.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i
  %or.cond.not.i.i.i.i.i49.i.i = icmp ult i64 %i.kp, 4294967296
  br i1 %or.cond.not.i.i.i.i.i49.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.br:                                            ; preds = %bb.bl, %bb.bl
  %i.kr = add i64 %.043168.i.i, -1                ; 5 uses
  %i.ks = icmp ugt i64 %i.kr, 1
  br i1 %i.ks, label %.lr.ph.i76.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i76.i.i:                                   ; preds = %bb.br, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i
  %i.kt = phi i64 [ %i.lh, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.br ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i79.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.br ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.02436.i.i.i
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !106
  switch i8 %i.kv, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.bt
    i8 49, label %bb.bs
  ]

bb.bs:                                            ; preds = %.lr.ph.i76.i.i
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.i76.i.i
  %.0.i77.i.i = phi i64 [ 1, %bb.bs ], [ 0, %.lr.ph.i76.i.i ]
  %i.kw = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i78.i.i = icmp eq i64 %i.kw, %i.kr
  br i1 %.not.i78.i.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !106
  %i.kz = icmp eq i8 %i.ky, 95
  br i1 %i.kz, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.la = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.lb = icmp eq i64 %i.la, %i.kr
  br i1 %i.lb, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lc = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.la
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !106
  %i.le = and i8 %i.ld, -2
  %switch.i.i17.i = icmp eq i8 %i.le, 48
  br i1 %switch.i.i17.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %bb.bt
  %.1.i79.i.i = phi i64 [ %i.kr, %bb.bt ], [ %i.la, %bb.bw ], [ %i.kw, %bb.bu ] ; 2 uses
  %i.lf = icmp slt i64 %i.kt, 4611686018427387904
  br i1 %i.lf, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bx
  %i.lg = shl nsw i64 %i.kt, 1                    ; 2 uses
  %i.lh = or disjoint i64 %.0.i77.i.i, %i.lg      ; 2 uses
  %i.li = icmp ult i64 %.1.i79.i.i, %i.kr
  br i1 %i.li, label %.lr.ph.i76.i.i, label %._crit_edge.i62.i.i

._crit_edge.i62.i.i:                              ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i
  %or.cond.not.i.i.i.i.i63.i.i = icmp ult i64 %i.lg, 4294967296
  br i1 %or.cond.not.i.i.i.i.i63.i.i, label %.sink.split.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.by:                                            ; preds = %bb.bl
  %i.lj = add i8 %i.iz, -48
  %i.lk = icmp ult i8 %i.lj, 10
  %or.cond115.i.i = and i1 %3, %i.lk
  br i1 %or.cond115.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

bb.bz:                                            ; preds = %bb.bk
  %i.ll = icmp eq i8 %i.fd, 43                    ; 2 uses
  %brmerge.not.i.i14.i = and i1 %3, %i.ll
  %.mux.i.i15.i = zext i1 %i.ll to i64
  br i1 %brmerge.not.i.i14.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

.preheader.i.i16.i:                               ; preds = %bb.bz, %bb.by
  %.mux.i110.i.i = phi i64 [ %.mux.i.i15.i, %bb.bz ], [ 0, %bb.by ] ; 5 uses
  %i.lm = icmp ugt i64 %.043168.i.i, %.mux.i110.i.i
  br i1 %i.lm, label %.lr.ph.i93.i.i, label %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i86.thread.i.i

_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i86.thread.i.i: ; preds = %.preheader.i.i16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIjEELb0EEEbRT_.exit.thread121.i.i.i

.lr.ph.i93.i.i:                                   ; preds = %.preheader.i.i16.i, %bb.cv
  %i.ln = phi i64 [ %i.oa, %bb.cv ], [ 0, %.preheader.i.i16.i ] ; 6 uses
  %.0138.i.i.i = phi i64 [ %.7.i101.i.i, %bb.cv ], [ %.mux.i110.i.i, %.preheader.i.i16.i ] ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.0138.i.i.i
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !106 ; 3 uses
  %i.lq = add i8 %i.lp, -48                       ; 2 uses
  %i.lr = icmp ult i8 %i.lq, 10
  br i1 %i.lr, label %bb.cq, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i93.i.i
  store i64 %i.ln, ptr %6, align 8
  %i.ls = icmp eq i8 %i.lp, 46
  br i1 %i.ls, label %bb.cb, label %.thread117.i94.i.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lt = icmp ugt i64 %.0138.i.i.i, %.mux.i110.i.i ; 2 uses
  %i.lu = add nuw i64 %.0138.i.i.i, 1             ; 5 uses
  %i.lv = icmp ult i64 %i.lu, %.043168.i.i
  br i1 %i.lv, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %bb.cc
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cj, %.lr.ph140.i.i.i
  %i.ly = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mn, %bb.cj ] ; 2 uses
  %i.lz = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mo, %bb.cj ] ; 2 uses
  %i.ma = phi i16 [ 0, %.lr.ph140.i.i.i ], [ %i.mp, %bb.cj ] ; 3 uses
  %i.mb = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.mq, %bb.cj ] ; 4 uses
  %.1139.i.i.i = phi i64 [ %i.lu, %.lr.ph140.i.i.i ], [ %.2.i98.i.i, %bb.cj ] ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %.1139.i.i.i
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !106 ; 2 uses
  %i.me = add i8 %i.md, -48                       ; 2 uses
  %i.mf = icmp ult i8 %i.me, 10
  br i1 %i.mf, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.mg = zext nneg i8 %i.me to i64               ; 2 uses
  %i.mh = xor i64 %i.mg, 9223372036854775806
  %i.mi = udiv i64 %i.mh, 10
  %i.mj = icmp sgt i64 %i.mb, %i.mi
  br i1 %i.mj, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cf, !prof !125

bb.cf:                                            ; preds = %bb.ce
  %i.mk = add i16 %i.ma, 1                        ; 2 uses
  %i.ml = mul nsw i64 %i.mb, 10
  %i.mm = add nsw i64 %i.ml, %i.mg                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.cf, %bb.ce
  %i.mn = phi i64 [ %i.mm, %bb.cf ], [ %i.ly, %bb.ce ] ; 2 uses
  %i.mo = phi i16 [ %i.mk, %bb.cf ], [ %i.lz, %bb.ce ] ; 2 uses
  %i.mp = phi i16 [ %i.mk, %bb.cf ], [ %i.ma, %bb.ce ] ; 2 uses
  %i.mq = phi i64 [ %i.mm, %bb.cf ], [ %i.mb, %bb.ce ] ; 2 uses
  %i.mr = add nuw i64 %.1139.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.mr, %.043168.i.i
  br i1 %.not107.i.i.i, label %.thread123.i.i.loopexit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !106
  %i.mu = icmp eq i8 %i.mt, 95
  br i1 %i.mu, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.mv = add i64 %.1139.i.i.i, 2                 ; 3 uses
  %i.mw = icmp eq i64 %i.mv, %.043168.i.i
  br i1 %i.mw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mx = getelementptr inbounds nuw i8, ptr %.042169.i.i, i64 %i.mv
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !106
  %i.mz = add i8 %i.my, -48
  %i.na = icmp ult i8 %i.mz, 10
  br i1 %i.na, label %bb.cj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.2.i98.i.i = phi i64 [ %i.mv, %bb.ci ], [ %i.mr, %bb.cg ] ; 3 uses
  %i.nb = icmp ult i64 %.2.i98.i.i, %.043168.i.i
  br i1 %i.nb, label %bb.cd, label %.thread123.i.i.loopexit.i, !llvm.loop !701

bb.ck:                                            ; preds = %bb.cd
  store i16 %i.lz, ptr %i.lx, align 8
  store i64 %i.ly, ptr %i.lw, align 8
  %i.nc = icmp ugt i64 %.1139.i.i.i, %i.lu
  %or.cond110.i.i.i = or i1 %i.lt, %i.nc
  br i1 %or.cond110.i.i.i, label %.thread117.i94.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread123.i.i.loopexit.i:                        ; preds = %bb.cj, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i98.i.i, %bb.cj ], [ %.043168.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIjEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.mo, ptr %i.lx, align 8
  store i64 %i.mn, ptr %i.lw, align 8
  br label %.thread123.i.i.i

.thread123.i.i.i:                                 ; preds = %.thread123.i.i.loopexit.i, %bb.cc
  %.promoted11.i.i85230.i.i = phi i16 [ 0, %bb.cc ], [ %i.mp, %.thread123.i.i.loopexit.i ]
  %.promoted.i.i84226.i.i = phi i64 [ 0, %bb.cc ], [ %i.mq, %.thread123.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.lu, %bb.cc ], [ %.1.lcssa.i.i.ph.i, %.thread123.i.i.loopexit.i ] ; 2 uses
  %i.nd = icmp ugt i64 %.1.lcssa.i.i.i, %i.lu
  %or.cond110124.i.i.i = or i1 %i.lt, %i.nd
  br i1 %or.cond110124.i.i.i, label %.thread125.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i94.i.i:                               ; preds = %bb.ck, %bb.ca
  %.promoted11.i.i85229.i.i = phi i16 [ 0, %bb.ca ], [ %i.ma, %bb.ck ] ; 2 uses
  %.promoted.i.i84225.i.i = phi i64 [ 0, %bb.ca ], [ %i.mb, %bb.ck ] ; 2 uses
  %i.ne = phi i8 [ %i.lp, %bb.ca ], [ %i.md, %bb.ck ]
  %.4.i95.i.i = phi i64 [ %.0138.i.i.i, %bb.ca ], [ %.1139.i.i.i, %bb.ck ] ; 3 uses
  switch i8 %i.ne, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIjEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i
    i8 101, label %bb.cl
    i8 69, label %bb.cl
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i96.i.i: ; preds = %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i, %.thread117.i94.i.i
  %i.nf = add nuw i64 %.4.i95.i.i, 1              ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb7TryCast9OperationINS_8string_tEmEEbT_RT0_b
define noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEmEEbT_RT0_b(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %5 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %6 = alloca %"struct.duckdb::IntegerDecimalCastData.166", align 8 ; 22 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.g = select i1 %i.e, ptr %i.f, ptr %1         ; 2 uses
  %i.h = and i64 %0, 4294967295                   ; 2 uses
  %cond109.i.i = icmp eq i32 %i.d, 0
  br i1 %cond109.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.042111.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 16 uses
  %.043110.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 27 uses
  %i.i = load i8, ptr %.042111.i.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.i, label %bb.l [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %.preheader.i.i.preheader
  ]

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %cond = icmp eq i64 %.043110.i.i, 1
  br i1 %cond, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 1
  %i.k = add nsw i64 %.043110.i.i, -1             ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %.lr.ph.i.i, !llvm.loop !704

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.l = add i64 %.040.i.i657, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %.043110.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i.i, label %.lr.ph, !llvm.loop !705

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.040.i.i657 = phi i64 [ %i.l, %.preheader.i.i ], [ 1, %.preheader.i.i.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.040.i.i657
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106
  %.not47.i.i = icmp eq i8 %i.n, 48
  br i1 %.not47.i.i, label %.preheader.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, !llvm.loop !705

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i
  br i1 %3, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.0.9.i = phi i64 [ %i.v, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06092.us.i.i.i = phi i64 [ %i.s, %bb.c ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.06092.us.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106   ; 2 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.c, label %.split.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.s = add nuw i64 %.06092.us.i.i.i, 1          ; 2 uses
  %i.t = zext nneg i8 %i.q to i64
  %i.u = mul i64 %.sroa.0.9.i, 10
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %.043110.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !706

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.k
  %.sroa.0.6.i = phi i64 [ %i.as, %bb.k ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %.06092.i.i.i = phi i64 [ %.7.i.i.i, %bb.k ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.06092.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !106   ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %bb.g, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.sroa.0.7.i = phi i64 [ %.sroa.0.9.i, %.lr.ph.split.us.i.i.i ], [ %.sroa.0.6.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %.pre.i.i.i = phi i8 [ %i.p, %.lr.ph.split.us.i.i.i ], [ %i.x, %.lr.ph.split.i.i.i ] ; 2 uses
  %.us-phi93.i.i.i = phi i64 [ %.06092.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.06092.i.i.i, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.aa = icmp eq i8 %.pre.i.i.i, 46
  br i1 %i.aa, label %bb.d, label %.thread80.i.i.i

bb.d:                                             ; preds = %.split.us.i.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %.us-phi93.i.i.i, 2        ; 2 uses
  %i.ac = add nuw i64 %.us-phi93.i.i.i, 1         ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.043110.i.i
  br i1 %i.ad, label %bb.f, label %.thread82.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !106 ; 2 uses
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp ult i8 %i.ag, 10
  %brmerge.i.i.i = or i1 %i.ab, %i.ah
  br i1 %brmerge.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %.thread80.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.e
  br i1 %i.ab, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i

.thread80.i.i.i:                                  ; preds = %bb.f, %.split.us.i.i.i
  %i.ai = phi i8 [ %i.af, %bb.f ], [ %.pre.i.i.i, %.split.us.i.i.i ]
  %.4.i.i.i = phi i64 [ %i.ac, %bb.f ], [ %.us-phi93.i.i.i, %.split.us.i.i.i ]
  switch i8 %i.ai, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i, %.thread80.i.i.i
  %i.aj = add i64 %.4.i.i.i, 1                    ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.043110.i.i
  br i1 %i.ak, label %.lr.ph95.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i

.lr.ph95.i.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  %i.al = phi i64 [ %i.ao, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.aj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106
  switch i8 %i.an, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i: ; preds = %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i, %.lr.ph95.i.i.i
  %i.ao = add nuw i64 %i.al, 1                    ; 2 uses
  %exitcond111.not.i.i.i = icmp eq i64 %i.ao, %.043110.i.i
  br i1 %exitcond111.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %.lr.ph95.i.i.i, !llvm.loop !707

bb.g:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ap = add nuw i64 %.06092.i.i.i, 1            ; 3 uses
  %i.aq = zext nneg i8 %i.y to i64
  %i.ar = mul i64 %.sroa.0.6.i, 10
  %i.as = sub i64 %i.ar, %i.aq                    ; 3 uses
  %.not76.i.i.i = icmp eq i64 %i.ap, %.043110.i.i
  br i1 %.not76.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !106
  %.not97.i.i.i = icmp eq i8 %i.au, 95
  br i1 %.not97.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = add i64 %.06092.i.i.i, 2                ; 3 uses
  %i.aw = icmp eq i64 %i.av, %.043110.i.i
  br i1 %i.aw, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !106
  %i.az = add i8 %i.ay, -48
  %i.ba = icmp ult i8 %i.az, 10
  br i1 %i.ba, label %bb.k, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

bb.k:                                             ; preds = %bb.j, %bb.h
  %.7.i.i.i = phi i64 [ %i.ap, %bb.h ], [ %i.av, %bb.j ] ; 3 uses
  %i.bb = icmp ult i64 %.7.i.i.i, %.043110.i.i
  br i1 %i.bb, label %.lr.ph.split.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, !llvm.loop !706

bb.l:                                             ; preds = %.lr.ph.i.i
  %.not46.i.i = icmp ne i64 %.043110.i.i, 1
  %i.bc = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not46.i.i, %i.bc
  br i1 %or.cond.i.i, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 1 ; 7 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !106 ; 2 uses
  %i.bf = add i8 %i.be, -66                       ; 2 uses
  %i.bg = tail call i8 @llvm.fshl.i8(i8 %i.bf, i8 %i.bf, i8 7)
  switch i8 %i.bg, label %bb.aa [
    i8 27, label %bb.n
    i8 11, label %bb.n
    i8 16, label %bb.t
    i8 0, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bh = add i64 %.043110.i.i, -1                ; 5 uses
  %i.bi = icmp ugt i64 %i.bh, 1
  br i1 %i.bi, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

.lr.ph.i49.i.i:                                   ; preds = %bb.n, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i
  %.02640.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.n ] ; 3 uses
  %i.bj = phi i64 [ %i.cl, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.02640.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !106 ; 3 uses
  %i.bm = add i8 %i.bl, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.bm, 26
  %i.bn = or disjoint i8 %i.bl, 32
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.bn, i8 %i.bl ; 4 uses
  %i.bo = add i8 %spec.select.i.i.i.i, -48
  %or.cond.i36.i.i.i = icmp ult i8 %i.bo, 10
  %i.bp = and i8 %spec.select.i.i.i.i, -33
  %i.bq = add i8 %i.bp, -65
  %i.br = icmp ult i8 %i.bq, 6
  %i.bs = or i1 %or.cond.i36.i.i.i, %i.br
  br i1 %i.bs, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

bb.o:                                             ; preds = %.lr.ph.i49.i.i
  %i.bt = icmp sgt i8 %spec.select.i.i.i.i, 96
  %.0.v.i.i.i = select i1 %i.bt, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i.i
  %i.bu = add nuw i64 %.02640.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bu, %i.bh
  br i1 %.not.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !106
  %i.bx = icmp eq i8 %i.bw, 95
  br i1 %i.bx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.by = add nuw i64 %.02640.i.i.i, 2            ; 3 uses
  %i.bz = icmp eq i64 %i.by, %i.bh
  br i1 %i.bz, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !106 ; 2 uses
  %i.cc = add i8 %i.cb, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.cc, 10
  %i.cd = and i8 %i.cb, -33
  %i.ce = add i8 %i.cd, -65
  %i.cf = icmp ult i8 %i.ce, 6
  %i.cg = or i1 %or.cond.i37.i.i.i, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.1.i.i.i = phi i64 [ %i.by, %bb.r ], [ %i.bu, %bb.p ], [ %i.bh, %bb.o ] ; 2 uses
  %i.ch = zext i8 %.0.i.i.i to i64                ; 2 uses
  %i.ci = xor i64 %i.ch, -1
  %i.cj = lshr i64 %i.ci, 4
  %.not38.i.i.i = icmp ugt i64 %i.bj, %i.cj
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.s
  %i.ck = shl nuw i64 %i.bj, 4
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = icmp ult i64 %.1.i.i.i, %i.bh
  br i1 %i.cm, label %.lr.ph.i49.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i

bb.t:                                             ; preds = %bb.m, %bb.m
  %i.cn = add i64 %.043110.i.i, -1                ; 5 uses
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i
  %.02435.i.i.i = phi i64 [ %.1.i55.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.t ] ; 3 uses
  %i.cp = phi i64 [ %i.dd, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.02435.i.i.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !106
  switch i8 %i.cr, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i [
    i8 48, label %bb.v
    i8 49, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i52.i.i
  %.0.i53.i.i = phi i64 [ 1, %bb.u ], [ 0, %.lr.ph.i52.i.i ]
  %i.cs = add nuw i64 %.02435.i.i.i, 1            ; 3 uses
  %.not.i54.i.i = icmp eq i64 %i.cs, %i.cn
  br i1 %.not.i54.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106
  %i.cv = icmp eq i8 %i.cu, 95
  br i1 %i.cv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cw = add nuw i64 %.02435.i.i.i, 2            ; 3 uses
  %i.cx = icmp eq i64 %i.cw, %i.cn
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !106
  %i.da = and i8 %i.cz, -2
  %switch.i.i.i = icmp eq i8 %i.da, 48
  br i1 %switch.i.i.i, label %bb.z, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %.1.i55.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.cw, %bb.y ], [ %i.cs, %bb.w ] ; 2 uses
  %i.db = icmp sgt i64 %i.cp, -1
  br i1 %i.db, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.z
  %i.dc = shl nuw i64 %i.cp, 1
  %i.dd = or disjoint i64 %.0.i53.i.i, %i.dc      ; 2 uses
  %i.de = icmp ult i64 %.1.i55.i.i, %i.cn
  br i1 %i.de, label %.lr.ph.i52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i

bb.aa:                                            ; preds = %bb.m
  %i.df = add i8 %i.be, -48
  %i.dg = icmp ult i8 %i.df, 10
  %or.cond74.i.i = and i1 %3, %i.dg
  br i1 %or.cond74.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %.preheader.i.i.i

bb.ab:                                            ; preds = %bb.l
  %i.dh = icmp eq i8 %i.i, 43                     ; 2 uses
  %brmerge.not.i.i.i = and i1 %3, %i.dh
  %.mux.i.i.i = zext i1 %i.dh to i64
  br i1 %brmerge.not.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ab, %bb.aa
  %.mux.i72.i.i = phi i64 [ %.mux.i.i.i, %bb.ab ], [ 0, %bb.aa ] ; 5 uses
  %i.di = icmp ugt i64 %.043110.i.i, %.mux.i72.i.i
  br i1 %i.di, label %.lr.ph.i57.i.i, label %.thread90.i.i.i

.lr.ph.i57.i.i:                                   ; preds = %.preheader.i.i.i
  br i1 %3, label %.lr.ph.split.us.i67.i.i, label %.lr.ph.split.i59.i.i

.lr.ph.split.us.i67.i.i:                          ; preds = %.lr.ph.i57.i.i, %bb.ad
  %.sroa.0.3.i = phi i64 [ %i.ds, %bb.ad ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.us.i.i.i = phi i64 [ %i.dq, %bb.ad ], [ %.mux.i72.i.i, %.lr.ph.i57.i.i ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.099.us.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !106 ; 2 uses
  %i.dl = add i8 %i.dk, -48                       ; 2 uses
  %i.dm = icmp ult i8 %i.dl, 10
  br i1 %i.dm, label %bb.ac, label %.split.us.i60.i.i

bb.ac:                                            ; preds = %.lr.ph.split.us.i67.i.i
  %i.dn = zext nneg i8 %i.dl to i64               ; 2 uses
  %i.do = xor i64 %i.dn, -1
  %i.dp = udiv i64 %i.do, 10
  %.not.us.i.i.i = icmp ugt i64 %.sroa.0.3.i, %i.dp
  br i1 %.not.us.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.ad, !prof !125

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add i64 %.099.us.i.i.i, 1               ; 2 uses
  %i.dr = mul nuw i64 %.sroa.0.3.i, 10
  %i.ds = add i64 %i.dr, %i.dn                    ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %i.dq, %.043110.i.i
  br i1 %exitcond.not.i68.i.i, label %.thread90.i.i.i, label %.lr.ph.split.us.i67.i.i, !llvm.loop !708

.lr.ph.split.i59.i.i:                             ; preds = %.lr.ph.i57.i.i, %bb.am
  %.sroa.0.1.i = phi i64 [ %i.er, %bb.am ], [ 0, %.lr.ph.i57.i.i ] ; 3 uses
  %.099.i.i.i = phi i64 [ %.7.i66.i.i, %bb.am ], [ %.mux.i72.i.i, %.lr.ph.i57.i.i ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %.099.i.i.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !106 ; 2 uses
  %i.dv = add i8 %i.du, -48                       ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 10
  br i1 %i.dw, label %bb.ah, label %.split.us.i60.i.i

.split.us.i60.i.i:                                ; preds = %.lr.ph.split.i59.i.i, %.lr.ph.split.us.i67.i.i
  %.sroa.0.2.i = phi i64 [ %.sroa.0.3.i, %.lr.ph.split.us.i67.i.i ], [ %.sroa.0.1.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %.pre.i61.i.i = phi i8 [ %i.dk, %.lr.ph.split.us.i67.i.i ], [ %i.du, %.lr.ph.split.i59.i.i ] ; 2 uses
  %.us-phi100.i.i.i = phi i64 [ %.099.us.i.i.i, %.lr.ph.split.us.i67.i.i ], [ %.099.i.i.i, %.lr.ph.split.i59.i.i ] ; 3 uses
  %i.dx = icmp eq i8 %.pre.i61.i.i, 46
  br i1 %i.dx, label %bb.ae, label %.thread86.i.i.i

bb.ae:                                            ; preds = %.split.us.i60.i.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = icmp ule i64 %.us-phi100.i.i.i, %.mux.i72.i.i ; 2 uses
  %i.dz = add nuw i64 %.us-phi100.i.i.i, 1        ; 4 uses
  %i.ea = icmp ult i64 %i.dz, %.043110.i.i
  br i1 %i.ea, label %bb.ag, label %.thread88.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !106 ; 2 uses
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  %brmerge.i64.i.i = or i1 %i.dy, %i.ee
  br i1 %brmerge.i64.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %.thread86.i.i.i

.thread88.i.i.i:                                  ; preds = %bb.af
  br i1 %i.dy, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %.thread90.i.i.i

.thread86.i.i.i:                                  ; preds = %bb.ag, %.split.us.i60.i.i
  %i.ef = phi i8 [ %i.ec, %bb.ag ], [ %.pre.i61.i.i, %.split.us.i60.i.i ]
  %.4.i62.i.i = phi i64 [ %i.dz, %bb.ag ], [ %.us-phi100.i.i.i, %.split.us.i60.i.i ]
  switch i8 %i.ef, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i: ; preds = %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i, %.thread86.i.i.i
  %i.eg = add i64 %.4.i62.i.i, 1                  ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %.043110.i.i
  br i1 %i.eh, label %.lr.ph102.i.i.i, label %.thread90.i.i.i

.lr.ph102.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  %i.ei = phi i64 [ %i.el, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.eg, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !106
  switch i8 %i.ek, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i: ; preds = %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i, %.lr.ph102.i.i.i
  %i.el = add nuw i64 %i.ei, 1                    ; 2 uses
  %exitcond121.not.i.i.i = icmp eq i64 %i.el, %.043110.i.i
  br i1 %exitcond121.not.i.i.i, label %.thread90.i.i.i, label %.lr.ph102.i.i.i, !llvm.loop !709

bb.ah:                                            ; preds = %.lr.ph.split.i59.i.i
  %i.em = add nuw i64 %.099.i.i.i, 1              ; 3 uses
  %i.en = zext nneg i8 %i.dv to i64               ; 2 uses
  %i.eo = xor i64 %i.en, -1
  %i.ep = udiv i64 %i.eo, 10
  %.not.i65.i.i = icmp ugt i64 %.sroa.0.1.i, %i.ep
  br i1 %.not.i65.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.ai, !prof !125

bb.ai:                                            ; preds = %bb.ah
  %i.eq = mul nuw i64 %.sroa.0.1.i, 10
  %i.er = add i64 %i.eq, %i.en                    ; 3 uses
  %.not80.i.i.i = icmp eq i64 %i.em, %.043110.i.i
  br i1 %.not80.i.i.i, label %.thread90.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.em
  %i.et = load i8, ptr %i.es, align 1, !tbaa !106
  %.not104.i.i.i = icmp eq i8 %i.et, 95
  br i1 %.not104.i.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.eu = add i64 %.099.i.i.i, 2                  ; 3 uses
  %i.ev = icmp eq i64 %i.eu, %.043110.i.i
  br i1 %i.ev, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.042111.i.i, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !106
  %i.ey = add i8 %i.ex, -48
  %i.ez = icmp ult i8 %i.ey, 10
  br i1 %i.ez, label %bb.am, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.7.i66.i.i = phi i64 [ %i.em, %bb.aj ], [ %i.eu, %bb.al ] ; 3 uses
  %i.fa = icmp ult i64 %.7.i66.i.i, %.043110.i.i
  br i1 %i.fa, label %.lr.ph.split.i59.i.i, label %.thread90.i.i.i, !llvm.loop !708

.thread90.i.i.i:                                  ; preds = %bb.am, %bb.ai, %bb.ad, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i, %.thread88.i.i.i, %.preheader.i.i.i
  %.sroa.0.0.i = phi i64 [ %i.ds, %bb.ad ], [ 0, %.preheader.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %.sroa.0.2.i, %.thread88.i.i.i ], [ %.sroa.0.2.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %i.er, %bb.ai ], [ %i.er, %bb.am ]
  %.8.i56.i.i = phi i64 [ %.043110.i.i, %bb.ad ], [ 1, %.preheader.i.i.i ], [ %i.eg, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i63.i.i ], [ %i.dz, %.thread88.i.i.i ], [ %.043110.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84.i.i.i ], [ %.043110.i.i, %bb.ai ], [ %.7.i66.i.i, %bb.am ]
  %i.fb = icmp ugt i64 %.8.i56.i.i, %.mux.i72.i.i
  br i1 %i.fb, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %bb.k, %bb.g, %bb.c, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
  %.sroa.0.8.i = phi i64 [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %i.v, %bb.c ], [ %.sroa.0.7.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %i.as, %bb.g ], [ %i.as, %bb.k ]
  %.8.i.i.i = phi i64 [ %i.aj, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ], [ %.043110.i.i, %bb.c ], [ %.043110.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78.i.i.i ], [ %.043110.i.i, %bb.g ], [ %.7.i.i.i, %bb.k ]
  %i.fc = icmp ugt i64 %.8.i.i.i, 1
  br i1 %i.fc, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread82.i.i.i
  %.sroa.0.1048.i = phi i64 [ %.sroa.0.7.i, %.thread82.i.i.i ], [ %.sroa.0.8.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i ], [ %.sroa.0.0.i, %.thread90.i.i.i ], [ %i.cl, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ %i.dd, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataImEELb0EEEbRT_h.exit.i.i.i ]
  store i64 %.sroa.0.1048.i, ptr %2, align 8, !tbaa !97
  br label %_ZN6duckdbL20TrySimpleIntegerCastImLb0EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i: ; preds = %bb.b, %.lr.ph, %bb.j, %bb.i, %.lr.ph95.i.i.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i52.i.i, %bb.s, %bb.r, %bb.q, %.lr.ph.i49.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ac, %.lr.ph102.i.i.i, %.preheader.i.i.preheader, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %.thread90.i.i.i, %.thread86.i.i.i, %.thread88.i.i.i, %bb.ag, %bb.ae, %bb.ab, %bb.aa, %bb.t, %bb.n, %.thread80.i.i.i, %.thread82.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.an, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i
  %.042161.i.i = phi ptr [ %i.fe, %bb.an ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i ] ; 22 uses
  %.043160.i.i = phi i64 [ %i.ff, %bb.an ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.i ] ; 39 uses
  %i.fd = load i8, ptr %.042161.i.i, align 1, !tbaa !106 ; 4 uses
  switch i8 %i.fd, label %.critedge.i11.i [
    i8 32, label %bb.an
    i8 12, label %bb.an
    i8 11, label %bb.an
    i8 10, label %bb.an
    i8 9, label %bb.an
    i8 13, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 1
  %i.ff = add i64 %.043160.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.ff, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !710

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.fg = icmp eq i8 %i.fd, 45
  br i1 %i.fg, label %.preheader.i24.i.preheader, label %bb.bg

.preheader.i24.i.preheader:                       ; preds = %.critedge.i11.i
  %cond662 = icmp eq i64 %.043160.i.i, 1
  br i1 %cond662, label %._crit_edge15.i.i.thread.i.i, label %.lr.ph660

.preheader.i24.i:                                 ; preds = %.lr.ph660
  %i.fh = add i64 %.040.i25.i659, 1               ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %i.fh, %.043160.i.i
  br i1 %exitcond.not.i26.i, label %.lr.ph.i.i29.i, label %.lr.ph660, !llvm.loop !711

.lr.ph660:                                        ; preds = %.preheader.i24.i.preheader, %.preheader.i24.i
  %.040.i25.i659 = phi i64 [ %i.fh, %.preheader.i24.i ], [ 1, %.preheader.i24.i.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %.040.i25.i659
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !106
  %.not47.i27.i = icmp eq i8 %i.fj, 48
  br i1 %.not47.i27.i, label %.preheader.i24.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !llvm.loop !711

.lr.ph.i.i29.i:                                   ; preds = %.preheader.i24.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !106 ; 5 uses
  %i.fm = add i8 %i.fl, -48                       ; 3 uses
  %i.fn = icmp ult i8 %i.fm, 10                   ; 2 uses
  br i1 %3, label %.lr.ph.split.us.i.i40.preheader.i, label %.lr.ph.split.i.i30.preheader.i

.lr.ph.split.i.i30.preheader.i:                   ; preds = %.lr.ph.i.i29.i
  br i1 %i.fn, label %.lr.ph224.i, label %.split.us.i.i31.thread.i

.lr.ph.split.us.i.i40.preheader.i:                ; preds = %.lr.ph.i.i29.i
  br i1 %i.fn, label %.lr.ph233.i.preheader, label %.split.us.i.i31.thread473.i

.lr.ph233.i.preheader:                            ; preds = %.lr.ph.split.us.i.i40.preheader.i
  %i.fo = zext nneg i8 %i.fm to i64
  %i.fp = sub nsw i64 0, %i.fo                    ; 2 uses
  %exitcond.not.i.i41.i661 = icmp eq i64 %.043160.i.i, 2
  br i1 %exitcond.not.i.i41.i661, label %._crit_edge15.i.i.thread.i.i, label %.lr.ph.split.us.i.i40.i.lr.ph, !llvm.loop !712

.lr.ph.split.us.i.i40.i.lr.ph:                    ; preds = %.lr.ph233.i.preheader
  br label %.lr.ph.split.us.i.i40.i, !llvm.loop !712

.lr.ph.split.us.i.i40.i:                          ; preds = %.lr.ph.split.us.i.i40.i.lr.ph, %.lr.ph233.i
  %i.fq = phi i64 [ %i.fp, %.lr.ph.split.us.i.i40.i.lr.ph ], [ %i.fz, %.lr.ph233.i ] ; 2 uses
  %i.fr = phi i64 [ 2, %.lr.ph.split.us.i.i40.i.lr.ph ], [ %i.fw, %.lr.ph233.i ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !106 ; 2 uses
  %i.fu = add i8 %i.ft, -48                       ; 2 uses
  %i.fv = icmp ult i8 %i.fu, 10
  br i1 %i.fv, label %.lr.ph233.i, label %.split.us.i.i31.i, !llvm.loop !712

.lr.ph233.i:                                      ; preds = %.lr.ph.split.us.i.i40.i
  %i.fw = add nuw i64 %i.fr, 1                    ; 2 uses
  %i.fx = zext nneg i8 %i.fu to i64
  %i.fy = mul i64 %i.fq, 10
  %i.fz = sub i64 %i.fy, %i.fx                    ; 2 uses
  %exitcond.not.i.i41.i = icmp eq i64 %i.fw, %.043160.i.i
  br i1 %exitcond.not.i.i41.i, label %.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge, label %.lr.ph.split.us.i.i40.i, !llvm.loop !712

.lr.ph.split.i.i30.i:                             ; preds = %bb.bf
  %i.ga = add i8 %i.iv, -48                       ; 2 uses
  %i.gb = icmp ult i8 %i.ga, 10
  br i1 %i.gb, label %.lr.ph224.i, label %.split.us.i.i31.i, !llvm.loop !712

.split.us.i.i31.i:                                ; preds = %.lr.ph.split.i.i30.i, %.lr.ph.split.us.i.i40.i
  %storemerge.i = phi i64 [ %i.fq, %.lr.ph.split.us.i.i40.i ], [ %i.im, %.lr.ph.split.i.i30.i ] ; 3 uses
  %.pre.i.i32.i = phi i8 [ %i.ft, %.lr.ph.split.us.i.i40.i ], [ %i.iv, %.lr.ph.split.i.i30.i ] ; 2 uses
  %.us-phi131.i.i.i = phi i64 [ %i.fr, %.lr.ph.split.us.i.i40.i ], [ %.7.i.i39.i, %.lr.ph.split.i.i30.i ] ; 2 uses
  store i64 %storemerge.i, ptr %6, align 8
  %i.gc = icmp eq i8 %.pre.i.i32.i, 46
  br i1 %i.gc, label %bb.ao, label %.thread111.i.i.i

.split.us.i.i31.thread473.i:                      ; preds = %.lr.ph.split.us.i.i40.preheader.i
  %i.gd = icmp eq i8 %i.fl, 46
  br i1 %i.gd, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.thread111.i.i.i

.split.us.i.i31.thread.i:                         ; preds = %.lr.ph.split.i.i30.preheader.i
  %i.ge = icmp eq i8 %i.fl, 46
  br i1 %i.ge, label %.thread.i, label %.thread111.i.i.i

bb.ao:                                            ; preds = %.split.us.i.i31.i
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.thread.i

.thread.i:                                        ; preds = %bb.ao, %.split.us.i.i31.thread.i
  %storemerge466471.i = phi i64 [ %storemerge.i, %bb.ao ], [ 0, %.split.us.i.i31.thread.i ] ; 2 uses
  %.us-phi131.i.i467470.i = phi i64 [ %.us-phi131.i.i.i, %bb.ao ], [ 1, %.split.us.i.i31.thread.i ] ; 2 uses
  %i.gf = icmp ugt i64 %.us-phi131.i.i467470.i, 1 ; 2 uses
  %i.gg = add nuw i64 %.us-phi131.i.i467470.i, 1  ; 5 uses
  %i.gh = icmp ult i64 %i.gg, %.043160.i.i
  br i1 %i.gh, label %.lr.ph134.i.i.i, label %.thread115.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %.thread.i
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %.lr.ph134.i.i.i
  %i.gk = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.gz, %bb.av ] ; 2 uses
  %i.gl = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.ha, %bb.av ] ; 2 uses
  %i.gm = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.hb, %bb.av ] ; 3 uses
  %i.gn = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.hc, %bb.av ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.gg, %.lr.ph134.i.i.i ], [ %.2.i.i.i, %bb.av ] ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %.185133.i.i.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !106 ; 2 uses
  %i.gq = add i8 %i.gp, -48                       ; 2 uses
  %i.gr = icmp ult i8 %i.gq, 10
  br i1 %i.gr, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.gs = zext nneg i8 %i.gq to i64               ; 2 uses
  %i.gt = xor i64 %i.gs, -1
  %i.gu = udiv i64 %i.gt, 10
  %i.gv = icmp ugt i64 %i.gn, %i.gu
  br i1 %i.gv, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.ar, !prof !125

bb.ar:                                            ; preds = %bb.aq
  %i.gw = add i16 %i.gm, 1                        ; 2 uses
  %i.gx = mul nuw i64 %i.gn, 10
  %i.gy = add i64 %i.gx, %i.gs                    ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  %i.gz = phi i64 [ %i.gy, %bb.ar ], [ %i.gk, %bb.aq ] ; 2 uses
  %i.ha = phi i16 [ %i.gw, %bb.ar ], [ %i.gl, %bb.aq ] ; 2 uses
  %i.hb = phi i16 [ %i.gw, %bb.ar ], [ %i.gm, %bb.aq ] ; 2 uses
  %i.hc = phi i64 [ %i.gy, %bb.ar ], [ %i.gn, %bb.aq ] ; 2 uses
  %i.hd = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.hd, %.043160.i.i
  br i1 %.not103.i.i.i, label %.thread115.i.i.loopexit.i, label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !106
  %i.hg = icmp eq i8 %i.hf, 95
  br i1 %i.hg, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hh = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.hi = icmp eq i64 %i.hh, %.043160.i.i
  br i1 %i.hi, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hj = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.hh
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !106
  %i.hl = add i8 %i.hk, -48
  %i.hm = icmp ult i8 %i.hl, 10
  br i1 %i.hm, label %bb.av, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.av:                                            ; preds = %bb.au, %bb.as
  %.2.i.i.i = phi i64 [ %i.hh, %bb.au ], [ %i.hd, %bb.as ] ; 3 uses
  %i.hn = icmp ult i64 %.2.i.i.i, %.043160.i.i
  br i1 %i.hn, label %bb.ap, label %.thread115.i.i.loopexit.i, !llvm.loop !713

bb.aw:                                            ; preds = %bb.ap
  store i16 %i.gl, ptr %i.gj, align 8
  store i64 %i.gk, ptr %i.gi, align 8
  %i.ho = icmp ugt i64 %.185133.i.i.i, %i.gg
  %or.cond106.i.i.i = or i1 %i.gf, %i.ho
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread115.i.i.loopexit.i:                        ; preds = %bb.av, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.2.i.i.i, %bb.av ], [ %.043160.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.ha, ptr %i.gj, align 8
  store i64 %i.gz, ptr %i.gi, align 8
  br label %.thread115.i.i.i

.thread115.i.i.i:                                 ; preds = %.thread115.i.i.loopexit.i, %.thread.i
  %.promoted11.i.i234.i.i = phi i16 [ 0, %.thread.i ], [ %i.hb, %.thread115.i.i.loopexit.i ]
  %.promoted.i.i231.i.i = phi i64 [ 0, %.thread.i ], [ %i.hc, %.thread115.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.gg, %.thread.i ], [ %.185.lcssa.i.i.ph.i, %.thread115.i.i.loopexit.i ] ; 2 uses
  %i.hp = icmp ugt i64 %.185.lcssa.i.i.i, %i.gg
  %or.cond106116.i.i.i = or i1 %i.gf, %i.hp
  br i1 %or.cond106116.i.i.i, label %.thread117.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.aw, %.split.us.i.i31.thread.i, %.split.us.i.i31.thread473.i, %.split.us.i.i31.i
  %storemerge465.i = phi i64 [ %storemerge466471.i, %bb.aw ], [ %storemerge.i, %.split.us.i.i31.i ], [ 0, %.split.us.i.i31.thread.i ], [ 0, %.split.us.i.i31.thread473.i ] ; 2 uses
  %.promoted11.i.i233.i.i = phi i16 [ %i.gm, %bb.aw ], [ 0, %.split.us.i.i31.i ], [ 0, %.split.us.i.i31.thread.i ], [ 0, %.split.us.i.i31.thread473.i ] ; 2 uses
  %.promoted.i.i230.i.i = phi i64 [ %i.gn, %bb.aw ], [ 0, %.split.us.i.i31.i ], [ 0, %.split.us.i.i31.thread.i ], [ 0, %.split.us.i.i31.thread473.i ] ; 2 uses
  %i.hq = phi i8 [ %i.gp, %bb.aw ], [ %.pre.i.i32.i, %.split.us.i.i31.i ], [ %i.fl, %.split.us.i.i31.thread.i ], [ %i.fl, %.split.us.i.i31.thread473.i ]
  %.4.i.i33.i = phi i64 [ %.185133.i.i.i, %bb.aw ], [ %.us-phi131.i.i.i, %.split.us.i.i31.i ], [ 1, %.split.us.i.i31.thread.i ], [ 1, %.split.us.i.i31.thread473.i ] ; 3 uses
  switch i8 %i.hq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i
    i8 101, label %bb.ax
    i8 69, label %bb.ax
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.hr = add i64 %.4.i.i33.i, 1                  ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %.043160.i.i
  br i1 %i.hs, label %.lr.ph136.i.i.i, label %.thread117.i.i.i

.lr.ph136.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.ht = phi i64 [ %i.hw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.hr, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !106
  switch i8 %i.hv, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i, %.lr.ph136.i.i.i
  %i.hw = add nuw i64 %i.ht, 1                    ; 2 uses
  %exitcond156.not.i.i.i = icmp eq i64 %i.hw, %.043160.i.i
  br i1 %exitcond156.not.i.i.i, label %.thread117.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !714

bb.ax:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.hx = icmp eq i64 %.4.i.i33.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.hx
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hy = add nuw i64 %.4.i.i33.i, 1              ; 3 uses
  %.not104.i.i34.i = icmp ult i64 %i.hy, %.043160.i.i
  br i1 %.not104.i.i34.i, label %bb.az, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.hz = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.hy ; 3 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !106
  %i.ib = icmp eq i8 %i.ia, 45
  %i.ic = sub nuw i64 %.043160.i.i, %i.hy         ; 2 uses
  br i1 %i.ib, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.id = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hz, i64 noundef %i.ic, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.id, label %.split.i, label %.split.thread.i

bb.bb:                                            ; preds = %bb.az
  %i.ie = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.hz, i64 noundef %i.ic, ptr noundef nonnull align 2 dereferenceable(2) %5, i1 noundef zeroext false)
  br i1 %i.ie, label %.split.i, label %.split.thread.i

.split.thread.i:                                  ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split.i:                                         ; preds = %bb.bb, %bb.ba
  %i.if = load i16, ptr %5, align 2, !tbaa !128
  %i.ig = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataImEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.if)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.ig, label %bb.cs, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph224.i:                                      ; preds = %.lr.ph.split.i.i30.preheader.i, %.lr.ph.split.i.i30.i
  %i.ih = phi i8 [ %i.ga, %.lr.ph.split.i.i30.i ], [ %i.fm, %.lr.ph.split.i.i30.preheader.i ]
  %i.ii = phi i64 [ %i.im, %.lr.ph.split.i.i30.i ], [ 0, %.lr.ph.split.i.i30.preheader.i ]
  %.084130.i.i223.i = phi i64 [ %.7.i.i39.i, %.lr.ph.split.i.i30.i ], [ 1, %.lr.ph.split.i.i30.preheader.i ] ; 2 uses
  %i.ij = add nuw i64 %.084130.i.i223.i, 1        ; 3 uses
  %i.ik = zext nneg i8 %i.ih to i64
  %i.il = mul i64 %i.ii, 10
  %i.im = sub i64 %i.il, %i.ik                    ; 4 uses
  %.not105.i.i.i = icmp eq i64 %i.ij, %.043160.i.i
  br i1 %.not105.i.i.i, label %._crit_edge15.i.i.thread.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph224.i
  %i.in = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.ij
  %i.io = load i8, ptr %i.in, align 1, !tbaa !106 ; 2 uses
  %.not.i.i38.i = icmp eq i8 %i.io, 95
  br i1 %.not.i.i38.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ip = add i64 %.084130.i.i223.i, 2            ; 3 uses
  %i.iq = icmp eq i64 %i.ip, %.043160.i.i
  br i1 %i.iq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ir = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.ip
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !106 ; 2 uses
  %i.it = add i8 %i.is, -48
  %i.iu = icmp ult i8 %i.it, 10
  br i1 %i.iu, label %bb.bf, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %i.iv = phi i8 [ %i.io, %bb.bc ], [ %i.is, %bb.be ] ; 2 uses
  %.7.i.i39.i = phi i64 [ %i.ij, %bb.bc ], [ %i.ip, %bb.be ] ; 4 uses
  %i.iw = icmp ult i64 %.7.i.i39.i, %.043160.i.i
  br i1 %i.iw, label %.lr.ph.split.i.i30.i, label %._crit_edge15.i.i.thread.i.i, !llvm.loop !712

.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge: ; preds = %.lr.ph233.i
  br label %._crit_edge15.i.i.thread.i.i, !llvm.loop !712

._crit_edge15.i.i.thread.i.i:                     ; preds = %bb.bf, %.lr.ph224.i, %.preheader.i24.i.preheader, %.lr.ph233.i.preheader, %.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge
  %.ph.i.i = phi i64 [ %i.fz, %.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge ], [ 0, %.preheader.i24.i.preheader ], [ %i.fp, %.lr.ph233.i.preheader ], [ %i.im, %.lr.ph224.i ], [ %i.im, %bb.bf ]
  %.8.i.ph.i.i = phi i64 [ %.043160.i.i, %.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge ], [ 1, %.preheader.i24.i.preheader ], [ %.043160.i.i, %.lr.ph233.i.preheader ], [ %.7.i.i39.i, %bb.bf ], [ %.043160.i.i, %.lr.ph224.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.thread.i.i.i

.thread117.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i, %.thread115.i.i.i
  %storemerge464.i = phi i64 [ %storemerge466471.i, %.thread115.i.i.i ], [ %storemerge465.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i ], [ %storemerge465.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.promoted11.i.i.i.i = phi i16 [ %.promoted11.i.i234.i.i, %.thread115.i.i.i ], [ %.promoted11.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i ], [ %.promoted11.i.i233.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i231.i.i, %.thread115.i.i.i ], [ %.promoted.i.i230.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i ], [ %.promoted.i.i230.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 3 uses
  %.8.i.i36.i = phi i64 [ %.185.lcssa.i.i.i, %.thread115.i.i.i ], [ %i.hr, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i35.i ], [ %.043160.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %storemerge464.i, ptr %i.b, align 8, !tbaa !97
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iy = icmp ugt i64 %.promoted.i.i.i.i, 10
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.iy, label %.lr.ph.i.i.i.i, label %._crit_edge15.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread117.i.i.i, %.lr.ph.i.i.i.i
  %i.ja = phi i16 [ %i.jd, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i.i.i, %.thread117.i.i.i ]
  %i.jb = phi i64 [ %i.jc, %.lr.ph.i.i.i.i ], [ %.promoted.i.i.i.i, %.thread117.i.i.i ] ; 2 uses
  %i.jc = udiv i64 %i.jb, 10                      ; 3 uses
  %i.jd = add i16 %i.ja, -1                       ; 3 uses
  %i.je = icmp ugt i64 %i.jb, 109
  br i1 %i.je, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !15

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !158
  store i16 %i.jd, ptr %i.iz, align 8, !tbaa !159
  br label %._crit_edge15.i.i.i.i

._crit_edge15.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %.thread117.i.i.i
  %i.jf = phi i16 [ %i.jd, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i.i.i, %.thread117.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.jc, %._crit_edge.i.i.i.i ], [ %.promoted.i.i.i.i, %.thread117.i.i.i ]
  %i.jg = icmp eq i16 %i.jf, 1
  %i.jh = icmp samesign ugt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i37.i = and i1 %i.jg, %i.jh
  br i1 %or.cond.i.i.i37.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %._crit_edge15.i.i.i.i, %._crit_edge15.i.i.thread.i.i
  %i.ji = phi i64 [ %.ph.i.i, %._crit_edge15.i.i.thread.i.i ], [ %storemerge464.i, %._crit_edge15.i.i.i.i ]
  %.8.i280285.i.i = phi i64 [ %.8.i.ph.i.i, %._crit_edge15.i.i.thread.i.i ], [ %.8.i.i36.i, %._crit_edge15.i.i.i.i ]
  store i64 %i.ji, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.split58.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.i.i.i: ; preds = %._crit_edge15.i.i.i.i
  %i.jj = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %storemerge464.i, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre16.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !97
  store i64 %.pre16.i.i.i.i, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.jj, label %.split58.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split58.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.thread.i.i.i
  %.8.i280284.i.i = phi i64 [ %.8.i.i36.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.i.i.i ], [ %.8.i280285.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.thread.i.i.i ]
  %i.jk = icmp ugt i64 %.8.i280284.i.i, 1
  br i1 %i.jk, label %bb.cs, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bg:                                            ; preds = %.critedge.i11.i
  %.not46.i12.i = icmp ne i64 %.043160.i.i, 1
  %i.jl = icmp eq i8 %i.fd, 48
  %or.cond.i13.i = and i1 %.not46.i12.i, %i.jl
  br i1 %or.cond.i13.i, label %bb.bh, label %bb.bv

bb.bh:                                            ; preds = %bb.bg
  %i.jm = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 1 ; 7 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !106 ; 2 uses
  %i.jo = add i8 %i.jn, -66                       ; 2 uses
  %i.jp = tail call i8 @llvm.fshl.i8(i8 %i.jo, i8 %i.jo, i8 7)
  switch i8 %i.jp, label %bb.bu [
    i8 27, label %bb.bi
    i8 11, label %bb.bi
    i8 16, label %bb.bn
    i8 0, label %bb.bn
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.jq = add i64 %.043160.i.i, -1                ; 5 uses
  %i.jr = icmp ugt i64 %i.jq, 1
  br i1 %i.jr, label %.lr.ph.i56.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i56.i.preheader.i:                         ; preds = %bb.bi
  %i.js = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !106 ; 3 uses
  %i.ju = add i8 %i.jt, -65
  %or.cond.i.i57.i198.i = icmp ult i8 %i.ju, 26
  %i.jv = or disjoint i8 %i.jt, 32
  %spec.select.i.i.i18199.i = select i1 %or.cond.i.i57.i198.i, i8 %i.jv, i8 %i.jt ; 3 uses
  %i.jw = add i8 %spec.select.i.i.i18199.i, -48
  %or.cond.i36.i.i19200.i = icmp ult i8 %i.jw, 10
  %i.jx = and i8 %spec.select.i.i.i18199.i, -33
  %i.jy = add i8 %i.jx, -65
  %i.jz = icmp ult i8 %i.jy, 6
  %i.ka = or i1 %or.cond.i36.i.i19200.i, %i.jz
  br i1 %i.ka, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i56.i.i:                                   ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.1.i.i22.i
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !106 ; 3 uses
  %i.kd = add i8 %i.kc, -65
  %or.cond.i.i57.i.i = icmp ult i8 %i.kd, 26
  %i.ke = or disjoint i8 %i.kc, 32
  %spec.select.i.i.i18.i = select i1 %or.cond.i.i57.i.i, i8 %i.ke, i8 %i.kc ; 3 uses
  %i.kf = add i8 %spec.select.i.i.i18.i, -48
  %or.cond.i36.i.i19.i = icmp ult i8 %i.kf, 10
  %i.kg = and i8 %spec.select.i.i.i18.i, -33
  %i.kh = add i8 %i.kg, -65
  %i.ki = icmp ult i8 %i.kh, 6
  %i.kj = or i1 %or.cond.i36.i.i19.i, %i.ki
  br i1 %i.kj, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i56.i.preheader.i, %.lr.ph.i56.i.i
  %spec.select.i.i.i18202.i = phi i8 [ %spec.select.i.i.i18.i, %.lr.ph.i56.i.i ], [ %spec.select.i.i.i18199.i, %.lr.ph.i56.i.preheader.i ] ; 2 uses
  %i.kk = phi i64 [ %i.ld, %.lr.ph.i56.i.i ], [ 0, %.lr.ph.i56.i.preheader.i ] ; 2 uses
  %.02642.i.i201.i = phi i64 [ %.1.i.i22.i, %.lr.ph.i56.i.i ], [ 1, %.lr.ph.i56.i.preheader.i ] ; 2 uses
  %i.kl = icmp sgt i8 %spec.select.i.i.i18202.i, 96
  %.0.v.i.i20.i = select i1 %i.kl, i8 -87, i8 -48
  %.0.i.i21.i = add i8 %.0.v.i.i20.i, %spec.select.i.i.i18202.i
  %i.km = add nuw i64 %.02642.i.i201.i, 1         ; 3 uses
  %.not.i58.i.i = icmp eq i64 %i.km, %i.jq
  br i1 %.not.i58.i.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !106
  %i.kp = icmp eq i8 %i.ko, 95
  br i1 %i.kp, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.kq = add nuw i64 %.02642.i.i201.i, 2         ; 3 uses
  %i.kr = icmp eq i64 %i.kq, %i.jq
  br i1 %i.kr, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kq
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !106 ; 2 uses
  %i.ku = add i8 %i.kt, -48
  %or.cond.i37.i.i23.i = icmp ult i8 %i.ku, 10
  %i.kv = and i8 %i.kt, -33
  %i.kw = add i8 %i.kv, -65
  %i.kx = icmp ult i8 %i.kw, 6
  %i.ky = or i1 %or.cond.i37.i.i23.i, %i.kx
  br i1 %i.ky, label %bb.bm, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bm:                                            ; preds = %bb.bl, %bb.bj, %.lr.ph.i
  %.1.i.i22.i = phi i64 [ %i.kq, %bb.bl ], [ %i.km, %bb.bj ], [ %i.jq, %.lr.ph.i ] ; 3 uses
  %i.kz = zext i8 %.0.i.i21.i to i64              ; 2 uses
  %i.la = xor i64 %i.kz, -1
  %i.lb = lshr i64 %i.la, 4
  %.not39.i.i.i = icmp ugt i64 %i.kk, %i.lb
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i, !prof !125

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bm
  %i.lc = shl nuw i64 %i.kk, 4
  %i.ld = add i64 %i.lc, %i.kz                    ; 2 uses
  %i.le = icmp ult i64 %.1.i.i22.i, %i.jq
  br i1 %i.le, label %.lr.ph.i56.i.i, label %.sink.split.i

bb.bn:                                            ; preds = %bb.bh, %bb.bh
  %i.lf = add i64 %.043160.i.i, -1                ; 5 uses
  %i.lg = icmp ugt i64 %i.lf, 1
  br i1 %i.lg, label %.lr.ph.i71.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i71.i.i:                                   ; preds = %bb.bn, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i
  %i.lh = phi i64 [ %i.lv, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.bn ] ; 2 uses
  %.02436.i.i.i = phi i64 [ %.1.i74.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.bn ] ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.02436.i.i.i
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !106
  switch i8 %i.lj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.bp
    i8 49, label %bb.bo
  ]

bb.bo:                                            ; preds = %.lr.ph.i71.i.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i71.i.i
  %.0.i72.i.i = phi i64 [ 1, %bb.bo ], [ 0, %.lr.ph.i71.i.i ]
  %i.lk = add nuw i64 %.02436.i.i.i, 1            ; 3 uses
  %.not.i73.i.i = icmp eq i64 %i.lk, %i.lf
  br i1 %.not.i73.i.i, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !106
  %i.ln = icmp eq i8 %i.lm, 95
  br i1 %i.ln, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.lo = add nuw i64 %.02436.i.i.i, 2            ; 3 uses
  %i.lp = icmp eq i64 %i.lo, %i.lf
  br i1 %i.lp, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.lo
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !106
  %i.ls = and i8 %i.lr, -2
  %switch.i.i17.i = icmp eq i8 %i.ls, 48
  br i1 %switch.i.i17.i, label %bb.bt, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bt:                                            ; preds = %bb.bs, %bb.bq, %bb.bp
  %.1.i74.i.i = phi i64 [ %i.lf, %bb.bp ], [ %i.lo, %bb.bs ], [ %i.lk, %bb.bq ] ; 2 uses
  %i.lt = icmp sgt i64 %i.lh, -1
  br i1 %i.lt, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !126

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.bt
  %i.lu = shl nuw i64 %i.lh, 1
  %i.lv = or disjoint i64 %.0.i72.i.i, %i.lu      ; 2 uses
  %i.lw = icmp ult i64 %.1.i74.i.i, %i.lf
  br i1 %i.lw, label %.lr.ph.i71.i.i, label %.sink.split.i

bb.bu:                                            ; preds = %bb.bh
  %i.lx = add i8 %i.jn, -48
  %i.ly = icmp ult i8 %i.lx, 10
  %or.cond99.i.i = and i1 %3, %i.ly
  br i1 %or.cond99.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

bb.bv:                                            ; preds = %bb.bg
  %i.lz = icmp eq i8 %i.fd, 43                    ; 2 uses
  %brmerge.not.i.i14.i = and i1 %3, %i.lz
  %.mux.i.i15.i = zext i1 %i.lz to i64
  br i1 %brmerge.not.i.i14.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.preheader.i.i16.i

.preheader.i.i16.i:                               ; preds = %bb.bv, %bb.bu
  %.mux.i97.i.i = phi i64 [ %.mux.i.i15.i, %bb.bv ], [ 0, %bb.bu ] ; 5 uses
  %i.ma = icmp ugt i64 %.043160.i.i, %.mux.i97.i.i
  br i1 %i.ma, label %.lr.ph.i86.i.i, label %._crit_edge15.i.i79.thread.i.i

.lr.ph.i86.i.i:                                   ; preds = %.preheader.i.i16.i, %bb.cr
  %i.mb = phi i64 [ %i.oo, %bb.cr ], [ 0, %.preheader.i.i16.i ] ; 6 uses
  %.0136.i.i.i = phi i64 [ %.7.i93.i.i, %bb.cr ], [ %.mux.i97.i.i, %.preheader.i.i16.i ] ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %.0136.i.i.i
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !106 ; 3 uses
  %i.me = add i8 %i.md, -48                       ; 2 uses
  %i.mf = icmp ult i8 %i.me, 10
  br i1 %i.mf, label %bb.cm, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i86.i.i
  store i64 %i.mb, ptr %6, align 8
  %i.mg = icmp eq i8 %i.md, 46
  br i1 %i.mg, label %bb.bx, label %.thread117.i87.i.i

bb.bx:                                            ; preds = %bb.bw
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mh = icmp ugt i64 %.0136.i.i.i, %.mux.i97.i.i ; 2 uses
  %i.mi = add nuw i64 %.0136.i.i.i, 1             ; 5 uses
  %i.mj = icmp ult i64 %i.mi, %.043160.i.i
  br i1 %i.mj, label %.lr.ph138.i.i.i, label %.thread121.i.i.i

.lr.ph138.i.i.i:                                  ; preds = %bb.by
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cf, %.lr.ph138.i.i.i
  %i.mm = phi i64 [ 0, %.lr.ph138.i.i.i ], [ %i.nb, %bb.cf ] ; 2 uses
  %i.mn = phi i16 [ 0, %.lr.ph138.i.i.i ], [ %i.nc, %bb.cf ] ; 2 uses
  %i.mo = phi i16 [ 0, %.lr.ph138.i.i.i ], [ %i.nd, %bb.cf ] ; 3 uses
  %i.mp = phi i64 [ 0, %.lr.ph138.i.i.i ], [ %i.ne, %bb.cf ] ; 4 uses
  %.1137.i.i.i = phi i64 [ %i.mi, %.lr.ph138.i.i.i ], [ %.2.i91.i.i, %bb.cf ] ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %.1137.i.i.i
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !106 ; 2 uses
  %i.ms = add i8 %i.mr, -48                       ; 2 uses
  %i.mt = icmp ult i8 %i.ms, 10
  br i1 %i.mt, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.mu = zext nneg i8 %i.ms to i64               ; 2 uses
  %i.mv = xor i64 %i.mu, -1
  %i.mw = udiv i64 %i.mv, 10
  %i.mx = icmp ugt i64 %i.mp, %i.mw
  br i1 %i.mx, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cb, !prof !125

bb.cb:                                            ; preds = %bb.ca
  %i.my = add i16 %i.mo, 1                        ; 2 uses
  %i.mz = mul nuw i64 %i.mp, 10
  %i.na = add i64 %i.mz, %i.mu                    ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb0ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb0ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.cb, %bb.ca
  %i.nb = phi i64 [ %i.na, %bb.cb ], [ %i.mm, %bb.ca ] ; 2 uses
  %i.nc = phi i16 [ %i.my, %bb.cb ], [ %i.mn, %bb.ca ] ; 2 uses
  %i.nd = phi i16 [ %i.my, %bb.cb ], [ %i.mo, %bb.ca ] ; 2 uses
  %i.ne = phi i64 [ %i.na, %bb.cb ], [ %i.mp, %bb.ca ] ; 2 uses
  %i.nf = add nuw i64 %.1137.i.i.i, 1             ; 3 uses
  %.not107.i.i.i = icmp eq i64 %i.nf, %.043160.i.i
  br i1 %.not107.i.i.i, label %.thread121.i.i.loopexit.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb0ELb1EEEbRT_h.exit.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !106
  %i.ni = icmp eq i8 %i.nh, 95
  br i1 %i.ni, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.nj = add i64 %.1137.i.i.i, 2                 ; 3 uses
  %i.nk = icmp eq i64 %i.nj, %.043160.i.i
  br i1 %i.nk, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nl = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.nj
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !106
  %i.nn = add i8 %i.nm, -48
  %i.no = icmp ult i8 %i.nn, 10
  br i1 %i.no, label %bb.cf, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %.2.i91.i.i = phi i64 [ %i.nj, %bb.ce ], [ %i.nf, %bb.cc ] ; 3 uses
  %i.np = icmp ult i64 %.2.i91.i.i, %.043160.i.i
  br i1 %i.np, label %bb.bz, label %.thread121.i.i.loopexit.i, !llvm.loop !715

bb.cg:                                            ; preds = %bb.bz
  store i16 %i.mn, ptr %i.ml, align 8
  store i64 %i.mm, ptr %i.mk, align 8
  %i.nq = icmp ugt i64 %.1137.i.i.i, %i.mi
  %or.cond110.i.i.i = or i1 %i.mh, %i.nq
  br i1 %or.cond110.i.i.i, label %.thread117.i87.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread121.i.i.loopexit.i:                        ; preds = %bb.cf, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb0ELb1EEEbRT_h.exit.i.i.i
  %.1.lcssa.i.i.ph.i = phi i64 [ %.2.i91.i.i, %bb.cf ], [ %.043160.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataImEELb0ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.nc, ptr %i.ml, align 8
  store i64 %i.nb, ptr %i.mk, align 8
  br label %.thread121.i.i.i

.thread121.i.i.i:                                 ; preds = %.thread121.i.i.loopexit.i, %bb.by
  %.promoted11.i.i78228.i.i = phi i16 [ 0, %bb.by ], [ %i.nd, %.thread121.i.i.loopexit.i ]
  %.promoted.i.i77225.i.i = phi i64 [ 0, %bb.by ], [ %i.ne, %.thread121.i.i.loopexit.i ]
  %.1.lcssa.i.i.i = phi i64 [ %i.mi, %bb.by ], [ %.1.lcssa.i.i.ph.i, %.thread121.i.i.loopexit.i ] ; 2 uses
  %i.nr = icmp ugt i64 %.1.lcssa.i.i.i, %i.mi
  %or.cond110122.i.i.i = or i1 %i.mh, %i.nr
  br i1 %or.cond110122.i.i.i, label %.thread123.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i87.i.i:                               ; preds = %bb.cg, %bb.bw
  %.promoted11.i.i78227.i.i = phi i16 [ 0, %bb.bw ], [ %i.mo, %bb.cg ] ; 2 uses
  %.promoted.i.i77224.i.i = phi i64 [ 0, %bb.bw ], [ %i.mp, %bb.cg ] ; 2 uses
  %i.ns = phi i8 [ %i.md, %bb.bw ], [ %i.mr, %bb.cg ]
  %.4.i88.i.i = phi i64 [ %.0136.i.i.i, %bb.bw ], [ %.1137.i.i.i, %bb.cg ] ; 3 uses
  switch i8 %i.ns, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i
    i8 101, label %bb.ch
    i8 69, label %bb.ch
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i: ; preds = %.thread117.i87.i.i, %.thread117.i87.i.i, %.thread117.i87.i.i, %.thread117.i87.i.i, %.thread117.i87.i.i, %.thread117.i87.i.i
  %i.nt = add nuw i64 %.4.i88.i.i, 1              ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %.043160.i.i
  br i1 %i.nu, label %.lr.ph140.i.i.i, label %.thread123.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
  %i.nv = phi i64 [ %i.ny, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ], [ %i.nt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !106
  switch i8 %i.nx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
end_hunk_7
begin_hunk_8_@_ZN6duckdb7TryCast9OperationINS_8string_tEmEEbT_RT0_b:bb.a
_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i: ; preds = %.lr.ph140.i.i.i, %.lr.ph140.i.i.i, %.lr.ph140.i.i.i, %.lr.ph140.i.i.i, %.lr.ph140.i.i.i, %.lr.ph140.i.i.i
  %i.ny = add nuw i64 %i.nv, 1                    ; 2 uses
  %exitcond.not.i90.i.i = icmp eq i64 %i.ny, %.043160.i.i
  br i1 %exitcond.not.i90.i.i, label %.thread123.i.i.i, label %.lr.ph140.i.i.i, !llvm.loop !716

bb.ch:                                            ; preds = %.thread117.i87.i.i, %.thread117.i87.i.i
  %i.nz = icmp eq i64 %.4.i88.i.i, %.mux.i97.i.i
  %or.cond113.i.i.i = or i1 %3, %i.nz
  br i1 %or.cond113.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.oa = add nuw i64 %.4.i88.i.i, 1              ; 3 uses
  %.not108.i.i.i = icmp ult i64 %i.oa, %.043160.i.i
  br i1 %.not108.i.i.i, label %bb.cj, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i16 0, ptr %4, align 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.oa ; 3 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !106
  %i.od = icmp eq i8 %i.oc, 45
  %i.oe = sub nuw i64 %.043160.i.i, %i.oa         ; 2 uses
  br i1 %i.od, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.of = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ob, i64 noundef %i.oe, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext false)
  br i1 %i.of, label %.split59.i, label %.split59.thread.i

bb.cl:                                            ; preds = %bb.cj
  %i.og = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ob, i64 noundef %i.oe, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext false)
  br i1 %i.og, label %.split59.i, label %.split59.thread.i

.split59.thread.i:                                ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split59.i:                                       ; preds = %bb.cl, %bb.ck
  %i.oh = load i16, ptr %4, align 2, !tbaa !128
  %i.oi = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataImEELb0EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.oh)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.oi, label %bb.cs, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cm:                                            ; preds = %.lr.ph.i86.i.i
  %i.oj = add nuw i64 %.0136.i.i.i, 1             ; 3 uses
  %i.ok = zext nneg i8 %i.me to i64               ; 2 uses
  %i.ol = xor i64 %i.ok, -1
  %i.om = udiv i64 %i.ol, 10
  %.not.i92.i.i = icmp ugt i64 %i.mb, %i.om
  br i1 %.not.i92.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cn, !prof !125

bb.cn:                                            ; preds = %bb.cm
  %i.on = mul nuw i64 %i.mb, 10
  %i.oo = add i64 %i.on, %i.ok                    ; 3 uses
  %.not109.i.i.i = icmp eq i64 %i.oj, %.043160.i.i
  br i1 %.not109.i.i.i, label %._crit_edge15.i.i79.thread.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.op = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.oj
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !106
  %i.or = icmp ne i8 %i.oq, 95
  %or.cond.i.i.i = or i1 %3, %i.or
  br i1 %or.cond.i.i.i, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.os = add i64 %.0136.i.i.i, 2                 ; 3 uses
  %i.ot = icmp eq i64 %i.os, %.043160.i.i
  br i1 %i.ot, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ou = getelementptr inbounds nuw i8, ptr %.042161.i.i, i64 %i.os
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !106
  %i.ow = add i8 %i.ov, -48
  %i.ox = icmp ult i8 %i.ow, 10
  br i1 %i.ox, label %bb.cr, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cr:                                            ; preds = %bb.cq, %bb.co
  %.7.i93.i.i = phi i64 [ %i.oj, %bb.co ], [ %i.os, %bb.cq ] ; 3 uses
  %i.oy = icmp ult i64 %.7.i93.i.i, %.043160.i.i
  br i1 %i.oy, label %.lr.ph.i86.i.i, label %._crit_edge15.i.i79.thread.i.i, !llvm.loop !717

._crit_edge15.i.i79.thread.i.i:                   ; preds = %bb.cr, %bb.cn, %.preheader.i.i16.i
  %.ph286.i.i = phi i64 [ 0, %.preheader.i.i16.i ], [ %i.oo, %bb.cn ], [ %i.oo, %bb.cr ]
  %.8.i76.ph.i.i = phi i64 [ 1, %.preheader.i.i16.i ], [ %.7.i93.i.i, %bb.cr ], [ %.043160.i.i, %bb.cn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.thread.i.i.i

.thread123.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i, %.thread121.i.i.i
  %.promoted11.i.i78.i.i = phi i16 [ %.promoted11.i.i78228.i.i, %.thread121.i.i.i ], [ %.promoted11.i.i78227.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i ], [ %.promoted11.i.i78227.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 2 uses
  %.promoted.i.i77.i.i = phi i64 [ %.promoted.i.i77225.i.i, %.thread121.i.i.i ], [ %.promoted.i.i77224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i ], [ %.promoted.i.i77224.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 3 uses
  %.8.i76.i.i = phi i64 [ %.1.lcssa.i.i.i, %.thread121.i.i.i ], [ %i.nt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i.i ], [ %.043160.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.mb, ptr %i.a, align 8, !tbaa !97
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pa = icmp ugt i64 %.promoted.i.i77.i.i, 10
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.pa, label %.lr.ph.i.i84.i.i, label %._crit_edge15.i.i79.i.i

.lr.ph.i.i84.i.i:                                 ; preds = %.thread123.i.i.i, %.lr.ph.i.i84.i.i
  %i.pc = phi i16 [ %i.pf, %.lr.ph.i.i84.i.i ], [ %.promoted11.i.i78.i.i, %.thread123.i.i.i ]
  %i.pd = phi i64 [ %i.pe, %.lr.ph.i.i84.i.i ], [ %.promoted.i.i77.i.i, %.thread123.i.i.i ] ; 2 uses
  %i.pe = udiv i64 %i.pd, 10                      ; 3 uses
  %i.pf = add i16 %i.pc, -1                       ; 3 uses
  %i.pg = icmp ugt i64 %i.pd, 109
  br i1 %i.pg, label %.lr.ph.i.i84.i.i, label %._crit_edge.i.i85.i.i, !llvm.loop !16

._crit_edge.i.i85.i.i:                            ; preds = %.lr.ph.i.i84.i.i
  store i64 %i.pe, ptr %i.oz, align 8, !tbaa !158
  store i16 %i.pf, ptr %i.pb, align 8, !tbaa !159
  br label %._crit_edge15.i.i79.i.i

._crit_edge15.i.i79.i.i:                          ; preds = %._crit_edge.i.i85.i.i, %.thread123.i.i.i
  %i.ph = phi i16 [ %i.pf, %._crit_edge.i.i85.i.i ], [ %.promoted11.i.i78.i.i, %.thread123.i.i.i ]
  %.lcssa.i.i80.i.i = phi i64 [ %i.pe, %._crit_edge.i.i85.i.i ], [ %.promoted.i.i77.i.i, %.thread123.i.i.i ]
  %i.pi = icmp eq i16 %i.ph, 1
  %i.pj = icmp samesign ugt i64 %.lcssa.i.i80.i.i, 4
  %or.cond.i.i81.i.i = and i1 %i.pi, %i.pj
  br i1 %or.cond.i.i81.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.i82.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.thread.i.i.i: ; preds = %._crit_edge15.i.i79.i.i, %._crit_edge15.i.i79.thread.i.i
  %i.pk = phi i64 [ %.ph286.i.i, %._crit_edge15.i.i79.thread.i.i ], [ %i.mb, %._crit_edge15.i.i79.i.i ]
  %.8.i76290295.i.i = phi i64 [ %.8.i76.ph.i.i, %._crit_edge15.i.i79.thread.i.i ], [ %.8.i76.i.i, %._crit_edge15.i.i79.i.i ]
  store i64 %i.pk, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.split60.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.i82.i.i: ; preds = %._crit_edge15.i.i79.i.i
  %i.pl = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %i.mb, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre16.i.i83.i.i = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %.pre16.i.i83.i.i, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.pl, label %.split60.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split60.i:                                       ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.i82.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.thread.i.i.i
  %.8.i76290294.i.i = phi i64 [ %.8.i76.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.i82.i.i ], [ %.8.i76290295.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.thread.i.i.i ]
  %i.pm = icmp ugt i64 %.8.i76290294.i.i, %.mux.i97.i.i
  br i1 %i.pm, label %bb.cs, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.sink.split.i:                                    ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i
  %.lcssa570.sink.i = phi i64 [ %i.ld, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i ], [ %i.lv, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_22IntegerDecimalCastDataImEELb0EEEbRT_h.exit.i.i.i ]
  store i64 %.lcssa570.sink.i, ptr %6, align 8, !tbaa !160
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split.i, %.split60.i, %.split59.i, %.split58.i, %.split.i
  %i.pn = load i64, ptr %6, align 8, !tbaa !160
  store i64 %i.pn, ptr %2, align 8, !tbaa !97
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i: ; preds = %bb.an, %bb.bt, %bb.bs, %bb.br, %.lr.ph.i71.i.i, %bb.bm, %bb.bl, %bb.bk, %.lr.ph.i56.i.i, %bb.cq, %bb.cp, %bb.cm, %bb.ce, %bb.cd, %.lr.ph140.i.i.i, %.lr.ph660, %bb.be, %bb.bd, %bb.au, %bb.at, %.lr.ph136.i.i.i, %bb.cs, %.split60.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.i82.i.i, %.split59.i, %.split59.thread.i, %bb.ci, %bb.ch, %.thread117.i87.i.i, %.thread121.i.i.i, %bb.cg, %bb.bx, %bb.bv, %bb.bu, %bb.bn, %.lr.ph.i56.i.preheader.i, %bb.bi, %.split58.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.i.i.i, %.split.i, %.split.thread.i, %bb.ay, %bb.ax, %.thread111.i.i.i, %.thread115.i.i.i, %bb.aw, %bb.ao, %.split.us.i.i31.thread473.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.thread.i
  %.1.i1056.i = phi i1 [ false, %.split59.thread.i ], [ false, %bb.cg ], [ true, %bb.cs ], [ false, %.split.i ], [ false, %.split58.i ], [ false, %.lr.ph.i56.i.preheader.i ], [ false, %.split59.i ], [ false, %.split60.i ], [ false, %bb.bt ], [ false, %.split.thread.i ], [ false, %bb.bi ], [ false, %bb.bx ], [ false, %bb.bn ], [ false, %.lr.ph136.i.i.i ], [ false, %.thread121.i.i.i ], [ false, %bb.bu ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb1EEEbRT_.exit.i.i.i ], [ false, %bb.ay ], [ false, %bb.aw ], [ false, %bb.ao ], [ false, %.thread111.i.i.i ], [ false, %.thread115.i.i.i ], [ false, %bb.ax ], [ false, %bb.bm ], [ false, %bb.ce ], [ false, %.split.us.i.i31.thread473.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread52.thread.i ], [ false, %bb.ch ], [ false, %.lr.ph660 ], [ false, %bb.au ], [ false, %.thread117.i87.i.i ], [ false, %bb.be ], [ false, %bb.bv ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataImEELb0EEEbRT_.exit.i82.i.i ], [ false, %bb.ci ], [ false, %.lr.ph140.i.i.i ], [ false, %bb.cq ], [ false, %bb.at ], [ false, %bb.bd ], [ false, %bb.cd ], [ false, %bb.cm ], [ false, %bb.cp ], [ false, %.lr.ph.i56.i.i ], [ false, %bb.bk ], [ false, %bb.bl ], [ false, %.lr.ph.i71.i.i ], [ false, %bb.br ], [ false, %bb.bs ], [ false, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN6duckdbL20TrySimpleIntegerCastImLb0EEEbPKcmRT_b.exit

_ZN6duckdbL20TrySimpleIntegerCastImLb0EEEbPKcmRT_b.exit: ; preds = %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i, %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i
  %.1.i = phi i1 [ true, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataImEELb0ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread49.i ], [ %.1.i1056.i, %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataImEELb0ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEfEEbT_RT0_b(i64 %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %cond48.i = icmp eq i32 %i.b, 0
  br i1 %cond48.i, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = and i64 %0, 4294967295
  %i.d = icmp ult i32 %i.b, 13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = select i1 %i.d, ptr %i.e, ptr %1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.03350.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %.lr.ph.i.preheader ] ; 6 uses
  %.03549.i = phi i64 [ %i.i, %bb.b ], [ %i.c, %.lr.ph.i.preheader ] ; 5 uses
  %i.g = load i8, ptr %.03350.i, align 1, !tbaa !106 ; 2 uses
  switch i8 %i.g, label %bb.d [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.i = add nsw i64 %.03549.i, -1                ; 2 uses
  %cond.i = icmp eq i64 %i.i, 0
  br i1 %cond.i, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit, label %.lr.ph.i, !llvm.loop !17

bb.c:                                             ; preds = %.lr.ph.i
  br i1 %3, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.k = add i64 %.03549.i, -1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = icmp ne i64 %.03549.i, 1
  %i.m = icmp eq i8 %i.g, 48
  %i.n = and i1 %i.l, %i.m
  %or.cond71.i = and i1 %3, %i.n
  br i1 %or.cond71.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106
  %i.q = add i8 %i.p, -48
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i
  %.13443.i = phi ptr [ %i.j, %.thread.i ], [ %.03350.i, %bb.d ], [ %.03350.i, %bb.e ] ; 3 uses
  %.13642.i = phi i64 [ %i.k, %.thread.i ], [ %.03549.i, %bb.d ], [ %.03549.i, %bb.e ] ; 2 uses
  %.1344361.i = ptrtoaddr ptr %.13443.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.13443.i, i64 %.13642.i ; 3 uses
  %i.t = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef nonnull %.13443.i, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3, i8 noundef signext 46, i32 noundef 5) #28 ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 1
  %.not37.i = icmp eq i32 %i.u, 0
  br i1 %.not37.i, label %bb.g, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit

bb.g:                                             ; preds = %bb.f
  %i.v = extractvalue { ptr, i32 } %i.t, 0        ; 5 uses
  %i.w = icmp uge ptr %i.v, %i.s
  %or.cond55.not.i = select i1 %3, i1 true, i1 %i.w
  br i1 %or.cond55.not.i, label %.critedge3.i, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %bb.g
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = add i64 %.13642.i, %.1344361.i
  %i.z = sub i64 %i.y, %i.x
  %scevgep.i = getelementptr i8, ptr %i.v, i64 %i.z ; 2 uses
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.h, %.lr.ph52.preheader.i
  %.051.i = phi ptr [ %i.ab, %bb.h ], [ %i.v, %.lr.ph52.preheader.i ] ; 3 uses
  %i.aa = load i8, ptr %.051.i, align 1, !tbaa !106
  switch i8 %i.aa, label %.critedge3.i [
    i8 32, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.051.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ab, %scevgep.i
  br i1 %exitcond.not.i, label %.critedge3.i, label %.lr.ph52.i, !llvm.loop !18

.critedge3.i:                                     ; preds = %bb.h, %.lr.ph52.i, %bb.g
  %.1.i = phi ptr [ %i.v, %bb.g ], [ %scevgep.i, %bb.h ], [ %.051.i, %.lr.ph52.i ]
  %i.ac = icmp eq ptr %.1.i, %i.s
  br label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit

_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit:    ; preds = %bb.b, %bb.a, %bb.c, %bb.e, %bb.f, %.critedge3.i
  %.132.i = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.c ], [ %i.ac, %.critedge3.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.132.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEdEEbT_RT0_b(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %cond48.i = icmp eq i32 %i.b, 0
  br i1 %cond48.i, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = and i64 %0, 4294967295
  %i.d = icmp ult i32 %i.b, 13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = select i1 %i.d, ptr %i.e, ptr %1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.03350.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %.lr.ph.i.preheader ] ; 6 uses
  %.03549.i = phi i64 [ %i.i, %bb.b ], [ %i.c, %.lr.ph.i.preheader ] ; 5 uses
  %i.g = load i8, ptr %.03350.i, align 1, !tbaa !106 ; 2 uses
  switch i8 %i.g, label %bb.d [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.i = add nsw i64 %.03549.i, -1                ; 2 uses
  %cond.i = icmp eq i64 %i.i, 0
  br i1 %cond.i, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit, label %.lr.ph.i, !llvm.loop !19

bb.c:                                             ; preds = %.lr.ph.i
  br i1 %3, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.k = add i64 %.03549.i, -1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = icmp ne i64 %.03549.i, 1
  %i.m = icmp eq i8 %i.g, 48
  %i.n = and i1 %i.l, %i.m
  %or.cond71.i = and i1 %3, %i.n
  br i1 %or.cond71.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106
  %i.q = add i8 %i.p, -48
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i
  %.13443.i = phi ptr [ %i.j, %.thread.i ], [ %.03350.i, %bb.d ], [ %.03350.i, %bb.e ] ; 3 uses
  %.13642.i = phi i64 [ %i.k, %.thread.i ], [ %.03549.i, %bb.d ], [ %.03549.i, %bb.e ] ; 2 uses
  %.1344361.i = ptrtoaddr ptr %.13443.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.13443.i, i64 %.13642.i ; 3 uses
  %i.t = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef nonnull %.13443.i, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i8 noundef signext 46, i32 noundef 5) #28 ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 1
  %.not37.i = icmp eq i32 %i.u, 0
  br i1 %.not37.i, label %bb.g, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit

bb.g:                                             ; preds = %bb.f
  %i.v = extractvalue { ptr, i32 } %i.t, 0        ; 5 uses
  %i.w = icmp uge ptr %i.v, %i.s
  %or.cond55.not.i = select i1 %3, i1 true, i1 %i.w
  br i1 %or.cond55.not.i, label %.critedge3.i, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %bb.g
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = add i64 %.13642.i, %.1344361.i
  %i.z = sub i64 %i.y, %i.x
  %scevgep.i = getelementptr i8, ptr %i.v, i64 %i.z ; 2 uses
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.h, %.lr.ph52.preheader.i
  %.051.i = phi ptr [ %i.ab, %bb.h ], [ %i.v, %.lr.ph52.preheader.i ] ; 3 uses
  %i.aa = load i8, ptr %.051.i, align 1, !tbaa !106
  switch i8 %i.aa, label %.critedge3.i [
    i8 32, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.051.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ab, %scevgep.i
  br i1 %exitcond.not.i, label %.critedge3.i, label %.lr.ph52.i, !llvm.loop !20

.critedge3.i:                                     ; preds = %bb.h, %.lr.ph52.i, %bb.g
  %.1.i = phi ptr [ %i.v, %bb.g ], [ %scevgep.i, %bb.h ], [ %.051.i, %.lr.ph52.i ]
  %i.ac = icmp eq ptr %.1.i, %i.s
  br label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit

_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit:    ; preds = %bb.b, %bb.a, %bb.c, %bb.e, %bb.f, %.critedge3.i
  %.132.i = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.c ], [ %i.ac, %.critedge3.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.132.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb33TryCastErrorMessageCommaSeparated9OperationINS_8string_tEfEEbT_RT0_RNS_14CastParametersE(i64 %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(57) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %0, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !168, !range !169, !noundef !170
  %i.h = trunc nuw i8 %i.g to i1                  ; 4 uses
  %cond48.i = icmp eq i32 %i.d, 0
  br i1 %cond48.i, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = and i64 %0, 4294967295
  %i.j = icmp ult i32 %i.d, 13
  %i.k = select i1 %i.j, ptr %i.e, ptr %1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.03350.i = phi ptr [ %i.m, %bb.b ], [ %i.k, %.lr.ph.i.preheader ] ; 6 uses
  %.03549.i = phi i64 [ %i.n, %bb.b ], [ %i.i, %.lr.ph.i.preheader ] ; 5 uses
  %i.l = load i8, ptr %.03350.i, align 1, !tbaa !106 ; 2 uses
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.n = add nsw i64 %.03549.i, -1                ; 2 uses
  %cond.i = icmp eq i64 %i.n, 0
  br i1 %cond.i, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread, label %.lr.ph.i, !llvm.loop !17

bb.c:                                             ; preds = %.lr.ph.i
  br i1 %i.h, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.p = add i64 %.03549.i, -1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = icmp ne i64 %.03549.i, 1
  %i.r = icmp eq i8 %i.l, 48
  %i.s = and i1 %i.q, %i.r
  %or.cond71.i = and i1 %i.s, %i.h
  br i1 %or.cond71.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !106
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i
  %.13443.i = phi ptr [ %i.o, %.thread.i ], [ %.03350.i, %bb.d ], [ %.03350.i, %bb.e ] ; 3 uses
  %.13642.i = phi i64 [ %i.p, %.thread.i ], [ %.03549.i, %bb.d ], [ %.03549.i, %bb.e ] ; 2 uses
  %.1344361.i = ptrtoaddr ptr %.13443.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.13443.i, i64 %.13642.i ; 3 uses
  %i.y = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef nonnull %.13443.i, ptr noundef nonnull %i.x, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %i.h, i8 noundef signext 44, i32 noundef 5) #28 ; 2 uses
  %i.z = extractvalue { ptr, i32 } %i.y, 1
  %.not37.i = icmp eq i32 %i.z, 0
  br i1 %.not37.i, label %bb.g, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = extractvalue { ptr, i32 } %i.y, 0       ; 5 uses
  %i.ab = icmp uge ptr %i.aa, %i.x
  %or.cond55.not.i = select i1 %i.h, i1 true, i1 %i.ab
  br i1 %or.cond55.not.i, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %bb.g
  %i.ac = ptrtoaddr ptr %i.aa to i64
  %i.ad = add i64 %.13642.i, %.1344361.i
  %i.ae = sub i64 %i.ad, %i.ac
  %scevgep.i = getelementptr i8, ptr %i.aa, i64 %i.ae ; 2 uses
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.h, %.lr.ph52.preheader.i
  %.051.i = phi ptr [ %i.ag, %bb.h ], [ %i.aa, %.lr.ph52.preheader.i ] ; 3 uses
  %i.af = load i8, ptr %.051.i, align 1, !tbaa !106
  switch i8 %i.af, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit [
    i8 32, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.051.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ag, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit, label %.lr.ph52.i, !llvm.loop !18

_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit:    ; preds = %.lr.ph52.i, %bb.h, %bb.g
  %.1.i = phi ptr [ %i.aa, %bb.g ], [ %scevgep.i, %bb.h ], [ %.051.i, %.lr.ph52.i ]
  %i.ah = icmp eq ptr %.1.i, %i.x
  br i1 %i.ah, label %bb.t, label %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread

_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %bb.f, %bb.e, %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 36, ptr %i.b, align 8, !tbaa !97
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !104
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !97  ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.aj, ptr noundef nonnull align 1 dereferenceable(36) @.str.1, i64 36, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.an = load i32, ptr %5, align 8, !tbaa !106, !noalias !724 ; 4 uses
  %i.ao = icmp ult i32 %i.an, 13
  %i.ap = load ptr, ptr %i.c, align 8, !noalias !724
  %i.aq = select i1 %i.ao, ptr %i.e, ptr %i.ap    ; 2 uses
  %i.ar = zext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !105, !alias.scope !724
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %.noexc.i12, label %bb.i

.noexc.i12:                                       ; preds = %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #31
          to label %.noexc13 unwind label %bb.r

.noexc13:                                         ; preds = %.noexc.i12
  unreachable

bb.i:                                             ; preds = %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !724
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !97, !noalias !724
  %i.au = icmp ugt i32 %i.an, 15
  br i1 %i.au, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.r   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i.i
  store ptr %i.av, ptr %8, align 8, !tbaa !104, !alias.scope !724
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !724
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !106, !alias.scope !724
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc14, %bb.i
  %i.ax = phi ptr [ %i.av, %.noexc14 ], [ %i.as, %bb.i ] ; 2 uses
  switch i32 %i.an, label %bb.k [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.e, align 4, !tbaa !106, !noalias !724
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !106
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !724 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !107, !alias.scope !724
  %i.bb = load ptr, ptr %8, align 8, !tbaa !104, !alias.scope !724
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !724
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !725
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !725
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %4, align 8, !tbaa !110, !noalias !725 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !111, !noalias !725 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.bd, %bb.m ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bh) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, %i.bf
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !110, !noalias !725
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.m
  %i.bl = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bd, %bb.m ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #29
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !725
  br label %.body

bb.p:                                             ; preds = %bb.n, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !725
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bq = load ptr, ptr %8, align 8, !tbaa !104   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.as
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.bs = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ai
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.bs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.t

bb.r:                                             ; preds = %.noexc.i.i, %.noexc.i12
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.s:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bw) #29
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bv, %bb.s ] ; 2 uses
  %i.bz = load ptr, ptr %8, align 8, !tbaa !104   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.as
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.bz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn, %.body ]
  %i.cb = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ai
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  call void @_ZdlPv(ptr noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.132.i32 = phi i1 [ true, %_ZN6duckdbL13TryDoubleCastIfEEbPKcmRT_bc.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  ret i1 %.132.i32
}

declare void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb33TryCastErrorMessageCommaSeparated9OperationINS_8string_tEdEEbT_RT0_RNS_14CastParametersE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(57) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %0, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = trunc i64 %0 to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !168, !range !169, !noundef !170
  %i.h = trunc nuw i8 %i.g to i1                  ; 4 uses
  %cond48.i = icmp eq i32 %i.d, 0
  br i1 %cond48.i, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = and i64 %0, 4294967295
  %i.j = icmp ult i32 %i.d, 13
  %i.k = select i1 %i.j, ptr %i.e, ptr %1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.03350.i = phi ptr [ %i.m, %bb.b ], [ %i.k, %.lr.ph.i.preheader ] ; 6 uses
  %.03549.i = phi i64 [ %i.n, %bb.b ], [ %i.i, %.lr.ph.i.preheader ] ; 5 uses
  %i.l = load i8, ptr %.03350.i, align 1, !tbaa !106 ; 2 uses
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.n = add nsw i64 %.03549.i, -1                ; 2 uses
  %cond.i = icmp eq i64 %i.n, 0
  br i1 %cond.i, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread, label %.lr.ph.i, !llvm.loop !19

bb.c:                                             ; preds = %.lr.ph.i
  br i1 %i.h, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.p = add i64 %.03549.i, -1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = icmp ne i64 %.03549.i, 1
  %i.r = icmp eq i8 %i.l, 48
  %i.s = and i1 %i.q, %i.r
  %or.cond71.i = and i1 %i.s, %i.h
  br i1 %or.cond71.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.03350.i, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !106
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread.i
  %.13443.i = phi ptr [ %i.o, %.thread.i ], [ %.03350.i, %bb.d ], [ %.03350.i, %bb.e ] ; 3 uses
  %.13642.i = phi i64 [ %i.p, %.thread.i ], [ %.03549.i, %bb.d ], [ %.03549.i, %bb.e ] ; 2 uses
  %.1344361.i = ptrtoaddr ptr %.13443.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.13443.i, i64 %.13642.i ; 3 uses
  %i.y = call { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef nonnull %.13443.i, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %i.h, i8 noundef signext 44, i32 noundef 5) #28 ; 2 uses
  %i.z = extractvalue { ptr, i32 } %i.y, 1
  %.not37.i = icmp eq i32 %i.z, 0
  br i1 %.not37.i, label %bb.g, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = extractvalue { ptr, i32 } %i.y, 0       ; 5 uses
  %i.ab = icmp uge ptr %i.aa, %i.x
  %or.cond55.not.i = select i1 %i.h, i1 true, i1 %i.ab
  br i1 %or.cond55.not.i, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %bb.g
  %i.ac = ptrtoaddr ptr %i.aa to i64
  %i.ad = add i64 %.13642.i, %.1344361.i
  %i.ae = sub i64 %i.ad, %i.ac
  %scevgep.i = getelementptr i8, ptr %i.aa, i64 %i.ae ; 2 uses
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.h, %.lr.ph52.preheader.i
  %.051.i = phi ptr [ %i.ag, %bb.h ], [ %i.aa, %.lr.ph52.preheader.i ] ; 3 uses
  %i.af = load i8, ptr %.051.i, align 1, !tbaa !106
  switch i8 %i.af, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit [
    i8 32, label %bb.h
    i8 12, label %bb.h
    i8 11, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i, %.lr.ph52.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.051.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ag, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit, label %.lr.ph52.i, !llvm.loop !20

_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit:    ; preds = %.lr.ph52.i, %bb.h, %bb.g
  %.1.i = phi ptr [ %i.aa, %bb.g ], [ %scevgep.i, %bb.h ], [ %.051.i, %.lr.ph52.i ]
  %i.ah = icmp eq ptr %.1.i, %i.x
  br i1 %i.ah, label %bb.t, label %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread

_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %bb.f, %bb.e, %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 37, ptr %i.b, align 8, !tbaa !97
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !104
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !97  ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.aj, ptr noundef nonnull align 1 dereferenceable(37) @.str.2, i64 37, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.an = load i32, ptr %5, align 8, !tbaa !106, !noalias !732 ; 4 uses
  %i.ao = icmp ult i32 %i.an, 13
  %i.ap = load ptr, ptr %i.c, align 8, !noalias !732
  %i.aq = select i1 %i.ao, ptr %i.e, ptr %i.ap    ; 2 uses
  %i.ar = zext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !105, !alias.scope !732
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %.noexc.i12, label %bb.i

.noexc.i12:                                       ; preds = %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #31
          to label %.noexc13 unwind label %bb.r

.noexc13:                                         ; preds = %.noexc.i12
  unreachable

bb.i:                                             ; preds = %_ZN6duckdbL13TryDoubleCastIdEEbPKcmRT_bc.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !732
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !97, !noalias !732
  %i.au = icmp ugt i32 %i.an, 15
  br i1 %i.au, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.r   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i.i
  store ptr %i.av, ptr %8, align 8, !tbaa !104, !alias.scope !732
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !732
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !106, !alias.scope !732
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc14, %bb.i
  %i.ax = phi ptr [ %i.av, %.noexc14 ], [ %i.as, %bb.i ] ; 2 uses
  switch i32 %i.an, label %bb.k [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.e, align 4, !tbaa !106, !noalias !732
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !106
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !732 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !107, !alias.scope !732
  %i.bb = load ptr, ptr %8, align 8, !tbaa !104, !alias.scope !732
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !733
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %4, align 8, !tbaa !110, !noalias !733 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !111, !noalias !733 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.bd, %bb.m ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bh) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, %i.bf
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !110, !noalias !733
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.m
  %i.bl = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bd, %bb.m ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #29
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !733
  br label %.body

bb.p:                                             ; preds = %bb.n, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !733
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_8
