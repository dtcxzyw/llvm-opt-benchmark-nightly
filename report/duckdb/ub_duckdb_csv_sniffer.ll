Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_sniffer?download=true
inline.NumInlined: 6648
inline.NumDeleted: 2471
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bn, %.lr.ph133.i.i.i
  %i.kr = phi i64 [ 0, %.lr.ph133.i.i.i ], [ %i.lg, %bb.bn ] ; 2 uses
  %i.ks = phi i16 [ 0, %.lr.ph133.i.i.i ], [ %i.lh, %bb.bn ] ; 2 uses
  %i.kt = phi i16 [ 0, %.lr.ph133.i.i.i ], [ %i.li, %bb.bn ] ; 2 uses
  %i.ku = phi i64 [ 0, %.lr.ph133.i.i.i ], [ %i.lj, %bb.bn ] ; 3 uses
  %.185132.i.i.i = phi i64 [ %i.kn, %.lr.ph133.i.i.i ], [ %.2.i.i.i, %bb.bn ] ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 %.185132.i.i.i
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !173 ; 2 uses
  %i.kx = add i8 %i.kw, -48                       ; 2 uses
  %i.ky = icmp ult i8 %i.kx, 10
  br i1 %i.ky, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.kz = zext nneg i8 %i.kx to i64               ; 2 uses
  %i.la = xor i64 %i.kz, 9223372036854775806
  %i.lb = udiv i64 %i.la, 10
  %i.lc = icmp sgt i64 %i.ku, %i.lb
  br i1 %i.lc, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.bj, !prof !220

bb.bj:                                            ; preds = %bb.bi
  %i.ld = add i16 %i.kt, 1                        ; 2 uses
  %i.le = mul nsw i64 %i.ku, 10
  %i.lf = add nsw i64 %i.le, %i.kz                ; 2 uses
  br label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i: ; preds = %bb.bj, %bb.bi
  %i.lg = phi i64 [ %i.lf, %bb.bj ], [ %i.kr, %bb.bi ] ; 2 uses
  %i.lh = phi i16 [ %i.ld, %bb.bj ], [ %i.ks, %bb.bi ] ; 2 uses
  %i.li = phi i16 [ %i.ld, %bb.bj ], [ %i.kt, %bb.bi ]
  %i.lj = phi i64 [ %i.lf, %bb.bj ], [ %i.ku, %bb.bi ]
  %i.lk = add nuw i64 %.185132.i.i.i, 1           ; 3 uses
  %.not103.i.i.i = icmp eq i64 %i.lk, %.036137.i.i
  br i1 %.not103.i.i.i, label %.thread116.i.i.loopexit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !173
  %i.ln = icmp eq i8 %i.lm, 95
  br i1 %i.ln, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.lo = add i64 %.185132.i.i.i, 2               ; 3 uses
  %i.lp = icmp eq i64 %i.lo, %.036137.i.i
  br i1 %i.lp, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lq = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 %i.lo
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !173
  %i.ls = add i8 %i.lr, -48
  %i.lt = icmp ult i8 %i.ls, 10
  br i1 %i.lt, label %bb.bn, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.2.i.i.i = phi i64 [ %i.lo, %bb.bm ], [ %i.lk, %bb.bk ] ; 3 uses
  %i.lu = icmp ult i64 %.2.i.i.i, %.036137.i.i
  br i1 %i.lu, label %bb.bh, label %.thread116.i.i.loopexit.i, !llvm.loop !1336

bb.bo:                                            ; preds = %bb.bh
  store i16 %i.ks, ptr %i.kq, align 8
  store i64 %i.kr, ptr %i.kp, align 8
  %i.lv = icmp ugt i64 %.185132.i.i.i, %i.kn
  %or.cond.i.i.i = or i1 %i.km, %i.lv
  br i1 %or.cond.i.i.i, label %.thread110.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread116.i.i.loopexit.i:                        ; preds = %bb.bn, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i
  %.185.lcssa.i.i.ph.i = phi i64 [ %.036137.i.i, %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i ], [ %.2.i.i.i, %bb.bn ]
  store i16 %i.lh, ptr %i.kq, align 8
  store i64 %i.lg, ptr %i.kp, align 8
  br label %.thread116.i.i.i

.thread116.i.i.i:                                 ; preds = %.thread116.i.i.loopexit.i, %bb.bg
  %.185.lcssa.i.i.i = phi i64 [ %i.kn, %bb.bg ], [ %.185.lcssa.i.i.ph.i, %.thread116.i.i.loopexit.i ] ; 2 uses
  %i.lw = icmp ugt i64 %.185.lcssa.i.i.i, %i.kn
  %or.cond117.i.i.i = or i1 %i.km, %i.lw
  br i1 %or.cond117.i.i.i, label %.thread118.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.thread110.i.i.i:                                 ; preds = %bb.bo, %bb.bf
  %i.lx = phi i8 [ %i.ki, %bb.bf ], [ %i.kw, %bb.bo ]
  %.4.i.i23.i = phi i64 [ %.084131.i.i.i, %bb.bf ], [ %.185132.i.i.i, %bb.bo ] ; 3 uses
  switch i8 %i.lx, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i
    i8 101, label %bb.bp
    i8 69, label %bb.bp
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i: ; preds = %.thread110.i.i.i, %.thread110.i.i.i, %.thread110.i.i.i, %.thread110.i.i.i, %.thread110.i.i.i, %.thread110.i.i.i
  %i.ly = add nuw i64 %.4.i.i23.i, 1              ; 3 uses
  %i.lz = icmp ult i64 %i.ly, %.036137.i.i
  br i1 %i.lz, label %.lr.ph135.i.i.i, label %.thread118.i.i.i

.lr.ph135.i.i.i:                                  ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i
  %i.ma = phi i64 [ %i.md, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i ], [ %i.ly, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !173
  switch i8 %i.mc, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i: ; preds = %.lr.ph135.i.i.i, %.lr.ph135.i.i.i, %.lr.ph135.i.i.i, %.lr.ph135.i.i.i, %.lr.ph135.i.i.i, %.lr.ph135.i.i.i
  %i.md = add nuw i64 %i.ma, 1                    ; 2 uses
  %exitcond.not.i.i27.i = icmp eq i64 %i.md, %.036137.i.i
  br i1 %exitcond.not.i.i27.i, label %.thread118.i.i.i, label %.lr.ph135.i.i.i, !llvm.loop !1337

bb.bp:                                            ; preds = %.thread110.i.i.i, %.thread110.i.i.i
  %i.me = icmp eq i64 %.4.i.i23.i, 1
  br i1 %i.me, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mf = add nuw i64 %.4.i.i23.i, 1              ; 3 uses
  %.not104.i.i.i = icmp ult i64 %i.mf, %.036137.i.i
  br i1 %.not104.i.i.i, label %bb.br, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i16 0, ptr %9, align 2
  %i.mg = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 %i.mf ; 3 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !173
  %i.mi = icmp eq i8 %i.mh, 45
  %i.mj = sub nuw i64 %.036137.i.i, %i.mf         ; 2 uses
  br i1 %i.mi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mk = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.mg, i64 noundef %i.mj, ptr noundef nonnull align 2 dereferenceable(2) %9, i1 noundef zeroext false)
  br i1 %i.mk, label %.split46.i, label %.split46.thread.i

bb.bt:                                            ; preds = %bb.br
  %i.ml = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.mg, i64 noundef %i.mj, ptr noundef nonnull align 2 dereferenceable(2) %9, i1 noundef zeroext false)
  br i1 %i.ml, label %.split46.i, label %.split46.thread.i

.split46.thread.i:                                ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.split46.i:                                       ; preds = %bb.bt, %bb.bs
  %i.mm = load i16, ptr %9, align 2, !tbaa !505
  %i.mn = invoke noundef zeroext i1 @_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIaEELb1EEEbRT_s(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext %i.mm)
          to label %.noexc unwind label %bb.rn

.noexc:                                           ; preds = %.split46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br i1 %i.mn, label %bb.dk, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bu:                                            ; preds = %.lr.ph.i.i22.i
  %i.mo = add nuw i64 %.084131.i.i.i, 1           ; 3 uses
  %i.mp = zext nneg i8 %i.kj to i64               ; 2 uses
  %.nonneg.i.i.i.i = sub nuw i64 -9223372036854775808, %i.mp
  %i.mq = udiv i64 %.nonneg.i.i.i.i, 10
  %.neg.i.i.i.i = sub nsw i64 0, %i.mq
  %.not.i.i28.i = icmp slt i64 %i.kg, %.neg.i.i.i.i
  br i1 %.not.i.i28.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.bv, !prof !220

bb.bv:                                            ; preds = %bb.bu
  %i.mr = mul nsw i64 %i.kg, 10
  %i.ms = sub nsw i64 %i.mr, %i.mp                ; 3 uses
  %.not105.i.i.i = icmp eq i64 %i.mo, %.036137.i.i
  br i1 %.not105.i.i.i, label %.thread118.i.i.loopexit58.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mt = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 %i.mo
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !173
  %.not106.i.i.i = icmp eq i8 %i.mu, 95
  br i1 %.not106.i.i.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.mv = add i64 %.084131.i.i.i, 2               ; 3 uses
  %i.mw = icmp eq i64 %i.mv, %.036137.i.i
  br i1 %i.mw, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mx = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 %i.mv
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !173
  %i.mz = add i8 %i.my, -48
  %i.na = icmp ult i8 %i.mz, 10
  br i1 %i.na, label %bb.bz, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.7.i.i29.i = phi i64 [ %i.mo, %bb.bw ], [ %i.mv, %bb.by ] ; 3 uses
  %i.nb = icmp ult i64 %.7.i.i29.i, %.036137.i.i
  br i1 %i.nb, label %.lr.ph.i.i22.i, label %.thread118.i.i.loopexit58.i, !llvm.loop !1338

.thread118.i.i.loopexit58.i:                      ; preds = %bb.bz, %bb.bv
  %.8.i.i25.ph.i = phi i64 [ %.036137.i.i, %bb.bv ], [ %.7.i.i29.i, %bb.bz ]
  store i64 %i.ms, ptr %10, align 8
  br label %.thread118.i.i.i

.thread118.i.i.i:                                 ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i, %.thread118.i.i.loopexit58.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i, %.thread116.i.i.i, %bb.be
  %i.nc = phi i64 [ %i.kg, %.thread116.i.i.i ], [ %i.ms, %.thread118.i.i.loopexit58.i ], [ %i.kg, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i ], [ 0, %bb.be ], [ %i.kg, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i ]
  %.8.i.i25.i = phi i64 [ %.185.lcssa.i.i.i, %.thread116.i.i.i ], [ %.8.i.i25.ph.i, %.thread118.i.i.loopexit58.i ], [ %i.ly, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i24.i ], [ 1, %bb.be ], [ %.036137.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #31
  %i.nd = invoke noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b(i64 noundef %i.nc, ptr noundef nonnull align 1 dereferenceable(1) %i.af, i1 noundef zeroext false)
          to label %.noexc117 unwind label %bb.rn

.noexc117:                                        ; preds = %.thread118.i.i.i
  br i1 %i.nd, label %.preheader.i.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread.i.i.i: ; preds = %.noexc117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.preheader.i.i.i.i:                               ; preds = %.noexc117
  %i.ne = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.ne, align 8, !tbaa !507 ; 3 uses
  %i.nf = icmp sgt i64 %.promoted.i.i.i.i, 10
  %i.ng = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %.promoted11.i.i.i.i = load i16, ptr %i.ng, align 8, !tbaa !508 ; 2 uses
  br i1 %i.nf, label %.lr.ph.i.i.i.i, label %.preheader._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nh = phi i16 [ %i.nk, %.lr.ph.i.i.i.i ], [ %.promoted11.i.i.i.i, %.preheader.i.i.i.i ]
  %i.ni = phi i64 [ %i.nj, %.lr.ph.i.i.i.i ], [ %.promoted.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.nj = udiv i64 %i.ni, 10                      ; 3 uses
  %i.nk = add i16 %i.nh, -1                       ; 3 uses
  %i.nl = icmp samesign ugt i64 %i.ni, 109
  br i1 %i.nl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store i64 %i.nj, ptr %i.ne, align 8, !tbaa !507
  store i16 %i.nk, ptr %i.ng, align 8, !tbaa !508
  br label %.preheader._crit_edge.i.i.i.i

.preheader._crit_edge.i.i.i.i:                    ; preds = %._crit_edge.i.i.i.i, %.preheader.i.i.i.i
  %i.nm = phi i16 [ %i.nk, %._crit_edge.i.i.i.i ], [ %.promoted11.i.i.i.i, %.preheader.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.nj, %._crit_edge.i.i.i.i ], [ %.promoted.i.i.i.i, %.preheader.i.i.i.i ]
  %i.nn = icmp eq i16 %i.nm, 1
  %i.no = icmp sgt i64 %.lcssa.i.i.i.i, 4
  %or.cond.i.i.i26.i = and i1 %i.nn, %i.no
  br i1 %or.cond.i.i.i26.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread114.i.i.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.thread114.i.i.i: ; preds = %.preheader._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #31
  %.old.i = icmp ugt i64 %.8.i.i25.i, 1
  br i1 %.old.i, label %bb.dk, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i: ; preds = %.preheader._crit_edge.i.i.i.i
  %i.np = load i8, ptr %i.af, align 1, !tbaa !173
  %i.nq = invoke noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.np, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(1) %i.af)
          to label %.noexc118 unwind label %bb.rn

.noexc118:                                        ; preds = %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb1EEEbRT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #31
  %i.nr = icmp ugt i64 %.8.i.i25.i, 1
  %or.cond.i = and i1 %i.nr, %i.nq
  br i1 %or.cond.i, label %bb.dk, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.ca:                                            ; preds = %.critedge.i11.i
  %.not39.i12.i = icmp ne i64 %.036137.i.i, 1
  %i.ns = icmp eq i8 %i.kc, 48
  %or.cond.i13.i = and i1 %.not39.i12.i, %i.ns
  br i1 %or.cond.i13.i, label %bb.cb, label %bb.co

bb.cb:                                            ; preds = %bb.ca
  %i.nt = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 1 ; 7 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !173
  %i.nv = add i8 %i.nu, -66                       ; 2 uses
  %i.nw = call i8 @llvm.fshl.i8(i8 %i.nv, i8 %i.nv, i8 7)
  switch i8 %i.nw, label %bb.co [
    i8 27, label %bb.cc
    i8 11, label %bb.cc
    i8 16, label %bb.ch
    i8 0, label %bb.ch
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.nx = add i64 %.036137.i.i, -1                ; 5 uses
  %i.ny = icmp ugt i64 %i.nx, 1                   ; 3 uses
  br i1 %i.ny, label %.lr.ph.i48.i.preheader.i, label %._crit_edge.i.i.i

.lr.ph.i48.i.preheader.i:                         ; preds = %bb.cc
  %i.nz = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 2
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !173 ; 3 uses
  %i.ob = add i8 %i.oa, -65
  %or.cond.i.i49.i146.i = icmp ult i8 %i.ob, 26
  %i.oc = or disjoint i8 %i.oa, 32
  %spec.select.i.i.i15147.i = select i1 %or.cond.i.i49.i146.i, i8 %i.oc, i8 %i.oa ; 3 uses
  %i.od = add i8 %spec.select.i.i.i15147.i, -48
  %or.cond.i36.i.i16148.i = icmp ult i8 %i.od, 10
  %i.oe = and i8 %spec.select.i.i.i15147.i, -33
  %i.of = add i8 %i.oe, -65
  %i.og = icmp ult i8 %i.of, 6
  %i.oh = or i1 %or.cond.i36.i.i16148.i, %i.og
  br i1 %i.oh, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i48.i.i:                                   ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.1.i.i19.i
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !173 ; 3 uses
  %i.ok = add i8 %i.oj, -65
  %or.cond.i.i49.i.i = icmp ult i8 %i.ok, 26
  %i.ol = or disjoint i8 %i.oj, 32
  %spec.select.i.i.i15.i = select i1 %or.cond.i.i49.i.i, i8 %i.ol, i8 %i.oj ; 3 uses
  %i.om = add i8 %spec.select.i.i.i15.i, -48
  %or.cond.i36.i.i16.i = icmp ult i8 %i.om, 10
  %i.on = and i8 %spec.select.i.i.i15.i, -33
  %i.oo = add i8 %i.on, -65
  %i.op = icmp ult i8 %i.oo, 6
  %i.oq = or i1 %or.cond.i36.i.i16.i, %i.op
  br i1 %i.oq, label %.lr.ph.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i48.i.preheader.i, %.lr.ph.i48.i.i
  %spec.select.i.i.i15150.i = phi i8 [ %spec.select.i.i.i15.i, %.lr.ph.i48.i.i ], [ %spec.select.i.i.i15147.i, %.lr.ph.i48.i.preheader.i ] ; 2 uses
  %i.or = phi i64 [ %i.pk, %.lr.ph.i48.i.i ], [ 0, %.lr.ph.i48.i.preheader.i ] ; 2 uses
  %.02642.i.i149.i = phi i64 [ %.1.i.i19.i, %.lr.ph.i48.i.i ], [ 1, %.lr.ph.i48.i.preheader.i ] ; 2 uses
  %i.os = icmp sgt i8 %spec.select.i.i.i15150.i, 96
  %.0.v.i.i17.i = select i1 %i.os, i8 -87, i8 -48
  %.0.i.i18.i = add i8 %.0.v.i.i17.i, %spec.select.i.i.i15150.i
  %i.ot = add nuw i64 %.02642.i.i149.i, 1         ; 3 uses
  %.not.i50.i.i = icmp eq i64 %i.ot, %i.nx
  br i1 %.not.i50.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !173
  %i.ow = icmp eq i8 %i.ov, 95
  br i1 %i.ow, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ox = add nuw i64 %.02642.i.i149.i, 2         ; 3 uses
  %i.oy = icmp eq i64 %i.ox, %i.nx
  br i1 %i.oy, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.ox
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !173 ; 2 uses
  %i.pb = add i8 %i.pa, -48
  %or.cond.i37.i.i20.i = icmp ult i8 %i.pb, 10
  %i.pc = and i8 %i.pa, -33
  %i.pd = add i8 %i.pc, -65
  %i.pe = icmp ult i8 %i.pd, 6
  %i.pf = or i1 %or.cond.i37.i.i20.i, %i.pe
  br i1 %i.pf, label %bb.cg, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

bb.cg:                                            ; preds = %bb.cf, %bb.cd, %.lr.ph.i
  %.1.i.i19.i = phi i64 [ %i.ox, %bb.cf ], [ %i.ot, %bb.cd ], [ %i.nx, %.lr.ph.i ] ; 3 uses
  %i.pg = zext i8 %.0.i.i18.i to i64              ; 2 uses
  %i.ph = lshr i64 %i.pg, 4
  %i.pi = xor i64 %i.ph, 576460752303423487
  %.not39.i.i.i = icmp sgt i64 %i.or, %i.pi
  br i1 %.not39.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i, !prof !220

_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i: ; preds = %bb.cg
  %i.pj = shl nsw i64 %i.or, 4
  %i.pk = add nsw i64 %i.pj, %i.pg                ; 3 uses
  %i.pl = icmp ult i64 %.1.i.i19.i, %i.nx
  br i1 %i.pl, label %.lr.ph.i48.i.i, label %._crit_edge.i.i.loopexit.i

._crit_edge.i.i.loopexit.i:                       ; preds = %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i
  store i64 %i.pk, ptr %10, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.loopexit.i, %bb.cc
  %i.pm = phi i64 [ 0, %bb.cc ], [ %i.pk, %._crit_edge.i.i.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #31
  %i.pn = invoke noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b(i64 noundef %i.pm, ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i1 noundef zeroext false)
          to label %.noexc119 unwind label %bb.rn

.noexc119:                                        ; preds = %._crit_edge.i.i.i
  br i1 %i.pn, label %.preheader.i.i41.i.i, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i.i.thread.i

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit.i.i.thread.i: ; preds = %.noexc119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i

.preheader.i.i41.i.i:                             ; preds = %.noexc119
  %i.po = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.promoted.i.i42.i.i = load i64, ptr %i.po, align 8, !tbaa !507 ; 3 uses
  %i.pp = icmp sgt i64 %.promoted.i.i42.i.i, 10
  %i.pq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %.promoted11.i.i43.i.i = load i16, ptr %i.pq, align 8, !tbaa !508 ; 2 uses
  br i1 %i.pp, label %.lr.ph.i.i46.i.i, label %.preheader._crit_edge.i.i44.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.preheader.i.i41.i.i, %.lr.ph.i.i46.i.i
  %i.pr = phi i16 [ %i.pu, %.lr.ph.i.i46.i.i ], [ %.promoted11.i.i43.i.i, %.preheader.i.i41.i.i ]
  %i.ps = phi i64 [ %i.pt, %.lr.ph.i.i46.i.i ], [ %.promoted.i.i42.i.i, %.preheader.i.i41.i.i ] ; 2 uses
  %i.pt = udiv i64 %i.ps, 10                      ; 3 uses
  %i.pu = add i16 %i.pr, -1                       ; 3 uses
  %i.pv = icmp samesign ugt i64 %i.ps, 109
  br i1 %i.pv, label %.lr.ph.i.i46.i.i, label %._crit_edge.i.i47.i.i, !llvm.loop !30

._crit_edge.i.i47.i.i:                            ; preds = %.lr.ph.i.i46.i.i
  store i64 %i.pt, ptr %i.po, align 8, !tbaa !507
  store i16 %i.pu, ptr %i.pq, align 8, !tbaa !508
  br label %.preheader._crit_edge.i.i44.i.i

.preheader._crit_edge.i.i44.i.i:                  ; preds = %._crit_edge.i.i47.i.i, %.preheader.i.i41.i.i
  %i.pw = phi i16 [ %i.pu, %._crit_edge.i.i47.i.i ], [ %.promoted11.i.i43.i.i, %.preheader.i.i41.i.i ]
  %.lcssa.i.i45.i.i = phi i64 [ %i.pt, %._crit_edge.i.i47.i.i ], [ %.promoted.i.i42.i.i, %.preheader.i.i41.i.i ]
  %i.px = icmp eq i16 %i.pw, 1
  %i.py = icmp sgt i64 %.lcssa.i.i45.i.i, 4
  %or.cond.i38.i.i.i = and i1 %i.px, %i.py
end_hunk_0
begin_hunk_1_@_ZN6duckdb20TryDecimalStringCastIsLc44EEEbPKcmRT_hh:bb.a
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i223 = phi i16 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
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
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !173
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
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1450

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !173
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !505
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %i.cm, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

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
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !173
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !173
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1451

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i224, %.thread114.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
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
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod652 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod652)
  %i.dq = sdiv i16 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa597 = phi i16 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i16 %.lcssa597, ptr %7, align 2, !tbaa !515
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i16 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !36

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i16 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa597, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond16 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond16, label %bb.z, label %thread-pre-split.thread.thread

bb.z:                                             ; preds = %thread-pre-split.thread
  %i.dx = add i16 %i.du, -1
  br label %thread-pre-split.thread.thread.sink.split

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.u, %bb.y, %bb.z
  %.sink = phi i16 [ %i.dx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cx, %bb.u ] ; 2 uses
  %.ph = phi i8 [ %i.dt, %bb.z ], [ 0, %bb.y ], [ 0, %bb.u ]
  %.8.i.i272279296.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i16 %.sink, ptr %7, align 2
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i272279296 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i272279296.ph, %thread-pre-split.thread.thread.sink.split ]
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
  %min.iters.check501 = icmp ult i8 %i.eb, 15
  br i1 %min.iters.check501, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ee = and i32 %i.ed, 12
  %n.vec = and i32 %i.ed, 496                     ; 4 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dy, %i.ef
  %i.eh = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi502 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ej = mul <8 x i16> %vec.phi502, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !1452

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ej, %i.ei
  %i.el = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ee, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !486

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.el, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec503 = and i32 %i.ed, 508                  ; 3 uses
  %i.em = trunc i32 %n.vec503 to i8
  %i.en = add i8 %i.dy, %i.em
  %i.eo = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index504 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next506, %vec.epilog.vector.body ]
  %vec.phi505 = phi <4 x i16> [ %i.eo, %vec.epilog.ph ], [ %i.ep, %vec.epilog.vector.body ]
  %i.ep = mul <4 x i16> %vec.phi505, splat (i16 10) ; 2 uses
  %index.next506 = add nuw i32 %index504, 4       ; 2 uses
  %i.eq = icmp eq i32 %index.next506, %n.vec503
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1453

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.er = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.ep) ; 2 uses
  %cmp.n507 = icmp eq i32 %i.ed, %n.vec503
  br i1 %cmp.n507, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph592 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.es = phi i16 [ %i.et, %.lr.ph.i.i.i ], [ %.ph592, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.eu, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.et = mul i16 %i.es, 10                       ; 2 uses
  %i.eu = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eu, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1454

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa450 = phi i16 [ %i.er, %vec.epilog.middle.block ], [ %i.el, %middle.block ], [ %i.et, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa450, ptr %7, align 2, !tbaa !515
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ev = phi i16 [ %.lcssa450, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ew = sext i16 %i.ev to i32
  %i.ex = sext i16 %i.j to i32
  %i.ey = sub nsw i32 0, %i.ex
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  %i.fa = icmp ugt i64 %.8.i.i272279296, 1
  %spec.select.i.i = and i1 %i.fa, %i.ez
  br i1 %spec.select.i.i, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fb = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.fb
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !173
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

bb.ad:                                            ; preds = %bb.ay, %.lr.ph.i85.i
  %.promoted114 = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.is, %bb.ay ] ; 5 uses
  %i.fm = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.it, %bb.ay ] ; 2 uses
  %i.fn = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iu, %bb.ay ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.ay ] ; 6 uses
  %i.fo = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.iv, %bb.ay ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !173 ; 3 uses
  %i.fr = add i8 %i.fq, -48                       ; 3 uses
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fm, ptr %i.c, align 2
  store i16 %.promoted114, ptr %7, align 2
  %i.ft = icmp eq i8 %i.fq, 44
  br i1 %i.ft, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fu = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fv = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fw = icmp ult i64 %i.fv, %.035153.i
  br i1 %i.fw, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fx = zext i8 %i.fn to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph137.i.i
  %i.fy = phi i16 [ %.promoted114, %.lr.ph137.i.i ], [ %i.gt, %bb.ak ] ; 3 uses
  %i.fz = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gl, %bb.ak ] ; 3 uses
  %i.ga = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gm, %bb.ak ] ; 4 uses
  %i.gb = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gv, %bb.ak ] ; 5 uses
  %i.gc = phi i16 [ %i.fo, %.lr.ph137.i.i ], [ %i.gw, %bb.ak ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fv, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ak ] ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !173 ; 3 uses
  %i.gf = add i8 %i.ge, -48                       ; 2 uses
  %i.gg = icmp ult i8 %i.gf, 10
  br i1 %i.gg, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.al

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ag
  %i.gh = icmp ne i8 %i.gb, %4
  %i.gi = trunc nuw i8 %i.ga to i1
  %or.cond18 = select i1 %i.gh, i1 true, i1 %i.gi ; 2 uses
  %i.gj = icmp samesign ugt i8 %i.ge, 52
  %i.gk = zext i1 %i.gj to i8
  %i.gl = select i1 %or.cond18, i8 %i.fz, i8 %i.gk ; 2 uses
  %i.gm = select i1 %or.cond18, i8 %i.ga, i8 1    ; 2 uses
  %i.gn = zext i8 %i.gb to i32
  %i.go = add nuw nsw i32 %i.gn, %i.fx
  %i.gp = icmp samesign ult i32 %i.go, 4          ; 3 uses
  %i.gq = mul i16 %i.gc, 10
  %i.gr = zext nneg i8 %i.gf to i16
  %i.gs = add i16 %i.gq, %i.gr                    ; 2 uses
  %i.gt = select i1 %i.gp, i16 %i.gs, i16 %i.fy   ; 3 uses
  %i.gu = zext i1 %i.gp to i8
  %i.gv = add nuw i8 %i.gb, %i.gu                 ; 2 uses
  %i.gw = select i1 %i.gp, i16 %i.gs, i16 %i.gc
  %i.gx = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gx, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !173
  %i.ha = icmp eq i8 %i.gz, 95
  br i1 %i.ha, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hb = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.hc = icmp eq i64 %i.hb, %.035153.i
  br i1 %i.hc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hb
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !173
  %i.hf = add i8 %i.he, -48
  %i.hg = icmp ult i8 %i.hf, 10
  br i1 %i.hg, label %bb.ak, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread
end_hunk_1
begin_hunk_2_@_ZN6duckdb20TryDecimalStringCastIiLc44EEEbPKcmRT_hh:bb.a
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i223 = phi i32 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
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
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !173
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
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1463

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !173
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !505
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %i.cm, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

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
  %or.cond516 = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond516, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.t

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
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !173
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !173
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1464

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i224, %.thread114.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
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
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod630 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod630)
  %i.dq = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa575 = phi i32 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa575, ptr %7, align 4, !tbaa !521
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i32 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !38

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa575, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
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
  %.8.i.i272279296.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i32 %.sink, ptr %7, align 4
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 4 uses
  %.8.i.i272279296 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i272279296.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i32 [ 0, %bb.c ], [ %i.du, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %4
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = xor i8 %i.dy, -1
  %i.eb = add i8 %4, %i.ea                        ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.eb, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader570, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ed, 504                     ; 3 uses
  %i.ee = trunc i32 %n.vec to i8
  %i.ef = add i8 %i.dy, %i.ee
  %i.eg = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi501 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ei, %vector.body ]
  %i.eh = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ei = mul <4 x i32> %vec.phi501, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ej = icmp eq i32 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !1465

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader570

.lr.ph.i.i.i.preheader570:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph571 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ek, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader570, %.lr.ph.i.i.i
  %i.el = phi i32 [ %i.em, %.lr.ph.i.i.i ], [ %.ph571, %.lr.ph.i.i.i.preheader570 ]
  %.024.i.i.i = phi i8 [ %i.en, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader570 ]
  %i.em = mul nsw i32 %i.el, 10                   ; 2 uses
  %i.en = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.en, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1466

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa450 = phi i32 [ %i.ek, %middle.block ], [ %i.em, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa450, ptr %7, align 4, !tbaa !521
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.eo = phi i32 [ %.lcssa450, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ep = sub nsw i32 0, %i.j
  %i.eq = icmp sgt i32 %i.eo, %i.ep
  %i.er = icmp ugt i64 %.8.i.i272279296, 1
  %spec.select.i.i = and i1 %i.er, %i.eq
  br i1 %spec.select.i.i, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.es = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.es
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !173
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

bb.ad:                                            ; preds = %bb.ay, %.lr.ph.i85.i
  %.promoted114 = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ij, %bb.ay ] ; 5 uses
  %i.fd = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ik, %bb.ay ] ; 2 uses
  %i.fe = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.il, %bb.ay ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.ay ] ; 6 uses
  %i.ff = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.im, %bb.ay ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !173 ; 3 uses
  %i.fi = add i8 %i.fh, -48                       ; 3 uses
  %i.fj = icmp ult i8 %i.fi, 10
  br i1 %i.fj, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fd, ptr %i.c, align 2
  store i32 %.promoted114, ptr %7, align 4
  %i.fk = icmp eq i8 %i.fh, 44
  br i1 %i.fk, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fl = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fm = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fn = icmp ult i64 %i.fm, %.035153.i
  br i1 %i.fn, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fo = zext i8 %i.fe to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph137.i.i
  %i.fp = phi i32 [ %.promoted114, %.lr.ph137.i.i ], [ %i.gk, %bb.ak ] ; 3 uses
  %i.fq = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gc, %bb.ak ] ; 3 uses
  %i.fr = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gd, %bb.ak ] ; 4 uses
  %i.fs = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gm, %bb.ak ] ; 5 uses
  %i.ft = phi i32 [ %i.ff, %.lr.ph137.i.i ], [ %i.gn, %bb.ak ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fm, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ak ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !173 ; 3 uses
  %i.fw = add i8 %i.fv, -48                       ; 2 uses
  %i.fx = icmp ult i8 %i.fw, 10
  br i1 %i.fx, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.al

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ag
  %i.fy = icmp ne i8 %i.fs, %4
  %i.fz = trunc nuw i8 %i.fr to i1
  %or.cond18 = select i1 %i.fy, i1 true, i1 %i.fz ; 2 uses
  %i.ga = icmp samesign ugt i8 %i.fv, 52
  %i.gb = zext i1 %i.ga to i8
  %i.gc = select i1 %or.cond18, i8 %i.fq, i8 %i.gb ; 2 uses
  %i.gd = select i1 %or.cond18, i8 %i.fr, i8 1    ; 2 uses
  %i.ge = zext i8 %i.fs to i32
  %i.gf = add nuw nsw i32 %i.ge, %i.fo
  %i.gg = icmp samesign ult i32 %i.gf, 9          ; 3 uses
  %i.gh = mul nsw i32 %i.ft, 10
  %i.gi = zext nneg i8 %i.fw to i32
  %i.gj = add nsw i32 %i.gh, %i.gi                ; 2 uses
  %i.gk = select i1 %i.gg, i32 %i.gj, i32 %i.fp   ; 3 uses
  %i.gl = zext i1 %i.gg to i8
  %i.gm = add nuw i8 %i.fs, %i.gl                 ; 2 uses
  %i.gn = select i1 %i.gg, i32 %i.gj, i32 %i.ft
  %i.go = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.go, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !173
  %i.gr = icmp eq i8 %i.gq, 95
  br i1 %i.gr, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gs = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gt = icmp eq i64 %i.gs, %.035153.i
  br i1 %i.gt, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gs
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !173
  %i.gw = add i8 %i.gv, -48
  %i.gx = icmp ult i8 %i.gw, 10
  br i1 %i.gx, label %bb.ak, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.2.i92.i = phi i64 [ %i.gs, %bb.aj ], [ %i.go, %bb.ah ] ; 3 uses
  %i.gy = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gy, label %bb.ag, label %.thread118.i.i.loopexit, !llvm.loop !1467

bb.al:                                            ; preds = %bb.ag
  store i8 %i.fs, ptr %i.d, align 1
  store i8 %i.fr, ptr %i.e, align 4
  store i8 %i.fq, ptr %i.f, align 1
  store i32 %i.fp, ptr %7, align 4
  %i.gz = icmp ugt i64 %.1136.i.i, %i.fm
  %or.cond.i91.i = or i1 %i.fl, %i.gz
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ak ]
  store i32 %i.gk, ptr %7, align 4
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.af
  %i.ha = phi i8 [ 0, %bb.af ], [ %i.gc, %.thread118.i.i.loopexit ]
  %i.hb = phi i8 [ 0, %bb.af ], [ %i.gd, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i228 = phi i32 [ %.promoted114, %bb.af ], [ %i.gk, %.thread118.i.i.loopexit ]
  %i.hc = phi i8 [ 0, %bb.af ], [ %i.gm, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fm, %bb.af ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hd = icmp ugt i64 %.1.lcssa.i.i, %i.fm
  %or.cond119.i.i = or i1 %i.fl, %i.hd
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.al, %bb.ae
  %i.he = phi i8 [ 0, %bb.ae ], [ %i.fq, %bb.al ] ; 2 uses
  %i.hf = phi i8 [ 0, %bb.ae ], [ %i.fr, %bb.al ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb20TryDecimalStringCastIlLc44EEEbPKcmRT_hh:bb.a
  %.185.lcssa.i.i = phi i64 [ %i.z, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.bq = icmp ugt i64 %.185.lcssa.i.i, %i.z
  %or.cond115.i.i = or i1 %i.y, %i.bq
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.n, %bb.e
  %i.br = phi i8 [ 0, %bb.e ], [ %i.ad, %bb.n ]   ; 2 uses
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.n ]   ; 2 uses
  %.promoted.i.i.i.i223 = phi i64 [ %.promoted92, %bb.e ], [ %i.ac, %bb.n ] ; 2 uses
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
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !173
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
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1474

bb.o:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cb = icmp eq i64 %.4.i.i, 1
  br i1 %i.cb, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cc, %.035153.i
  br i1 %.not104.i.i, label %bb.q, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i16 0, ptr %6, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cc ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !173
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.r, %bb.s
  %i.cj = load i16, ptr %6, align 2, !tbaa !505
  %i.ck = sext i16 %i.cj to i32
  %i.cl = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %i.cl, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

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
  %or.cond501 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond501, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.v

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
  %i.db = load i8, ptr %i.da, align 1, !tbaa !173
  %.not106.i.i = icmp eq i8 %i.db, 95
  br i1 %.not106.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dc = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, %.035153.i
  br i1 %i.dd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !173
  %i.dg = add i8 %i.df, -48
  %i.dh = icmp ult i8 %i.dg, 10
  br i1 %i.dh, label %bb.aa, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.7.i.i = phi i64 [ %i.cm, %bb.x ], [ %i.dc, %bb.z ] ; 3 uses
  %i.di = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.di, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1475

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dj = phi i8 [ %i.bn, %.thread114.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i224, %.thread114.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
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
  %lcmp.mod606 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod606)
  %i.dp = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa551 = phi i64 [ %i.dr, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dp, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa551, ptr %7, align 8, !tbaa !526
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dq = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dr = sdiv i64 %i.dq, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !40

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.ds = phi i8 [ %i.dl, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dt = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa551, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
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
  %.8.i.i272279296.ph = phi i64 [ %.8.i.i, %bb.ab ], [ %.035153.i, %bb.w ], [ %.7.i.i, %bb.aa ]
  store i64 %.sink, ptr %7, align 8
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dx = phi i8 [ 0, %bb.c ], [ %i.ds, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i272279296 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i272279296.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i64 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dy = icmp ult i8 %i.dx, %4
  br i1 %i.dy, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.dz = sub nuw i8 %4, %i.dx
  %xtraiter607 = and i8 %i.dz, 7                  ; 2 uses
  %lcmp.mod608.not = icmp eq i8 %xtraiter607, 0
  br i1 %lcmp.mod608.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.ea = phi i64 [ %i.eb, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %i.dx, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.eb = mul nsw i64 %i.ea, 10                   ; 3 uses
  %i.ec = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter607
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1476

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa550.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.unr609 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dx, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %i.ed = sub i8 %i.dx, %4
  %i.ee = icmp ugt i8 %i.ed, -8
  br i1 %i.ee, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ef = phi i64 [ %i.eg, %.lr.ph.i.i.i ], [ %.unr609, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.eh, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eg = mul nsw i64 %i.ef, 100000000            ; 2 uses
  %i.eh = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.eh, %4
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !41

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa550 = phi i64 [ %.lcssa550.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eg, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa550, ptr %7, align 8, !tbaa !526
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ei = phi i64 [ %.lcssa550, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ej = sub nsw i64 0, %i.i
  %i.ek = icmp sgt i64 %i.ei, %i.ej
  %i.el = icmp ugt i64 %.8.i.i272279296, 1
  %spec.select.i.i = and i1 %i.el, %i.ek
  br i1 %spec.select.i.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ac:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.em = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %.not38.i, %i.em
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !173
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

bb.af:                                            ; preds = %bb.bc, %.lr.ph.i85.i
  %.promoted114 = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.id, %bb.bc ] ; 5 uses
  %i.ex = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ie, %bb.bc ] ; 2 uses
  %i.ey = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.if, %bb.bc ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bc ] ; 6 uses
  %i.ez = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ig, %bb.bc ] ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !173 ; 3 uses
  %i.fc = add i8 %i.fb, -48                       ; 3 uses
  %i.fd = icmp ult i8 %i.fc, 10
  br i1 %i.fd, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %i.ex, ptr %i.c, align 2
  store i64 %.promoted114, ptr %7, align 8
  %i.fe = icmp eq i8 %i.fb, 44
  br i1 %i.fe, label %bb.ah, label %.thread114.i87.i

bb.ah:                                            ; preds = %bb.ag
  %i.ff = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fg = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fh = icmp ult i64 %i.fg, %.035153.i
  br i1 %i.fh, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ah
  %i.fi = zext i8 %i.ey to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph137.i.i
  %i.fj = phi i64 [ %.promoted114, %.lr.ph137.i.i ], [ %i.gf, %bb.ao ] ; 3 uses
  %i.fk = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fw, %bb.ao ] ; 3 uses
  %i.fl = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fx, %bb.ao ] ; 4 uses
  %i.fm = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gg, %bb.ao ] ; 6 uses
  %i.fn = phi i64 [ %i.ez, %.lr.ph137.i.i ], [ %i.gh, %bb.ao ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fg, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ao ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !173 ; 3 uses
  %i.fq = add i8 %i.fp, -48                       ; 2 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.fs = icmp ne i8 %i.fm, %4
  %i.ft = trunc nuw i8 %i.fl to i1
  %or.cond18 = select i1 %i.fs, i1 true, i1 %i.ft ; 2 uses
  %i.fu = icmp samesign ugt i8 %i.fp, 52
  %i.fv = zext i1 %i.fu to i8
  %i.fw = select i1 %or.cond18, i8 %i.fk, i8 %i.fv ; 2 uses
  %i.fx = select i1 %or.cond18, i8 %i.fl, i8 1    ; 2 uses
  %i.fy = zext i8 %i.fm to i32
  %i.fz = add nuw nsw i32 %i.fy, %i.fi
  %i.ga = icmp samesign ugt i32 %i.fz, 17
  br i1 %i.ga, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = add nuw i8 %i.fm, 1
  %i.gc = mul nsw i64 %i.fn, 10
  %i.gd = zext nneg i8 %i.fq to i64
  %i.ge = add nsw i64 %i.gc, %i.gd                ; 2 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.gf = phi i64 [ %i.ge, %bb.ak ], [ %i.fj, %bb.aj ] ; 3 uses
  %i.gg = phi i8 [ %i.gb, %bb.ak ], [ %i.fm, %bb.aj ] ; 2 uses
  %i.gh = phi i64 [ %i.ge, %bb.ak ], [ %i.fn, %bb.aj ]
  %i.gi = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gi, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !173
  %i.gl = icmp eq i8 %i.gk, 95
  br i1 %i.gl, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gm = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gn = icmp eq i64 %i.gm, %.035153.i
  br i1 %i.gn, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.go = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gm
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !173
  %i.gq = add i8 %i.gp, -48
  %i.gr = icmp ult i8 %i.gq, 10
  br i1 %i.gr, label %bb.ao, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.2.i92.i = phi i64 [ %i.gm, %bb.an ], [ %i.gi, %bb.al ] ; 3 uses
  %i.gs = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gs, label %bb.ai, label %.thread118.i.i.loopexit, !llvm.loop !1477

bb.ap:                                            ; preds = %bb.ai
  store i8 %i.fm, ptr %i.d, align 1
  store i8 %i.fl, ptr %i.e, align 4
  store i8 %i.fk, ptr %i.f, align 1
  store i64 %i.fj, ptr %7, align 8
  %i.gt = icmp ugt i64 %.1136.i.i, %i.fg
  %or.cond.i91.i = or i1 %i.ff, %i.gt
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.ao
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ao ]
  store i64 %i.gf, ptr %7, align 8
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.ah
  %i.gu = phi i8 [ 0, %bb.ah ], [ %i.fw, %.thread118.i.i.loopexit ]
  %i.gv = phi i8 [ 0, %bb.ah ], [ %i.fx, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i228 = phi i64 [ %.promoted114, %bb.ah ], [ %i.gf, %.thread118.i.i.loopexit ]
  %i.gw = phi i8 [ 0, %bb.ah ], [ %i.gg, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fg, %bb.ah ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.gx = icmp ugt i64 %.1.lcssa.i.i, %i.fg
  %or.cond119.i.i = or i1 %i.ff, %i.gx
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ap, %bb.ag
  %i.gy = phi i8 [ 0, %bb.ag ], [ %i.fk, %bb.ap ] ; 2 uses
  %i.gz = phi i8 [ 0, %bb.ag ], [ %i.fl, %bb.ap ] ; 2 uses
  %.promoted.i.i.i71.i227 = phi i64 [ %.promoted114, %bb.ag ], [ %i.fj, %bb.ap ] ; 2 uses
  %i.ha = phi i8 [ 0, %bb.ag ], [ %i.fm, %bb.ap ] ; 2 uses
  %i.hb = phi i8 [ %i.fb, %bb.ag ], [ %i.fp, %bb.ap ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ag ], [ %.1136.i.i, %bb.ap ] ; 3 uses
  switch i8 %i.hb, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc44EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb20TryDecimalStringCastIsLc46EEEbPKcmRT_hh:bb.a
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i223 = phi i16 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
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
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !173
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
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1490

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !173
  %i.cg = icmp eq i8 %i.cf, 45
  %i.ch = sub nuw i64 %.035153.i, %i.cd           ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext false)
  br i1 %i.ci, label %.split, label %.split.thread

bb.q:                                             ; preds = %bb.o
  %i.cj = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext false)
  br i1 %i.cj, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !505
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %i.cm, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

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
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !173
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !173
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1491

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i16 [ %.promoted.i.i.i.i224, %.thread114.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
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
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod652 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod652)
  %i.dq = sdiv i16 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa597 = phi i16 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i16 %.lcssa597, ptr %7, align 2, !tbaa !515
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i16 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i16 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !36

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i16 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa597, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dv = trunc nuw i8 %i.dl to i1
  %i.dw = trunc nuw i8 %i.dk to i1
  %or.cond16 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond16, label %bb.z, label %thread-pre-split.thread.thread

bb.z:                                             ; preds = %thread-pre-split.thread
  %i.dx = add i16 %i.du, -1
  br label %thread-pre-split.thread.thread.sink.split

thread-pre-split.thread.thread.sink.split:        ; preds = %bb.u, %bb.y, %bb.z
  %.sink = phi i16 [ %i.dx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cx, %bb.u ] ; 2 uses
  %.ph = phi i8 [ %i.dt, %bb.z ], [ 0, %bb.y ], [ 0, %bb.u ]
  %.8.i.i272279296.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i16 %.sink, ptr %7, align 2
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i272279296 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i272279296.ph, %thread-pre-split.thread.thread.sink.split ]
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
  %min.iters.check501 = icmp ult i8 %i.eb, 15
  br i1 %min.iters.check501, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ee = and i32 %i.ed, 12
  %n.vec = and i32 %i.ed, 496                     ; 4 uses
  %i.ef = trunc i32 %n.vec to i8
  %i.eg = add i8 %i.dy, %i.ef
  %i.eh = insertelement <8 x i16> <i16 poison, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, i16 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i16> [ %i.eh, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi502 = phi <8 x i16> [ splat (i16 1), %vector.ph ], [ %i.ej, %vector.body ]
  %i.ei = mul <8 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %i.ej = mul <8 x i16> %vec.phi502, splat (i16 10) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ek = icmp eq i32 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !1492

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i16> %i.ej, %i.ei
  %i.el = tail call i16 @llvm.vector.reduce.mul.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ee, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !486

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.el, %vec.epilog.iter.check ], [ %.pre.i.i.i, %vector.main.loop.iter.check ]
  %n.vec503 = and i32 %i.ed, 508                  ; 3 uses
  %i.em = trunc i32 %n.vec503 to i8
  %i.en = add i8 %i.dy, %i.em
  %i.eo = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index504 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next506, %vec.epilog.vector.body ]
  %vec.phi505 = phi <4 x i16> [ %i.eo, %vec.epilog.ph ], [ %i.ep, %vec.epilog.vector.body ]
  %i.ep = mul <4 x i16> %vec.phi505, splat (i16 10) ; 2 uses
  %index.next506 = add nuw i32 %index504, 4       ; 2 uses
  %i.eq = icmp eq i32 %index.next506, %n.vec503
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1493

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.er = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.ep) ; 2 uses
  %cmp.n507 = icmp eq i32 %i.ed, %n.vec503
  br i1 %cmp.n507, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph592 = phi i16 [ %.pre.i.i.i, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.es = phi i16 [ %i.et, %.lr.ph.i.i.i ], [ %.ph592, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i = phi i8 [ %i.eu, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.et = mul i16 %i.es, 10                       ; 2 uses
  %i.eu = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.eu, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1494

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa450 = phi i16 [ %i.er, %vec.epilog.middle.block ], [ %i.el, %middle.block ], [ %i.et, %.lr.ph.i.i.i ] ; 2 uses
  store i16 %.lcssa450, ptr %7, align 2, !tbaa !515
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIsEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ev = phi i16 [ %.lcssa450, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ew = sext i16 %i.ev to i32
  %i.ex = sext i16 %i.j to i32
  %i.ey = sub nsw i32 0, %i.ex
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  %i.fa = icmp ugt i64 %.8.i.i272279296, 1
  %spec.select.i.i = and i1 %i.fa, %i.ez
  br i1 %spec.select.i.i, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.fb = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.fb
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !173
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

bb.ad:                                            ; preds = %bb.ay, %.lr.ph.i85.i
  %.promoted114 = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.is, %bb.ay ] ; 5 uses
  %i.fm = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.it, %bb.ay ] ; 2 uses
  %i.fn = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.iu, %bb.ay ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.ay ] ; 6 uses
  %i.fo = phi i16 [ 0, %.lr.ph.i85.i ], [ %i.iv, %bb.ay ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !173 ; 3 uses
  %i.fr = add i8 %i.fq, -48                       ; 3 uses
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fm, ptr %i.c, align 2
  store i16 %.promoted114, ptr %7, align 2
  %i.ft = icmp eq i8 %i.fq, 46
  br i1 %i.ft, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fu = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fv = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fw = icmp ult i64 %i.fv, %.035153.i
  br i1 %i.fw, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fx = zext i8 %i.fn to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph137.i.i
  %i.fy = phi i16 [ %.promoted114, %.lr.ph137.i.i ], [ %i.gt, %bb.ak ] ; 3 uses
  %i.fz = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gl, %bb.ak ] ; 3 uses
  %i.ga = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gm, %bb.ak ] ; 4 uses
  %i.gb = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gv, %bb.ak ] ; 5 uses
  %i.gc = phi i16 [ %i.fo, %.lr.ph137.i.i ], [ %i.gw, %bb.ak ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fv, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ak ] ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !173 ; 3 uses
  %i.gf = add i8 %i.ge, -48                       ; 2 uses
  %i.gg = icmp ult i8 %i.gf, 10
  br i1 %i.gg, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i, label %bb.al

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ag
  %i.gh = icmp ne i8 %i.gb, %4
  %i.gi = trunc nuw i8 %i.ga to i1
  %or.cond18 = select i1 %i.gh, i1 true, i1 %i.gi ; 2 uses
  %i.gj = icmp samesign ugt i8 %i.ge, 52
  %i.gk = zext i1 %i.gj to i8
  %i.gl = select i1 %or.cond18, i8 %i.fz, i8 %i.gk ; 2 uses
  %i.gm = select i1 %or.cond18, i8 %i.ga, i8 1    ; 2 uses
  %i.gn = zext i8 %i.gb to i32
  %i.go = add nuw nsw i32 %i.gn, %i.fx
  %i.gp = icmp samesign ult i32 %i.go, 4          ; 3 uses
  %i.gq = mul i16 %i.gc, 10
  %i.gr = zext nneg i8 %i.gf to i16
  %i.gs = add i16 %i.gq, %i.gr                    ; 2 uses
  %i.gt = select i1 %i.gp, i16 %i.gs, i16 %i.fy   ; 3 uses
  %i.gu = zext i1 %i.gp to i8
  %i.gv = add nuw i8 %i.gb, %i.gu                 ; 2 uses
  %i.gw = select i1 %i.gp, i16 %i.gs, i16 %i.gc
  %i.gx = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gx, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIsEELb0ELb1EEEbRT_h.exit.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !173
  %i.ha = icmp eq i8 %i.gz, 95
  br i1 %i.ha, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hb = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.hc = icmp eq i64 %i.hb, %.035153.i
  br i1 %i.hc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.hb
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !173
  %i.hf = add i8 %i.he, -48
  %i.hg = icmp ult i8 %i.hf, 10
  br i1 %i.hg, label %bb.ak, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIsEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread
end_hunk_4
begin_hunk_5_@_ZN6duckdb20TryDecimalStringCastIiLc46EEEbPKcmRT_hh:bb.a
  %.185.lcssa.i.i = phi i64 [ %i.aa, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.br = icmp ugt i64 %.185.lcssa.i.i, %i.aa
  %or.cond115.i.i = or i1 %i.z, %i.br
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.l, %bb.e
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.l ]   ; 2 uses
  %i.bt = phi i8 [ 0, %bb.e ], [ %i.af, %bb.l ]   ; 2 uses
  %.promoted.i.i.i.i223 = phi i32 [ %.promoted92, %bb.e ], [ %i.ad, %bb.l ] ; 2 uses
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
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !173
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
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1503

bb.m:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cc = icmp eq i64 %.4.i.i, 1
  br i1 %i.cc, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cd, %.035153.i
  br i1 %.not104.i.i, label %bb.o, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i16 0, ptr %6, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !173
  %i.cg = icmp eq i8 %i.cf, 45
  %i.ch = sub nuw i64 %.035153.i, %i.cd           ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext false)
  br i1 %i.ci, label %.split, label %.split.thread

bb.q:                                             ; preds = %bb.o
  %i.cj = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.ce, i64 noundef %i.ch, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext false)
  br i1 %i.cj, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.p, %bb.q
  %i.ck = load i16, ptr %6, align 2, !tbaa !505
  %i.cl = sext i16 %i.ck to i32
  %i.cm = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIiEELb1EEEbRT_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %i.cm, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

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
  %or.cond516 = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond516, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.t

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
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !173
  %.not106.i.i = icmp eq i8 %i.dc, 95
  br i1 %.not106.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dd = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.de = icmp eq i64 %i.dd, %.035153.i
  br i1 %i.de, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !173
  %i.dh = add i8 %i.dg, -48
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.y, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.v
  %.7.i.i = phi i64 [ %i.cn, %bb.v ], [ %i.dd, %bb.x ] ; 3 uses
  %i.dj = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.dj, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1504

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dl = phi i8 [ %i.bp, %.thread114.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bt, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i32 [ %.promoted.i.i.i.i224, %.thread114.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
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
  br label %.lr.ph.i.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %thread-pre-split
  %.epil.init = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split ], [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod630 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod630)
  %i.dq = sdiv i32 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa575 = phi i32 [ %i.ds, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dq, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i32 %.lcssa575, ptr %7, align 4, !tbaa !521
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dr = phi i32 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.ds, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ds = sdiv i32 %i.dr, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !38

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i
  %i.dt = phi i8 [ %i.dm, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.du = phi i32 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa575, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
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
  %.8.i.i272279296.ph = phi i64 [ %.8.i.i, %bb.z ], [ %.035153.i, %bb.u ], [ %.7.i.i, %bb.y ]
  store i32 %.sink, ptr %7, align 4
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dy = phi i8 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 4 uses
  %.8.i.i272279296 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i272279296.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i32 [ 0, %bb.c ], [ %i.du, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dz = icmp ult i8 %i.dy, %4
  br i1 %i.dz, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.ea = xor i8 %i.dy, -1
  %i.eb = add i8 %4, %i.ea                        ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i8 %i.eb, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader570, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i32 %i.ed, 504                     ; 3 uses
  %i.ee = trunc i32 %n.vec to i8
  %i.ef = add i8 %i.dy, %i.ee
  %i.eg = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.pre.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi501 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ei, %vector.body ]
  %i.eh = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ei = mul <4 x i32> %vec.phi501, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ej = icmp eq i32 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !1505

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader570

.lr.ph.i.i.i.preheader570:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph571 = phi i32 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ek, %middle.block ]
  %.024.i.i.i.ph = phi i8 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader570, %.lr.ph.i.i.i
  %i.el = phi i32 [ %i.em, %.lr.ph.i.i.i ], [ %.ph571, %.lr.ph.i.i.i.preheader570 ]
  %.024.i.i.i = phi i8 [ %i.en, %.lr.ph.i.i.i ], [ %.024.i.i.i.ph, %.lr.ph.i.i.i.preheader570 ]
  %i.em = mul nsw i32 %i.el, 10                   ; 2 uses
  %i.en = add nuw i8 %.024.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.en, %4
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1506

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa450 = phi i32 [ %i.ek, %middle.block ], [ %i.em, %.lr.ph.i.i.i ] ; 2 uses
  store i32 %.lcssa450, ptr %7, align 4, !tbaa !521
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIiEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.eo = phi i32 [ %.lcssa450, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ep = sub nsw i32 0, %i.j
  %i.eq = icmp sgt i32 %i.eo, %i.ep
  %i.er = icmp ugt i64 %.8.i.i272279296, 1
  %spec.select.i.i = and i1 %i.er, %i.eq
  br i1 %spec.select.i.i, label %bb.ba, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.es = icmp eq i8 %i.l, 48
  %or.cond.i = and i1 %.not38.i, %i.es
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !173
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

bb.ad:                                            ; preds = %bb.ay, %.lr.ph.i85.i
  %.promoted114 = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.ij, %bb.ay ] ; 5 uses
  %i.fd = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ik, %bb.ay ] ; 2 uses
  %i.fe = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.il, %bb.ay ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.ay ] ; 6 uses
  %i.ff = phi i32 [ 0, %.lr.ph.i85.i ], [ %i.im, %bb.ay ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !173 ; 3 uses
  %i.fi = add i8 %i.fh, -48                       ; 3 uses
  %i.fj = icmp ult i8 %i.fi, 10
  br i1 %i.fj, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.fd, ptr %i.c, align 2
  store i32 %.promoted114, ptr %7, align 4
  %i.fk = icmp eq i8 %i.fh, 46
  br i1 %i.fk, label %bb.af, label %.thread114.i87.i

bb.af:                                            ; preds = %bb.ae
  %i.fl = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fm = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fn = icmp ult i64 %i.fm, %.035153.i
  br i1 %i.fn, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.af
  %i.fo = zext i8 %i.fe to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph137.i.i
  %i.fp = phi i32 [ %.promoted114, %.lr.ph137.i.i ], [ %i.gk, %bb.ak ] ; 3 uses
  %i.fq = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gc, %bb.ak ] ; 3 uses
  %i.fr = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gd, %bb.ak ] ; 4 uses
  %i.fs = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gm, %bb.ak ] ; 5 uses
  %i.ft = phi i32 [ %i.ff, %.lr.ph137.i.i ], [ %i.gn, %bb.ak ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fm, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ak ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !173 ; 3 uses
  %i.fw = add i8 %i.fv, -48                       ; 2 uses
  %i.fx = icmp ult i8 %i.fw, 10
  br i1 %i.fx, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, label %bb.al

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ag
  %i.fy = icmp ne i8 %i.fs, %4
  %i.fz = trunc nuw i8 %i.fr to i1
  %or.cond18 = select i1 %i.fy, i1 true, i1 %i.fz ; 2 uses
  %i.ga = icmp samesign ugt i8 %i.fv, 52
  %i.gb = zext i1 %i.ga to i8
  %i.gc = select i1 %or.cond18, i8 %i.fq, i8 %i.gb ; 2 uses
  %i.gd = select i1 %or.cond18, i8 %i.fr, i8 1    ; 2 uses
  %i.ge = zext i8 %i.fs to i32
  %i.gf = add nuw nsw i32 %i.ge, %i.fo
  %i.gg = icmp samesign ult i32 %i.gf, 9          ; 3 uses
  %i.gh = mul nsw i32 %i.ft, 10
  %i.gi = zext nneg i8 %i.fw to i32
  %i.gj = add nsw i32 %i.gh, %i.gi                ; 2 uses
  %i.gk = select i1 %i.gg, i32 %i.gj, i32 %i.fp   ; 3 uses
  %i.gl = zext i1 %i.gg to i8
  %i.gm = add nuw i8 %i.fs, %i.gl                 ; 2 uses
  %i.gn = select i1 %i.gg, i32 %i.gj, i32 %i.ft
  %i.go = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.go, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !173
  %i.gr = icmp eq i8 %i.gq, 95
  br i1 %i.gr, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gs = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gt = icmp eq i64 %i.gs, %.035153.i
  br i1 %i.gt, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gs
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !173
  %i.gw = add i8 %i.gv, -48
  %i.gx = icmp ult i8 %i.gw, 10
  br i1 %i.gx, label %bb.ak, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.2.i92.i = phi i64 [ %i.gs, %bb.aj ], [ %i.go, %bb.ah ] ; 3 uses
  %i.gy = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gy, label %bb.ag, label %.thread118.i.i.loopexit, !llvm.loop !1507

bb.al:                                            ; preds = %bb.ag
  store i8 %i.fs, ptr %i.d, align 1
  store i8 %i.fr, ptr %i.e, align 4
  store i8 %i.fq, ptr %i.f, align 1
  store i32 %i.fp, ptr %7, align 4
  %i.gz = icmp ugt i64 %.1136.i.i, %i.fm
  %or.cond.i91.i = or i1 %i.fl, %i.gz
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i, %bb.ak
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIiEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ak ]
  store i32 %i.gk, ptr %7, align 4
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.af
  %i.ha = phi i8 [ 0, %bb.af ], [ %i.gc, %.thread118.i.i.loopexit ]
  %i.hb = phi i8 [ 0, %bb.af ], [ %i.gd, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i228 = phi i32 [ %.promoted114, %bb.af ], [ %i.gk, %.thread118.i.i.loopexit ]
  %i.hc = phi i8 [ 0, %bb.af ], [ %i.gm, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fm, %bb.af ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.hd = icmp ugt i64 %.1.lcssa.i.i, %i.fm
  %or.cond119.i.i = or i1 %i.fl, %i.hd
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIiEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.al, %bb.ae
  %i.he = phi i8 [ 0, %bb.ae ], [ %i.fq, %bb.al ] ; 2 uses
  %i.hf = phi i8 [ 0, %bb.ae ], [ %i.fr, %bb.al ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdb20TryDecimalStringCastIlLc46EEEbPKcmRT_hh:bb.a
  %.185.lcssa.i.i = phi i64 [ %i.z, %bb.f ], [ %.185.lcssa.i.i.ph, %.thread114.i.i.loopexit ] ; 2 uses
  %i.bq = icmp ugt i64 %.185.lcssa.i.i, %i.z
  %or.cond115.i.i = or i1 %i.y, %i.bq
  br i1 %or.cond115.i.i, label %.thread116.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread110.i.i:                                   ; preds = %bb.n, %bb.e
  %i.br = phi i8 [ 0, %bb.e ], [ %i.ad, %bb.n ]   ; 2 uses
  %i.bs = phi i8 [ 0, %bb.e ], [ %i.ae, %bb.n ]   ; 2 uses
  %.promoted.i.i.i.i223 = phi i64 [ %.promoted92, %bb.e ], [ %i.ac, %bb.n ] ; 2 uses
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
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !173
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
  br i1 %exitcond.not.i.i, label %.thread116.i.i, label %.lr.ph135.i.i, !llvm.loop !1514

bb.o:                                             ; preds = %.thread110.i.i, %.thread110.i.i
  %i.cb = icmp eq i64 %.4.i.i, 1
  br i1 %i.cb, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = add nuw i64 %.4.i.i, 1                  ; 3 uses
  %.not104.i.i = icmp ult i64 %i.cc, %.035153.i
  br i1 %.not104.i.i, label %bb.q, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i16 0, ptr %6, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.cc ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !173
  %i.cf = icmp eq i8 %i.ce, 45
  %i.cg = sub nuw i64 %.035153.i, %i.cc           ; 2 uses
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cd, i64 noundef %i.cg, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext false)
  br i1 %i.ch, label %.split, label %.split.thread

bb.s:                                             ; preds = %bb.q
  %i.ci = call fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr noundef nonnull readonly %i.cd, i64 noundef %i.cg, ptr noundef nonnull align 2 dereferenceable(2) %6, i1 noundef zeroext false)
  br i1 %i.ci, label %.split, label %.split.thread

.split.thread:                                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.split:                                           ; preds = %bb.r, %bb.s
  %i.cj = load i16, ptr %6, align 2, !tbaa !505
  %i.ck = sext i16 %i.cj to i32
  %i.cl = call noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIlEELb1EEEbRT_i(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %i.cl, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

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
  %or.cond501 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond501, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.v

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
  %i.db = load i8, ptr %i.da, align 1, !tbaa !173
  %.not106.i.i = icmp eq i8 %i.db, 95
  br i1 %.not106.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dc = add i64 %.084130.i.i, 2                 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, %.035153.i
  br i1 %i.dd, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !173
  %i.dg = add i8 %i.df, -48
  %i.dh = icmp ult i8 %i.dg, 10
  br i1 %i.dh, label %bb.aa, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.7.i.i = phi i64 [ %i.cm, %bb.x ], [ %i.dc, %bb.z ] ; 3 uses
  %i.di = icmp ult i64 %.7.i.i, %.035153.i
  br i1 %i.di, label %bb.d, label %thread-pre-split.thread.thread.sink.split, !llvm.loop !1515

.thread116.i.i:                                   ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i, %.thread114.i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i
  %i.dj = phi i8 [ %i.bn, %.thread114.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.br, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %i.dk = phi i8 [ %i.bo, %.thread114.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %i.bs, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ]
  %.promoted.i.i.i.i = phi i64 [ %.promoted.i.i.i.i224, %.thread114.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i.i ], [ %.promoted.i.i.i.i223, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit107.i.i ] ; 3 uses
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
  %lcmp.mod606 = trunc i8 %narrow.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod606)
  %i.dp = sdiv i64 %.epil.init, 10
  br label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i

_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i: ; preds = %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.lcssa551 = phi i64 [ %i.dr, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa ], [ %i.dp, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  store i64 %.lcssa551, ptr %7, align 8, !tbaa !526
  br label %thread-pre-split.thread

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %thread-pre-split.new
  %i.dq = phi i64 [ %.promoted.i.i.i.i, %thread-pre-split.new ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %thread-pre-split.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.dr = sdiv i64 %i.dq, 100                     ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !40

thread-pre-split.thread:                          ; preds = %.thread116.i.i, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i
  %i.ds = phi i8 [ %i.dl, %.thread116.i.i ], [ %4, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
  %i.dt = phi i64 [ %.promoted.i.i.i.i, %.thread116.i.i ], [ %.lcssa551, %_ZN6duckdb20DecimalCastOperation25TruncateExcessiveDecimalsINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i.i ] ; 2 uses
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
  %.8.i.i272279296.ph = phi i64 [ %.8.i.i, %bb.ab ], [ %.035153.i, %bb.w ], [ %.7.i.i, %bb.aa ]
  store i64 %.sink, ptr %7, align 8
  br label %thread-pre-split.thread.thread

thread-pre-split.thread.thread:                   ; preds = %thread-pre-split.thread.thread.sink.split, %bb.c, %thread-pre-split.thread
  %i.dx = phi i8 [ 0, %bb.c ], [ %i.ds, %thread-pre-split.thread ], [ %.ph, %thread-pre-split.thread.thread.sink.split ] ; 5 uses
  %.8.i.i272279296 = phi i64 [ 1, %bb.c ], [ %.8.i.i, %thread-pre-split.thread ], [ %.8.i.i272279296.ph, %thread-pre-split.thread.thread.sink.split ]
  %.pre.i.i.i = phi i64 [ 0, %bb.c ], [ %i.dt, %thread-pre-split.thread ], [ %.sink, %thread-pre-split.thread.thread.sink.split ] ; 3 uses
  %i.dy = icmp ult i8 %i.dx, %4
  br i1 %i.dy, label %.lr.ph.i.i.i.preheader, label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %thread-pre-split.thread.thread
  %i.dz = sub nuw i8 %4, %i.dx
  %xtraiter607 = and i8 %i.dz, 7                  ; 2 uses
  %lcmp.mod608.not = icmp eq i8 %xtraiter607, 0
  br i1 %lcmp.mod608.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.ea = phi i64 [ %i.eb, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ]
  %.024.i.i.i.prol = phi i8 [ %i.ec, %.lr.ph.i.i.i.prol ], [ %i.dx, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i8 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.eb = mul nsw i64 %i.ea, 10                   ; 3 uses
  %i.ec = add nuw i8 %.024.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i8 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i8 %prol.iter.next, %xtraiter607
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1516

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa550.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.unr609 = phi i64 [ %.pre.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.prol ]
  %.024.i.i.i.unr = phi i8 [ %i.dx, %.lr.ph.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.prol ]
  %i.ed = sub i8 %i.dx, %4
  %i.ee = icmp ugt i8 %i.ed, -8
  br i1 %i.ee, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ef = phi i64 [ %i.eg, %.lr.ph.i.i.i ], [ %.unr609, %.lr.ph.i.i.i.prol.loopexit ]
  %.024.i.i.i = phi i8 [ %i.eh, %.lr.ph.i.i.i ], [ %.024.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.eg = mul nsw i64 %i.ef, 100000000            ; 2 uses
  %i.eh = add nuw i8 %.024.i.i.i, 8               ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.eh, %4
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !41

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa550 = phi i64 [ %.lcssa550.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.eg, %.lr.ph.i.i.i ] ; 2 uses
  store i64 %.lcssa550, ptr %7, align 8, !tbaa !526
  br label %_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i

_ZN6duckdb20DecimalCastOperation8FinalizeINS_15DecimalCastDataIlEELb1EEEbRT_.exit.i.i: ; preds = %._crit_edge.i.i.i, %thread-pre-split.thread.thread
  %i.ei = phi i64 [ %.lcssa550, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %thread-pre-split.thread.thread ]
  %i.ej = sub nsw i64 0, %i.i
  %i.ek = icmp sgt i64 %i.ei, %i.ej
  %i.el = icmp ugt i64 %.8.i.i272279296, 1
  %spec.select.i.i = and i1 %i.el, %i.ek
  br i1 %spec.select.i.i, label %bb.be, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ac:                                            ; preds = %.lr.ph.i
  %.not38.i = icmp ne i64 %.035153.i, 1
  %i.em = icmp eq i8 %i.k, 48
  %or.cond.i = and i1 %.not38.i, %i.em
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %.034154.i, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !173
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

bb.af:                                            ; preds = %bb.bc, %.lr.ph.i85.i
  %.promoted114 = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.id, %bb.bc ] ; 5 uses
  %i.ex = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.ie, %bb.bc ] ; 2 uses
  %i.ey = phi i8 [ 0, %.lr.ph.i85.i ], [ %i.if, %bb.bc ] ; 4 uses
  %.0134.i.i = phi i64 [ %.088.i.i, %.lr.ph.i85.i ], [ %.7.i94.i, %bb.bc ] ; 6 uses
  %i.ez = phi i64 [ 0, %.lr.ph.i85.i ], [ %i.ig, %bb.bc ] ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.0134.i.i
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !173 ; 3 uses
  %i.fc = add i8 %i.fb, -48                       ; 3 uses
  %i.fd = icmp ult i8 %i.fc, 10
  br i1 %i.fd, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %i.ex, ptr %i.c, align 2
  store i64 %.promoted114, ptr %7, align 8
  %i.fe = icmp eq i8 %i.fb, 46
  br i1 %i.fe, label %bb.ah, label %.thread114.i87.i

bb.ah:                                            ; preds = %bb.ag
  %i.ff = icmp ugt i64 %.0134.i.i, %.088.i.i      ; 2 uses
  %i.fg = add nuw i64 %.0134.i.i, 1               ; 5 uses
  %i.fh = icmp ult i64 %i.fg, %.035153.i
  br i1 %i.fh, label %.lr.ph137.i.i, label %.thread118.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ah
  %i.fi = zext i8 %i.ey to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph137.i.i
  %i.fj = phi i64 [ %.promoted114, %.lr.ph137.i.i ], [ %i.gf, %bb.ao ] ; 3 uses
  %i.fk = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fw, %bb.ao ] ; 3 uses
  %i.fl = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.fx, %bb.ao ] ; 4 uses
  %i.fm = phi i8 [ 0, %.lr.ph137.i.i ], [ %i.gg, %bb.ao ] ; 6 uses
  %i.fn = phi i64 [ %i.ez, %.lr.ph137.i.i ], [ %i.gh, %bb.ao ] ; 2 uses
  %.1136.i.i = phi i64 [ %i.fg, %.lr.ph137.i.i ], [ %.2.i92.i, %bb.ao ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %.1136.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !173 ; 3 uses
  %i.fq = add i8 %i.fp, -48                       ; 2 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.fs = icmp ne i8 %i.fm, %4
  %i.ft = trunc nuw i8 %i.fl to i1
  %or.cond18 = select i1 %i.fs, i1 true, i1 %i.ft ; 2 uses
  %i.fu = icmp samesign ugt i8 %i.fp, 52
  %i.fv = zext i1 %i.fu to i8
  %i.fw = select i1 %or.cond18, i8 %i.fk, i8 %i.fv ; 2 uses
  %i.fx = select i1 %or.cond18, i8 %i.fl, i8 1    ; 2 uses
  %i.fy = zext i8 %i.fm to i32
  %i.fz = add nuw nsw i32 %i.fy, %i.fi
  %i.ga = icmp samesign ugt i32 %i.fz, 17
  br i1 %i.ga, label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = add nuw i8 %i.fm, 1
  %i.gc = mul nsw i64 %i.fn, 10
  %i.gd = zext nneg i8 %i.fq to i64
  %i.ge = add nsw i64 %i.gc, %i.gd                ; 2 uses
  br label %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i

_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i: ; preds = %bb.ak, %bb.aj
  %i.gf = phi i64 [ %i.ge, %bb.ak ], [ %i.fj, %bb.aj ] ; 3 uses
  %i.gg = phi i8 [ %i.gb, %bb.ak ], [ %i.fm, %bb.aj ] ; 2 uses
  %i.gh = phi i64 [ %i.ge, %bb.ak ], [ %i.fn, %bb.aj ]
  %i.gi = add nuw i64 %.1136.i.i, 1               ; 3 uses
  %.not107.i.i = icmp eq i64 %i.gi, %.035153.i
  br i1 %.not107.i.i, label %.thread118.i.i.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !173
  %i.gl = icmp eq i8 %i.gk, 95
  br i1 %i.gl, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gm = add i64 %.1136.i.i, 2                   ; 3 uses
  %i.gn = icmp eq i64 %i.gm, %.035153.i
  br i1 %i.gn, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.go = getelementptr inbounds nuw i8, ptr %.034154.i, i64 %i.gm
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !173
  %i.gq = add i8 %i.gp, -48
  %i.gr = icmp ult i8 %i.gq, 10
  br i1 %i.gr, label %bb.ao, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.2.i92.i = phi i64 [ %i.gm, %bb.an ], [ %i.gi, %bb.al ] ; 3 uses
  %i.gs = icmp ult i64 %.2.i92.i, %.035153.i
  br i1 %i.gs, label %bb.ai, label %.thread118.i.i.loopexit, !llvm.loop !1517

bb.ap:                                            ; preds = %bb.ai
  store i8 %i.fm, ptr %i.d, align 1
  store i8 %i.fl, ptr %i.e, align 4
  store i8 %i.fk, ptr %i.f, align 1
  store i64 %i.fj, ptr %7, align 8
  %i.gt = icmp ugt i64 %.1136.i.i, %i.fg
  %or.cond.i91.i = or i1 %i.ff, %i.gt
  br i1 %or.cond.i91.i, label %.thread114.i87.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread118.i.i.loopexit:                          ; preds = %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i, %bb.ao
  %.1.lcssa.i.i.ph = phi i64 [ %.035153.i, %_ZN6duckdb20DecimalCastOperation13HandleDecimalINS_15DecimalCastDataIlEELb0ELb1EEEbRT_h.exit.i.i ], [ %.2.i92.i, %bb.ao ]
  store i64 %i.gf, ptr %7, align 8
  br label %.thread118.i.i

.thread118.i.i:                                   ; preds = %.thread118.i.i.loopexit, %bb.ah
  %i.gu = phi i8 [ 0, %bb.ah ], [ %i.fw, %.thread118.i.i.loopexit ]
  %i.gv = phi i8 [ 0, %bb.ah ], [ %i.fx, %.thread118.i.i.loopexit ]
  %.promoted.i.i.i71.i228 = phi i64 [ %.promoted114, %bb.ah ], [ %i.gf, %.thread118.i.i.loopexit ]
  %i.gw = phi i8 [ 0, %bb.ah ], [ %i.gg, %.thread118.i.i.loopexit ]
  %.1.lcssa.i.i = phi i64 [ %i.fg, %bb.ah ], [ %.1.lcssa.i.i.ph, %.thread118.i.i.loopexit ] ; 2 uses
  %i.gx = icmp ugt i64 %.1.lcssa.i.i, %i.fg
  %or.cond119.i.i = or i1 %i.ff, %i.gx
  br i1 %or.cond119.i.i, label %.thread120.i.i, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread

.thread114.i87.i:                                 ; preds = %bb.ap, %bb.ag
  %i.gy = phi i8 [ 0, %bb.ag ], [ %i.fk, %bb.ap ] ; 2 uses
  %i.gz = phi i8 [ 0, %bb.ag ], [ %i.fl, %bb.ap ] ; 2 uses
  %.promoted.i.i.i71.i227 = phi i64 [ %.promoted114, %bb.ag ], [ %i.fj, %bb.ap ] ; 2 uses
  %i.ha = phi i8 [ 0, %bb.ag ], [ %i.fm, %bb.ap ] ; 2 uses
  %i.hb = phi i8 [ %i.fb, %bb.ag ], [ %i.fp, %bb.ap ]
  %.4.i88.i = phi i64 [ %.0134.i.i, %bb.ag ], [ %.1136.i.i, %bb.ap ] ; 3 uses
  switch i8 %i.hb, label %_ZN6duckdbL14TryIntegerCastINS_15DecimalCastDataIlEELb1ELb1ENS_20DecimalCastOperationELb0ELc46EEEbPKcmRT_b.exit.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.i89.i
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIiSaIiEEaSERKS1_:bb.a
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !564
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !79
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !79
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.x, %bb.p ], [ 4, %bb.q ]
  %i.ae = phi ptr [ %.pre25, %bb.o ], [ %i.v, %bb.p ], [ %i.v, %bb.q ] ; 2 uses
  %i.af = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi32 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %.pre-phi34, %i.ah              ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.r, label %bb.s, !prof !409

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ag, i64 %i.ai, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !79
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !79
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !286
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !564
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2, i1 noundef zeroext %3) unnamed_addr #24 {
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
  %i.d = load i8, ptr %i.c, align 1, !tbaa !173   ; 2 uses
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
  br i1 %.not.us, label %.critedge, label %bb.c, !prof !220

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.06093.us, 1                ; 2 uses
  %i.k = mul i16 %i.b, 10
  %i.l = sub i16 %i.k, %i.h                       ; 2 uses
  store i16 %i.l, ptr %2, align 2, !tbaa !505
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread84, label %.lr.ph.split.us, !llvm.loop !31

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.06093 = phi i64 [ %.7, %bb.l ], [ 1, %.lr.ph ] ; 4 uses
  %i.m = phi i16 [ %i.al, %bb.l ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.06093
  %i.o = load i8, ptr %i.n, align 1, !tbaa !173   ; 2 uses
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
  %i.w = load i8, ptr %i.v, align 1, !tbaa !173   ; 2 uses
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
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !173
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
  br i1 %exitcond115.not, label %.thread84, label %.lr.ph96, !llvm.loop !32

bb.g:                                             ; preds = %.lr.ph.split
  %i.ag = add nuw i64 %.06093, 1                  ; 3 uses
  %i.ah = sext i16 %i.m to i32
  %i.ai = zext nneg i8 %i.p to i16                ; 2 uses
  %.lhs.trunc.i = sub nuw i16 -32768, %i.ai
  %i.aj = udiv i16 %.lhs.trunc.i, 10
  %.zext.i = zext nneg i16 %i.aj to i32
  %.neg.i = sub nsw i32 0, %.zext.i
  %.not = icmp sgt i32 %.neg.i, %i.ah
  br i1 %.not, label %.critedge, label %bb.h, !prof !220

bb.h:                                             ; preds = %bb.g
  %i.ak = mul i16 %i.m, 10
  %i.al = sub i16 %i.ak, %i.ai                    ; 2 uses
  store i16 %i.al, ptr %2, align 2, !tbaa !505
  %.not76 = icmp eq i64 %i.ag, %1
  br i1 %.not76, label %.thread84, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !tbaa !173
  %.not98 = icmp eq i8 %i.an, 95
  br i1 %.not98, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = add i64 %.06093, 2                      ; 3 uses
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !173
  %i.as = add i8 %i.ar, -48
  %i.at = icmp ult i8 %i.as, 10
  br i1 %i.at, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.7 = phi i64 [ %i.ag, %bb.i ], [ %i.ao, %bb.k ] ; 3 uses
  %i.au = icmp ult i64 %.7, %1
  br i1 %i.au, label %.lr.ph.split, label %.thread84, !llvm.loop !31

.thread84:                                        ; preds = %bb.h, %bb.l, %bb.c, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78, %bb.a, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread82
  %.8 = phi i64 [ %i.t, %.thread82 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78 ], [ %i.aa, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ 1, %bb.a ], [ %1, %bb.c ], [ %.7, %bb.l ], [ %1, %bb.h ]
  %i.av = icmp ugt i64 %.8, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.j, %bb.g, %bb.b, %.lr.ph96, %bb.f, %.thread80, %.thread82, %bb.d, %.thread84
  %.365 = phi i1 [ false, %bb.b ], [ false, %.thread80 ], [ false, %bb.f ], [ false, %bb.d ], [ %i.av, %.thread84 ], [ false, %.thread82 ], [ false, %.lr.ph96 ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.k ]
  ret i1 %.365
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2, i1 noundef zeroext %3) unnamed_addr #24 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !173
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !173   ; 2 uses
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %bb.b, label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i.us = xor i16 %i.i, 32766
  %i.j = udiv i16 %.lhs.trunc.i.us, 10
  %.not.us = icmp slt i16 %i.j, %i.d
  br i1 %.not.us, label %.critedge, label %bb.c, !prof !220

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.099.us, 1                      ; 2 uses
  %i.l = mul i16 %i.d, 10
  %i.m = add i16 %i.l, %i.i                       ; 2 uses
  store i16 %i.m, ptr %2, align 2, !tbaa !505
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread90, label %.lr.ph.split.us, !llvm.loop !33

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.099 = phi i64 [ %.7, %bb.l ], [ %.mux, %.lr.ph ] ; 4 uses
  %i.n = phi i16 [ %i.al, %bb.l ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.099
  %i.p = load i8, ptr %i.o, align 1, !tbaa !173   ; 2 uses
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
  %i.x = load i8, ptr %i.w, align 1, !tbaa !173   ; 2 uses
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
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !173
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
  br i1 %exitcond121.not, label %.thread90, label %.lr.ph102, !llvm.loop !34

bb.g:                                             ; preds = %.lr.ph.split
  %i.ah = add nuw i64 %.099, 1                    ; 3 uses
  %i.ai = zext nneg i8 %i.q to i16                ; 2 uses
  %.lhs.trunc.i = xor i16 %i.ai, 32766
  %i.aj = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.aj, %i.n
  br i1 %.not, label %.critedge, label %bb.h, !prof !220

bb.h:                                             ; preds = %bb.g
  %i.ak = mul i16 %i.n, 10
  %i.al = add i16 %i.ak, %i.ai                    ; 2 uses
  store i16 %i.al, ptr %2, align 2, !tbaa !505
  %.not80 = icmp eq i64 %i.ah, %1
  br i1 %.not80, label %.thread90, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.an = load i8, ptr %i.am, align 1, !tbaa !173
  %.not104 = icmp eq i8 %i.an, 95
  br i1 %.not104, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = add i64 %.099, 2                        ; 3 uses
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !173
  %i.as = add i8 %i.ar, -48
  %i.at = icmp ult i8 %i.as, 10
  br i1 %i.at, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k, %bb.i
  %.7 = phi i64 [ %i.ah, %bb.i ], [ %i.ao, %bb.k ] ; 3 uses
  %i.au = icmp ult i64 %.7, %1
  br i1 %i.au, label %.lr.ph.split, label %.thread90, !llvm.loop !33

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
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = icmp slt i16 %1, 0
  br i1 %i.d, label %.preheader, label %.preheader76

.preheader:                                       ; preds = %bb.a
  %.promoted = load i64, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = add nsw i16 %.042140, 1                  ; 2 uses
  %exitcond96.not = icmp eq i16 %i.f, 0
  br i1 %exitcond96.not, label %split, label %bb.c, !llvm.loop !1758

bb.c:                                             ; preds = %.preheader, %bb.b
  %.042140 = phi i16 [ %1, %.preheader ], [ %i.f, %bb.b ]
  %i.g = phi i64 [ %.promoted, %.preheader ], [ %i.i, %bb.b ] ; 3 uses
  %i.h = srem i64 %i.g, 10                        ; 5 uses
  %i.i = sdiv i64 %i.g, 10                        ; 4 uses
  %.off = add i64 %i.g, 9
  %i.j = icmp ult i64 %.off, 19
  %i.k = icmp eq i64 %i.h, 0
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %split.thread.loopexit, label %bb.b, !llvm.loop !1758

split:                                            ; preds = %bb.b
  store i64 %i.h, ptr %i.e, align 8, !tbaa !507
  store i64 %i.i, ptr %0, align 8, !tbaa !509
end_hunk_7
begin_hunk_8_@_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaERNS_7decimalE:bb.a
  %niter302.next.1 = add i64 %niter302, 2         ; 2 uses
  %niter302.ncmp.1 = icmp eq i64 %niter302.next.1, %unroll_iter301
  br i1 %niter302.ncmp.1, label %._crit_edge.i104.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !71

bb.am:                                            ; preds = %._crit_edge.i104
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.hm = zext nneg i32 %i.gj to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !173
  %.fr.i = freeze i8 %i.ho                        ; 2 uses
  %i.hp = icmp eq i8 %.fr.i, 5
  %i.hq = add nuw nsw i32 %i.gj, 1
  %i.hr = icmp eq i32 %i.hq, %i.gh
  %or.cond.i = select i1 %i.hp, i1 %i.hr, i1 false
  br i1 %or.cond.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !669, !range !219, !noundef !211
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %.thread35.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not42.i, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit, label %.split.i

.split.i:                                         ; preds = %bb.ao
  %i.hv = getelementptr i8, ptr %i.hn, i64 -1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !173
  %.fr39.i = freeze i8 %i.hw
  %i.hx = trunc i8 %.fr39.i to i1
  br i1 %i.hx, label %.thread35.i, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit

bb.ap:                                            ; preds = %bb.am
  %i.hy = icmp ugt i8 %.fr.i, 4
  br i1 %i.hy, label %.thread35.i, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit

.thread35.i:                                      ; preds = %bb.ap, %.split.i, %bb.an
  %i.hz = add i64 %.028.lcssa.i, 1
  br label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit

.thread142:                                       ; preds = %bb.ae, %bb.ad
  %i.ia = add nsw i32 %.5.lcssa, 127
  br label %bb.ar

_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit: ; preds = %._crit_edge.i104, %bb.ao, %.split.i, %bb.ap, %.thread35.i
  %.029.i = phi i64 [ %.028.lcssa.i, %.split.i ], [ %.028.lcssa.i, %._crit_edge.i104 ], [ %.028.lcssa.i, %bb.ao ], [ %i.hz, %.thread35.i ], [ %.028.lcssa.i, %bb.ap ] ; 2 uses
  %i.ib = icmp ugt i64 %.029.i, 16777215
  br i1 %i.ib, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140, label %bb.aq

_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140: ; preds = %bb.af, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit
  tail call void @_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj(ptr noundef nonnull align 4 dereferenceable(778) %0, i32 noundef 1)
  %i.ic = add nsw i32 %.5.lcssa, 1
  %i.id = tail call noundef i64 @_ZN17duckdb_fast_float6detail5roundERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %0)
  %.not54.not = icmp eq i32 %.5.lcssa, 127
  br i1 %.not54.not, label %.thread121, label %bb.aq

bb.aq:                                            ; preds = %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit
  %.6 = phi i32 [ %i.ic, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %.5.lcssa, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit ]
  %.0 = phi i64 [ %i.id, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %.029.i, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit ] ; 3 uses
  %i.ie = add nsw i32 %.6, 127                    ; 2 uses
  %i.if = icmp ult i64 %.0, 8388608
  br i1 %i.if, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.thread142, %bb.aq
  %i.ig = phi i32 [ %i.ia, %.thread142 ], [ %i.ie, %bb.aq ]
  %.0147 = phi i64 [ 0, %.thread142 ], [ %.0, %bb.aq ]
  %i.ih = add nsw i32 %i.ig, -1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0146 = phi i64 [ %.0147, %bb.ar ], [ %.0, %bb.aq ]
  %.sroa.8.4 = phi i32 [ %i.ih, %bb.ar ], [ %i.ie, %bb.aq ]
  %i.ii = and i64 %.0146, 8388607
  br label %.thread121

.thread121:                                       ; preds = %bb.s, %bb.as, %._crit_edge, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140, %bb.c, %bb.b, %bb.a
  %.sroa.8.6 = phi i32 [ 255, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.b ], [ 255, %bb.c ], [ 255, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %.sroa.8.4, %bb.as ], [ 255, %bb.s ]
  %.sroa.0.4 = phi i64 [ 0, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %i.ii, %bb.as ], [ 0, %bb.s ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.8.6, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb1ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2) unnamed_addr #24 {
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
  %i.d = load i8, ptr %i.c, align 1, !tbaa !173   ; 3 uses
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
  %i.l = load i8, ptr %i.k, align 1, !tbaa !173   ; 2 uses
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
  %i.t = load i8, ptr %i.s, align 1, !tbaa !173
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
  br i1 %exitcond.not, label %.thread84, label %.lr.ph94, !llvm.loop !1787

bb.e:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.06093, 1                   ; 3 uses
  %i.w = sext i16 %i.b to i32
  %i.x = zext nneg i8 %i.e to i16                 ; 2 uses
  %.lhs.trunc.i = sub nuw i16 -32768, %i.x
  %i.y = udiv i16 %.lhs.trunc.i, 10
  %.zext.i = zext nneg i16 %i.y to i32
  %.neg.i = sub nsw i32 0, %.zext.i
  %.not = icmp sgt i32 %.neg.i, %i.w
  br i1 %.not, label %.critedge, label %bb.f, !prof !220

bb.f:                                             ; preds = %bb.e
  %i.z = mul i16 %i.b, 10
  %i.aa = sub i16 %i.z, %i.x                      ; 2 uses
  store i16 %i.aa, ptr %2, align 2, !tbaa !505
  %.not76 = icmp eq i64 %i.v, %1
  br i1 %.not76, label %.thread84, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !173
  %.not77 = icmp eq i8 %i.ac, 95
  br i1 %.not77, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.06093, 2                      ; 3 uses
  %i.ae = icmp eq i64 %i.ad, %1
  br i1 %i.ae, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !173
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.g
  %.7 = phi i64 [ %i.v, %bb.g ], [ %i.ad, %bb.i ] ; 3 uses
  %i.aj = icmp ult i64 %.7, %1
  br i1 %i.aj, label %.lr.ph, label %.thread84, !llvm.loop !1788

.thread84:                                        ; preds = %bb.f, %bb.j, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78, %bb.a, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread82
  %.8 = phi i64 [ %i.i, %.thread82 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit78 ], [ %i.p, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ 1, %bb.a ], [ %.7, %bb.j ], [ %1, %bb.f ]
  %i.ak = icmp ugt i64 %.8, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.i, %.lr.ph94, %bb.d, %.thread80, %.thread82, %.thread84
  %.365 = phi i1 [ false, %.lr.ph94 ], [ false, %.thread80 ], [ false, %bb.d ], [ false, %.thread82 ], [ %i.ak, %.thread84 ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.e ]
  ret i1 %.365
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2) unnamed_addr #24 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !173
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !173   ; 3 uses
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
  %i.n = load i8, ptr %i.m, align 1, !tbaa !173   ; 2 uses
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
  %i.v = load i8, ptr %i.u, align 1, !tbaa !173
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
  br i1 %exitcond.not, label %.thread88, label %.lr.ph98, !llvm.loop !1789

bb.e:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.097, 1                     ; 3 uses
  %i.y = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i = xor i16 %i.y, 32766
  %i.z = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.z, %i.d
  br i1 %.not, label %.critedge, label %bb.f, !prof !220

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i16 %i.d, 10
  %i.ab = add i16 %i.aa, %i.y                     ; 2 uses
  store i16 %i.ab, ptr %2, align 2, !tbaa !505
  %.not80 = icmp eq i64 %i.x, %1
  br i1 %.not80, label %.thread88, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !173
  %.not81 = icmp eq i8 %i.ad, 95
  br i1 %.not81, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = add i64 %.097, 2                        ; 3 uses
  %i.af = icmp eq i64 %i.ae, %1
  br i1 %i.af, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !173
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.g
  %.7 = phi i64 [ %i.x, %bb.g ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ak = icmp ult i64 %.7, %1
  br i1 %i.ak, label %.lr.ph, label %.thread88, !llvm.loop !1790

.thread88:                                        ; preds = %bb.f, %bb.j, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82, %bb.a, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %.thread86
  %.8 = phi i64 [ %i.k, %.thread86 ], [ %1, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit82 ], [ %i.r, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ %.064, %bb.a ], [ %.7, %bb.j ], [ %1, %bb.f ]
  %i.al = icmp ugt i64 %.8, %.064
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.i, %bb.h, %.lr.ph98, %bb.d, %.thread84, %.thread86, %.thread88
  %.368 = phi i1 [ false, %.lr.ph98 ], [ false, %.thread84 ], [ false, %bb.d ], [ false, %.thread86 ], [ %i.al, %.thread88 ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.e ]
  ret i1 %.368
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb20DecimalCastOperation14HandleExponentINS_15DecimalCastDataIsEELb1EEEbRT_i(ptr noundef nonnull align 2 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !670   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !517   ; 9 uses
  %i.e = icmp ule i8 %i.b, %i.d
  %narrow = sub nuw i8 %i.b, %i.d                 ; 2 uses
  %narrow49 = tail call i8 @llvm.usub.sat.i8(i8 %i.b, i8 %i.d) ; 2 uses
  %i.f = zext i8 %narrow49 to i32                 ; 2 uses
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.h, align 1, !tbaa !671
  %i.i = icmp samesign ult i32 %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw i32 %1 to i8
  %i.k = sub i8 %narrow49, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.k, ptr %i.l, align 2, !tbaa !672
  br label %._crit_edge67

bb.d:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i32 %1, %i.f
  br label %._crit_edge67

bb.e:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %1, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br i1 %i.n, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i8, ptr %i.o, align 1, !tbaa !671
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 2, ptr %i.o, align 1, !tbaa !671
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.p = phi i8 [ 2, %bb.f ], [ %.pre, %._crit_edge ] ; 3 uses
  %.not.i = icmp eq i8 %i.p, 1                    ; 3 uses
  %brmerge = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %brmerge, label %._crit_edge67, label %bb.h

._crit_edge67:                                    ; preds = %bb.d, %bb.c, %bb.g
  %.not.i83 = phi i1 [ %.not.i, %bb.g ], [ true, %bb.c ], [ true, %bb.d ]
  %.03781 = phi i32 [ %1, %bb.g ], [ 0, %bb.c ], [ %i.m, %bb.d ]
  %i.q = phi i8 [ %i.p, %bb.g ], [ 1, %bb.c ], [ 1, %bb.d ]
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre69 = load i8, ptr %.phi.trans.insert68, align 2, !tbaa !672
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %narrow, ptr %i.r, align 2, !tbaa !672
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge67, %bb.h
  %.not.i82 = phi i1 [ %.not.i83, %._crit_edge67 ], [ %.not.i, %bb.h ]
  %.03780 = phi i32 [ %.03781, %._crit_edge67 ], [ %1, %bb.h ] ; 4 uses
end_hunk_8
