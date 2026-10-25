Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_operators?download=true
inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN6duckdb7TryCast9OperationINS_8string_tEaEEbT_RT0_b:bb.a
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
  br i1 %i.gm, label %bb.av, label %.thread117.i.i.loopexit.i, !llvm.loop !623

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
  br i1 %exitcond.not.i.i32.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !624

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
  %i.hb = sub nuw nsw i64 %.036158.i.i, %i.gx     ; 2 uses
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
  br i1 %i.hu, label %.lr.ph.i.i26.i, label %.thread119.i.i.thread.i, !llvm.loop !625

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
  %.8.i96271276.i.i = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i30.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i30.ph.i, %.thread119.i.i.thread.i ]
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
  %i.is = add nsw i64 %.036158.i.i, -1            ; 5 uses
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
  %i.ki = add nsw i64 %.036158.i.i, -1            ; 5 uses
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
end_hunk_0
begin_hunk_1_@_ZN6duckdb7TryCast9OperationINS_8string_tEsEEbT_RT0_b:bb.a
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
  br i1 %i.dv, label %bb.w, label %.thread117.i.i.loopexit.i, !llvm.loop !631

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
  br i1 %exitcond.not.i.i.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !632

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
  %i.ek = sub nuw nsw i64 %.036158.i.i, %i.eg     ; 2 uses
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
  br i1 %i.fd, label %.lr.ph.i.i21.i, label %.thread119.i.i.thread.i, !llvm.loop !633

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
  %.8.i96271276.i.i = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i.i, %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i.ph.i, %.thread119.i.i.thread.i ]
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
  %i.gb = add nsw i64 %.036158.i.i, -1            ; 5 uses
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
  %i.hr = add nsw i64 %.036158.i.i, -1            ; 5 uses
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
end_hunk_1
begin_hunk_2_@_ZN6duckdb7TryCast9OperationINS_8string_tEiEEbT_RT0_b:bb.a
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
  br i1 %i.gu, label %bb.av, label %.thread117.i.i.loopexit.i, !llvm.loop !643

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
  br i1 %exitcond.not.i.i32.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !644

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
  %i.hj = sub nuw nsw i64 %.036158.i.i, %i.hf     ; 2 uses
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
  br i1 %i.ic, label %.lr.ph.i.i26.i, label %.thread119.i.i.thread.i, !llvm.loop !645

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
  %.8.i96271276.i.i = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i30.i, %_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i30.ph.i, %.thread119.i.i.thread.i ]
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
  %i.ja = add nsw i64 %.036158.i.i, -1            ; 5 uses
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
  %i.kq = add nsw i64 %.036158.i.i, -1            ; 5 uses
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
end_hunk_2
begin_hunk_3_@_ZN6duckdb7TryCast9OperationINS_8string_tElEEbT_RT0_b:bb.a
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
  br i1 %i.gu, label %bb.av, label %.thread115.i.i.loopexit.i, !llvm.loop !655

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
  br i1 %exitcond.not.i.i31.i, label %.thread117.i.i.i, label %.lr.ph134.i.i.i, !llvm.loop !656

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
  %i.hj = sub nuw nsw i64 %.036142.i.i, %i.hf     ; 2 uses
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
  br i1 %i.ic, label %.lr.ph.i.i25.i, label %._crit_edge15.i.i.thread.i.i, !llvm.loop !657

._crit_edge15.i.i.thread.i.i:                     ; preds = %bb.bn, %bb.bj, %bb.ar
  %.ph.i.i = phi i64 [ 0, %bb.ar ], [ %i.hs, %bb.bj ], [ %i.hs, %bb.bn ]
  %.8.i.ph.i.i = phi i64 [ 0, %bb.ar ], [ %.7.i.i35.i, %bb.bn ], [ %.036142.i.i, %bb.bj ]
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
  %i.iw = add nsw i64 %.036142.i.i, -1            ; 5 uses
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
  %i.kl = add nsw i64 %.036142.i.i, -1            ; 5 uses
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
end_hunk_3
begin_hunk_4_@_ZN6duckdb7TryCast9OperationINS_8string_tEhEEbT_RT0_b:bb.a
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
  br i1 %i.gq, label %bb.ar, label %.thread117.i.i.loopexit.i, !llvm.loop !669

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
  br i1 %exitcond.not.i.i35.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !670

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
  %i.hf = sub nuw nsw i64 %.043168.i.i, %i.hb     ; 2 uses
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
  br i1 %i.hy, label %.lr.ph.i.i29.i, label %.thread119.i.i.thread.i, !llvm.loop !671

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
  %.8.i104287292.i.i = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i33.i, %_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i33.ph.i, %.thread119.i.i.thread.i ]
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
  %i.iu = add nsw i64 %.043168.i.i, -1            ; 5 uses
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
  %i.kj = add nsw i64 %.043168.i.i, -1            ; 5 uses
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

end_hunk_4
begin_hunk_5_@_ZN6duckdb7TryCast9OperationINS_8string_tEtEEbT_RT0_b:bb.a
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
  br i1 %i.gw, label %bb.ar, label %.thread117.i.i.loopexit.i, !llvm.loop !683

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
  br i1 %exitcond.not.i.i35.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !684

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
  %i.hl = sub nuw nsw i64 %.043168.i.i, %i.hh     ; 2 uses
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
  br i1 %i.ie, label %.lr.ph.i.i29.i, label %.thread119.i.i.thread.i, !llvm.loop !685

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
  %.8.i104287292.i.i = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i33.i, %_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i33.ph.i, %.thread119.i.i.thread.i ]
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
  %i.ja = add nsw i64 %.043168.i.i, -1            ; 5 uses
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
  %i.kp = add nsw i64 %.043168.i.i, -1            ; 5 uses
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

end_hunk_5
begin_hunk_6_@_ZN6duckdb7TryCast9OperationINS_8string_tEjEEbT_RT0_b:bb.a
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
  br i1 %i.gy, label %bb.ar, label %.thread117.i.i.loopexit.i, !llvm.loop !697

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
  br i1 %exitcond.not.i.i35.i, label %.thread119.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !698

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
  %i.hn = sub nuw nsw i64 %.043168.i.i, %i.hj     ; 2 uses
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
  br i1 %i.ig, label %.lr.ph.i.i29.i, label %.thread119.i.i.thread.i, !llvm.loop !699

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
  %.8.i104287292.i.i = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i ], [ %.8.i.i33.i, %_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b.exit._crit_edge.i.i.i.i ], [ %.8.i.i33.ph.i, %.thread119.i.i.thread.i ]
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
  %i.jc = add nsw i64 %.043168.i.i, -1            ; 5 uses
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
  %i.kr = add nsw i64 %.043168.i.i, -1            ; 5 uses
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

end_hunk_6
begin_hunk_7_@_ZN6duckdb7TryCast9OperationINS_8string_tEmEEbT_RT0_b:bb.a
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
  br i1 %i.hn, label %bb.ap, label %.thread115.i.i.loopexit.i, !llvm.loop !712

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
  br i1 %exitcond156.not.i.i.i, label %.thread117.i.i.i, label %.lr.ph136.i.i.i, !llvm.loop !713

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
  %i.ic = sub nuw nsw i64 %.043160.i.i, %i.hy     ; 2 uses
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
  br i1 %i.iw, label %.lr.ph.split.i.i30.i, label %._crit_edge15.i.i.thread.i.i, !llvm.loop !711

.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge: ; preds = %.lr.ph233.i
  br label %._crit_edge15.i.i.thread.i.i, !llvm.loop !711

._crit_edge15.i.i.thread.i.i:                     ; preds = %bb.bf, %.lr.ph224.i, %.preheader.i24.i.preheader, %.lr.ph233.i.preheader, %.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge
  %.ph.i.i = phi i64 [ %i.fz, %.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge ], [ 0, %.preheader.i24.i.preheader ], [ %i.fp, %.lr.ph233.i.preheader ], [ %i.im, %.lr.ph224.i ], [ %i.im, %bb.bf ]
  %.8.i.ph.i.i = phi i64 [ %.043160.i.i, %.lr.ph233.i.._crit_edge15.i.i.thread.i.i.loopexit_crit_edge ], [ 0, %.preheader.i24.i.preheader ], [ %.043160.i.i, %.lr.ph233.i.preheader ], [ %.7.i.i39.i, %bb.bf ], [ %.043160.i.i, %.lr.ph224.i ]
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
  %i.jq = add nsw i64 %.043160.i.i, -1            ; 5 uses
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
  %i.lf = add nsw i64 %.043160.i.i, -1            ; 5 uses
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
end_hunk_7
begin_hunk_8_@_ZN6duckdb8Uhugeint7TryCastIlEEbNS_10uhugeint_tERT_

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastINS_9hugeint_tEEEbNS_10uhugeint_tERT_(i64, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIhEEbNS_10uhugeint_tERT_(i64, i64, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastItEEbNS_10uhugeint_tERT_(i64, i64, ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIjEEbNS_10uhugeint_tERT_(i64, i64, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastImEEbNS_10uhugeint_tERT_(i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIfEEbNS_10uhugeint_tERT_(i64, i64, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIhEEbT_RNS_9hugeint_tE(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint10TryConvertIhEEbT_RNS_10uhugeint_tE(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertItEEbT_RNS_9hugeint_tE(i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint10TryConvertItEEbT_RNS_10uhugeint_tE(i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIjEEbT_RNS_9hugeint_tE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint10TryConvertIjEEbT_RNS_10uhugeint_tE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertImEEbT_RNS_9hugeint_tE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint10TryConvertImEEbT_RNS_10uhugeint_tE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIfEEbT_(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.nearbyint.f32(float) #21

declare noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIfEEbT_RNS_9hugeint_tE(float noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint10TryConvertIfEEbT_RNS_10uhugeint_tE(float noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIdEEbT_(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.nearbyint.f64(double) #21

declare noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIdEEbT_RNS_9hugeint_tE(double noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint10TryConvertIdEEbT_RNS_10uhugeint_tE(double noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb5Value13FloatIsFiniteEf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2, i1 noundef zeroext %3) unnamed_addr #22 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph, label %.thread84

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i16, ptr %2, align 2          ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.06093.us = phi i64 [ %i.j, %bb.c ], [ 1, %.lr.ph ] ; 3 uses
  %i.b = phi i16 [ %i.l, %bb.c ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.06093.us
  %i.d = load i8, ptr %i.c, align 1, !tbaa !106   ; 2 uses
  %i.e = add i8 %i.d, -48                         ; 2 uses
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = sext i16 %i.b to i32
  %i.h = zext nneg i8 %i.e to i16                 ; 2 uses
  %.lhs.trunc.i.us = sub nuw i16 -32768, %i.h
  %i.i = udiv i16 %.lhs.trunc.i.us, 10
  %.zext.i.us = zext nneg i16 %i.i to i32
  %.neg.i.us = sub nsw i32 0, %.zext.i.us
  %.not.us = icmp sgt i32 %.neg.i.us, %i.g
  br i1 %.not.us, label %.critedge, label %bb.c, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.06093.us, 1                ; 2 uses
  %i.k = mul i16 %i.b, 10
  %i.l = sub i16 %i.k, %i.h                       ; 2 uses
  store i16 %i.l, ptr %2, align 2, !tbaa !128
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread84, label %.lr.ph.split.us, !llvm.loop !1497

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.06093 = phi i64 [ %.7, %bb.l ], [ 1, %.lr.ph ] ; 4 uses
  %i.m = phi i16 [ %i.al, %bb.l ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.06093
  %i.o = load i8, ptr %i.n, align 1, !tbaa !106   ; 2 uses
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %i.q = icmp ult i8 %i.p, 10
  br i1 %i.q, label %bb.g, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.pre = phi i8 [ %i.d, %.lr.ph.split.us ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %.us-phi94 = phi i64 [ %.06093.us, %.lr.ph.split.us ], [ %.06093, %.lr.ph.split ] ; 3 uses
  %i.r = icmp eq i8 %.pre, 46
  br i1 %i.r, label %bb.d, label %.thread80

bb.d:                                             ; preds = %.split.us
  br i1 %3, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ult i64 %.us-phi94, 2               ; 2 uses
  %i.t = add nuw i64 %.us-phi94, 1                ; 4 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %bb.f, label %.thread82

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !106   ; 2 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10
  %brmerge = or i1 %i.s, %i.y
  br i1 %brmerge, label %.critedge, label %.thread80

.thread82:                                        ; preds = %bb.e
  br i1 %i.s, label %.critedge, label %.thread84

.thread80:                                        ; preds = %.split.us, %bb.f
  %i.z = phi i8 [ %i.w, %bb.f ], [ %.pre, %.split.us ]
  %.4 = phi i64 [ %i.t, %bb.f ], [ %.us-phi94, %.split.us ]
  switch i8 %i.z, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %.thread80, %.thread80, %.thread80, %.thread80, %.thread80, %.thread80
  %i.aa = add i64 %.4, 1                          ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %1
  br i1 %i.ab, label %.lr.ph96, label %.thread84

.lr.ph96:                                         ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
  %i.ac = phi i64 [ %i.af, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78 ], [ %i.aa, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !106
  switch i8 %i.ae, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78: ; preds = %.lr.ph96, %.lr.ph96, %.lr.ph96, %.lr.ph96, %.lr.ph96, %.lr.ph96
  %i.af = add nuw i64 %i.ac, 1                    ; 2 uses
  %exitcond115.not = icmp eq i64 %i.af, %1
  br i1 %exitcond115.not, label %.thread84, label %.lr.ph96, !llvm.loop !1498

bb.g:                                             ; preds = %.lr.ph.split
  %i.ag = add nuw i64 %.06093, 1                  ; 3 uses
  %i.ah = sext i16 %i.m to i32
  %i.ai = zext nneg i8 %i.p to i16                ; 2 uses
  %.lhs.trunc.i = sub nuw i16 -32768, %i.ai
  %i.aj = udiv i16 %.lhs.trunc.i, 10
  %.zext.i = zext nneg i16 %i.aj to i32
  %.neg.i = sub nsw i32 0, %.zext.i
  %.not = icmp sgt i32 %.neg.i, %i.ah
  br i1 %.not, label %.critedge, label %bb.h, !prof !125

bb.h:                                             ; preds = %bb.g
  %i.ak = mul i16 %i.m, 10
  %i.al = sub i16 %i.ak, %i.ai                    ; 2 uses
  store i16 %i.al, ptr %2, align 2, !tbaa !128
  %.not76 = icmp eq i64 %i.ag, %1
  br i1 %.not76, label %.thread84, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106
  %.not98 = icmp eq i8 %i.an, 95
  br i1 %.not98, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = add i64 %.06093, 2                      ; 3 uses
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !106
  %i.as = add i8 %i.ar, -48
  %i.at = icmp ult i8 %i.as, 10
  br i1 %i.at, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.7 = phi i64 [ %i.ag, %bb.i ], [ %i.ao, %bb.k ] ; 3 uses
  %i.au = icmp ult i64 %.7, %1
  br i1 %i.au, label %.lr.ph.split, label %.thread84, !llvm.loop !1497

.thread84:                                        ; preds = %bb.h, %bb.l, %bb.c, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78, %bb.a, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread82
  %.8 = phi i64 [ %i.t, %.thread82 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78 ], [ %i.aa, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ 0, %bb.a ], [ %1, %bb.c ], [ %.7, %bb.l ], [ %1, %bb.h ]
  %i.av = icmp ugt i64 %.8, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.j, %bb.g, %bb.b, %.lr.ph96, %bb.f, %.thread80, %.thread82, %bb.d, %.thread84
  %.365 = phi i1 [ false, %bb.b ], [ false, %.thread80 ], [ false, %bb.f ], [ false, %bb.d ], [ %i.av, %.thread84 ], [ false, %.thread82 ], [ false, %.lr.ph96 ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.k ]
  ret i1 %.365
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2, i1 noundef zeroext %3) unnamed_addr #22 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !106
  %i.b = icmp eq i8 %i.a, 43                      ; 2 uses
  %brmerge.not = and i1 %3, %i.b
  %.mux = zext i1 %i.b to i64                     ; 6 uses
  br i1 %brmerge.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp ugt i64 %1, %.mux
  br i1 %i.c, label %.lr.ph, label %.thread90

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i16, ptr %2, align 2          ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.099.us = phi i64 [ %i.k, %bb.c ], [ %.mux, %.lr.ph ] ; 3 uses
  %i.d = phi i16 [ %i.m, %bb.c ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.099.us
  %i.f = load i8, ptr %i.e, align 1, !tbaa !106   ; 2 uses
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i.us = xor i16 %i.i, 32766
  %i.j = udiv i16 %.lhs.trunc.i.us, 10
  %.not.us = icmp slt i16 %i.j, %i.d
  br i1 %.not.us, label %.critedge, label %bb.c, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.099.us, 1                      ; 2 uses
  %i.l = mul i16 %i.d, 10
  %i.m = add i16 %i.l, %i.i                       ; 2 uses
  store i16 %i.m, ptr %2, align 2, !tbaa !128
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread90, label %.lr.ph.split.us, !llvm.loop !1499

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.099 = phi i64 [ %.7, %bb.l ], [ %.mux, %.lr.ph ] ; 4 uses
  %i.n = phi i16 [ %i.al, %bb.l ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.099
  %i.p = load i8, ptr %i.o, align 1, !tbaa !106   ; 2 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.pre = phi i8 [ %i.f, %.lr.ph.split.us ], [ %i.p, %.lr.ph.split ] ; 2 uses
  %.us-phi100 = phi i64 [ %.099.us, %.lr.ph.split.us ], [ %.099, %.lr.ph.split ] ; 3 uses
  %i.s = icmp eq i8 %.pre, 46
  br i1 %i.s, label %bb.d, label %.thread86

bb.d:                                             ; preds = %.split.us
  br i1 %3, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ule i64 %.us-phi100, %.mux          ; 2 uses
  %i.u = add nuw i64 %.us-phi100, 1               ; 4 uses
  %i.v = icmp ult i64 %i.u, %1
  br i1 %i.v, label %bb.f, label %.thread88

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !106   ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  %brmerge = or i1 %i.t, %i.z
  br i1 %brmerge, label %.critedge, label %.thread86

.thread88:                                        ; preds = %bb.e
  br i1 %i.t, label %.critedge, label %.thread90

.thread86:                                        ; preds = %.split.us, %bb.f
  %i.aa = phi i8 [ %i.x, %bb.f ], [ %.pre, %.split.us ]
  %.4 = phi i64 [ %i.u, %bb.f ], [ %.us-phi100, %.split.us ]
  switch i8 %i.aa, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %.thread86, %.thread86, %.thread86, %.thread86, %.thread86, %.thread86
  %i.ab = add i64 %.4, 1                          ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %1
  br i1 %i.ac, label %.lr.ph102, label %.thread90

.lr.ph102:                                        ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84
  %i.ad = phi i64 [ %i.ag, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84 ], [ %i.ab, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !106
  switch i8 %i.af, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84: ; preds = %.lr.ph102, %.lr.ph102, %.lr.ph102, %.lr.ph102, %.lr.ph102, %.lr.ph102
  %i.ag = add nuw i64 %i.ad, 1                    ; 2 uses
  %exitcond121.not = icmp eq i64 %i.ag, %1
  br i1 %exitcond121.not, label %.thread90, label %.lr.ph102, !llvm.loop !1500

bb.g:                                             ; preds = %.lr.ph.split
  %i.ah = add nuw i64 %.099, 1                    ; 3 uses
  %i.ai = zext nneg i8 %i.q to i16                ; 2 uses
  %.lhs.trunc.i = xor i16 %i.ai, 32766
  %i.aj = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.aj, %i.n
  br i1 %.not, label %.critedge, label %bb.h, !prof !125

bb.h:                                             ; preds = %bb.g
  %i.ak = mul i16 %i.n, 10
  %i.al = add i16 %i.ak, %i.ai                    ; 2 uses
  store i16 %i.al, ptr %2, align 2, !tbaa !128
  %.not80 = icmp eq i64 %i.ah, %1
  br i1 %.not80, label %.thread90, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106
  %.not104 = icmp eq i8 %i.an, 95
  br i1 %.not104, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = add i64 %.099, 2                        ; 3 uses
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !106
  %i.as = add i8 %i.ar, -48
  %i.at = icmp ult i8 %i.as, 10
  br i1 %i.at, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.7 = phi i64 [ %i.ah, %bb.i ], [ %i.ao, %bb.k ] ; 3 uses
  %i.au = icmp ult i64 %.7, %1
  br i1 %i.au, label %.lr.ph.split, label %.thread90, !llvm.loop !1499

.thread90:                                        ; preds = %bb.h, %bb.l, %bb.c, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84, %.preheader, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread88
  %.8 = phi i64 [ %i.u, %.thread88 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit84 ], [ %i.ab, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ %.mux, %.preheader ], [ %1, %bb.c ], [ %.7, %bb.l ], [ %1, %bb.h ]
  %i.av = icmp ugt i64 %.8, %.mux
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.k, %bb.g, %bb.b, %.lr.ph102, %bb.f, %.thread86, %.thread88, %bb.a, %.thread90, %bb.d
  %.469 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %.thread86 ], [ false, %bb.f ], [ false, %bb.d ], [ %i.av, %.thread90 ], [ false, %.thread88 ], [ false, %.lr.ph102 ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.j ]
  ret i1 %.469
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIaEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = icmp slt i16 %1, 0
  br i1 %i.c, label %.preheader, label %.preheader79

.preheader:                                       ; preds = %bb.a
  %.promoted = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = add nsw i16 %.042143, 1                  ; 2 uses
  %exitcond95.not = icmp eq i16 %i.e, 0
  br i1 %exitcond95.not, label %split, label %bb.c, !llvm.loop !1501

bb.c:                                             ; preds = %.preheader, %bb.b
  %.042143 = phi i16 [ %1, %.preheader ], [ %i.e, %bb.b ]
  %i.f = phi i64 [ %.promoted, %.preheader ], [ %i.h, %bb.b ] ; 3 uses
  %i.g = srem i64 %i.f, 10                        ; 6 uses
  %i.h = sdiv i64 %i.f, 10                        ; 8 uses
  %.off = add i64 %i.f, 9
  %i.i = icmp ult i64 %.off, 19
  %i.j = icmp eq i64 %i.g, 0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %.thread, label %bb.b, !llvm.loop !1501

split:                                            ; preds = %bb.b
  store i64 %i.g, ptr %i.d, align 8, !tbaa !130
  store i64 %i.h, ptr %0, align 8, !tbaa !132
  %i.k = icmp slt i64 %i.g, 0
end_hunk_8
begin_hunk_9_@_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i16 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2448

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i16 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i16
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !572
  %i.cx = icmp slt i16 %i.y, -3276
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul i16 %i.y, 10
  %i.cz = sub i16 %i.cy, %i.cs                    ; 3 uses
  store i16 %i.cz, ptr %9, align 2, !tbaa !565
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i16 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i16 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2449

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !573
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
  %i.dq = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dp, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod585 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod585)
  %i.dr = sdiv i16 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa536 = phi i16 [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dr, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i16 %.lcssa536, ptr %9, align 2, !tbaa !565
  store i8 %5, ptr %i.h, align 1, !tbaa !571
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.ds = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dt = sdiv i16 %i.ds, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !75

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i16 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa536, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add i16 %i.dv, -1                       ; 2 uses
  store i16 %i.dy, ptr %9, align 2, !tbaa !565
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i16 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 4 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

iter.check:                                       ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 3 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.ec, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i8 %i.ec, 15
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i32 %i.ee, 12
  %n.vec = and i32 %i.ee, 496                     ; 4 uses
  %i.eg = trunc i32 %n.vec to i8
  %i.eh = add i8 %i.dz, %i.eg
  %i.ei = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.ei, %vector.ph ], [ %i.ej, %vector.body ]
  %vec.phi452 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ek, %vector.body ]
  %i.ej = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ek = mul <8 x i16> %vec.phi452, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.el = icmp eq i32 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !2450

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ek, %i.ej
  %i.em = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.em, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec453 = and i32 %i.ee, 508                  ; 3 uses
  %i.en = trunc i32 %n.vec453 to i8
  %i.eo = add i8 %i.dz, %i.en
  %i.ep = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index454 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next456, %vec.epilog.vector.body ]
  %vec.phi455 = phi <4 x i16> [ %i.ep, %vec.epilog.ph ], [ %i.eq, %vec.epilog.vector.body ]
  %i.eq = mul <4 x i16> %vec.phi455, splat (i16 10) ; 2 uses
  %index.next456 = add nuw i32 %index454, 4       ; 2 uses
  %i.er = icmp eq i32 %index.next456, %n.vec453
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2451

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.es = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.eq) ; 2 uses
  %cmp.n457 = icmp eq i32 %i.ee, %n.vec453
  br i1 %cmp.n457, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph531 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.et = phi i16 [ %i.eu, %.lr.ph.i.i.i ], [ %.ph531, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.ev, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.eu = mul i16 %i.et, 10                       ; 2 uses
  %i.ev = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.ev, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2452

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa406 = phi i16 [ %i.es, %vec.epilog.middle.block ], [ %i.em, %middle.block ], [ %i.eu, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa406, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ew = phi i16 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ex = sext i16 %i.ew to i32
  %i.ey = sext i16 %i.o to i32
  %i.ez = sub nsw i32 0, %i.ey
  %i.fa = icmp sgt i32 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.fb, %i.fa
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fc = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.fc
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !106
  %i.ff = add i8 %i.fe, -66                       ; 2 uses
  %i.fg = tail call i8 @llvm.fshl.i8(i8 %i.ff, i8 %i.ff, i8 7)
  switch i8 %i.fg, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fh = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.fh to i64                ; 5 uses
  %i.fi = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.fi, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fj = zext i8 %4 to i32
  %i.fk = zext i8 %5 to i32
  %i.fl = sub nsw i32 %i.fj, %i.fk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i16 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fm = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ip, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fn = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.iq, %bb.bi ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !106 ; 3 uses
  %i.fq = add i8 %i.fp, -48                       ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = icmp eq i8 %i.fp, 46
  br i1 %i.fs, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.ft = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fu = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fv = icmp ult i64 %i.fu, %.035153.i
  br i1 %i.fv, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fw = zext i8 %i.fm to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fx = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i16 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fy = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 3 uses
  %i.fz = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gs, %bb.at ] ; 5 uses
  %i.ga = phi i16 [ %i.fn, %.lr.ph137.i.i ], [ %i.gt, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fu, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !106 ; 3 uses
  %i.gd = add i8 %i.gc, -48                       ; 2 uses
  %i.ge = icmp ult i8 %i.gd, 10
  br i1 %i.ge, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.gf = icmp ne i8 %i.fz, %5
  %i.gg = trunc nuw i8 %i.fy to i1
  %or.cond57 = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 2, !tbaa !569
  %i.gh = icmp samesign ugt i8 %i.gc, 52
  %i.gi = zext i1 %i.gh to i8                     ; 2 uses
  store i8 %i.gi, ptr %i.k, align 1, !tbaa !570
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gj = phi i8 [ %i.gi, %bb.an ], [ %i.fx, %bb.am ] ; 3 uses
  %i.gk = phi i8 [ 1, %bb.an ], [ %i.fy, %bb.am ] ; 3 uses
  %i.gl = zext i8 %i.fz to i32
  %i.gm = add nuw nsw i32 %i.gl, %i.fw
  %i.gn = icmp samesign ugt i32 %i.gm, 3
  br i1 %i.gn, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.go = add nuw i8 %i.fz, 1                     ; 2 uses
  store i8 %i.go, ptr %i.h, align 1, !tbaa !571
  %i.gp = mul i16 %i.ga, 10
  %i.gq = zext nneg i8 %i.gd to i16
  %i.gr = add i16 %i.gp, %i.gq                    ; 3 uses
  store i16 %i.gr, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i16 [ %i.gr, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gs = phi i8 [ %i.go, %bb.ap ], [ %i.fz, %bb.ao ] ; 3 uses
  %i.gt = phi i16 [ %i.gr, %bb.ap ], [ %i.ga, %bb.ao ]
  %i.gu = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gu, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

end_hunk_9
begin_hunk_10_@_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i32 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2480

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i32 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i32
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !584
  %i.cx = icmp slt i32 %i.y, -214748364
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul nsw i32 %i.y, 10
  %i.cz = sub nsw i32 %i.cy, %i.cs                ; 3 uses
  store i32 %i.cz, ptr %9, align 4, !tbaa !577
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i32 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i32 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2481

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !585
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
  %i.dq = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dp, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod563 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod563)
  %i.dr = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa514 = phi i32 [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dr, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa514, ptr %9, align 4, !tbaa !577
  store i8 %5, ptr %i.h, align 1, !tbaa !583
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.ds = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dt = sdiv i32 %i.ds, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !77

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa514, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dy, ptr %9, align 4, !tbaa !577
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 4 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i32 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 2 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.ec, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader509, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ee, 504                     ; 3 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dz, %i.ef
  %i.eh = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi451 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ej = mul <4 x i32> %vec.phi451, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !2482

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ej, %i.ei
  %i.el = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader509

.lr.ph.i.i.i.preheader509:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph510 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.el, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %.lr.ph.i.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader509, %.lr.ph.i.i.i
  %i.em = phi i32 [ %i.en, %.lr.ph.i.i.i ], [ %.ph510, %.lr.ph.i.i.i.preheader509 ]
  %.024.i.i.i = phi i8 [ %i.eo, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader509 ]
  %i.en = mul nsw i32 %i.em, 10                   ; 2 uses
  %i.eo = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eo, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2483

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa406 = phi i32 [ %i.el, %middle.block ], [ %i.en, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa406, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ep = phi i32 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.eq = sub nsw i32 0, %i.o
  %i.er = icmp sgt i32 %i.ep, %i.eq
  %i.es = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.es, %i.er
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.et = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.et
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !106
  %i.ew = add i8 %i.ev, -66                       ; 2 uses
  %i.ex = tail call i8 @llvm.fshl.i8(i8 %i.ew, i8 %i.ew, i8 7)
  switch i8 %i.ex, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.ey to i64                ; 5 uses
  %i.ez = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.ez, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fa = zext i8 %4 to i32
  %i.fb = zext i8 %5 to i32
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i32 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fd = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ig, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fe = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ih, %bb.bi ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !106 ; 3 uses
  %i.fh = add i8 %i.fg, -48                       ; 3 uses
  %i.fi = icmp ult i8 %i.fh, 10
  br i1 %i.fi, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = icmp eq i8 %i.fg, 46
  br i1 %i.fj, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fk = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fl = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fm = icmp ult i64 %i.fl, %.035153.i
  br i1 %i.fm, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fn = zext i8 %i.fd to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fo = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.ga, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i32 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fp = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gb, %bb.at ] ; 3 uses
  %i.fq = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 5 uses
  %i.fr = phi i32 [ %i.fe, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fl, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !106 ; 3 uses
  %i.fu = add i8 %i.ft, -48                       ; 2 uses
  %i.fv = icmp ult i8 %i.fu, 10
  br i1 %i.fv, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fw = icmp ne i8 %i.fq, %5
  %i.fx = trunc nuw i8 %i.fp to i1
  %or.cond57 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !581
  %i.fy = icmp samesign ugt i8 %i.ft, 52
  %i.fz = zext i1 %i.fy to i8                     ; 2 uses
  store i8 %i.fz, ptr %i.k, align 1, !tbaa !582
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ga = phi i8 [ %i.fz, %bb.an ], [ %i.fo, %bb.am ] ; 3 uses
  %i.gb = phi i8 [ 1, %bb.an ], [ %i.fp, %bb.am ] ; 3 uses
  %i.gc = zext i8 %i.fq to i32
  %i.gd = add nuw nsw i32 %i.gc, %i.fn
  %i.ge = icmp samesign ugt i32 %i.gd, 8
  br i1 %i.ge, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = add nuw i8 %i.fq, 1                     ; 2 uses
  store i8 %i.gf, ptr %i.h, align 1, !tbaa !583
  %i.gg = mul nsw i32 %i.fr, 10
  %i.gh = zext nneg i8 %i.fu to i32
  %i.gi = add nsw i32 %i.gg, %i.gh                ; 3 uses
  store i32 %i.gi, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i32 [ %i.gi, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gj = phi i8 [ %i.gf, %bb.ap ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.gk = phi i32 [ %i.gi, %bb.ap ], [ %i.fr, %bb.ao ]
  %i.gl = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gl, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !106
  %i.go = icmp eq i8 %i.gn, 95
  br i1 %i.go, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gp = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gq = icmp eq i64 %i.gp, %.035153.i
  br i1 %i.gq, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !106
  %i.gt = add i8 %i.gs, -48
  %i.gu = icmp ult i8 %i.gt, 10
  br i1 %i.gu, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gp, %bb.as ], [ %i.gl, %bb.aq ] ; 3 uses
  %i.gv = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gv, label %bb.al, label %.thread118.i.i, !llvm.loop !2484

bb.au:                                            ; preds = %bb.al
  %i.gw = icmp ugt i64 %.1136.i.i, %i.fl
  %or.cond.i91.i = or i1 %i.fk, %i.gw
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gx = phi i8 [ 0, %bb.ak ], [ %i.ga, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.ga, %bb.at ]
  %i.gy = phi i8 [ 0, %bb.ak ], [ %i.gb, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gb, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i32 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gz = phi i8 [ 0, %bb.ak ], [ %i.gj, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gj, %bb.at ]
end_hunk_10
begin_hunk_11_@_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.bc, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bc, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.ae, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bt = icmp ugt i64 %.185.lcssa.i.i, %i.ae
  %or.cond115.i.i = or i1 %i.ad, %i.bt
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ah, %bb.p ]   ; 2 uses
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i64 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %i.bx = phi i8 [ %i.z, %bb.e ], [ %i.am, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.by = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bz = icmp ult i64 %i.by, %.035153.i
  br i1 %i.bz, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.ca = phi i64 [ %i.cd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !106
  switch i8 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cd = add nuw i64 %i.ca, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2508

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.ce = icmp eq i64 %.4.i.i, 1
  br i1 %i.ce, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cf, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cf ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !106
  %i.ci = icmp eq i8 %i.ch, 45
  %i.cj = sub nuw i64 %.035153.i, %i.cf           ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.ck, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8, i1 noundef zeroext false)
  br i1 %i.cl, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cm = load i16, ptr %8, align 2, !tbaa !128
  %i.cn = sext i16 %i.cm to i32
  %i.co = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.co, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cp = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cq = icmp eq i64 %i.x, 0
  %i.cr = icmp eq i8 %i.aa, 0
  %or.cond.i.i.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = zext i8 %i.w to i32
  %i.ct = icmp eq i32 %i.v, %i.cs
  br i1 %i.ct, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add i8 %i.w, 1                          ; 2 uses
  store i8 %i.cu, ptr %i.g, align 2, !tbaa !595
  %i.cv = icmp slt i64 %i.x, -922337203685477580
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = mul nsw i64 %i.x, 10
  %i.cx = zext nneg i8 %i.aa to i64
  %i.cy = sub nsw i64 %i.cw, %i.cx                ; 3 uses
  store i64 %i.cy, ptr %9, align 8, !tbaa !588
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i64 [ %i.cy, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.cz = phi i8 [ %i.cu, %bb.y ], [ %i.w, %bb.v ]
  %i.da = phi i64 [ %i.cy, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cp, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cp
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !106
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cp, %bb.aa ], [ %i.dd, %bb.ac ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2509

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %5
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !596
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod540 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod540)
  %i.dq = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa491 = phi i64 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa491, ptr %9, align 8, !tbaa !588
  store i8 %5, ptr %i.h, align 1, !tbaa !594
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i64 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !79

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa491, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond55 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dx = add nsw i64 %i.du, -1                   ; 2 uses
  store i64 %i.dx, ptr %9, align 8, !tbaa !588
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dy = phi i8 [ %i.dt, %bb.ae ], [ %i.dt, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i64 [ %i.dx, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %5
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = sub nuw i8 %5, %i.dy
  %xtraiter541 = and i8 %i.ea, 7                  ; 2 uses
  %lcmp.mod542.not = icmp eq i8 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.eb = phi i64 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ed, %.lr.ph.i.i.i.prol ], [ %i.dy, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ec = mul nsw i64 %i.eb, 10                   ; 3 uses
  %i.ed = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter541
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2510

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa490.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.unr543 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.prol ]
  %i.ee = sub i8 %i.dy, %5
  %i.ef = icmp ugt i8 %i.ee, -8
  br i1 %i.ef, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.eg = phi i64 [ %i.eh, %.lr.ph.i.i.i ], [ %.unr543, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.ei, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eh = mul nsw i64 %i.eg, 100000000            ; 2 uses
  %i.ei = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.ei, %5
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa490 = phi i64 [ %.lcssa490.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa490, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ej = phi i64 [ %.lcssa490, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ek = sub nsw i64 0, %i.n
  %i.el = icmp sgt i64 %i.ej, %i.ek
  %i.em = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.em, %i.el
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.en = icmp eq i8 %i.q, 48
  %or.cond.i = and i1 %.not38.i, %i.en
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !106
  %i.eq = add i8 %i.ep, -66                       ; 2 uses
  %i.er = tail call i8 @llvm.fshl.i8(i8 %i.eq, i8 %i.eq, i8 7)
  switch i8 %i.er, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.es = icmp eq i8 %i.q, 43
  %.088.i.i = zext i1 %i.es to i64                ; 5 uses
  %i.et = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.et, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.eu = zext i8 %4 to i32
  %i.ev = zext i8 %5 to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i64 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.ex = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ia, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.ey = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ib, %bb.bi ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !106 ; 3 uses
  %i.fb = add i8 %i.fa, -48                       ; 3 uses
  %i.fc = icmp ult i8 %i.fb, 10
  br i1 %i.fc, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = icmp eq i8 %i.fa, 46
  br i1 %i.fd, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fe = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.ff = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fg = icmp ult i64 %i.ff, %.035153.i
  br i1 %i.fg, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fh = zext i8 %i.ex to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fi = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fu, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i64 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fj = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fv, %bb.at ] ; 3 uses
  %i.fk = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gd, %bb.at ] ; 5 uses
  %i.fl = phi i64 [ %i.ey, %.lr.ph137.i.i ], [ %i.ge, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.ff, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !106 ; 3 uses
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 10
  br i1 %i.fp, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fq = icmp ne i8 %i.fk, %5
  %i.fr = trunc nuw i8 %i.fj to i1
  %or.cond57 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !592
  %i.fs = icmp samesign ugt i8 %i.fn, 52
  %i.ft = zext i1 %i.fs to i8                     ; 2 uses
  store i8 %i.ft, ptr %i.k, align 1, !tbaa !593
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fu = phi i8 [ %i.ft, %bb.an ], [ %i.fi, %bb.am ] ; 3 uses
  %i.fv = phi i8 [ 1, %bb.an ], [ %i.fj, %bb.am ] ; 3 uses
  %i.fw = zext i8 %i.fk to i32
  %i.fx = add nuw nsw i32 %i.fw, %i.fh
  %i.fy = icmp samesign ugt i32 %i.fx, 17
  br i1 %i.fy, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = add nuw i8 %i.fk, 1                     ; 2 uses
  store i8 %i.fz, ptr %i.h, align 1, !tbaa !594
  %i.ga = mul nsw i64 %i.fl, 10
  %i.gb = zext nneg i8 %i.fo to i64
  %i.gc = add nsw i64 %i.ga, %i.gb                ; 3 uses
  store i64 %i.gc, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i64 [ %i.gc, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gd = phi i8 [ %i.fz, %bb.ap ], [ %i.fk, %bb.ao ] ; 3 uses
  %i.ge = phi i64 [ %i.gc, %bb.ap ], [ %i.fl, %bb.ao ]
  %i.gf = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gf, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !106
  %i.gi = icmp eq i8 %i.gh, 95
  br i1 %i.gi, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gj = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gk = icmp eq i64 %i.gj, %.035153.i
  br i1 %i.gk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gj
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !106
  %i.gn = add i8 %i.gm, -48
  %i.go = icmp ult i8 %i.gn, 10
  br i1 %i.go, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gj, %bb.as ], [ %i.gf, %bb.aq ] ; 3 uses
  %i.gp = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gp, label %bb.al, label %.thread118.i.i, !llvm.loop !2511

bb.au:                                            ; preds = %bb.al
  %i.gq = icmp ugt i64 %.1136.i.i, %i.ff
  %or.cond.i91.i = or i1 %i.fe, %i.gq
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gr = phi i8 [ 0, %bb.ak ], [ %i.fu, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fu, %bb.at ]
  %i.gs = phi i8 [ 0, %bb.ak ], [ %i.fv, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fv, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i64 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gt = phi i8 [ 0, %bb.ak ], [ %i.gd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gd, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.ff, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.gu = icmp ugt i64 %.1.lcssa.i.i, %i.ff
  %or.cond119.i.i = or i1 %i.fe, %i.gu
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.gv = phi i8 [ 0, %bb.aj ], [ %i.fi, %bb.au ] ; 2 uses
  %i.gw = phi i8 [ 0, %bb.aj ], [ %i.fj, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i64 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.gx = phi i8 [ 0, %bb.aj ], [ %i.fk, %bb.au ] ; 2 uses
  %i.gy = phi i8 [ %i.fa, %bb.aj ], [ %i.fn, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i16 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2556

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i16 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i16
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !572
  %i.cx = icmp slt i16 %i.y, -3276
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul i16 %i.y, 10
  %i.cz = sub i16 %i.cy, %i.cs                    ; 3 uses
  store i16 %i.cz, ptr %9, align 2, !tbaa !565
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i16 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i16 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2557

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !573
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
  %i.dq = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dp, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod585 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod585)
  %i.dr = sdiv i16 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa536 = phi i16 [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dr, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i16 %.lcssa536, ptr %9, align 2, !tbaa !565
  store i8 %5, ptr %i.h, align 1, !tbaa !571
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.ds = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dt = sdiv i16 %i.ds, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !75

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i16 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa536, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add i16 %i.dv, -1                       ; 2 uses
  store i16 %i.dy, ptr %9, align 2, !tbaa !565
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i16 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 4 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %iter.check, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

iter.check:                                       ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 3 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.ec, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check451 = icmp ult i8 %i.ec, 15
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ef = and i32 %i.ee, 12
  %n.vec = and i32 %i.ee, 496                     ; 4 uses
  %i.eg = trunc i32 %n.vec to i8
  %i.eh = add i8 %i.dz, %i.eg
  %i.ei = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.ei, %vector.ph ], [ %i.ej, %vector.body ]
  %vec.phi452 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ek, %vector.body ]
  %i.ej = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ek = mul <8 x i16> %vec.phi452, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.el = icmp eq i32 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !2558

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ek, %i.ej
  %i.em = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ef, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.em, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec453 = and i32 %i.ee, 508                  ; 3 uses
  %i.en = trunc i32 %n.vec453 to i8
  %i.eo = add i8 %i.dz, %i.en
  %i.ep = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index454 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next456, %vec.epilog.vector.body ]
  %vec.phi455 = phi <4 x i16> [ %i.ep, %vec.epilog.ph ], [ %i.eq, %vec.epilog.vector.body ]
  %i.eq = mul <4 x i16> %vec.phi455, splat (i16 10) ; 2 uses
  %index.next456 = add nuw i32 %index454, 4       ; 2 uses
  %i.er = icmp eq i32 %index.next456, %n.vec453
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2559

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.es = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.eq) ; 2 uses
  %cmp.n457 = icmp eq i32 %i.ee, %n.vec453
  br i1 %cmp.n457, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph531 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.et = phi i16 [ %i.eu, %.lr.ph.i.i.i ], [ %.ph531, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.ev, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.eu = mul i16 %i.et, 10                       ; 2 uses
  %i.ev = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.ev, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2560

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa406 = phi i16 [ %i.es, %vec.epilog.middle.block ], [ %i.em, %middle.block ], [ %i.eu, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa406, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ew = phi i16 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ex = sext i16 %i.ew to i32
  %i.ey = sext i16 %i.o to i32
  %i.ez = sub nsw i32 0, %i.ey
  %i.fa = icmp sgt i32 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.fb, %i.fa
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fc = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.fc
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !106
  %i.ff = add i8 %i.fe, -66                       ; 2 uses
  %i.fg = tail call i8 @llvm.fshl.i8(i8 %i.ff, i8 %i.ff, i8 7)
  switch i8 %i.fg, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fh = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.fh to i64                ; 5 uses
  %i.fi = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.fi, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fj = zext i8 %4 to i32
  %i.fk = zext i8 %5 to i32
  %i.fl = sub nsw i32 %i.fj, %i.fk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i16 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fm = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ip, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fn = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.iq, %bb.bi ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !106 ; 3 uses
  %i.fq = add i8 %i.fp, -48                       ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = icmp eq i8 %i.fp, 44
  br i1 %i.fs, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.ft = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fu = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fv = icmp ult i64 %i.fu, %.035153.i
  br i1 %i.fv, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fw = zext i8 %i.fm to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fx = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i16 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fy = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 3 uses
  %i.fz = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gs, %bb.at ] ; 5 uses
  %i.ga = phi i16 [ %i.fn, %.lr.ph137.i.i ], [ %i.gt, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fu, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !106 ; 3 uses
  %i.gd = add i8 %i.gc, -48                       ; 2 uses
  %i.ge = icmp ult i8 %i.gd, 10
  br i1 %i.ge, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.gf = icmp ne i8 %i.fz, %5
  %i.gg = trunc nuw i8 %i.fy to i1
  %or.cond57 = select i1 %i.gf, i1 true, i1 %i.gg
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 2, !tbaa !569
  %i.gh = icmp samesign ugt i8 %i.gc, 52
  %i.gi = zext i1 %i.gh to i8                     ; 2 uses
  store i8 %i.gi, ptr %i.k, align 1, !tbaa !570
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gj = phi i8 [ %i.gi, %bb.an ], [ %i.fx, %bb.am ] ; 3 uses
  %i.gk = phi i8 [ 1, %bb.an ], [ %i.fy, %bb.am ] ; 3 uses
  %i.gl = zext i8 %i.fz to i32
  %i.gm = add nuw nsw i32 %i.gl, %i.fw
  %i.gn = icmp samesign ugt i32 %i.gm, 3
  br i1 %i.gn, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.go = add nuw i8 %i.fz, 1                     ; 2 uses
  store i8 %i.go, ptr %i.h, align 1, !tbaa !571
  %i.gp = mul i16 %i.ga, 10
  %i.gq = zext nneg i8 %i.gd to i16
  %i.gr = add i16 %i.gp, %i.gq                    ; 3 uses
  store i16 %i.gr, ptr %9, align 2, !tbaa !565
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i16 [ %i.gr, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gs = phi i8 [ %i.go, %bb.ap ], [ %i.fz, %bb.ao ] ; 3 uses
  %i.gt = phi i16 [ %i.gr, %bb.ap ], [ %i.ga, %bb.ao ]
  %i.gu = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gu, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

end_hunk_12
begin_hunk_13_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.mc = load ptr, ptr %13, align 8, !tbaa !104  ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.le
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.mc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.me = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.ky
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.me) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.mg = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.mg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.by

bb.bv:                                            ; preds = %.noexc.i.i
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ma) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.mj, %bb.bv ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.lz, %.body ] ; 2 uses
  %i.mk = load ptr, ptr %12, align 8, !tbaa !104  ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.ky
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %11, align 8, !tbaa !104  ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split: ; preds = %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.sink = phi ptr [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.mn, %bb.bw ]
  %.pn19.ph = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.mm, %bb.bw ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn19 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.mm, %bb.bw ], [ %.pn19.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn19

bb.bx:                                            ; preds = %.split46, %.split, %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i, %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit
  %i.mq = load i16, ptr %9, align 2, !tbaa !565
  store i16 %i.mq, ptr %2, align 2, !tbaa !116
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.0.i43 = phi i1 [ true, %bb.bx ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret i1 %.0.i43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2) unnamed_addr #22 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %.thread84

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted = load i16, ptr %2, align 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.06093 = phi i64 [ %.7, %bb.j ], [ 1, %.lr.ph.preheader ] ; 6 uses
  %i.b = phi i16 [ %i.aa, %bb.j ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.06093
  %i.d = load i8, ptr %i.c, align 1, !tbaa !106   ; 3 uses
  %i.e = add i8 %i.d, -48                         ; 2 uses
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i8 %i.d, 44
  br i1 %i.g, label %bb.c, label %.thread80

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %.06093, 2                  ; 2 uses
  %i.i = add nuw i64 %.06093, 1                   ; 4 uses
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %bb.d, label %.thread82

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !106   ; 2 uses
  %i.m = add i8 %i.l, -48
  %i.n = icmp ult i8 %i.m, 10
  %brmerge = or i1 %i.h, %i.n
  br i1 %brmerge, label %.critedge, label %.thread80

.thread82:                                        ; preds = %bb.c
  br i1 %i.h, label %.critedge, label %.thread84

.thread80:                                        ; preds = %bb.d, %bb.b
  %i.o = phi i8 [ %i.d, %bb.b ], [ %i.l, %bb.d ]
  %.4 = phi i64 [ %.06093, %bb.b ], [ %i.i, %bb.d ]
  switch i8 %i.o, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %.thread80, %.thread80, %.thread80, %.thread80, %.thread80, %.thread80
  %i.p = add nuw i64 %.4, 1                       ; 3 uses
  %i.q = icmp ult i64 %i.p, %1
  br i1 %i.q, label %.lr.ph94, label %.thread84

.lr.ph94:                                         ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
  %i.r = phi i64 [ %i.u, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78 ], [ %i.p, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !106
  switch i8 %i.t, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78: ; preds = %.lr.ph94, %.lr.ph94, %.lr.ph94, %.lr.ph94, %.lr.ph94, %.lr.ph94
  %i.u = add nuw i64 %i.r, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %1
  br i1 %exitcond.not, label %.thread84, label %.lr.ph94, !llvm.loop !2576

bb.e:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.06093, 1                   ; 3 uses
  %i.w = sext i16 %i.b to i32
  %i.x = zext nneg i8 %i.e to i16                 ; 2 uses
  %.lhs.trunc.i = sub nuw i16 -32768, %i.x
  %i.y = udiv i16 %.lhs.trunc.i, 10
  %.zext.i = zext nneg i16 %i.y to i32
  %.neg.i = sub nsw i32 0, %.zext.i
  %.not = icmp sgt i32 %.neg.i, %i.w
  br i1 %.not, label %.critedge, label %bb.f, !prof !125

bb.f:                                             ; preds = %bb.e
  %i.z = mul i16 %i.b, 10
  %i.aa = sub i16 %i.z, %i.x                      ; 2 uses
  store i16 %i.aa, ptr %2, align 2, !tbaa !128
  %.not76 = icmp eq i64 %i.v, %1
  br i1 %.not76, label %.thread84, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !106
  %.not77 = icmp eq i8 %i.ac, 95
  br i1 %.not77, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.06093, 2                      ; 3 uses
  %i.ae = icmp eq i64 %i.ad, %1
  br i1 %i.ae, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !106
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.g
  %.7 = phi i64 [ %i.v, %bb.g ], [ %i.ad, %bb.i ] ; 3 uses
  %i.aj = icmp ult i64 %.7, %1
  br i1 %i.aj, label %.lr.ph, label %.thread84, !llvm.loop !2577

.thread84:                                        ; preds = %bb.f, %bb.j, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78, %bb.a, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread82
  %.8 = phi i64 [ %i.i, %.thread82 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78 ], [ %i.p, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ 0, %bb.a ], [ %.7, %bb.j ], [ %1, %bb.f ]
  %i.ak = icmp ugt i64 %.8, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.i, %.lr.ph94, %bb.d, %.thread80, %.thread82, %.thread84
  %.365 = phi i1 [ false, %.lr.ph94 ], [ false, %.thread80 ], [ false, %bb.d ], [ false, %.thread82 ], [ %i.ak, %.thread84 ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.e ]
  ret i1 %.365
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2) unnamed_addr #22 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !106
  %i.b = icmp eq i8 %i.a, 43
  %.064 = zext i1 %i.b to i64                     ; 5 uses
  %i.c = icmp ugt i64 %1, %.064
  br i1 %i.c, label %.lr.ph.preheader, label %.thread88

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted = load i16, ptr %2, align 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.097 = phi i64 [ %.7, %bb.j ], [ %.064, %.lr.ph.preheader ] ; 6 uses
  %i.d = phi i16 [ %i.ab, %bb.j ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.097
  %i.f = load i8, ptr %i.e, align 1, !tbaa !106   ; 3 uses
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp eq i8 %i.f, 44
  br i1 %i.i, label %bb.c, label %.thread84

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ule i64 %.097, %.064                ; 2 uses
  %i.k = add nuw i64 %.097, 1                     ; 4 uses
  %i.l = icmp ult i64 %i.k, %1
  br i1 %i.l, label %bb.d, label %.thread86

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106   ; 2 uses
  %i.o = add i8 %i.n, -48
  %i.p = icmp ult i8 %i.o, 10
  %brmerge = or i1 %i.p, %i.j
  br i1 %brmerge, label %.critedge, label %.thread84

.thread86:                                        ; preds = %bb.c
  br i1 %i.j, label %.critedge, label %.thread88

.thread84:                                        ; preds = %bb.d, %bb.b
  %i.q = phi i8 [ %i.f, %bb.b ], [ %i.n, %bb.d ]
  %.4 = phi i64 [ %.097, %bb.b ], [ %i.k, %bb.d ]
  switch i8 %i.q, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %.thread84, %.thread84, %.thread84, %.thread84, %.thread84, %.thread84
  %i.r = add nuw i64 %.4, 1                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %.lr.ph98, label %.thread88

.lr.ph98:                                         ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
  %i.t = phi i64 [ %i.w, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82 ], [ %i.r, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !106
  switch i8 %i.v, label %.critedge [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82: ; preds = %.lr.ph98, %.lr.ph98, %.lr.ph98, %.lr.ph98, %.lr.ph98, %.lr.ph98
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %1
  br i1 %exitcond.not, label %.thread88, label %.lr.ph98, !llvm.loop !2578

bb.e:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.097, 1                     ; 3 uses
  %i.y = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i = xor i16 %i.y, 32766
  %i.z = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.z, %i.d
  br i1 %.not, label %.critedge, label %bb.f, !prof !125

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i16 %i.d, 10
  %i.ab = add i16 %i.aa, %i.y                     ; 2 uses
  store i16 %i.ab, ptr %2, align 2, !tbaa !128
  %.not80 = icmp eq i64 %i.x, %1
  br i1 %.not80, label %.thread88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !106
  %.not81 = icmp eq i8 %i.ad, 95
  br i1 %.not81, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = add i64 %.097, 2                        ; 3 uses
  %i.af = icmp eq i64 %i.ae, %1
  br i1 %i.af, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !106
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.g
  %.7 = phi i64 [ %i.x, %bb.g ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ak = icmp ult i64 %.7, %1
  br i1 %i.ak, label %.lr.ph, label %.thread88, !llvm.loop !2579

.thread88:                                        ; preds = %bb.f, %bb.j, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82, %bb.a, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread86
  %.8 = phi i64 [ %i.k, %.thread86 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82 ], [ %i.r, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ %.064, %bb.a ], [ %.7, %bb.j ], [ %1, %bb.f ]
  %i.al = icmp ugt i64 %.8, %.064
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.i, %bb.h, %.lr.ph98, %bb.d, %.thread84, %.thread86, %.thread88
  %.368 = phi i1 [ false, %.lr.ph98 ], [ false, %.thread84 ], [ false, %bb.d ], [ false, %.thread86 ], [ %i.al, %.thread88 ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.e ]
  ret i1 %.368
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_RNS_14CastParametersEhh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(57) %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %8 = alloca %"struct.duckdb::IntegerCastData.153", align 2 ; 7 uses
  %9 = alloca %"struct.duckdb::DecimalCastData.236", align 4 ; 25 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i32 0, ptr %9, align 4, !tbaa !577
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 %4, ptr %i.e, align 4, !tbaa !578
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 5
  store i8 %5, ptr %i.f, align 1, !tbaa !579
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 9 ; 2 uses
  %i.l = zext i8 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  %i.n = load i64, ptr %i.m, align 8, !tbaa !97
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !580
  %cond152.i = icmp eq i64 %1, 0
  br i1 %cond152.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %bb.bn

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.034154.i = phi ptr [ %i.s, %bb.b ], [ %0, %bb.a ] ; 19 uses
  %.035153.i = phi i64 [ %i.t, %bb.b ], [ %1, %bb.a ] ; 32 uses
  %i.r = load i8, ptr %.034154.i, align 1, !tbaa !106 ; 3 uses
  switch i8 %i.r, label %bb.af [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.t = add i64 %.035153.i, -1                   ; 2 uses
  %cond.i = icmp eq i64 %i.t, 0
  br i1 %cond.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %.lr.ph.i, !llvm.loop !2580

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %.035153.i, 1
  br i1 %.not.i, label %thread-pre-split.thread.thread, label %.lr.ph.i.i

end_hunk_13
begin_hunk_14_@_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.bt = phi i8 [ 0, %bb.f ], [ %i.bd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bd, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.af, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bu = icmp ugt i64 %.185.lcssa.i.i, %i.af
  %or.cond115.i.i = or i1 %i.ae, %i.bu
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i32 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bx = phi i8 [ 0, %bb.e ], [ %i.ak, %bb.p ]   ; 2 uses
  %i.by = phi i8 [ %i.aa, %bb.e ], [ %i.an, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.by, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.bz = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.035153.i
  br i1 %i.ca, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.cb = phi i64 [ %i.ce, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  switch i8 %i.cd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.ce = add nuw i64 %i.cb, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2582

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cf = icmp eq i64 %.4.i.i, 1
  br i1 %i.cf, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cg, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cg ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !106
  %i.cj = icmp eq i8 %i.ci, 45
  %i.ck = sub nuw i64 %.035153.i, %i.cg           ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cl, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cm = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cm, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cn = load i16, ptr %8, align 2, !tbaa !128
  %i.co = sext i16 %i.cn to i32
  %i.cp = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cp, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cq = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cr = icmp eq i32 %i.y, 0
  %i.cs = zext nneg i8 %i.ab to i32
  %i.ct = icmp eq i8 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.ct
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = zext i8 %i.x to i32
  %i.cv = icmp eq i32 %i.w, %i.cu
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = add i8 %i.x, 1                          ; 2 uses
  store i8 %i.cw, ptr %i.g, align 2, !tbaa !584
  %i.cx = icmp slt i32 %i.y, -214748364
  br i1 %i.cx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = mul nsw i32 %i.y, 10
  %i.cz = sub nsw i32 %i.cy, %i.cs                ; 3 uses
  store i32 %i.cz, ptr %9, align 4, !tbaa !577
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i32 [ %i.cz, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.da = phi i8 [ %i.cw, %bb.y ], [ %i.x, %bb.v ]
  %i.db = phi i32 [ %i.cz, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cq, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cq
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dd, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.de = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.df = icmp eq i64 %i.de, %.035153.i
  br i1 %i.df, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = add i8 %i.dh, -48
  %i.dj = icmp ult i8 %i.di, 10
  br i1 %i.dj, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.de, %bb.ac ] ; 3 uses
  %i.dk = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dk, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2583

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dn = phi i8 [ %i.bt, %.thread114.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bx, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.bz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, %5
  br i1 %i.do, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dn, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !585
  %i.dp = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.dp, 1
  %i.dq = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.dp, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod563 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod563)
  %i.dr = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa514 = phi i32 [ %i.dt, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dr, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa514, ptr %9, align 4, !tbaa !577
  store i8 %5, ptr %i.h, align 1, !tbaa !583
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.ds = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dt = sdiv i32 %i.ds, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !77

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.du = phi i8 [ %i.dn, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa514, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dw = trunc nuw i8 %i.dm to i1
  %i.dx = trunc nuw i8 %i.dl to i1
  %or.cond55 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dy = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dy, ptr %9, align 4, !tbaa !577
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dz = phi i8 [ %i.du, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 4 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i32 [ %i.dy, %bb.ae ], [ %i.dv, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.ea = icmp ult i8 %i.dz, %5
  br i1 %i.ea, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.eb = xor i8 %i.dz, -1
  %i.ec = add i8 %5, %i.eb                        ; 2 uses
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.ec, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader509, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ee, 504                     ; 3 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dz, %i.ef
  %i.eh = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi451 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ej = mul <4 x i32> %vec.phi451, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !2584

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ej, %i.ei
  %i.el = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader509

.lr.ph.i.i.i.preheader509:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph510 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.el, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dz, %.lr.ph.i.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader509, %.lr.ph.i.i.i
  %i.em = phi i32 [ %i.en, %.lr.ph.i.i.i ], [ %.ph510, %.lr.ph.i.i.i.preheader509 ]
  %.024.i.i.i = phi i8 [ %i.eo, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader509 ]
  %i.en = mul nsw i32 %i.em, 10                   ; 2 uses
  %i.eo = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eo, %5
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2585

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa406 = phi i32 [ %i.el, %middle.block ], [ %i.en, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa406, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ep = phi i32 [ %.lcssa406, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.eq = sub nsw i32 0, %i.o
  %i.er = icmp sgt i32 %i.ep, %i.eq
  %i.es = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.es, %i.er
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.et = icmp eq i8 %i.r, 48
  %or.cond.i = and i1 %.not38.i, %i.et
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !106
  %i.ew = add i8 %i.ev, -66                       ; 2 uses
  %i.ex = tail call i8 @llvm.fshl.i8(i8 %i.ew, i8 %i.ew, i8 7)
  switch i8 %i.ex, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = icmp eq i8 %i.r, 43
  %.088.i.i = zext i1 %i.ey to i64                ; 5 uses
  %i.ez = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.ez, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.fa = zext i8 %4 to i32
  %i.fb = zext i8 %5 to i32
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i32 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.fd = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ig, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.fe = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ih, %bb.bi ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !106 ; 3 uses
  %i.fh = add i8 %i.fg, -48                       ; 3 uses
  %i.fi = icmp ult i8 %i.fh, 10
  br i1 %i.fi, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = icmp eq i8 %i.fg, 44
  br i1 %i.fj, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fk = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fl = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fm = icmp ult i64 %i.fl, %.035153.i
  br i1 %i.fm, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fn = zext i8 %i.fd to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fo = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.ga, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i32 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fp = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gb, %bb.at ] ; 3 uses
  %i.fq = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gj, %bb.at ] ; 5 uses
  %i.fr = phi i32 [ %i.fe, %.lr.ph137.i.i ], [ %i.gk, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fl, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !106 ; 3 uses
  %i.fu = add i8 %i.ft, -48                       ; 2 uses
  %i.fv = icmp ult i8 %i.fu, 10
  br i1 %i.fv, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fw = icmp ne i8 %i.fq, %5
  %i.fx = trunc nuw i8 %i.fp to i1
  %or.cond57 = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !581
  %i.fy = icmp samesign ugt i8 %i.ft, 52
  %i.fz = zext i1 %i.fy to i8                     ; 2 uses
  store i8 %i.fz, ptr %i.k, align 1, !tbaa !582
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ga = phi i8 [ %i.fz, %bb.an ], [ %i.fo, %bb.am ] ; 3 uses
  %i.gb = phi i8 [ 1, %bb.an ], [ %i.fp, %bb.am ] ; 3 uses
  %i.gc = zext i8 %i.fq to i32
  %i.gd = add nuw nsw i32 %i.gc, %i.fn
  %i.ge = icmp samesign ugt i32 %i.gd, 8
  br i1 %i.ge, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = add nuw i8 %i.fq, 1                     ; 2 uses
  store i8 %i.gf, ptr %i.h, align 1, !tbaa !583
  %i.gg = mul nsw i32 %i.fr, 10
  %i.gh = zext nneg i8 %i.fu to i32
  %i.gi = add nsw i32 %i.gg, %i.gh                ; 3 uses
  store i32 %i.gi, ptr %9, align 4, !tbaa !577
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i32 [ %i.gi, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gj = phi i8 [ %i.gf, %bb.ap ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.gk = phi i32 [ %i.gi, %bb.ap ], [ %i.fr, %bb.ao ]
  %i.gl = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gl, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !106
  %i.go = icmp eq i8 %i.gn, 95
  br i1 %i.go, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gp = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gq = icmp eq i64 %i.gp, %.035153.i
  br i1 %i.gq, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !106
  %i.gt = add i8 %i.gs, -48
  %i.gu = icmp ult i8 %i.gt, 10
  br i1 %i.gu, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gp, %bb.as ], [ %i.gl, %bb.aq ] ; 3 uses
  %i.gv = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gv, label %bb.al, label %.thread118.i.i, !llvm.loop !2586

bb.au:                                            ; preds = %bb.al
  %i.gw = icmp ugt i64 %.1136.i.i, %i.fl
  %or.cond.i91.i = or i1 %i.fk, %i.gw
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gx = phi i8 [ 0, %bb.ak ], [ %i.ga, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.ga, %bb.at ]
  %i.gy = phi i8 [ 0, %bb.ak ], [ %i.gb, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gb, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i32 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gz = phi i8 [ 0, %bb.ak ], [ %i.gj, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gj, %bb.at ]
end_hunk_14
begin_hunk_15_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_RNS_14CastParametersEhh:bb.a
  %i.bs = phi i8 [ 0, %bb.f ], [ %i.bc, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ], [ %i.bc, %bb.o ]
  %.185.lcssa.i.i = phi i64 [ %i.ae, %bb.f ], [ %.2.i.i, %bb.o ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb1ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.bt = icmp ugt i64 %.185.lcssa.i.i, %i.ae
  %or.cond115.i.i = or i1 %i.ad, %i.bt
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.p, %bb.e
  %i.bu = phi i8 [ 0, %bb.e ], [ %i.ah, %bb.p ]   ; 2 uses
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.ai, %bb.p ]   ; 2 uses
  %.promoted.i.i.i.i172 = phi i64 [ %.promoted.i.i.i.i176, %bb.e ], [ %.promoted.i.i.i.i175, %bb.p ] ; 2 uses
  %i.bw = phi i8 [ 0, %bb.e ], [ %i.aj, %bb.p ]   ; 2 uses
  %i.bx = phi i8 [ %i.z, %bb.e ], [ %i.am, %bb.p ]
  %.4.i.i = phi i64 [ %.084130.i.i, %bb.e ], [ %.185132.i.i, %bb.p ] ; 3 uses
  switch i8 %i.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i: ; preds = %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i, %.thread110.i.i
  %i.by = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %i.bz = icmp ult i64 %i.by, %.035153.i
  br i1 %i.bz, label %.lr.ph135.i.i, label %.thread116.i.i

.lr.ph135.i.i:                                    ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  %i.ca = phi i64 [ %i.cd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !106
  switch i8 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i: ; preds = %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i, %.lr.ph135.i.i
  %i.cd = add nuw i64 %i.ca, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %.035153.i
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !2602

bb.q:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.ce = icmp eq i64 %.4.i.i, 1
  br i1 %i.ce, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cf, %.035153.i
  br i1 %.not104.i.i, label %bb.s, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i16 0, ptr %8, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cf ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !106
  %i.ci = icmp eq i8 %i.ch, 45
  %i.cj = sub nuw i64 %.035153.i, %i.cf           ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.ck, label %.split, label %.split.thread

bb.u:                                             ; preds = %bb.s
  %i.cl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 2 dereferenceable(2) %8)
  br i1 %i.cl, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.t, %bb.u
  %i.cm = load i16, ptr %8, align 2, !tbaa !128
  %i.cn = sext i16 %i.cm to i32
  %i.co = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.co, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cp = add nuw i64 %.084130.i.i, 1             ; 3 uses
  %i.cq = icmp eq i64 %i.x, 0
  %i.cr = icmp eq i8 %i.aa, 0
  %or.cond.i.i.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = zext i8 %i.w to i32
  %i.ct = icmp eq i32 %i.v, %i.cs
  br i1 %i.ct, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add i8 %i.w, 1                          ; 2 uses
  store i8 %i.cu, ptr %i.g, align 2, !tbaa !595
  %i.cv = icmp slt i64 %i.x, -922337203685477580
  br i1 %i.cv, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = mul nsw i64 %i.x, 10
  %i.cx = zext nneg i8 %i.aa to i64
  %i.cy = sub nsw i64 %i.cw, %i.cx                ; 3 uses
  store i64 %i.cy, ptr %9, align 8, !tbaa !588
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.promoted.i.i.i.i177 = phi i64 [ %i.cy, %bb.y ], [ %.promoted.i.i.i.i176, %bb.v ] ; 3 uses
  %i.cz = phi i8 [ %i.cu, %bb.y ], [ %i.w, %bb.v ]
  %i.da = phi i64 [ %i.cy, %bb.y ], [ 0, %bb.v ]
  %.not105.i.i = icmp eq i64 %i.cp, %.035153.i
  br i1 %.not105.i.i, label %thread-pre-split.thread.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cp
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !106
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !106
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.7.i.i = phi i64 [ %i.cp, %bb.aa ], [ %i.dd, %bb.ac ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread, !llvm.loop !2603

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bq, %.thread114.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bu, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.br, %.thread114.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bv, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i173, %.thread114.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i172, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %i.dm = phi i8 [ %i.bs, %.thread114.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bw, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
  %.8.i.i = phi i64 [ %.185.lcssa.i.i, %.thread114.i.i ], [ %i.by, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.035153.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 2 uses
  %i.dn = icmp ugt i8 %i.dm, %5
  br i1 %i.dn, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %.thread116.i.i
  %narrow.i.i.i = sub nuw i8 %i.dm, %5            ; 4 uses
  store i8 %narrow.i.i.i, ptr %i.i, align 2, !tbaa !596
  %i.do = zext i8 %narrow.i.i.i to i64            ; 2 uses
  %xtraiter = and i64 %i.do, 1
  %i.dp = icmp eq i8 %narrow.i.i.i, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.epil.preheader, label %thread-pre-split.new

thread-pre-split.new:                             ; preds = %thread-pre-split
  %unroll_iter = and i64 %i.do, 254
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod540 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod540)
  %i.dq = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa491 = phi i64 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa491, ptr %9, align 8, !tbaa !588
  store i8 %5, ptr %i.h, align 1, !tbaa !594
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i64 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !79

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %5, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa491, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond55 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond55, label %bb.ae, label %thread-pre-split.thread.thread

bb.ae:                                            ; preds = %thread-pre-split.thread
  %i.dx = add nsw i64 %i.du, -1                   ; 2 uses
  store i64 %i.dx, ptr %9, align 8, !tbaa !588
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %bb.z, %bb.ad, %bb.c, %bb.ae, %thread-pre-split.thread
  %i.dy = phi i8 [ %i.dt, %bb.ae ], [ %i.dt, %thread-pre-split.thread ], [ 0, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.z ] ; 5 uses
  %.8.i.i243250266 = phi i64 [ %.8.i.i, %bb.ae ], [ %.8.i.i, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.035153.i, %bb.z ], [ %.7.i.i, %bb.ad ]
  %.pre.i.i.i = phi i64 [ %i.dx, %bb.ae ], [ %i.du, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.promoted.i.i.i.i177, %bb.ad ], [ %.promoted.i.i.i.i177, %bb.z ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %5
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = sub nuw i8 %5, %i.dy
  %xtraiter541 = and i8 %i.ea, 7                  ; 2 uses
  %lcmp.mod542.not = icmp eq i8 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.eb = phi i64 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ed, %.lr.ph.i.i.i.prol ], [ %i.dy, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ec = mul nsw i64 %i.eb, 10                   ; 3 uses
  %i.ed = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter541
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2604

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa490.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.unr543 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.prol ]
  %i.ee = sub i8 %i.dy, %5
  %i.ef = icmp ugt i8 %i.ee, -8
  br i1 %i.ef, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.eg = phi i64 [ %i.eh, %.lr.ph.i.i.i ], [ %.unr543, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.ei, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eh = mul nsw i64 %i.eg, 100000000            ; 2 uses
  %i.ei = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.ei, %5
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !80

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa490 = phi i64 [ %.lcssa490.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa490, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ej = phi i64 [ %.lcssa490, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ek = sub nsw i64 0, %i.n
  %i.el = icmp sgt i64 %i.ej, %i.ek
  %i.em = icmp ugt i64 %.8.i.i243250266, 1
  %spec.select.i.i = and i1 %i.em, %i.el
  br i1 %spec.select.i.i, label %bb.bx, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.af:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.en = icmp eq i8 %i.q, 48
  %or.cond.i = and i1 %.not38.i, %i.en
  br i1 %or.cond.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !106
  %i.eq = add i8 %i.ep, -66                       ; 2 uses
  %i.er = tail call i8 @llvm.fshl.i8(i8 %i.eq, i8 %i.eq, i8 7)
  switch i8 %i.er, label %bb.ah [
    i8 27, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 11, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 16, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
    i8 0, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.es = icmp eq i8 %i.q, 43
  %.088.i.i = zext i1 %i.es to i64                ; 5 uses
  %i.et = icmp ugt i64 %.035153.i, %.088.i.i
  br i1 %i.et, label %.lr.ph.i85.i, label %thread-pre-split40.thread.thread

.lr.ph.i85.i:                                     ; preds = %bb.ah
  %i.eu = zext i8 %4 to i32
  %i.ev = zext i8 %5 to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bi, %.lr.ph.i85.i
  %.promoted.i.i.i71.i184 = phi i64 [ 0, %.lr.ph.i85.i ], [ %.promoted.i.i.i71.i185, %bb.bi ] ; 4 uses
  %i.ex = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ia, %bb.bi ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bi ] ; 6 uses
  %i.ey = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ib, %bb.bi ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !106 ; 3 uses
  %i.fb = add i8 %i.fa, -48                       ; 3 uses
  %i.fc = icmp ult i8 %i.fb, 10
  br i1 %i.fc, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = icmp eq i8 %i.fa, 44
  br i1 %i.fd, label %bb.ak, label %.thread114.i87.i

bb.ak:                                            ; preds = %bb.aj
  %i.fe = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.ff = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fg = icmp ult i64 %i.ff, %.035153.i
  br i1 %i.fg, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ak
  %i.fh = zext i8 %i.ex to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.at, %.lr.ph137.i.i
  %i.fi = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fu, %bb.at ] ; 2 uses
  %.promoted.i.i.i71.i183 = phi i64 [ %.promoted.i.i.i71.i184, %.lr.ph137.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ] ; 2 uses
  %i.fj = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fv, %bb.at ] ; 3 uses
  %i.fk = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gd, %bb.at ] ; 5 uses
  %i.fl = phi i64 [ %i.ey, %.lr.ph137.i.i ], [ %i.ge, %bb.at ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.ff, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.at ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !106 ; 3 uses
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 10
  br i1 %i.fp, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.fq = icmp ne i8 %i.fk, %5
  %i.fr = trunc nuw i8 %i.fj to i1
  %or.cond57 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond57, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.j, align 4, !tbaa !592
  %i.fs = icmp samesign ugt i8 %i.fn, 52
  %i.ft = zext i1 %i.fs to i8                     ; 2 uses
  store i8 %i.ft, ptr %i.k, align 1, !tbaa !593
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fu = phi i8 [ %i.ft, %bb.an ], [ %i.fi, %bb.am ] ; 3 uses
  %i.fv = phi i8 [ 1, %bb.an ], [ %i.fj, %bb.am ] ; 3 uses
  %i.fw = zext i8 %i.fk to i32
  %i.fx = add nuw nsw i32 %i.fw, %i.fh
  %i.fy = icmp samesign ugt i32 %i.fx, 17
  br i1 %i.fy, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = add nuw i8 %i.fk, 1                     ; 2 uses
  store i8 %i.fz, ptr %i.h, align 1, !tbaa !594
  %i.ga = mul nsw i64 %i.fl, 10
  %i.gb = zext nneg i8 %i.fo to i64
  %i.gc = add nsw i64 %i.ga, %i.gb                ; 3 uses
  store i64 %i.gc, ptr %9, align 8, !tbaa !588
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ap, %bb.ao
  %.promoted.i.i.i71.i182 = phi i64 [ %i.gc, %bb.ap ], [ %.promoted.i.i.i71.i183, %bb.ao ] ; 3 uses
  %i.gd = phi i8 [ %i.fz, %bb.ap ], [ %i.fk, %bb.ao ] ; 3 uses
  %i.ge = phi i64 [ %i.gc, %bb.ap ], [ %i.fl, %bb.ao ]
  %i.gf = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gf, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !106
  %i.gi = icmp eq i8 %i.gh, 95
  br i1 %i.gi, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.gj = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gk = icmp eq i64 %i.gj, %.035153.i
  br i1 %i.gk, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gj
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !106
  %i.gn = add i8 %i.gm, -48
  %i.go = icmp ult i8 %i.gn, 10
  br i1 %i.go, label %bb.at, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2.i92.i = phi i64 [ %i.gj, %bb.as ], [ %i.gf, %bb.aq ] ; 3 uses
  %i.gp = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gp, label %bb.al, label %.thread118.i.i, !llvm.loop !2605

bb.au:                                            ; preds = %bb.al
  %i.gq = icmp ugt i64 %.1136.i.i, %i.ff
  %or.cond.i91.i = or i1 %i.fe, %i.gq
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i:                                   ; preds = %bb.at, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %i.gr = phi i8 [ 0, %bb.ak ], [ %i.fu, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fu, %bb.at ]
  %i.gs = phi i8 [ 0, %bb.ak ], [ %i.fv, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.fv, %bb.at ]
  %.promoted.i.i.i71.i181 = phi i64 [ %.promoted.i.i.i71.i184, %bb.ak ], [ %.promoted.i.i.i71.i182, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.promoted.i.i.i71.i182, %bb.at ]
  %i.gt = phi i8 [ 0, %bb.ak ], [ %i.gd, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %i.gd, %bb.at ]
  %.1.lcssa.i.i = phi i64 [ %i.ff, %bb.ak ], [ %.2.i92.i, %bb.at ], [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ] ; 2 uses
  %i.gu = icmp ugt i64 %.1.lcssa.i.i, %i.ff
  %or.cond119.i.i = or i1 %i.fe, %i.gu
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.au, %bb.aj
  %i.gv = phi i8 [ 0, %bb.aj ], [ %i.fi, %bb.au ] ; 2 uses
  %i.gw = phi i8 [ 0, %bb.aj ], [ %i.fj, %bb.au ] ; 2 uses
  %.promoted.i.i.i71.i180 = phi i64 [ %.promoted.i.i.i71.i184, %bb.aj ], [ %.promoted.i.i.i71.i183, %bb.au ] ; 2 uses
  %i.gx = phi i8 [ 0, %bb.aj ], [ %i.fk, %bb.au ] ; 2 uses
  %i.gy = phi i8 [ %i.fa, %bb.aj ], [ %i.fn, %bb.au ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.aj ], [ %.1136.i.i, %bb.au ] ; 3 uses
end_hunk_15
