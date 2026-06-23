inline.NumInlined: 7915
inline.NumDeleted: 2037
begin_hunk_0_@_ZN6duckdb7TryCast9OperationINS_8string_tEaEEbT_RT0_b:bb.a
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i
    i8 101, label %bb.cr
    i8 69, label %bb.cr
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i: ; preds = %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i, %.thread117.i86.i.i
  %i.my = add nuw i64 %.493.i.i.i, 1              ; 3 uses
  %i.mz = icmp ult i64 %i.my, %.036157.i.i
  br i1 %i.mz, label %.lr.ph144.i.i.i, label %.thread125.i.i.i

.lr.ph144.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
  %i.na = phi i64 [ %i.nd, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ], [ %i.my, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i ] ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !23
  switch i8 %i.nc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i: ; preds = %.lr.ph144.i.i.i, %.lr.ph144.i.i.i, %.lr.ph144.i.i.i, %.lr.ph144.i.i.i, %.lr.ph144.i.i.i, %.lr.ph144.i.i.i
  %i.nd = add nuw i64 %i.na, 1                    ; 2 uses
  %exitcond.not.i89.i.i = icmp eq i64 %i.nd, %.036157.i.i
  br i1 %exitcond.not.i89.i.i, label %.thread125.i.i.i, label %.lr.ph144.i.i.i, !llvm.loop !72

bb.cr:                                            ; preds = %.thread117.i86.i.i, %.thread117.i86.i.i
  %i.ne = icmp eq i64 %.493.i.i.i, %.mux.i100.i.i
  %or.cond113.i.i.i = or i1 %3, %i.ne
  br i1 %or.cond113.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nf = add nuw i64 %.493.i.i.i, 1              ; 3 uses
  %.not108.i.i.i = icmp ult i64 %i.nf, %.036157.i.i
  br i1 %.not108.i.i.i, label %bb.ct, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i16 0, ptr %4, align 2
  %i.ng = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.nf ; 3 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !23
  %i.ni = icmp eq i8 %i.nh, 45
  %i.nj = sub nuw i64 %.036157.i.i, %i.nf         ; 2 uses
  br i1 %i.ni, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.nk = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ng, i64 noundef %i.nj, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext false)
  br i1 %i.nk, label %bb.cw, label %.thread55.i

bb.cv:                                            ; preds = %bb.ct
  %i.nl = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ng, i64 noundef %i.nj, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext false)
  br i1 %i.nl, label %bb.cw, label %.thread55.i

.thread55.i:                                      ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.nm = load i16, ptr %4, align 2, !tbaa !63
  %i.nn = call noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIaEELb0EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %6, i16 noundef signext %i.nm)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.nn, label %bb.de, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cx:                                            ; preds = %.lr.ph.i85.i.i
  %i.no = add nuw i64 %.089138.i.i.i, 1           ; 3 uses
  %i.np = zext nneg i8 %i.lj to i64               ; 2 uses
  %i.nq = xor i64 %i.np, 9223372036854775806
  %i.nr = udiv i64 %i.nq, 10
  %.not.i90.i.i = icmp sgt i64 %i.lg, %i.nr
  br i1 %.not.i90.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cy, !prof !54

bb.cy:                                            ; preds = %bb.cx
  %i.ns = mul nsw i64 %i.lg, 10
  %i.nt = add nsw i64 %i.ns, %i.np                ; 3 uses
  %.not109.i.i.i = icmp eq i64 %i.no, %.036157.i.i
  br i1 %.not109.i.i.i, label %.thread125.i.i.thread.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nu = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.no
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !23
  %i.nw = icmp ne i8 %i.nv, 95
  %or.cond.i91.i.i = or i1 %3, %i.nw
  br i1 %or.cond.i91.i.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nx = add i64 %.089138.i.i.i, 2               ; 3 uses
  %i.ny = icmp eq i64 %i.nx, %.036157.i.i
  br i1 %i.ny, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nz = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.nx
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !23
  %i.ob = add i8 %i.oa, -48
  %i.oc = icmp ult i8 %i.ob, 10
  br i1 %i.oc, label %bb.dc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %.7.i92.i.i = phi i64 [ %i.no, %bb.cz ], [ %i.nx, %bb.db ] ; 3 uses
  %i.od = icmp ult i64 %.7.i92.i.i, %.036157.i.i
  br i1 %i.od, label %.lr.ph.i85.i.i, label %.thread125.i.i.thread.i, !llvm.loop !73

.thread125.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i, %.thread123.i.i.i
  %.promoted11.i.i77214.i.i = phi i16 [ %.promoted11.i.i77216.i.i, %.thread123.i.i.i ], [ %.promoted11.i.i77215.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i ], [ %.promoted11.i.i77215.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 2 uses
  %.promoted.i.i76210.i.i = phi i64 [ %.promoted.i.i76212.i.i, %.thread123.i.i.i ], [ %.promoted.i.i76211.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i ], [ %.promoted.i.i76211.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 3 uses
  %.8.i73.i.i = phi i64 [ %.190.lcssa.i.i.i, %.thread123.i.i.i ], [ %i.my, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i88.i.i ], [ %.036157.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit114.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.oe = add i64 %i.lg, 128
  %or.cond.i.i.i.i.i74.i.i = icmp ult i64 %i.oe, 256
  br i1 %or.cond.i.i.i.i.i74.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i

.thread125.i.i.thread.i:                          ; preds = %bb.dc, %bb.cy
  %.8.i73.i.ph.i = phi i64 [ %.036157.i.i, %bb.cy ], [ %.7.i92.i.i, %bb.dc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.of = add i64 %i.nt, 128
  %or.cond.i.i.i.i.i74.i450.i = icmp ult i64 %i.of, 256
  br i1 %or.cond.i.i.i.i.i74.i450.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i: ; preds = %.thread125.i.i.thread.i, %.thread125.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i: ; preds = %.thread125.i.i.i
  %i.og = trunc nsw i64 %i.lg to i8               ; 2 uses
  store i8 %i.og, ptr %i.a, align 1, !tbaa !23
  %i.oh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.oi = icmp sgt i64 %.promoted.i.i76210.i.i, 10
  %i.oj = getelementptr inbounds nuw i8, ptr %6, i64 16
  br i1 %i.oi, label %.lr.ph.i.i83.i.i, label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i

.lr.ph.i.i83.i.i:                                 ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i, %.lr.ph.i.i83.i.i
  %i.ok = phi i16 [ %i.on, %.lr.ph.i.i83.i.i ], [ %.promoted11.i.i77214.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ]
  %i.ol = phi i64 [ %i.om, %.lr.ph.i.i83.i.i ], [ %.promoted.i.i76210.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ] ; 2 uses
  %i.om = udiv i64 %i.ol, 10                      ; 3 uses
  %i.on = add i16 %i.ok, -1                       ; 3 uses
  %i.oo = icmp samesign ugt i64 %i.ol, 109
  br i1 %i.oo, label %.lr.ph.i.i83.i.i, label %._crit_edge.i.i84.i.i, !llvm.loop !74

._crit_edge.i.i84.i.i:                            ; preds = %.lr.ph.i.i83.i.i
  store i64 %i.om, ptr %i.oh, align 8, !tbaa !67
  store i16 %i.on, ptr %i.oj, align 8, !tbaa !69
  br label %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i

_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i: ; preds = %._crit_edge.i.i84.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i
  %i.op = phi i16 [ %i.on, %._crit_edge.i.i84.i.i ], [ %.promoted11.i.i77214.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ]
  %.lcssa.i.i79.i.i = phi i64 [ %i.om, %._crit_edge.i.i84.i.i ], [ %.promoted.i.i76210.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit.i.i75.i.i ]
  %i.oq = icmp eq i16 %i.op, 1
  %i.or = icmp sgt i64 %.lcssa.i.i79.i.i, 4
  %or.cond.i.i80.i.i = and i1 %i.oq, %i.or
  br i1 %or.cond.i.i80.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i, %.thread125.i.i.thread.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i
  %.8.i73103280285.i.i = phi i64 [ 1, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i ], [ %.8.i73.i.i, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i ], [ %.8.i73.i.ph.i, %.thread125.i.i.thread.i ]
  %i.os = phi i64 [ 0, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.thread.i.i ], [ %i.lg, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i ], [ %i.nt, %.thread125.i.i.thread.i ]
  store i64 %i.os, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.dd

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i: ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i78.i.i
  %i.ot = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.og, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre15.i.i82.i.i = load i8, ptr %i.a, align 1, !tbaa !23
  %i.ou = sext i8 %.pre15.i.i82.i.i to i64
  store i64 %i.ou, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %i.ot, label %bb.dd, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.dd:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i
  %.8.i73103280284.i.i = phi i64 [ %.8.i73.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i ], [ %.8.i73103280285.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread121.i.i.i ]
  %i.ov = icmp ugt i64 %.8.i73103280284.i.i, %.mux.i100.i.i
  br i1 %i.ov, label %bb.de, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.sink.split.i:                                    ; preds = %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i63.i.i, %._crit_edge.i.i.i
  %.lcssa549.sink.i = phi i64 [ %i.lb, %_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b.exit._crit_edge.i.i63.i.i ], [ %i.kf, %._crit_edge.i.i.i ]
  store i64 %.lcssa549.sink.i, ptr %6, align 8, !tbaa !70
  br label %bb.de

bb.de:                                            ; preds = %.sink.split.i, %bb.dd, %bb.cw, %bb.bp, %bb.bi
  %i.ow = load i64, ptr %6, align 8, !tbaa !70
  %i.ox = trunc i64 %i.ow to i8
  store i8 %i.ox, ptr %2, align 1, !tbaa !23
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i: ; preds = %bb.aq, %bb.cd, %bb.cc, %bb.cb, %.lr.ph.i70.i.i, %bb.bw, %bb.bv, %bb.bu, %.lr.ph.i51.i.i, %bb.db, %bb.da, %bb.cx, %bb.co, %bb.cn, %.lr.ph144.i.i.i, %bb.bn, %bb.bm, %bb.bj, %bb.ba, %bb.az, %.lr.ph138.i.i.i, %bb.de, %bb.dd, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i, %bb.cw, %.thread55.i, %bb.cs, %bb.cr, %.thread117.i86.i.i, %.thread123.i.i.i, %bb.cq, %bb.ch, %bb.cf, %bb.ce, %._crit_edge.i55.i.i, %bb.bx, %._crit_edge.i.i.i, %.lr.ph.i51.i.preheader.i, %bb.bs, %bb.bp, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i, %bb.bi, %.thread.i, %bb.be, %bb.bd, %.thread111.i.i.i, %.thread117.i.i.i, %bb.bc, %bb.at, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.thread.i
  %.0.i1049.i = phi i1 [ false, %.thread55.i ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.thread.i.i.i ], [ true, %bb.de ], [ false, %.lr.ph.i51.i.preheader.i ], [ false, %bb.dd ], [ false, %bb.cw ], [ false, %bb.bp ], [ false, %bb.bi ], [ false, %bb.cd ], [ false, %.thread.i ], [ false, %bb.bs ], [ false, %bb.ch ], [ false, %bb.db ], [ false, %bb.bx ], [ false, %.thread123.i.i.i ], [ false, %bb.ce ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i ], [ false, %bb.be ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i ], [ false, %bb.at ], [ false, %.thread111.i.i.i ], [ false, %.thread117.i.i.i ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bn ], [ false, %bb.bw ], [ false, %._crit_edge.i55.i.i ], [ false, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIaEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread45.thread.i ], [ false, %bb.co ], [ false, %bb.cr ], [ false, %bb.cq ], [ false, %.lr.ph138.i.i.i ], [ false, %._crit_edge.i.i.i ], [ false, %.thread117.i86.i.i ], [ false, %.lr.ph144.i.i.i ], [ false, %bb.cf ], [ false, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i81.i.i ], [ false, %bb.cs ], [ false, %bb.ba ], [ false, %bb.az ], [ false, %bb.bj ], [ false, %bb.bm ], [ false, %bb.cn ], [ false, %bb.cx ], [ false, %bb.da ], [ false, %.lr.ph.i51.i.i ], [ false, %bb.bu ], [ false, %bb.bv ], [ false, %.lr.ph.i70.i.i ], [ false, %bb.cb ], [ false, %bb.cc ], [ false, %bb.aq ]
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
  %cond52.i.i = icmp eq i32 %i.d, 0
  br i1 %cond52.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.thread.i, label %.lr.ph.i.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.03554.i.i = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 6 uses
  %.03653.i.i = phi i64 [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 6 uses
  %i.i = load i8, ptr %.03554.i.i, align 1, !tbaa !23 ; 3 uses
  switch i8 %i.i, label %.critedge.i.i [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.03554.i.i, i64 1
  %i.k = add nsw i64 %.03653.i.i, -1              ; 2 uses
  %cond.i.i = icmp eq i64 %i.k, 0
  br i1 %cond.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !75

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  store i16 0, ptr %6, align 2
  %i.l = icmp eq i8 %i.i, 45
  br i1 %i.l, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, label %bb.c

bb.c:                                             ; preds = %.critedge.i.i
  %.not39.i.i = icmp ne i64 %.03653.i.i, 1
  %i.m = icmp eq i8 %i.i, 48
  %or.cond.i.i = and i1 %.not39.i.i, %i.m
  br i1 %or.cond.i.i, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.03554.i.i, i64 1 ; 7 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23    ; 2 uses
  %i.p = add i8 %i.o, -66                         ; 2 uses
  %i.q = tail call i8 @llvm.fshl.i8(i8 %i.p, i8 %i.p, i8 7)
  switch i8 %i.q, label %bb.q [
    i8 27, label %bb.e
    i8 11, label %bb.e
    i8 16, label %bb.j
    i8 0, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.r = add i64 %.03653.i.i, -1                  ; 5 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.lr.ph.i.i.preheader.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.03554.i.i, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23    ; 3 uses
  %i.v = add i8 %i.u, -65
  %or.cond.i.i.i119.i = icmp ult i8 %i.v, 26
  %i.w = or disjoint i8 %i.u, 32
  %spec.select.i.i.i120.i = select i1 %or.cond.i.i.i119.i, i8 %i.w, i8 %i.u ; 3 uses
  %i.x = add i8 %spec.select.i.i.i120.i, -48
  %or.cond.i36.i.i121.i = icmp ult i8 %i.x, 10
  %i.y = and i8 %spec.select.i.i.i120.i, -33
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 6
  %i.ab = or i1 %or.cond.i36.i.i121.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.128.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23  ; 3 uses
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
  %spec.select.i.i.i123.i = phi i8 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i120.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.al = phi i16 [ %i.be, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.02740.i.i122.i = phi i64 [ %.128.i.i.i, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.am = icmp sgt i8 %spec.select.i.i.i123.i, 96
  %.0.v.i.i.i = select i1 %i.am, i8 -87, i8 -48
  %.0.i.i.i = add i8 %.0.v.i.i.i, %spec.select.i.i.i123.i ; 2 uses
  %i.an = add nuw i64 %.02740.i.i122.i, 1         ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.an, %i.r
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !23
  %i.aq = icmp eq i8 %i.ap, 95
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ar = add nuw i64 %.02740.i.i122.i, 2         ; 3 uses
  %i.as = icmp eq i64 %i.ar, %i.r
  br i1 %i.as, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23  ; 2 uses
  %i.av = add i8 %i.au, -48
  %or.cond.i37.i.i.i = icmp ult i8 %i.av, 10
  %i.aw = and i8 %i.au, -33
  %i.ax = add i8 %i.aw, -65
  %i.ay = icmp ult i8 %i.ax, 6
  %i.az = or i1 %or.cond.i37.i.i.i, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.128.i.i.i = phi i64 [ %i.ar, %bb.h ], [ %i.an, %bb.f ], [ %i.r, %.lr.ph.i ] ; 3 uses
  %i.ba = sext i16 %i.al to i32
  %i.bb = lshr i8 %.0.i.i.i, 4
  %.lhs.trunc.i.i.i.i = zext nneg i8 %i.bb to i32
  %.zext.i.i.i.i = xor i32 %.lhs.trunc.i.i.i.i, 2047
  %.not38.i.i.i = icmp slt i32 %.zext.i.i.i.i, %i.ba
  br i1 %.not38.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i, !prof !54

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.i
  %i.bc = zext i8 %.0.i.i.i to i16
  %i.bd = shl i16 %i.al, 4
  %i.be = add i16 %i.bd, %i.bc                    ; 2 uses
  %i.bf = icmp ult i64 %.128.i.i.i, %i.r
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.sink.split.i

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.bg = add i64 %.03653.i.i, -1                 ; 5 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.i43.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i43.i.i:                                   ; preds = %bb.j, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %i.bi = phi i16 [ %i.bw, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %.02535.i.i.i = phi i64 [ %.1.i.i.i, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ 1, %bb.j ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %.02535.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  switch i8 %i.bk, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 48, label %bb.l
    i8 49, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i43.i.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i43.i.i
  %.024.i.i.i = phi i16 [ 1, %bb.k ], [ 0, %.lr.ph.i43.i.i ]
  %i.bl = add nuw i64 %.02535.i.i.i, 1            ; 3 uses
  %.not.i44.i.i = icmp eq i64 %i.bl, %i.bg
  br i1 %.not.i44.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !23
  %i.bo = icmp eq i8 %i.bn, 95
  br i1 %i.bo, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = add nuw i64 %.02535.i.i.i, 2            ; 3 uses
  %i.bq = icmp eq i64 %i.bp, %i.bg
  br i1 %i.bq, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = and i8 %i.bs, -2
  %switch.i.i.i = icmp eq i8 %i.bt, 48
  br i1 %switch.i.i.i, label %bb.p, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %.1.i.i.i = phi i64 [ %i.bg, %bb.l ], [ %i.bp, %bb.o ], [ %i.bl, %bb.m ] ; 2 uses
  %i.bu = icmp slt i16 %i.bi, 16384
  br i1 %i.bu, label %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, !prof !57

_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.p
  %i.bv = shl i16 %i.bi, 1
  %i.bw = or disjoint i16 %.024.i.i.i, %i.bv      ; 2 uses
  %i.bx = icmp ult i64 %.1.i.i.i, %i.bg
  br i1 %i.bx, label %.lr.ph.i43.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.sink.split.i

bb.q:                                             ; preds = %bb.d
  %i.by = add i8 %i.o, -48
  %i.bz = icmp ult i8 %i.by, 10
  %or.cond46.i.i = and i1 %3, %i.bz
  br i1 %or.cond46.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.c
  %i.ca = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull %.03554.i.i, i64 noundef %.03653.i.i, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext %3)
  br i1 %i.ca, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i: ; preds = %.critedge.i.i
  %i.cb = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull %.03554.i.i, i64 noundef %.03653.i.i, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext %3)
  br i1 %i.cb, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.i, label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.sink.split.i: ; preds = %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i
  %.lcssa432.sink.i = phi i16 [ %i.be, %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ], [ %i.bw, %_ZN6duckdb20IntegerCastOperation17HandleBinaryDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i ]
  store i16 %.lcssa432.sink.i, ptr %6, align 2
  br label %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.i

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.i: ; preds = %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread28.sink.split.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %bb.r
  %i.cc = load i16, ptr %6, align 2, !tbaa !63
  store i16 %i.cc, ptr %2, align 2, !tbaa !41
  br label %_ZN6duckdbL20TrySimpleIntegerCastIsLb1EEEbPKcmRT_b.exit

_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i: ; preds = %bb.b, %bb.p, %bb.o, %bb.n, %.lr.ph.i43.i.i, %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.i, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.i, %bb.r, %bb.q, %bb.j, %.lr.ph.i.i.preheader.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.s, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i
  %.035158.i.i = phi ptr [ %i.ce, %bb.s ], [ %i.g, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i ] ; 20 uses
  %.036157.i.i = phi i64 [ %i.cf, %bb.s ], [ %i.h, %_ZN6duckdbL14TryIntegerCastINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i ] ; 34 uses
  %i.cd = load i8, ptr %.035158.i.i, align 1, !tbaa !23 ; 4 uses
  switch i8 %i.cd, label %.critedge.i11.i [
    i8 32, label %bb.s
    i8 12, label %bb.s
    i8 11, label %bb.s
    i8 10, label %bb.s
    i8 9, label %bb.s
    i8 13, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 1
  %i.cf = add i64 %.036157.i.i, -1                ; 2 uses
  %cond.i9.i = icmp eq i64 %i.cf, 0
  br i1 %cond.i9.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %.lr.ph.i8.i, !llvm.loop !76

.critedge.i11.i:                                  ; preds = %.lr.ph.i8.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cg = icmp eq i8 %i.cd, 45
  br i1 %i.cg, label %bb.t, label %bb.as

bb.t:                                             ; preds = %.critedge.i11.i
  %.not.i.i = icmp eq i64 %.036157.i.i, 1
  br i1 %.not.i.i, label %_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i, label %.lr.ph.i.i23.i

_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b.exit._crit_edge.i.i.thread.i.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIsEELb1EEEbRT_.exit.thread115.i.i.i

.lr.ph.i.i23.i:                                   ; preds = %bb.t, %bb.aq
  %i.ch = phi i64 [ %i.et, %bb.aq ], [ 0, %bb.t ] ; 6 uses
  %.084132.i.i.i = phi i64 [ %.7.i.i.i, %bb.aq ], [ 1, %bb.t ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %.084132.i.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23  ; 3 uses
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %bb.al, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i23.i
  store i64 %i.ch, ptr %7, align 8
  %i.cm = icmp eq i8 %i.cj, 46
  br i1 %i.cm, label %bb.v, label %.thread111.i.i.i

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = icmp ugt i64 %.084132.i.i.i, 1          ; 2 uses
  %i.co = add nuw i64 %.084132.i.i.i, 1           ; 5 uses
  %i.cp = icmp ult i64 %i.co, %.036157.i.i
  br i1 %i.cp, label %.lr.ph134.i.i.i, label %.thread117.i.i.i

.lr.ph134.i.i.i:                                  ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph134.i.i.i
  %i.cs = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.dh, %bb.ad ] ; 2 uses
  %i.ct = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.di, %bb.ad ] ; 2 uses
  %i.cu = phi i16 [ 0, %.lr.ph134.i.i.i ], [ %i.dj, %bb.ad ] ; 3 uses
  %i.cv = phi i64 [ 0, %.lr.ph134.i.i.i ], [ %i.dk, %bb.ad ] ; 4 uses
  %.185133.i.i.i = phi i64 [ %i.co, %.lr.ph134.i.i.i ], [ %.286.i.i.i, %bb.ad ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %.185133.i.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !23  ; 2 uses
  %i.cy = add i8 %i.cx, -48                       ; 2 uses
  %i.cz = icmp ult i8 %i.cy, 10
  br i1 %i.cz, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.da = zext nneg i8 %i.cy to i64               ; 2 uses
  %i.db = xor i64 %i.da, 9223372036854775806
  %i.dc = udiv i64 %i.db, 10
  %i.dd = icmp sgt i64 %i.cv, %i.dc
  br i1 %i.dd, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.z, !prof !54

bb.z:                                             ; preds = %bb.y
  %i.de = add i16 %i.cu, 1                        ; 2 uses
  %i.df = mul nsw i64 %i.cv, 10
  %i.dg = add nsw i64 %i.df, %i.da                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.z, %bb.y
  %i.dh = phi i64 [ %i.dg, %bb.z ], [ %i.cs, %bb.y ] ; 2 uses
  %i.di = phi i16 [ %i.de, %bb.z ], [ %i.ct, %bb.y ] ; 2 uses
  %i.dj = phi i16 [ %i.de, %bb.z ], [ %i.cu, %bb.y ] ; 2 uses
  %i.dk = phi i64 [ %i.dg, %bb.z ], [ %i.cv, %bb.y ] ; 2 uses
  %i.dl = add nuw i64 %.185133.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.dl, %.036157.i.i
  br i1 %.not103.i.i.i, label %.thread117.i.i.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !23
  %i.do = icmp eq i8 %i.dn, 95
  br i1 %i.do, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dp = add i64 %.185133.i.i.i, 2               ; 3 uses
  %i.dq = icmp eq i64 %i.dp, %.036157.i.i
  br i1 %i.dq, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.dp
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !23
  %i.dt = add i8 %i.ds, -48
  %i.du = icmp ult i8 %i.dt, 10
  br i1 %i.du, label %bb.ad, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.286.i.i.i = phi i64 [ %i.dp, %bb.ac ], [ %i.dl, %bb.aa ] ; 3 uses
  %i.dv = icmp ult i64 %.286.i.i.i, %.036157.i.i
  br i1 %i.dv, label %bb.x, label %.thread117.i.i.loopexit.i, !llvm.loop !77

bb.ae:                                            ; preds = %bb.x
  store i16 %i.ct, ptr %i.cr, align 8
  store i64 %i.cs, ptr %i.cq, align 8
  %i.dw = icmp ugt i64 %.185133.i.i.i, %i.co
  %or.cond106.i.i.i = or i1 %i.cn, %i.dw
  br i1 %or.cond106.i.i.i, label %.thread111.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread117.i.i.loopexit.i:                        ; preds = %bb.ad, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.286.i.i.i, %bb.ad ], [ %.036157.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIsEELb1ELb1EEEbRT_h.exit.i.i.i ]
  store i16 %i.di, ptr %i.cr, align 8
  store i64 %i.dh, ptr %i.cq, align 8
  br label %.thread117.i.i.i

.thread117.i.i.i:                                 ; preds = %.thread117.i.i.loopexit.i, %bb.w
  %.promoted11.i.i224.i.i = phi i16 [ 0, %bb.w ], [ %i.dj, %.thread117.i.i.loopexit.i ]
  %.promoted.i.i220.i.i = phi i64 [ 0, %bb.w ], [ %i.dk, %.thread117.i.i.loopexit.i ]
  %.185.lcssa.i.i.i = phi i64 [ %i.co, %bb.w ], [ %.185.lcssa.i.i.ph.i, %.thread117.i.i.loopexit.i ] ; 2 uses
  %i.dx = icmp ugt i64 %.185.lcssa.i.i.i, %i.co
  %or.cond106118.i.i.i = or i1 %i.cn, %i.dx
  br i1 %or.cond106118.i.i.i, label %.thread119.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread111.i.i.i:                                 ; preds = %bb.ae, %bb.u
  %.promoted11.i.i223.i.i = phi i16 [ 0, %bb.u ], [ %i.cu, %bb.ae ] ; 2 uses
  %.promoted.i.i219.i.i = phi i64 [ 0, %bb.u ], [ %i.cv, %bb.ae ] ; 2 uses
  %i.dy = phi i8 [ %i.cj, %bb.u ], [ %i.cx, %bb.ae ]
  %.488.i.i.i = phi i64 [ %.084132.i.i.i, %bb.u ], [ %.185133.i.i.i, %bb.ae ] ; 3 uses
  switch i8 %i.dy, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i
    i8 101, label %bb.af
    i8 69, label %bb.af
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i: ; preds = %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i, %.thread111.i.i.i
  %i.dz = add nuw i64 %.488.i.i.i, 1              ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %.036157.i.i
  br i1 %i.ea, label %.lr.ph138.i.i.i, label %.thread119.i.i.i

.lr.ph138.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  %i.eb = phi i64 [ %i.ee, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i ], [ %i.dz, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !23
  switch i8 %i.ed, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit108.i.i.i: ; preds = %.lr.ph138.i.i.i, %.lr.ph138.i.i.i, %.lr.ph138.i.i.i, %.lr.ph138.i.i.i, %.lr.ph138.i.i.i, %.lr.ph138.i.i.i
  %i.ee = add nuw i64 %i.eb, 1                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ee, %.036157.i.i
  br i1 %exitcond.not.i.i.i, label %.thread119.i.i.i, label %.lr.ph138.i.i.i, !llvm.loop !78

bb.af:                                            ; preds = %.thread111.i.i.i, %.thread111.i.i.i
  %i.ef = icmp eq i64 %.488.i.i.i, 1
  %or.cond107.i.i.i = or i1 %3, %i.ef
  br i1 %or.cond107.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = add nuw i64 %.488.i.i.i, 1              ; 3 uses
  %.not104.i.i.i = icmp ult i64 %i.eg, %.036157.i.i
  br i1 %.not104.i.i.i, label %bb.ah, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIsEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i16 0, ptr %5, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %.035158.i.i, i64 %i.eg ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !23
  %i.ej = icmp eq i8 %i.ei, 45
  %i.ek = sub nuw i64 %.036157.i.i, %i.eg         ; 2 uses
  br i1 %i.ej, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
end_hunk_0
