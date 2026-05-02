inline.NumInlined: 16951
inline.NumDeleted: 7027
begin_hunk_0_@_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE:bb.a
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !74, !range !26, !noundef !27
  %3 = trunc nuw i8 %i.qj to i1
  br i1 %3, label %.thread924.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

bb.ci:                                            ; preds = %bb.cg
  %.not10.i.i = icmp eq i32 %.0.copyload.i13.i.i, 1936482662
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE:bb.a
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !74, !range !26, !noundef !27
  %4 = trunc nuw i8 %i.qp to i1
  br i1 %4, label %.thread924.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

.thread924.i:                                     ; preds = %.thread1076.i, %.thread922.i, %bb.cj, %bb.ch
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE:bb.a
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !74, !range !26, !noundef !27
  %5 = trunc nuw i8 %i.rs to i1
  br i1 %5, label %.critedge7.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_18validateIRN8simdjson8fallback8ondemand8documentEEENS4_10error_codeET_.exit.thread

.critedge7.i.i:                                   ; preds = %bb.cp, %bb.co
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_:bb.a
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !74, !range !26, !noundef !27
  %3 = trunc nuw i8 %i.ou to i1                   ; 2 uses
  %brmerge = or i1 %i.od, %3
  %.mux = select i1 %3, i32 17, i32 0
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_:bb.a
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !21 ; 3 uses
  %4 = icmp eq ptr %i.pe, %i.c                    ; 2 uses
  br i1 %4, label %bb.bt, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit.i111

bb.bt:                                            ; preds = %bb.bs
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_:bb.a
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !74, !range !26, !noundef !27
  %5 = trunc nuw i8 %i.pm to i1                   ; 2 uses
  %brmerge1005.not = and i1 %4, %5
  %.mux1010 = select i1 %5, i32 0, i32 17
  br i1 %brmerge1005.not, label %.thread957, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.thread957:                                       ; preds = %bb.bu
  %i.pn = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !74, !range !26, !noundef !27
  %10 = trunc nuw i8 %i.nu to i1
  br i1 %10, label %.thread631.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.bk:                                            ; preds = %bb.bi
  %.not10.i.i = icmp eq i32 %.0.copyload.i13.i.i, 1936482662
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !74, !range !26, !noundef !27
  %11 = trunc nuw i8 %i.oa to i1
  br i1 %11, label %.thread631.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

.thread631.i:                                     ; preds = %.thread731.i, %.thread629.i, %bb.bl, %bb.bj
  %i.ob = load ptr, ptr %i.k, align 8, !tbaa !28
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.pa = zext i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !74, !range !26, !noundef !27
  %12 = trunc nuw i8 %i.pc to i1
  br i1 %12, label %.critedge7.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

.critedge7.i.i:                                   ; preds = %bb.br, %bb.bq
  %i.pd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.adn = zext i8 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !74, !range !26, !noundef !27
  %13 = trunc nuw i8 %i.adp to i1
  br i1 %13, label %.thread631.i105, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

bb.ee:                                            ; preds = %bb.ec
  %.not10.i.i110 = icmp eq i32 %.0.copyload.i13.i.i108, 1936482662
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.adt = zext i8 %i.ads to i64
  %i.adu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.adt
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !74, !range !26, !noundef !27
  %14 = trunc nuw i8 %i.adv to i1
  br i1 %14, label %.thread631.i105, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

.thread631.i105:                                  ; preds = %.thread731.i112, %.thread629.i103, %bb.ef, %bb.ed
  %i.adw = load ptr, ptr %i.k, align 8, !tbaa !28
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5parseEmb:bb.a
  %i.aev = zext i8 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !74, !range !26, !noundef !27
  %15 = trunc nuw i8 %i.aex to i1
  br i1 %15, label %.critedge7.i.i135, label %_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0ERN8simdjson8fallback8ondemand8documentEEENS5_10error_codeET0_.exit.thread

.critedge7.i.i135:                                ; preds = %bb.el, %bb.ek
  %i.aey = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !74, !range !26, !noundef !27
  %4 = trunc nuw i8 %i.lt to i1                   ; 2 uses
  %brmerge = or i1 %i.lb, %4
  %.mux = select i1 %4, i32 17, i32 0
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb1EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !74, !range !26, !noundef !27
  %5 = trunc nuw i8 %i.mm to i1
  br i1 %5, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit: ; preds = %bb.av
  br i1 %i.me, label %bb.aw, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !74, !range !26, !noundef !27
  %4 = trunc nuw i8 %i.lt to i1                   ; 2 uses
  %brmerge = or i1 %i.lb, %4
  %.mux = select i1 %4, i32 17, i32 0
  br i1 %brmerge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
end_hunk_14
begin_hunk_15_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl13generateViewsILb0EN8simdjson8fallback8ondemand5valueEEENS5_10error_codeET0_:bb.a
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !74, !range !26, !noundef !27
  %5 = trunc nuw i8 %i.mm to i1
  br i1 %5, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit: ; preds = %bb.av
  br i1 %i.me, label %bb.aw, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit.thread
end_hunk_15
