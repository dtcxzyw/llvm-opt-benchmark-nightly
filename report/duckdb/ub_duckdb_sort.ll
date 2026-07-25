inline.NumInlined: 29521
inline.NumDeleted: 7045
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE1EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
  %i.ce = icmp ult i64 %i.cd, 9
  br i1 %i.ce, label %..thread_crit_edge, label %.critedge10

..thread_crit_edge:                               ; preds = %bb.g
  %.pre73 = load i64, ptr %i.c, align 8, !tbaa !1231
  %.pre74 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit
  %i.cf = phi i64 [ %.pre74, %..thread_crit_edge ], [ %i.ad, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit ] ; 2 uses
  %i.cg = phi i64 [ %.pre73, %..thread_crit_edge ], [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit ] ; 2 uses
  %i.ch = phi i64 [ %i.cb, %..thread_crit_edge ], [ %i.af, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit ] ; 2 uses
  %.1659 = phi i64 [ %i.cd, %..thread_crit_edge ], [ %.0568, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit ]
  %i.ci = add i64 %.sroa.15.067, 1                ; 2 uses
  %i.cj = icmp eq i64 %i.ci, %i.ch                ; 2 uses
  %i.ck = zext i1 %i.cj to i64
  %i.cl = add i64 %.sroa.849.066, %i.ck           ; 2 uses
  %i.cm = select i1 %i.cj, i64 0, i64 %i.ci       ; 2 uses
  %.not.i = icmp eq i64 %i.cl, %i.cg
  %i.cn = icmp eq i64 %i.cm, %i.cf
  %.not60 = select i1 %.not.i, i1 %i.cn, i1 false
  br i1 %.not60, label %.critedge10, label %bb.d, !llvm.loop !2030

.critedge10:                                      ; preds = %.thread, %bb.g, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ], [ true, %.thread ], [ false, %bb.g ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE1EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %.not80 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not80, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph78, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit
  %.01877 = phi i64 [ 0, %.lr.ph78 ], [ %i.bd, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01877
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1231, !noalias !2031 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1233, !noalias !2031
  %i.j = load ptr, ptr %0, align 8, !tbaa !1234, !noalias !2031 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !2031 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !2031
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01877
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1231, !noalias !2034 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1233, !noalias !2034
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1234, !noalias !2034 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !2034 ; 3 uses
  %.not.i.i20 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i20, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !2034
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit, %bb.d
  %.05.i21 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i22 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i21
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0.i22 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aw, align 8
  %i.bc = load i64, ptr %i.bb, align 8
  store i64 %i.bc, ptr %i.aw, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.bb, align 8
  %i.bd = add nuw i64 %.01877, 1                  ; 2 uses
  %exitcond81.not = icmp eq i64 %i.bd, %4
  br i1 %exitcond81.not, label %.loopexit, label %bb.b, !llvm.loop !2037

bb.e:                                             ; preds = %bb.a
  br i1 %.not80, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load i8, ptr %2, align 1, !tbaa !525
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1231, !noalias !2038 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1233, !noalias !2038
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1234, !noalias !2038 ; 3 uses
  %i.bl = add i64 %i.bj, %i.bf                    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !168, !noalias !2038 ; 3 uses
  %.not.i.i23 = icmp ult i64 %i.bl, %i.bn
  br i1 %.not.i.i23, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit26, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = mul i64 %i.bn, %i.bh
  %i.bp = add i64 %i.bo, %i.bl                    ; 2 uses
  %i.bq = zext i64 %i.bp to i128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1227, !noalias !2038
  %i.bt = zext i64 %i.bs to i128
  %i.bu = mul nuw i128 %i.bt, %i.bq
  %i.bv = lshr i128 %i.bu, 64
  %i.bw = trunc nuw i128 %i.bv to i64             ; 2 uses
  %i.bx = mul i64 %i.bn, %i.bw
  %i.by = sub i64 %i.bp, %i.bx
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit26

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit26: ; preds = %bb.f, %bb.g
  %.05.i24 = phi i64 [ %i.bh, %bb.f ], [ %i.bw, %bb.g ]
  %.0.i25 = phi i64 [ %i.bl, %bb.f ], [ %i.by, %bb.g ]
  %i.bz = load i8, ptr %3, align 1, !tbaa !525
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !1231, !noalias !2041 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1233, !noalias !2041
  %i.cf = load ptr, ptr %1, align 8, !tbaa !1234, !noalias !2041 ; 3 uses
  %i.cg = sub i64 %i.ce, %i.ca                    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !168, !noalias !2041 ; 3 uses
  %.not.i.i27 = icmp ult i64 %i.cg, %i.ci
  br i1 %.not.i.i27, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit30, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit26
  %i.cj = mul i64 %i.ci, %i.cc
  %i.ck = add i64 %i.cj, %i.cg                    ; 2 uses
  %i.cl = zext i64 %i.ck to i128
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !1227, !noalias !2041
  %i.co = zext i64 %i.cn to i128
  %i.cp = mul nuw i128 %i.co, %i.cl
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = trunc nuw i128 %i.cq to i64             ; 2 uses
  %i.cs = mul i64 %i.ci, %i.cr
  %i.ct = sub i64 %i.ck, %i.cs
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit30

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit30: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit26, %bb.h
  %.05.i28 = phi i64 [ %i.cc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit26 ], [ %i.cr, %bb.h ] ; 3 uses
  %.0.i29 = phi i64 [ %i.cg, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit26 ], [ %i.ct, %bb.h ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1241
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.05.i24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1046
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0.i25 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1241
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.05.i28
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1046
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.0.i29
  %i.de = load i64, ptr %i.dd, align 8
  store i64 %i.de, ptr %i.cy, align 8
  %.not79 = icmp eq i64 %4, 1
  br i1 %.not79, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit30
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit30
  %.sroa.7.0.lcssa = phi i64 [ %.05.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit30 ], [ %.05.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i29, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit30 ], [ %.0.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38 ]
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !1241
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.7.0.lcssa
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1046
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.sroa.13.0.lcssa
  store i64 %.sroa.0.0.copyload, ptr %i.di, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38
  %.075 = phi i64 [ %i.fp, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.074 = phi i64 [ %.0.i37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38 ], [ %.0.i29, %.lr.ph.preheader ]
  %.sroa.7.073 = phi i64 [ %.05.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38 ], [ %.05.i28, %.lr.ph.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %.075
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !525
  %i.dl = zext i8 %i.dk to i64
  %i.dm = load i64, ptr %i.bg, align 8, !tbaa !1231, !noalias !2044 ; 2 uses
  %i.dn = load i64, ptr %i.bi, align 8, !tbaa !1233, !noalias !2044
  %i.do = load ptr, ptr %0, align 8, !tbaa !1234, !noalias !2044 ; 2 uses
  %i.dp = add i64 %i.dn, %i.dl                    ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !168, !noalias !2044 ; 3 uses
  %.not.i.i31 = icmp ult i64 %i.dp, %i.dr
  br i1 %.not.i.i31, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit34, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ds = mul i64 %i.dr, %i.dm
  %i.dt = add i64 %i.ds, %i.dp                    ; 2 uses
  %i.du = zext i64 %i.dt to i128
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1227, !noalias !2044
  %i.dx = zext i64 %i.dw to i128
  %i.dy = mul nuw i128 %i.dx, %i.du
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = trunc nuw i128 %i.dz to i64             ; 2 uses
  %i.eb = mul i64 %i.dr, %i.ea
  %i.ec = sub i64 %i.dt, %i.eb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit34

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit34: ; preds = %.lr.ph, %bb.i
  %.05.i32 = phi i64 [ %i.dm, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %.0.i33 = phi i64 [ %i.dp, %.lr.ph ], [ %i.ec, %bb.i ] ; 2 uses
  %i.ed = load ptr, ptr %i.cu, align 8, !tbaa !1241
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.05.i32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1046
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0.i33
  %i.eh = load ptr, ptr %i.cz, align 8, !tbaa !1241
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.sroa.7.073
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1046
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.sroa.13.074
  %i.el = load i64, ptr %i.eg, align 8
  store i64 %i.el, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 %.075
  %i.en = load i8, ptr %i.em, align 1, !tbaa !525
  %i.eo = zext i8 %i.en to i64
  %i.ep = load i64, ptr %i.cb, align 8, !tbaa !1231, !noalias !2047 ; 2 uses
  %i.eq = load i64, ptr %i.cd, align 8, !tbaa !1233, !noalias !2047
  %i.er = load ptr, ptr %1, align 8, !tbaa !1234, !noalias !2047 ; 2 uses
  %i.es = sub i64 %i.eq, %i.eo                    ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !168, !noalias !2047 ; 3 uses
  %.not.i.i35 = icmp ult i64 %i.es, %i.eu
  br i1 %.not.i.i35, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit34
  %i.ev = mul i64 %i.eu, %i.ep
  %i.ew = add i64 %i.ev, %i.es                    ; 2 uses
  %i.ex = zext i64 %i.ew to i128
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1227, !noalias !2047
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, %i.ex
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64             ; 2 uses
  %i.fe = mul i64 %i.eu, %i.fd
  %i.ff = sub i64 %i.ew, %i.fe
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit38: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit34, %bb.j
  %.05.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit34 ], [ %i.fd, %bb.j ] ; 3 uses
  %.0.i37 = phi i64 [ %i.es, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEplERKm.exit34 ], [ %i.ff, %bb.j ] ; 3 uses
  %i.fg = load ptr, ptr %i.cz, align 8, !tbaa !1241
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.05.i36
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1046
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.0.i37
  %i.fk = load ptr, ptr %i.cu, align 8, !tbaa !1241
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.05.i32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1046
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.0.i33
  %i.fo = load i64, ptr %i.fj, align 8
  store i64 %i.fo, ptr %i.fn, align 8
  %i.fp = add nuw i64 %.075, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2050

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1231 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1231 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1231 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1234
  %i.t = load ptr, ptr %1, align 8, !tbaa !1234
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1234
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 1152921504606846975)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = shl nuw nsw i64 %.010.i.i, 3
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !2051

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1234
  store ptr %i.ap, ptr %3, align 8, !tbaa !1234
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1234
  store ptr %i.as, ptr %4, align 8, !tbaa !1234
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1234
  store ptr %i.av, ptr %5, align 8, !tbaa !1234
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1234  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1234
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1234
  store ptr %i.bd, ptr %7, align 8, !tbaa !1234
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1234
  store ptr %i.bg, ptr %8, align 8, !tbaa !1234
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1234
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1234
  store ptr %i.bl, ptr %10, align 8, !tbaa !1234
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1234
  store ptr %i.bo, ptr %11, align 8, !tbaa !1234
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::block_iterator_t", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1231 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1233 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1234
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1231
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1233 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p                       ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEENS0_16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEES3_EESA_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackISA_KNS0_13SkaExtractKeyIS3_EEEEvT_SK_RT0_EUlRKS3_SO_E_EEEvSK_SK_SL_SL_T1_T2_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.u = add i64 %i.j, %i.m
  %.neg = add i64 %i.r, 1
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

end_hunk_0
begin_hunk_1_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
  %i.cl = sub i64 %.neg5.i, %i.bn
  %i.cm = add i64 %i.cl, %reass.mul               ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 9
  br i1 %i.cn, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, label %.critedge10

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread
  %.pre78 = load i64, ptr %i.c, align 8, !tbaa !1260
  %.pre79 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, %bb.f, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit
  %i.co = phi i64 [ %.pre79, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ad, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ad, %bb.f ] ; 2 uses
  %i.cp = phi i64 [ %.pre78, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ae, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ae, %bb.f ] ; 2 uses
  %i.cq = phi i64 [ %i.ck, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.af, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.af, %bb.f ] ; 2 uses
  %.1663 = phi i64 [ %i.cm, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %.0572, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %.0572, %bb.f ]
  %i.cr = add i64 %.sroa.15.071, 1                ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %i.cq                ; 2 uses
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add i64 %.sroa.852.070, %i.ct           ; 2 uses
  %i.cv = select i1 %i.cs, i64 0, i64 %i.cr       ; 2 uses
  %.not.i = icmp eq i64 %i.cu, %i.cp
  %i.cw = icmp eq i64 %i.cv, %i.co
  %.not64 = select i1 %.not.i, i1 %i.cw, i1 false
  br i1 %.not64, label %.critedge10, label %bb.d, !llvm.loop !3053

.critedge10:                                      ; preds = %.thread, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ], [ true, %.thread ], [ false, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE2EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1260, !noalias !3054 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1262, !noalias !3054
  %i.j = load ptr, ptr %0, align 8, !tbaa !1263, !noalias !3054 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !3054 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !3054
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1260, !noalias !3057 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1262, !noalias !3057
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1263, !noalias !3057 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !3057 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !3057
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  %.sroa.0102.0.copyload = load <2 x i64>, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  store <2 x i64> %.sroa.0102.0.copyload, ptr %i.bb, align 8
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !3060

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1260, !noalias !3061 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1262, !noalias !3061
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1263, !noalias !3061 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !3061 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !3061
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1260, !noalias !3064 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1262, !noalias !3064
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1263, !noalias !3064 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !3064 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !3064
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.dg, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1260, !noalias !3067 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1262, !noalias !3067
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1263, !noalias !3067 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !3067 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !3067
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1260, !noalias !3070 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1262, !noalias !3070
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1263, !noalias !3070 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !3070 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !3070
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3073

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1260 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1260 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1260 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1263
  %i.t = load ptr, ptr %1, align 8, !tbaa !1263
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1263
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 576460752303423487)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = shl nuw nsw i64 %.010.i.i, 4
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !3074

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1263
  store ptr %i.ap, ptr %3, align 8, !tbaa !1263
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1263
  store ptr %i.as, ptr %4, align 8, !tbaa !1263
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1263
  store ptr %i.av, ptr %5, align 8, !tbaa !1263
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1263  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1263
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1263
  store ptr %i.bd, ptr %7, align 8, !tbaa !1263
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1263
  store ptr %i.bg, ptr %8, align 8, !tbaa !1263
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1263
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1263
  store ptr %i.bl, ptr %10, align 8, !tbaa !1263
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1263
  store ptr %i.bo, ptr %11, align 8, !tbaa !1263
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE2EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1092", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1263   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1260 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1262 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1263
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1260
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1262
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEENS0_16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEES3_EESA_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackISA_KNS0_13SkaExtractKeyIS3_EEEEvT_SK_RT0_EUlRKS3_SO_E_EEEvSK_SK_SL_SL_T1_T2_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.09.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i.i.i ]
end_hunk_1
begin_hunk_2_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
  %i.cv = sub i64 %.neg5.i, %i.bt
  %i.cw = add i64 %i.cv, %reass.mul               ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 9
  br i1 %i.cx, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, label %.critedge10

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread
  %.pre82 = load i64, ptr %i.c, align 8, !tbaa !1278
  %.pre83 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, %bb.f, %bb.h, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit
  %i.cy = phi i64 [ %.pre83, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ad, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ad, %bb.h ], [ %i.ad, %bb.f ] ; 2 uses
  %i.cz = phi i64 [ %.pre82, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ae, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ae, %bb.h ], [ %i.ae, %bb.f ] ; 2 uses
  %i.da = phi i64 [ %i.cu, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.af, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.af, %bb.h ], [ %i.af, %bb.f ] ; 2 uses
  %.1667 = phi i64 [ %i.cw, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %.0576, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %.0576, %bb.h ], [ %.0576, %bb.f ]
  %i.db = add i64 %.sroa.15.075, 1                ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.da                ; 2 uses
  %i.dd = zext i1 %i.dc to i64
  %i.de = add i64 %.sroa.855.074, %i.dd           ; 2 uses
  %i.df = select i1 %i.dc, i64 0, i64 %i.db       ; 2 uses
  %.not.i = icmp eq i64 %i.de, %i.cz
  %i.dg = icmp eq i64 %i.df, %i.cy
  %.not68 = select i1 %.not.i, i1 %i.dg, i1 false
  br i1 %.not68, label %.critedge10, label %bb.d, !llvm.loop !4069

.critedge10:                                      ; preds = %.thread, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ], [ true, %.thread ], [ false, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE3EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1278, !noalias !4070 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1280, !noalias !4070
  %i.j = load ptr, ptr %0, align 8, !tbaa !1281, !noalias !4070 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !4070 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !4070
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1278, !noalias !4073 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1280, !noalias !4073
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1281, !noalias !4073 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !4073 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !4073
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  %.sroa.0102.0.copyload = load <3 x i64>, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  store <3 x i64> %.sroa.0102.0.copyload, ptr %i.bb, align 8
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !4076

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1278, !noalias !4077 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1280, !noalias !4077
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1281, !noalias !4077 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !4077 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !4077
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1278, !noalias !4080 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1280, !noalias !4080
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1281, !noalias !4080 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !4080 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !4080
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  %.sroa.0.0.copyload = load <3 x i64>, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  store <3 x i64> %.sroa.0.0.copyload, ptr %i.dg, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1278, !noalias !4083 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1280, !noalias !4083
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1281, !noalias !4083 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !4083 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !4083
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1278, !noalias !4086 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1280, !noalias !4086
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1281, !noalias !4086 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !4086 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !4086
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4089

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1278 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1278 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1281
  %i.t = load ptr, ptr %1, align 8, !tbaa !1281
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1281
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 384307168202282325)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = mul nuw nsw i64 %.010.i.i, 24
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !4090

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1281
  store ptr %i.ap, ptr %3, align 8, !tbaa !1281
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1281
  store ptr %i.as, ptr %4, align 8, !tbaa !1281
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1281
  store ptr %i.av, ptr %5, align 8, !tbaa !1281
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1281  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1281
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1281
  store ptr %i.bd, ptr %7, align 8, !tbaa !1281
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1281
  store ptr %i.bg, ptr %8, align 8, !tbaa !1281
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1281
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1281
  store ptr %i.bl, ptr %10, align 8, !tbaa !1281
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1281
  store ptr %i.bo, ptr %11, align 8, !tbaa !1281
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1144", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1281   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1278 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1280 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1281   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1280 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE3EEEEEPS8_ET0_T_SC_SB_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
  %i.df = sub i64 %.neg5.i, %i.bz
  %i.dg = add i64 %i.df, %reass.mul               ; 2 uses
  %i.dh = icmp ult i64 %i.dg, 9
  br i1 %i.dh, label %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, label %.critedge10

_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread
  %.pre85 = load i64, ptr %i.c, align 8, !tbaa !1296
  %.pre86 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, %bb.h, %bb.j, %bb.f, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit
  %i.di = phi i64 [ %.pre86, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ad, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ad, %bb.f ], [ %i.ad, %bb.j ], [ %i.ad, %bb.h ] ; 2 uses
  %i.dj = phi i64 [ %.pre85, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ae, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ae, %bb.f ], [ %i.ae, %bb.j ], [ %i.ae, %bb.h ] ; 2 uses
  %i.dk = phi i64 [ %i.de, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.af, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.af, %bb.f ], [ %i.af, %bb.j ], [ %i.af, %bb.h ] ; 2 uses
  %.1670 = phi i64 [ %i.dg, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %.0579, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %.0579, %bb.f ], [ %.0579, %bb.j ], [ %.0579, %bb.h ]
  %i.dl = add i64 %.sroa.15.078, 1                ; 2 uses
  %i.dm = icmp eq i64 %i.dl, %i.dk                ; 2 uses
  %i.dn = zext i1 %i.dm to i64
  %i.do = add i64 %.sroa.858.077, %i.dn           ; 2 uses
  %i.dp = select i1 %i.dm, i64 0, i64 %i.dl       ; 2 uses
  %.not.i = icmp eq i64 %i.do, %i.dj
  %i.dq = icmp eq i64 %i.dp, %i.di
  %.not71 = select i1 %.not.i, i1 %i.dq, i1 false
  br i1 %.not71, label %.critedge10, label %bb.d, !llvm.loop !5085

.critedge10:                                      ; preds = %.thread, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ], [ true, %.thread ], [ false, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE4EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1296, !noalias !5086 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1298, !noalias !5086
  %i.j = load ptr, ptr %0, align 8, !tbaa !1299, !noalias !5086 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !5086 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !5086
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1296, !noalias !5089 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1298, !noalias !5089
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1299, !noalias !5089 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !5089 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !5089
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  %.sroa.0102.0.copyload = load <4 x i64>, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  store <4 x i64> %.sroa.0102.0.copyload, ptr %i.bb, align 8
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !5092

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1296, !noalias !5093 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1298, !noalias !5093
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1299, !noalias !5093 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !5093 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !5093
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1296, !noalias !5096 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1298, !noalias !5096
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1299, !noalias !5096 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !5096 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !5096
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  %.sroa.0.0.copyload = load <4 x i64>, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  store <4 x i64> %.sroa.0.0.copyload, ptr %i.dg, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1296, !noalias !5099 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1298, !noalias !5099
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1299, !noalias !5099 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !5099 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !5099
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1296, !noalias !5102 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1298, !noalias !5102
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1299, !noalias !5102 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !5102 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !5102
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5105

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1296 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1296 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1296 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1299
  %i.t = load ptr, ptr %1, align 8, !tbaa !1299
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1299
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 288230376151711743)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = shl nuw nsw i64 %.010.i.i, 5
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !5106

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1299
  store ptr %i.ap, ptr %3, align 8, !tbaa !1299
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1299
  store ptr %i.as, ptr %4, align 8, !tbaa !1299
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1299
  store ptr %i.av, ptr %5, align 8, !tbaa !1299
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1299  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1299
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1299
  store ptr %i.bd, ptr %7, align 8, !tbaa !1299
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1299
  store ptr %i.bg, ptr %8, align 8, !tbaa !1299
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1299
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1299
  store ptr %i.bl, ptr %10, align 8, !tbaa !1299
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1299
  store ptr %i.bo, ptr %11, align 8, !tbaa !1299
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1196", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1299   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1296 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1298 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1299   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1296 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1298 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE4EEEEEPS8_ET0_T_SC_SB_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
..thread_crit_edge:                               ; preds = %bb.o
  %.pre91 = load i64, ptr %i.c, align 8, !tbaa !1314
  %.pre92 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.i, %bb.f, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit
  %i.dt = phi i64 [ %.pre92, %..thread_crit_edge ], [ %i.ad, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ad, %bb.f ], [ %i.ad, %bb.i ] ; 2 uses
  %i.du = phi i64 [ %.pre91, %..thread_crit_edge ], [ %i.ae, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ae, %bb.f ], [ %i.ae, %bb.i ] ; 2 uses
  %i.dv = phi i64 [ %i.dp, %..thread_crit_edge ], [ %i.af, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.af, %bb.f ], [ %i.af, %bb.i ] ; 2 uses
  %.1675 = phi i64 [ %i.dr, %..thread_crit_edge ], [ %.0584, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %.0584, %bb.f ], [ %.0584, %bb.i ]
  %i.dw = add i64 %.sroa.15.083, 1                ; 2 uses
  %i.dx = icmp eq i64 %i.dw, %i.dv                ; 2 uses
  %i.dy = zext i1 %i.dx to i64
  %i.dz = add i64 %.sroa.864.082, %i.dy           ; 2 uses
  %i.ea = select i1 %i.dx, i64 0, i64 %i.dw       ; 2 uses
  %.not.i = icmp eq i64 %i.dz, %i.du
  %i.eb = icmp eq i64 %i.ea, %i.dt
  %.not76 = select i1 %.not.i, i1 %i.eb, i1 false
  br i1 %.not76, label %.critedge10, label %bb.d, !llvm.loop !6101

.critedge10:                                      ; preds = %.thread, %bb.o, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ], [ true, %.thread ], [ false, %bb.o ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE5EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %6 = alloca %"struct.duckdb::SortKey.1258", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1258", align 8 ; 4 uses
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1314, !noalias !6102 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1316, !noalias !6102
  %i.j = load ptr, ptr %0, align 8, !tbaa !1317, !noalias !6102 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !6102 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !6102
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1314, !noalias !6105 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1316, !noalias !6105
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1317, !noalias !6105 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !6105 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !6105
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !6108

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1314, !noalias !6109 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1316, !noalias !6109
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1317, !noalias !6109 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !6109 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !6109
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1314, !noalias !6112 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1316, !noalias !6112
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1317, !noalias !6112 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !6112 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !6112
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1314, !noalias !6115 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1316, !noalias !6115
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1317, !noalias !6115 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !6115 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !6115
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1314, !noalias !6118 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1316, !noalias !6118
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1317, !noalias !6118 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !6118 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !6118
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6121

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1314 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1314 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1314 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1317
  %i.t = load ptr, ptr %1, align 8, !tbaa !1317
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1317
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 288230376151711743)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = shl nuw nsw i64 %.010.i.i, 5
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !6122

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1317
  store ptr %i.ap, ptr %3, align 8, !tbaa !1317
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1317
  store ptr %i.as, ptr %4, align 8, !tbaa !1317
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1317
  store ptr %i.av, ptr %5, align 8, !tbaa !1317
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1317  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1317
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1317
  store ptr %i.bd, ptr %7, align 8, !tbaa !1317
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1317
  store ptr %i.bg, ptr %8, align 8, !tbaa !1317
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1317
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1317
  store ptr %i.bl, ptr %10, align 8, !tbaa !1317
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1317
  store ptr %i.bo, ptr %11, align 8, !tbaa !1317
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1248", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1317   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1314 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1316 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1317   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1314 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1316 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE5EEEEEPS8_ET0_T_SC_SB_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_4
begin_hunk_5_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE6EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
..thread_crit_edge:                               ; preds = %bb.i
  %.pre75 = load i64, ptr %i.c, align 8, !tbaa !1335
  %.pre76 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit
  %i.cg = phi i64 [ %.pre76, %..thread_crit_edge ], [ %i.ad, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit ] ; 2 uses
  %i.ch = phi i64 [ %.pre75, %..thread_crit_edge ], [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit ] ; 2 uses
  %i.ci = phi i64 [ %i.cc, %..thread_crit_edge ], [ %i.af, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit ] ; 2 uses
  %.1661 = phi i64 [ %i.ce, %..thread_crit_edge ], [ %.0570, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit ]
  %i.cj = add i64 %.sroa.15.069, 1                ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %i.ci                ; 2 uses
  %i.cl = zext i1 %i.ck to i64
  %i.cm = add i64 %.sroa.851.068, %i.cl           ; 2 uses
  %i.cn = select i1 %i.ck, i64 0, i64 %i.cj       ; 2 uses
  %.not.i = icmp eq i64 %i.cm, %i.ch
  %i.co = icmp eq i64 %i.cn, %i.cg
  %.not62 = select i1 %.not.i, i1 %i.co, i1 false
  br i1 %.not62, label %.critedge10, label %bb.d, !llvm.loop !7093

.critedge10:                                      ; preds = %.thread, %bb.i, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ], [ true, %.thread ], [ false, %bb.i ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE6EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %6 = alloca %"struct.duckdb::SortKey", align 8  ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey", align 8  ; 4 uses
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1335, !noalias !7094 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1337, !noalias !7094
  %i.j = load ptr, ptr %0, align 8, !tbaa !1338, !noalias !7094 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !7094 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !7094
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1335, !noalias !7097 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1337, !noalias !7097
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1338, !noalias !7097 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !7097 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !7097
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !7100

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1335, !noalias !7101 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1337, !noalias !7101
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1338, !noalias !7101 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !7101 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !7101
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1335, !noalias !7104 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1337, !noalias !7104
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1338, !noalias !7104 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !7104 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !7104
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1335, !noalias !7107 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1337, !noalias !7107
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1338, !noalias !7107 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !7107 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !7107
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1335, !noalias !7110 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1337, !noalias !7110
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1338, !noalias !7110 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !7110 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !7110
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7113

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1335 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1335 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1335 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1338
  %i.t = load ptr, ptr %1, align 8, !tbaa !1338
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1338
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 576460752303423487)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = shl nuw nsw i64 %.010.i.i, 4
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !7114

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1338
  store ptr %i.ap, ptr %3, align 8, !tbaa !1338
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1338
  store ptr %i.as, ptr %4, align 8, !tbaa !1338
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1338
  store ptr %i.av, ptr %5, align 8, !tbaa !1338
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1338  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1338
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1338
  store ptr %i.bd, ptr %7, align 8, !tbaa !1338
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1338
  store ptr %i.bg, ptr %8, align 8, !tbaa !1338
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1338
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1338
  store ptr %i.bl, ptr %10, align 8, !tbaa !1338
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1338
  store ptr %i.bo, ptr %11, align 8, !tbaa !1338
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1300", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1338   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1337 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1338
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1335
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1337
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEENS0_16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEES3_EESA_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackISA_KNS0_13SkaExtractKeyIS3_EEEEvT_SK_RT0_EUlRKS3_SO_E_EEEvSK_SK_SL_SL_T1_T2_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.09.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i.i.i ]
end_hunk_5
begin_hunk_6_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread
  %.pre81 = load i64, ptr %i.c, align 8, !tbaa !1353
  %.pre82 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, %bb.f, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit
  %i.co = phi i64 [ %.pre82, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ad, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ad, %bb.f ] ; 2 uses
  %i.cp = phi i64 [ %.pre81, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ae, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ae, %bb.f ] ; 2 uses
  %i.cq = phi i64 [ %i.ck, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.af, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.af, %bb.f ] ; 2 uses
  %.1666 = phi i64 [ %i.cm, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %.0575, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %.0575, %bb.f ]
  %i.cr = add i64 %.sroa.15.074, 1                ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %i.cq                ; 2 uses
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add i64 %.sroa.855.073, %i.ct           ; 2 uses
  %i.cv = select i1 %i.cs, i64 0, i64 %i.cr       ; 2 uses
  %.not.i = icmp eq i64 %i.cu, %i.cp
  %i.cw = icmp eq i64 %i.cv, %i.co
  %.not67 = select i1 %.not.i, i1 %i.cw, i1 false
  br i1 %.not67, label %.critedge10, label %bb.d, !llvm.loop !8109

.critedge10:                                      ; preds = %.thread, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ], [ true, %.thread ], [ false, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE7EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %6 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1353, !noalias !8110 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1355, !noalias !8110
  %i.j = load ptr, ptr %0, align 8, !tbaa !1356, !noalias !8110 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !8110 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !8110
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1353, !noalias !8113 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1355, !noalias !8113
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1356, !noalias !8113 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !8113 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !8113
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !8116

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1353, !noalias !8117 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1355, !noalias !8117
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1356, !noalias !8117 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !8117 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !8117
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1353, !noalias !8120 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1355, !noalias !8120
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1356, !noalias !8120 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !8120 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !8120
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1353, !noalias !8123 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1355, !noalias !8123
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1356, !noalias !8123 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !8123 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !8123
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1353, !noalias !8126 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1355, !noalias !8126
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1356, !noalias !8126 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !8126 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !8126
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 24, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8129

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1353 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1353 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1353 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1356
  %i.t = load ptr, ptr %1, align 8, !tbaa !1356
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1356
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 384307168202282325)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = mul nuw nsw i64 %.010.i.i, 24
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !8130

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1356
  store ptr %i.ap, ptr %3, align 8, !tbaa !1356
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1356
  store ptr %i.as, ptr %4, align 8, !tbaa !1356
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1356
  store ptr %i.av, ptr %5, align 8, !tbaa !1356
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1356  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1356
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1356
  store ptr %i.bd, ptr %7, align 8, !tbaa !1356
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1356
  store ptr %i.bg, ptr %8, align 8, !tbaa !1356
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1356
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1356
  store ptr %i.bl, ptr %10, align 8, !tbaa !1356
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1356
  store ptr %i.bo, ptr %11, align 8, !tbaa !1356
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE7EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1349", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1356   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1353 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1355 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1356
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1353
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1355
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEENS0_16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEES3_EESA_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackISA_KNS0_13SkaExtractKeyIS3_EEEEvT_SK_RT0_EUlRKS3_SO_E_EEEvSK_SK_SL_SL_T1_T2_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.09.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.s, %.lr.ph.i.preheader.i.i.i.i ]
end_hunk_6
begin_hunk_7_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge: ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread
  %.pre85 = load i64, ptr %i.c, align 8, !tbaa !1371
  %.pre86 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge, %bb.f, %bb.h, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit
  %i.cy = phi i64 [ %.pre86, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ad, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ad, %bb.h ], [ %i.ad, %bb.f ] ; 2 uses
  %i.cz = phi i64 [ %.pre85, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.ae, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ae, %bb.h ], [ %i.ae, %bb.f ] ; 2 uses
  %i.da = phi i64 [ %i.cu, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %i.af, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.af, %bb.h ], [ %i.af, %bb.f ] ; 2 uses
  %.1670 = phi i64 [ %i.cw, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread..thread_crit_edge ], [ %.0579, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %.0579, %bb.h ], [ %.0579, %bb.f ]
  %i.db = add i64 %.sroa.15.078, 1                ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.da                ; 2 uses
  %i.dd = zext i1 %i.dc to i64
  %i.de = add i64 %.sroa.858.077, %i.dd           ; 2 uses
  %i.df = select i1 %i.dc, i64 0, i64 %i.db       ; 2 uses
  %.not.i = icmp eq i64 %i.de, %i.cz
  %i.dg = icmp eq i64 %i.df, %i.cy
  %.not71 = select i1 %.not.i, i1 %i.dg, i1 false
  br i1 %.not71, label %.critedge10, label %bb.d, !llvm.loop !9125

.critedge10:                                      ; preds = %.thread, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ], [ true, %.thread ], [ false, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit17.thread ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE8EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %6 = alloca %"struct.duckdb::SortKey.1047", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1047", align 8 ; 4 uses
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1371, !noalias !9126 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1373, !noalias !9126
  %i.j = load ptr, ptr %0, align 8, !tbaa !1374, !noalias !9126 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !9126 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !9126
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1371, !noalias !9129 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1373, !noalias !9129
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1374, !noalias !9129 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !9129 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !9129
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !9132

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1371, !noalias !9133 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1373, !noalias !9133
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1374, !noalias !9133 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !9133 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !9133
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1371, !noalias !9136 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1373, !noalias !9136
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1374, !noalias !9136 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !9136 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !9136
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1371, !noalias !9139 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1373, !noalias !9139
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1374, !noalias !9139 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !9139 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !9139
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1371, !noalias !9142 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1373, !noalias !9142
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1374, !noalias !9142 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !9142 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !9142
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9145

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1371 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1371 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1371 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1374
  %i.t = load ptr, ptr %1, align 8, !tbaa !1374
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1374
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 288230376151711743)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = shl nuw nsw i64 %.010.i.i, 5
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !9146

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1374
  store ptr %i.ap, ptr %3, align 8, !tbaa !1374
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1374
  store ptr %i.as, ptr %4, align 8, !tbaa !1374
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1374
  store ptr %i.av, ptr %5, align 8, !tbaa !1374
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1374  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1374
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1374
  store ptr %i.bd, ptr %7, align 8, !tbaa !1374
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1374
  store ptr %i.bg, ptr %8, align 8, !tbaa !1374
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1374
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1374
  store ptr %i.bl, ptr %10, align 8, !tbaa !1374
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1374
  store ptr %i.bo, ptr %11, align 8, !tbaa !1374
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1398", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1374   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1371 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1373 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1374   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1371 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1373 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE8EEEEEPS8_ET0_T_SC_SB_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN14duckdb_pdqsort14pdqsort_detail22partial_insertion_sortIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEZN15duckdb_ska_sort6detail15StdSortFallbackISB_KNS2_13SkaExtractKeyISA_EEEEvT_SI_RT0_EUlRKSA_SM_E_EEbSI_SI_SJ_:bb.a
.split.us..thread_crit_edge:                      ; preds = %.split.us
  %.pre96 = load i64, ptr %i.c, align 8, !tbaa !1389
  %.pre97 = load i64, ptr %i.h, align 8
  br label %.thread

.thread:                                          ; preds = %.split.us..thread_crit_edge, %bb.i, %bb.f, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit
  %i.ei = phi i64 [ %.pre97, %.split.us..thread_crit_edge ], [ %i.ad, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ad, %bb.f ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ej = phi i64 [ %.pre96, %.split.us..thread_crit_edge ], [ %i.ae, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.ae, %bb.f ], [ %i.ae, %bb.i ] ; 2 uses
  %i.ek = phi i64 [ %i.ee, %.split.us..thread_crit_edge ], [ %i.af, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %i.af, %bb.f ], [ %i.af, %bb.i ] ; 2 uses
  %.1675 = phi i64 [ %i.eg, %.split.us..thread_crit_edge ], [ %.0585, %_ZZN15duckdb_ska_sort6detail15StdSortFallbackIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEKNS2_13SkaExtractKeyISA_EEEEvT_SF_RT0_ENKUlRKSA_SJ_E_clESJ_SJ_.exit ], [ %.0585, %bb.f ], [ %.0585, %bb.i ]
  %i.el = add i64 %.sroa.15.084, 1                ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.ek                ; 2 uses
  %i.en = zext i1 %i.em to i64
  %i.eo = add i64 %.sroa.864.083, %i.en           ; 2 uses
  %i.ep = select i1 %i.em, i64 0, i64 %i.el       ; 2 uses
  %.not.i = icmp eq i64 %i.eo, %i.ej
  %i.eq = icmp eq i64 %i.ep, %i.ei
  %.not76 = select i1 %.not.i, i1 %i.eq, i1 false
  br i1 %.not76, label %.critedge10, label %bb.d, !llvm.loop !10141

.critedge10:                                      ; preds = %.thread, %.split.us, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ], [ true, %.thread ], [ false, %.split.us ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_pdqsort14pdqsort_detail12swap_offsetsIN6duckdb16block_iterator_tIKNS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE0EEENS2_7SortKeyILNS2_11SortKeyTypeE9EEEEEEEvT_SC_PhSD_mb(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 comdat {
bb.a:
  %6 = alloca %"struct.duckdb::SortKey.1050", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1050", align 8 ; 4 uses
  %.not79 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %5, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit
  %.01776 = phi i64 [ 0, %.lr.ph77 ], [ %i.bc, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01776
  %i.f = load i8, ptr %i.e, align 1, !tbaa !525
  %i.g = zext i8 %i.f to i64
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1389, !noalias !10142 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !1391, !noalias !10142
  %i.j = load ptr, ptr %0, align 8, !tbaa !1392, !noalias !10142 ; 3 uses
  %i.k = add i64 %i.i, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168, !noalias !10142 ; 3 uses
  %.not.i.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul i64 %i.m, %i.h
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1227, !noalias !10142
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw i128 %i.s, %i.p
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = mul i64 %i.m, %i.v
  %i.x = sub i64 %i.o, %i.w
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit: ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.h, %bb.b ], [ %i.v, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %.01776
  %i.z = load i8, ptr %i.y, align 1, !tbaa !525
  %i.aa = zext i8 %i.z to i64
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1389, !noalias !10145 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1391, !noalias !10145
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1392, !noalias !10145 ; 3 uses
  %i.ae = sub i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168, !noalias !10145 ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.ae, %i.ag
  br i1 %.not.i.i19, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = add i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = zext i64 %i.ai to i128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1227, !noalias !10145
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %i.aj
  %i.ao = lshr i128 %i.an, 64
  %i.ap = trunc nuw i128 %i.ao to i64             ; 2 uses
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.ai, %i.aq
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit, %bb.d
  %.05.i20 = phi i64 [ %i.ab, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ], [ %i.ap, %bb.d ]
  %.0.i21 = phi i64 [ %i.ae, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit ], [ %i.ar, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1241
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1046
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1241
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05.i20
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1046
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.0.i21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bc = add nuw i64 %.01776, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.bc, %4
  br i1 %exitcond80.not, label %.loopexit, label %bb.b, !llvm.loop !10148

bb.e:                                             ; preds = %bb.a
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i8, ptr %2, align 1, !tbaa !525
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1389, !noalias !10149 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1391, !noalias !10149
  %i.bj = load ptr, ptr %0, align 8, !tbaa !1392, !noalias !10149 ; 3 uses
  %i.bk = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !168, !noalias !10149 ; 3 uses
  %.not.i.i22 = icmp ult i64 %i.bk, %i.bm
  br i1 %.not.i.i22, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = zext i64 %i.bo to i128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1227, !noalias !10149
  %i.bs = zext i64 %i.br to i128
  %i.bt = mul nuw i128 %i.bs, %i.bp
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64             ; 2 uses
  %i.bw = mul i64 %i.bm, %i.bv
  %i.bx = sub i64 %i.bo, %i.bw
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit25

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit25: ; preds = %bb.f, %bb.g
  %.05.i23 = phi i64 [ %i.bg, %bb.f ], [ %i.bv, %bb.g ]
  %.0.i24 = phi i64 [ %i.bk, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = load i8, ptr %3, align 1, !tbaa !525
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1389, !noalias !10152 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1391, !noalias !10152
  %i.ce = load ptr, ptr %1, align 8, !tbaa !1392, !noalias !10152 ; 3 uses
  %i.cf = sub i64 %i.cd, %i.bz                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !168, !noalias !10152 ; 3 uses
  %.not.i.i26 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not.i.i26, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit25
  %i.ci = mul i64 %i.ch, %i.cb
  %i.cj = add i64 %i.ci, %i.cf                    ; 2 uses
  %i.ck = zext i64 %i.cj to i128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !1227, !noalias !10152
  %i.cn = zext i64 %i.cm to i128
  %i.co = mul nuw i128 %i.cn, %i.ck
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = mul i64 %i.ch, %i.cq
  %i.cs = sub i64 %i.cj, %i.cr
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit29

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit29: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit25, %bb.h
  %.05.i27 = phi i64 [ %i.cb, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit25 ], [ %i.cq, %bb.h ] ; 3 uses
  %.0.i28 = phi i64 [ %i.cf, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit25 ], [ %i.cs, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i23
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1046
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.0.i24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.05.i27
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1046
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.0.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false)
  %.not78 = icmp eq i64 %4, 1
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit29
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 2)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit29
  %.sroa.7.0.lcssa = phi i64 [ %.05.i27, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit29 ], [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37 ]
  %.sroa.13.0.lcssa = phi i64 [ %.0.i28, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit29 ], [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37 ]
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sroa.7.0.lcssa
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1046
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.13.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37
  %.074 = phi i64 [ %i.fl, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37 ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13.073 = phi i64 [ %.0.i36, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37 ], [ %.0.i28, %.lr.ph.preheader ]
  %.sroa.7.072 = phi i64 [ %.05.i35, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37 ], [ %.05.i27, %.lr.ph.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.074
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !525
  %i.dj = zext i8 %i.di to i64
  %i.dk = load i64, ptr %i.bf, align 8, !tbaa !1389, !noalias !10155 ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8, !tbaa !1391, !noalias !10155
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1392, !noalias !10155 ; 2 uses
  %i.dn = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !168, !noalias !10155 ; 3 uses
  %.not.i.i30 = icmp ult i64 %i.dn, %i.dp
  br i1 %.not.i.i30, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit33, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %i.dn                    ; 2 uses
  %i.ds = zext i64 %i.dr to i128
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1227, !noalias !10155
  %i.dv = zext i64 %i.du to i128
  %i.dw = mul nuw i128 %i.dv, %i.ds
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = trunc nuw i128 %i.dx to i64             ; 2 uses
  %i.dz = mul i64 %i.dp, %i.dy
  %i.ea = sub i64 %i.dr, %i.dz
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit33

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit33: ; preds = %.lr.ph, %bb.i
  %.05.i31 = phi i64 [ %i.dk, %.lr.ph ], [ %i.dy, %bb.i ] ; 2 uses
  %.0.i32 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ea, %bb.i ] ; 2 uses
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05.i31
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1046
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %.0.i32
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.sroa.7.072
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1046
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %.sroa.13.073
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 %.074
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !525
  %i.el = zext i8 %i.ek to i64
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !1389, !noalias !10158 ; 2 uses
  %i.en = load i64, ptr %i.cc, align 8, !tbaa !1391, !noalias !10158
  %i.eo = load ptr, ptr %1, align 8, !tbaa !1392, !noalias !10158 ; 2 uses
  %i.ep = sub i64 %i.en, %i.el                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !168, !noalias !10158 ; 3 uses
  %.not.i.i34 = icmp ult i64 %i.ep, %i.er
  br i1 %.not.i.i34, label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit33
  %i.es = mul i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.ep                    ; 2 uses
  %i.eu = zext i64 %i.et to i128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1227, !noalias !10158
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.eu
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = trunc nuw i128 %i.ez to i64             ; 2 uses
  %i.fb = mul i64 %i.er, %i.fa
  %i.fc = sub i64 %i.et, %i.fb
  br label %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37

_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit37: ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit33, %bb.j
  %.05.i35 = phi i64 [ %i.em, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit33 ], [ %i.fa, %bb.j ] ; 3 uses
  %.0.i36 = phi i64 [ %i.ep, %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEplERKm.exit33 ], [ %i.fc, %bb.j ] ; 3 uses
  %i.fd = load ptr, ptr %i.cy, align 8, !tbaa !1241
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.05.i35
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1046
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %.0.i36
  %i.fh = load ptr, ptr %i.ct, align 8, !tbaa !1241
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05.i31
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1046
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.0.i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fl = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10161

.loopexit:                                        ; preds = %_ZNK6duckdb16block_iterator_tIKNS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEmiERKm.exit, %.preheader, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %5 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1389 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1389 ; 3 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br i1 %i.k, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1389 ; 2 uses
  %i.n = icmp eq i64 %i.d, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.i, %i.p
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !1392
  %i.t = load ptr, ptr %1, align 8, !tbaa !1392
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = mul i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = mul i64 %i.y, %i.b
  %.neg5.i = add i64 %i.w, %i.i                   ; 2 uses
  %i.aa = add i64 %i.g, %i.z
  %i.ab = sub i64 %.neg5.i, %i.aa                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !1392
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = mul i64 %i.ae, %i.m
  %.neg5.i6 = sub i64 %i.p, %.neg5.i
  %i.ag = add i64 %.neg5.i6, %i.af                ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ab) ; 3 uses
  %i.ah = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES8_EC2ES9_l.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.ai = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 288230376151711743)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi i64 [ %i.an, %select.unfold.i.i ], [ %i.ai, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.aj = shl nuw nsw i64 %.010.i.i, 5
  %i.ak = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.aj, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES8_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.al = icmp eq i64 %.010.i.i, 1
  %i.am = add nuw nsw i64 %.010.i.i, 1
  %i.an = lshr i64 %i.am, 1
  br i1 %i.al, label %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES8_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !10162

_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES8_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.c
  %.sroa.9.0 = phi ptr [ null, %bb.c ], [ %i.ak, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.c ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.5.0, %.sroa.speculated
  br i1 %i.ao, label %bb.d, label %bb.f, !prof !337

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES8_EC2ES9_l.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1392
  store ptr %i.ap, ptr %3, align 8, !tbaa !1392
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !168
  %i.as = load ptr, ptr %1, align 8, !tbaa !1392
  store ptr %i.as, ptr %4, align 8, !tbaa !1392
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !168
  %i.av = load ptr, ptr %2, align 8, !tbaa !1392
  store ptr %i.av, ptr %5, align 8, !tbaa !1392
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !168
  invoke void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef %.sroa.9.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEES8_EC2ES9_l.exit
  %i.az = icmp eq ptr %.sroa.9.0, null
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1392  ; 2 uses
  br i1 %i.az, label %bb.g, label %bb.h, !prof !56

bb.g:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %6, align 8, !tbaa !1392
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !168
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1392
  store ptr %i.bd, ptr %7, align 8, !tbaa !1392
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !168
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1392
  store ptr %i.bg, ptr %8, align 8, !tbaa !1392
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bi = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !168
  invoke void @_ZSt22__merge_without_bufferIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEEmN9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SJ_RT0_EUlRKS8_SN_E_EEEvSJ_SJ_SJ_SK_SK_T1_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, i64 noundef %i.ab, i64 noundef %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %i.ba, ptr %9, align 8, !tbaa !1392
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.a, align 8, !tbaa !168
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !168
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1392
  store ptr %i.bl, ptr %10, align 8, !tbaa !1392
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load <2 x i64>, ptr %i.c, align 8, !tbaa !168
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !168
  %i.bo = load ptr, ptr %2, align 8, !tbaa !1392
  store ptr %i.bo, ptr %11, align 8, !tbaa !1392
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = load <2 x i64>, ptr %i.l, align 8, !tbaa !168
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !168
  invoke void @_ZSt23__merge_adaptive_resizeIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_SL_T2_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i64 noundef %i.ab, i64 noundef %i.ag, ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @_ZdlPv(ptr noundef %.sroa.9.0) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEEmPS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZN15duckdb_ska_sort6detail15StdSortFallbackIS9_KNS0_13SkaExtractKeyIS8_EEEEvT_SK_RT0_EUlRKS8_SO_E_EEEvSK_SK_SK_SL_SL_T1_T2_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 4 uses
  %7 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 3 uses
  %10 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::block_iterator_t.1447", align 8 ; 4 uses
  %.not = icmp ugt i64 %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1392   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1389 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1391 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1392   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1389 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1391 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !168
  %i.m = mul i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = mul i64 %i.o, %i.c
  %i.q = add i64 %i.j, %i.m
  %i.r = add i64 %i.e, %i.p
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i.i.i.i, label %_ZSt4moveIN6duckdb16block_iterator_tIKNS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE9EEEEEPS8_ET0_T_SC_SB_.exit, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
end_hunk_8
