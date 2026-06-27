inline.NumInlined: 31
inline.NumDeleted: 2
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.cha = getelementptr inbounds nuw i8, ptr %.081.i, i64 1
  store i8 10, ptr %.081.i, align 1, !tbaa !81
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit539
  %.182.i = phi ptr [ %i.cha, %bb.ig ], [ %.081.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit539 ] ; 2 uses
  store i8 0, ptr %.182.i, align 1, !tbaa !81
  br i1 %.not27, label %.cont1260, label %.else1262

.else1262:                                        ; preds = %bb.ih
  %i.chb = ptrtoint ptr %.182.i to i64
  %i.chc = ptrtoint ptr %.080.i to i64
  %i.chd = sub i64 %i.chb, %i.chc
  store i64 %i.chd, ptr %3, align 8, !tbaa !91
  br label %.cont1260

.cont1260:                                        ; preds = %bb.ih, %.else1262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.ii:                                            ; preds = %bb.ie, %bb.ic, %bb.ia, %bb.hz, %bb.ec, %bb.i, %bb.g
  br i1 %.not27, label %.cont1257, label %.else1259

.else1259:                                        ; preds = %bb.ii
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont1257

.cont1257:                                        ; preds = %bb.ii, %.else1259
  store i32 2, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel1275.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1275.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1275.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.28, ptr %.sroa.sel1275.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

default.unreachable:                              ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit58
  unreachable

bb.ij:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit58
  br i1 %.not27, label %.cont1263, label %.else1265

.else1265:                                        ; preds = %bb.ij
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont1263

.cont1263:                                        ; preds = %bb.ij, %.else1265
  store i32 3, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel1272.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1272.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1272.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.86, ptr %.sroa.sel1272.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit551.thread1653: ; preds = %bb.eh
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %i.adk), !inline_history !283
  br i1 %.not27, label %.cont1254, label %.else1256

.else1256:                                        ; preds = %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit551.thread1653
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont1254

.cont1254:                                        ; preds = %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit551.thread1653, %.else1256
  store i32 4, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel1278.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1278.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1278.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.87, ptr %.sroa.sel1278.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

.loopexit:                                        ; preds = %.thread1619, %.thread, %.thread1629, %.thread1639
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %i.z), !inline_history !283
  br i1 %.not27, label %.cont1251, label %.else1253

.else1253:                                        ; preds = %.loopexit
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont1251

.cont1251:                                        ; preds = %.loopexit, %.else1253
  store i32 7, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel1281.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel1281.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel1281.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.88, ptr %.sroa.sel1281.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.ik:                                            ; preds = %bb.c
  %i.che = and i32 %1, 65
  %.not29 = icmp eq i32 %i.che, 0
  %i.chf = and i32 %1, 2
  %.not1788 = icmp eq i32 %i.chf, 0               ; 6 uses
  %i.chg = and i32 %1, 4
  %.not1789 = icmp eq i32 %i.chg, 0               ; 4 uses
  br i1 %.not29, label %bb.sn, label %bb.il

bb.il:                                            ; preds = %bb.ik
  br i1 %.not1788, label %bb.in, label %bb.im, !prof !24

bb.im:                                            ; preds = %bb.il
  %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i53 = select i1 %.not1789, ptr @_ZN13duckdb_yyjsonL13enc_table_escE, ptr @_ZN13duckdb_yyjsonL19enc_table_esc_slashE, !prof !24
  br label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i

bb.in:                                            ; preds = %bb.il
  %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i51 = select i1 %.not1789, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, ptr @_ZN13duckdb_yyjsonL19enc_table_cpy_slashE, !prof !24
  br label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i

_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i:  ; preds = %bb.im, %bb.in
  %.0.i52 = phi ptr [ %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i53, %bb.im ], [ %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i51, %bb.in ] ; 28 uses
  %i.chh = icmp eq ptr %.0.i52, @_ZN13duckdb_yyjsonL13enc_table_cpyE
  %i.chi = and i32 %1, 32
  %.not1772 = icmp eq i32 %i.chi, 0               ; 4 uses
  %i.chj = and i32 %1, 64
  %.not1773 = icmp eq i32 %i.chj, 0
  %i.chk = select i1 %.not1773, i64 4, i64 2, !prof !24 ; 63 uses
  %i.chl = and i32 %1, 128
  %.not1774 = icmp eq i32 %i.chl, 0
  %i.chm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.chn = load i64, ptr %i.chm, align 8, !tbaa !81
  %i.cho = shl i64 %i.chn, 1
  %i.chp = and i64 %i.cho, -32
  %i.chq = add i64 %i.chp, 64                     ; 3 uses
  %i.chr = tail call noundef ptr %.sroa.01323.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.chq), !inline_history !303 ; 6 uses
  %.not.i30 = icmp eq ptr %i.chr, null
  br i1 %.not.i30, label %.loopexit1950, label %bb.io

bb.io:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit556.i
  %i.chs = getelementptr inbounds nuw i8, ptr %i.chr, i64 %i.chq ; 2 uses
  %i.cht = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.chu = and i64 %i.cht, 7
  %i.chv = icmp eq i64 %i.chu, 7                  ; 3 uses
  %i.chw = zext i1 %i.chv to i8
  %i.chx = lshr i64 %i.cht, 8
  %i.chy = zext i1 %i.chv to i64
  %i.chz = shl nuw nsw i64 %i.chx, %i.chy
  %i.cia = select i1 %i.chv, i8 123, i8 91
  %i.cib = getelementptr inbounds nuw i8, ptr %i.chr, i64 1
  store i8 %i.cia, ptr %i.chr, align 1, !tbaa !81
  %i.cic = getelementptr inbounds nuw i8, ptr %i.chr, i64 2
  store i8 10, ptr %i.cib, align 1, !tbaa !81
  %i.cid = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cie = and i32 %1, 16
  %.not1784 = icmp eq i32 %i.cie, 0
  %i.cif = and i32 %1, 8
  %.not1785 = icmp eq i32 %i.cif, 0
  br label %.outer1955

.outer1955:                                       ; preds = %.outer1955.backedge, %bb.io
  %.01608.ph = phi i8 [ %i.chw, %bb.io ], [ %.01608.ph.be, %.outer1955.backedge ] ; 3 uses
  %.01607.ph = phi i64 [ %i.chz, %bb.io ], [ %.01607.ph.be, %.outer1955.backedge ]
  %.0489.i.ph = phi ptr [ %i.chs, %bb.io ], [ %.0489.i.ph.be, %.outer1955.backedge ]
  %.0478.i.ph = phi ptr [ %i.chs, %bb.io ], [ %.0478.i.ph.be, %.outer1955.backedge ]
  %.0467.i.ph = phi i64 [ %i.chq, %bb.io ], [ %.0467.i.ph.be, %.outer1955.backedge ]
  %.0465.i.ph = phi i64 [ 1, %bb.io ], [ %.0465.i.ph.be, %.outer1955.backedge ] ; 29 uses
  %.0451.i.ph = phi ptr [ %i.cic, %bb.io ], [ %.0451.i.ph.be, %.outer1955.backedge ]
  %.0450.i.ph = phi ptr [ %i.chr, %bb.io ], [ %.0450.i.ph.be, %.outer1955.backedge ]
  %.0449.i.ph = phi ptr [ %i.cid, %bb.io ], [ %.0449.i.ph.be, %.outer1955.backedge ]
  %i.cig = zext nneg i8 %.01608.ph to i32         ; 6 uses
  %i.cih = shl i64 %.0465.i.ph, 2                 ; 2 uses
  %i.cii = add i64 %i.cih, 32                     ; 2 uses
  %i.cij = add i64 %i.cih, 16                     ; 4 uses
  %.not.i122229123961 = icmp eq i64 %.0465.i.ph, 0
  %.not.i121429193962 = icmp eq i64 %.0465.i.ph, 0
  %.not.i121030063966 = icmp eq i64 %.0465.i.ph, 0
  %.not.i120630123967 = icmp eq i64 %.0465.i.ph, 0
  %.not.i119930183969 = icmp eq i64 %.0465.i.ph, 0
  %i.cik = add i64 %.0465.i.ph, -1                ; 7 uses
  %xtraiter = and i64 %.0465.i.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cil = icmp ult i64 %i.cik, 7
  %xtraiter6864 = and i64 %.0465.i.ph, 7          ; 2 uses
  %lcmp.mod6865.not = icmp eq i64 %xtraiter6864, 0
  %i.cim = icmp ult i64 %i.cik, 7
  %xtraiter6884 = and i64 %.0465.i.ph, 7          ; 2 uses
  %lcmp.mod6885.not = icmp eq i64 %xtraiter6884, 0
  %i.cin = icmp ult i64 %i.cik, 7
  %xtraiter6887 = and i64 %.0465.i.ph, 7          ; 2 uses
  %lcmp.mod6888.not = icmp eq i64 %xtraiter6887, 0
  %i.cio = icmp ult i64 %i.cik, 7
  %xtraiter6890 = and i64 %.0465.i.ph, 7          ; 2 uses
  %lcmp.mod6891.not = icmp eq i64 %xtraiter6890, 0
  %i.cip = icmp ult i64 %i.cik, 7
  br label %bb.ip

bb.ip:                                            ; preds = %.outer1955, %bb.rz
  %.01607 = phi i64 [ %i.gao, %bb.rz ], [ %.01607.ph, %.outer1955 ] ; 7 uses
  %.0489.i = phi ptr [ %.8497.i, %bb.rz ], [ %.0489.i.ph, %.outer1955 ] ; 14 uses
  %.0478.i = phi ptr [ %.8486.i, %bb.rz ], [ %.0478.i.ph, %.outer1955 ] ; 21 uses
  %.0467.i = phi i64 [ %.8475.i, %bb.rz ], [ %.0467.i.ph, %.outer1955 ] ; 28 uses
  %.0451.i = phi ptr [ %.9460.i, %bb.rz ], [ %.0451.i.ph, %.outer1955 ] ; 21 uses
  %.0450.i = phi ptr [ %.8.i, %bb.rz ], [ %.0450.i.ph, %.outer1955 ] ; 29 uses
  %.0449.i = phi ptr [ %i.gan, %bb.rz ], [ %.0449.i.ph, %.outer1955 ] ; 9 uses
  %i.ciq = load i64, ptr %.0449.i, align 8, !tbaa !79 ; 5 uses
  %i.cir = trunc i64 %i.ciq to i8                 ; 2 uses
  %i.cis = and i8 %i.cir, 7                       ; 3 uses
  switch i8 %i.cis, label %bb.rh [
    i8 5, label %bb.iq
    i8 4, label %bb.nj
  ]

bb.iq:                                            ; preds = %bb.ip
  %i.cit = trunc i64 %.01607 to i32               ; 2 uses
  %i.ciu = xor i32 %i.cit, -1
  %i.civ = and i32 %i.ciu, %i.cig
  %.not525.i = icmp eq i32 %i.civ, 0              ; 2 uses
  %i.ciw = and i32 %i.cit, %i.cig
  %.not526.i = trunc nuw i32 %i.ciw to i1         ; 2 uses
  %i.cix = lshr i64 %i.ciq, 8                     ; 7 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %.0449.i, i64 8
  %i.ciz = load ptr, ptr %i.ciy, align 8, !tbaa !81 ; 7 uses
  %i.cja = ptrtoint ptr %i.ciz to i64             ; 2 uses
  %i.cjb = mul nuw nsw i64 %i.cix, 6
  %i.cjc = select i1 %.not526.i, i64 16, i64 %i.cij
  %i.cjd = add i64 %i.cjc, %i.cjb                 ; 2 uses
  %i.cje = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.cjd
  %.not527.i = icmp ult ptr %i.cje, %.0478.i
  br i1 %.not527.i, label %bb.is, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i:  ; preds = %bb.iq
  %i.cjf = lshr i64 %.0467.i, 1
  %i.cjg = tail call i64 @llvm.umax.i64(i64 %i.cjf, i64 %i.cjd)
  %i.cjh = add i64 %i.cjg, 7
  %i.cji = and i64 %i.cjh, -8
  %i.cjj = add i64 %i.cji, %.0467.i               ; 4 uses
  %i.cjk = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0450.i, i64 noundef %.0467.i, i64 noundef %i.cjj), !inline_history !303 ; 6 uses
  %.not528.i = icmp eq ptr %i.cjk, null
  br i1 %.not528.i, label %.loopexit1950, label %bb.ir, !prof !7

bb.ir:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit554.i
  %i.cjl = ptrtoint ptr %.0489.i to i64
  %i.cjm = ptrtoint ptr %.0478.i to i64           ; 2 uses
  %i.cjn = sub i64 %i.cjl, %i.cjm                 ; 2 uses
  %i.cjo = sub i64 %i.cjj, %i.cjn
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjk, i64 %i.cjo ; 2 uses
  %i.cjq = ptrtoint ptr %.0450.i to i64           ; 2 uses
  %i.cjr = sub i64 %i.cjm, %i.cjq
  %i.cjs = getelementptr inbounds i8, ptr %i.cjk, i64 %i.cjr
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cjp, ptr nonnull align 1 %i.cjs, i64 %i.cjn, i1 false)
  %i.cjt = ptrtoint ptr %.0451.i to i64
  %i.cju = sub i64 %i.cjt, %i.cjq
  %i.cjv = getelementptr inbounds i8, ptr %i.cjk, i64 %i.cju
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjk, i64 %i.cjj
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.1490.i = phi ptr [ %i.cjw, %bb.ir ], [ %.0489.i, %bb.iq ]
  %.1479.i = phi ptr [ %i.cjp, %bb.ir ], [ %.0478.i, %bb.iq ]
  %.1468.i = phi i64 [ %i.cjj, %bb.ir ], [ %.0467.i, %bb.iq ]
  %.1452.i = phi ptr [ %i.cjv, %bb.ir ], [ %.0451.i, %bb.iq ] ; 3 uses
  %.1.i = phi ptr [ %i.cjk, %bb.ir ], [ %.0450.i, %bb.iq ] ; 2 uses
  %.not.i12142919 = select i1 %.not526.i, i1 true, i1 %.not.i121429193962
  br i1 %.not.i12142919, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1215, label %select.unfold1656.preheader

select.unfold1656.preheader:                      ; preds = %bb.is
  br i1 %lcmp.mod6865.not, label %select.unfold1656.prol.loopexit, label %select.unfold1656.prol

select.unfold1656.prol:                           ; preds = %select.unfold1656.preheader, %select.unfold1656.prol
  %.0.i12132921.prol = phi ptr [ %i.cjy, %select.unfold1656.prol ], [ %.1452.i, %select.unfold1656.preheader ] ; 2 uses
  %.04.i12122920.prol = phi i64 [ %i.cjx, %select.unfold1656.prol ], [ %.0465.i.ph, %select.unfold1656.preheader ]
  %prol.iter6866 = phi i64 [ %prol.iter6866.next, %select.unfold1656.prol ], [ 0, %select.unfold1656.preheader ]
  %i.cjx = add i64 %.04.i12122920.prol, -1        ; 2 uses
  store i32 538976288, ptr %.0.i12132921.prol, align 1
  %i.cjy = getelementptr inbounds nuw i8, ptr %.0.i12132921.prol, i64 %i.chk ; 3 uses
  %prol.iter6866.next = add i64 %prol.iter6866, 1 ; 2 uses
  %prol.iter6866.cmp.not = icmp eq i64 %prol.iter6866.next, %xtraiter6864
  br i1 %prol.iter6866.cmp.not, label %select.unfold1656.prol.loopexit, label %select.unfold1656.prol, !llvm.loop !304

select.unfold1656.prol.loopexit:                  ; preds = %select.unfold1656.prol, %select.unfold1656.preheader
  %.lcssa6633.unr = phi ptr [ poison, %select.unfold1656.preheader ], [ %i.cjy, %select.unfold1656.prol ]
  %.0.i12132921.unr = phi ptr [ %.1452.i, %select.unfold1656.preheader ], [ %i.cjy, %select.unfold1656.prol ]
  %.04.i12122920.unr = phi i64 [ %.0465.i.ph, %select.unfold1656.preheader ], [ %i.cjx, %select.unfold1656.prol ]
  br i1 %i.cim, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1215, label %select.unfold1656

select.unfold1656:                                ; preds = %select.unfold1656.prol.loopexit, %select.unfold1656
  %.0.i12132921 = phi ptr [ %i.ckh, %select.unfold1656 ], [ %.0.i12132921.unr, %select.unfold1656.prol.loopexit ] ; 2 uses
  %.04.i12122920 = phi i64 [ %i.ckg, %select.unfold1656 ], [ %.04.i12122920.unr, %select.unfold1656.prol.loopexit ]
  store i32 538976288, ptr %.0.i12132921, align 1
  %i.cjz = getelementptr inbounds nuw i8, ptr %.0.i12132921, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.cjz, align 1
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.cka, align 1
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cka, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ckb, align 1
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ckc, align 1
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.ckc, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ckd, align 1
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.cke, align 1
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 %i.chk ; 2 uses
  %i.ckg = add i64 %.04.i12122920, -8             ; 2 uses
  store i32 538976288, ptr %i.ckf, align 1
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.ckf, i64 %i.chk ; 2 uses
  %.not.i1214.7 = icmp eq i64 %i.ckg, 0
  br i1 %.not.i1214.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1215, label %select.unfold1656, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1215:  ; preds = %select.unfold1656.prol.loopexit, %select.unfold1656, %bb.is
  %.0.i1213.lcssa = phi ptr [ %.1452.i, %bb.is ], [ %.lcssa6633.unr, %select.unfold1656.prol.loopexit ], [ %i.ckh, %select.unfold1656 ] ; 5 uses
  br i1 %i.chh, label %bb.la, label %.split.i32, !prof !24

.split.i32:                                       ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1215
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ciz, i64 %i.cix ; 4 uses
  store i8 34, ptr %.0.i1213.lcssa, align 1, !tbaa !81
  %i.ckj = ptrtoint ptr %i.cki to i64             ; 5 uses
  %i.ckk = add i64 %i.cix, %i.cja
  br label %bb.it

bb.it:                                            ; preds = %bb.kf, %.split.i32
  %.0244.i276 = phi ptr [ %i.ciz, %.split.i32 ], [ %i.csd, %bb.kf ] ; 3 uses
  %.pn.i277 = phi ptr [ %.0.i1213.lcssa, %.split.i32 ], [ %.8.i290, %bb.kf ]
  %.0243.i278 = getelementptr inbounds nuw i8, ptr %.pn.i277, i64 1 ; 2 uses
  %i.ckl = ptrtoint ptr %.0244.i276 to i64        ; 2 uses
  %i.ckm = sub i64 %i.ckj, %i.ckl                 ; 2 uses
  %i.ckn = icmp sgt i64 %i.ckm, 15
  br i1 %i.ckn, label %.lr.ph2940, label %.preheader1940

.preheader1940:                                   ; preds = %bb.jj, %bb.it
  %.pre-phi3816 = phi i64 [ %i.ckm, %bb.it ], [ %i.cnt, %bb.jj ]
  %.pre-phi3815 = phi i64 [ %i.ckl, %bb.it ], [ %i.cns, %bb.jj ]
  %.1245.i279.lcssa = phi ptr [ %.0244.i276, %bb.it ], [ %i.cnr, %bb.jj ] ; 2 uses
  %.1.i280.lcssa = phi ptr [ %.0243.i278, %bb.it ], [ %i.cnq, %bb.jj ] ; 2 uses
  %i.cko = icmp sgt i64 %.pre-phi3816, 3
  br i1 %i.cko, label %.lr.ph2946, label %.preheader1938

.lr.ph2940:                                       ; preds = %bb.it, %bb.jj
  %.1.i2802938 = phi ptr [ %i.cnq, %bb.jj ], [ %.0243.i278, %bb.it ] ; 30 uses
  %.1245.i2792937 = phi ptr [ %i.cnr, %bb.jj ], [ %.0244.i276, %bb.it ] ; 46 uses
  %i.ckp = load i8, ptr %.1245.i2792937, align 1, !tbaa !81 ; 2 uses
  %i.ckq = zext i8 %i.ckp to i64
  %i.ckr = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.ckq
  %i.cks = load i8, ptr %i.ckr, align 1, !tbaa !81
  %.not277.i347 = icmp eq i8 %i.cks, 0
  br i1 %.not277.i347, label %bb.iu, label %.preheader1935.preheader, !prof !24

bb.iu:                                            ; preds = %.lr.ph2940
  %i.ckt = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 1
  %i.cku = load i8, ptr %i.ckt, align 1, !tbaa !81
  %i.ckv = zext i8 %i.cku to i64
  %i.ckw = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.ckv
  %i.ckx = load i8, ptr %i.ckw, align 1, !tbaa !81
  %.not278.i348 = icmp eq i8 %i.ckx, 0
  br i1 %.not278.i348, label %bb.iv, label %.loopexit1942, !prof !24

bb.iv:                                            ; preds = %bb.iu
  %i.cky = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 2
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !81
  %i.cla = zext i8 %i.ckz to i64
  %i.clb = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.cla
  %i.clc = load i8, ptr %i.clb, align 1, !tbaa !81
  %.not279.i349 = icmp eq i8 %i.clc, 0
  br i1 %.not279.i349, label %bb.iw, label %.loopexit1943, !prof !24

bb.iw:                                            ; preds = %bb.iv
  %i.cld = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 3
  %i.cle = load i8, ptr %i.cld, align 1, !tbaa !81
  %i.clf = zext i8 %i.cle to i64
  %i.clg = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.clf
  %i.clh = load i8, ptr %i.clg, align 1, !tbaa !81
  %.not280.i350 = icmp eq i8 %i.clh, 0
  br i1 %.not280.i350, label %bb.ix, label %.loopexit1944, !prof !24

bb.ix:                                            ; preds = %bb.iw
  %i.cli = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 4
  %i.clj = load i8, ptr %i.cli, align 1, !tbaa !81
  %i.clk = zext i8 %i.clj to i64
  %i.cll = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.clk
  %i.clm = load i8, ptr %i.cll, align 1, !tbaa !81
  %.not281.i351 = icmp eq i8 %i.clm, 0
  br i1 %.not281.i351, label %bb.iy, label %bb.jq, !prof !24

bb.iy:                                            ; preds = %bb.ix
  %i.cln = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 5
  %i.clo = load i8, ptr %i.cln, align 1, !tbaa !81
  %i.clp = zext i8 %i.clo to i64
  %i.clq = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.clp
  %i.clr = load i8, ptr %i.clq, align 1, !tbaa !81
  %.not282.i352 = icmp eq i8 %i.clr, 0
  br i1 %.not282.i352, label %bb.iz, label %bb.jr, !prof !24

bb.iz:                                            ; preds = %bb.iy
  %i.cls = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 6
  %i.clt = load i8, ptr %i.cls, align 1, !tbaa !81
  %i.clu = zext i8 %i.clt to i64
  %i.clv = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.clu
  %i.clw = load i8, ptr %i.clv, align 1, !tbaa !81
  %.not283.i353 = icmp eq i8 %i.clw, 0
  br i1 %.not283.i353, label %bb.ja, label %bb.js, !prof !24

bb.ja:                                            ; preds = %bb.iz
  %i.clx = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 7
  %i.cly = load i8, ptr %i.clx, align 1, !tbaa !81
  %i.clz = zext i8 %i.cly to i64
  %i.cma = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.clz
  %i.cmb = load i8, ptr %i.cma, align 1, !tbaa !81
  %.not284.i354 = icmp eq i8 %i.cmb, 0
  br i1 %.not284.i354, label %bb.jb, label %bb.jt, !prof !24

bb.jb:                                            ; preds = %bb.ja
  %i.cmc = getelementptr inbounds nuw i8, ptr %.1245.i2792937, i64 8
  %i.cmd = load i8, ptr %i.cmc, align 1, !tbaa !81
  %i.cme = zext i8 %i.cmd to i64
  %i.cmf = getelementptr inbounds nuw i8, ptr %.0.i52, i64 %i.cme
  %i.cmg = load i8, ptr %i.cmf, align 1, !tbaa !81
  %.not285.i355 = icmp eq i8 %i.cmg, 0
  br i1 %.not285.i355, label %bb.jc, label %bb.ju, !prof !24

bb.jc:                                            ; preds = %bb.jb
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %wide.load5995 = load <4 x i32>, ptr %next.gep5993, align 1
  %wide.load5996 = load <4 x i32>, ptr %i.dll, align 1
  %i.dlm = getelementptr i8, ptr %next.gep5994, i64 16
  store <4 x i32> %wide.load5995, ptr %next.gep5994, align 1
  store <4 x i32> %wide.load5996, ptr %i.dlm, align 1
  %index.next5997 = add nuw i64 %index5992, 8     ; 2 uses
  %i.dln = icmp eq i64 %index.next5997, %n.vec5990
  br i1 %i.dln, label %middle.block5998, label %vector.body5991, !llvm.loop !308

middle.block5998:                                 ; preds = %vector.body5991
  %cmp.n5999 = icmp eq i64 %i.dld, %n.vec5990
  br i1 %cmp.n5999, label %.preheader1952, label %.lr.ph2966.preheader6626

.lr.ph2966.preheader6626:                         ; preds = %.lr.ph2966.preheader, %middle.block5998
  %.1.i682965.ph = phi i64 [ %.0.i65.lcssa, %.lr.ph2966.preheader ], [ %i.dlg, %middle.block5998 ]
  %.119.i672964.ph = phi ptr [ %.018.i64.lcssa, %.lr.ph2966.preheader ], [ %i.dli, %middle.block5998 ]
  %.122.i662963.ph = phi ptr [ %.021.i63.lcssa, %.lr.ph2966.preheader ], [ %i.dlj, %middle.block5998 ]
  br label %.lr.ph2966

.lr.ph2959:                                       ; preds = %bb.ni, %.lr.ph2959
  %.0.i652957 = phi i64 [ %i.dlq, %.lr.ph2959 ], [ %i.cix, %bb.ni ]
  %.018.i642956 = phi ptr [ %i.dlp, %.lr.ph2959 ], [ %i.ciz, %bb.ni ] ; 2 uses
  %.021.i632955 = phi ptr [ %i.dlo, %.lr.ph2959 ], [ %i.dky, %bb.ni ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i632955, ptr noundef nonnull align 1 dereferenceable(16) %.018.i642956, i64 16, i1 false)
  %i.dlo = getelementptr inbounds nuw i8, ptr %.021.i632955, i64 16 ; 2 uses
  %i.dlp = getelementptr inbounds nuw i8, ptr %.018.i642956, i64 16 ; 2 uses
  %i.dlq = add nsw i64 %.0.i652957, -16           ; 3 uses
  %i.dlr = icmp ugt i64 %i.dlq, 15
  br i1 %i.dlr, label %.lr.ph2959, label %.preheader1953, !llvm.loop !292

.preheader1952:                                   ; preds = %.lr.ph2966, %middle.block5998, %.preheader1953
  %.122.i66.lcssa = phi ptr [ %.021.i63.lcssa, %.preheader1953 ], [ %i.dlj, %middle.block5998 ], [ %i.dmk, %.lr.ph2966 ] ; 7 uses
  %.119.i67.lcssa = phi ptr [ %.018.i64.lcssa, %.preheader1953 ], [ %i.dli, %middle.block5998 ], [ %i.dml, %.lr.ph2966 ] ; 6 uses
  %.1.i68.lcssa = phi i64 [ %.0.i65.lcssa, %.preheader1953 ], [ %i.dlg, %middle.block5998 ], [ %i.dmm, %.lr.ph2966 ] ; 11 uses
  %.not.i722970 = icmp eq i64 %.1.i68.lcssa, 0
  br i1 %.not.i722970, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363, label %iter.check

iter.check:                                       ; preds = %.preheader1952
  %.119.i67.lcssa5966 = ptrtoaddr ptr %.119.i67.lcssa to i64
  %.122.i66.lcssa5965 = ptrtoaddr ptr %.122.i66.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i68.lcssa, 4
  %i.dls = sub i64 %.122.i66.lcssa5965, %.119.i67.lcssa5966
  %diff.check = icmp ult i64 %i.dls, 32
  %or.cond6218 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond6218, label %.lr.ph2974.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5967 = icmp ult i64 %.1.i68.lcssa, 32
  br i1 %min.iters.check5967, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.1.i68.lcssa, 28
  %n.vec = and i64 %.1.i68.lcssa, -32             ; 5 uses
  %i.dlt = and i64 %.1.i68.lcssa, 31
  %i.dlu = getelementptr i8, ptr %.119.i67.lcssa, i64 %n.vec
  %i.dlv = getelementptr i8, ptr %.122.i66.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i67.lcssa, i64 %index ; 2 uses
  %next.gep5968 = getelementptr i8, ptr %.122.i66.lcssa, i64 %index ; 2 uses
  %i.dlw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !81
  %wide.load5969 = load <16 x i8>, ptr %i.dlw, align 1, !tbaa !81
  %i.dlx = getelementptr i8, ptr %next.gep5968, i64 16
  store <16 x i8> %wide.load, ptr %next.gep5968, align 1, !tbaa !81
  store <16 x i8> %wide.load5969, ptr %i.dlx, align 1, !tbaa !81
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dly = icmp eq i64 %index.next, %n.vec
  br i1 %i.dly, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i68.lcssa, %n.vec
  br i1 %cmp.n, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2974.preheader, label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5973 = and i64 %.1.i68.lcssa, -4          ; 4 uses
  %i.dlz = and i64 %.1.i68.lcssa, 3
  %i.dma = getelementptr i8, ptr %.119.i67.lcssa, i64 %n.vec5973
  %i.dmb = getelementptr i8, ptr %.122.i66.lcssa, i64 %n.vec5973 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5974 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5978, %vec.epilog.vector.body ] ; 3 uses
  %next.gep5975 = getelementptr i8, ptr %.119.i67.lcssa, i64 %index5974
  %next.gep5976 = getelementptr i8, ptr %.122.i66.lcssa, i64 %index5974
  %wide.load5977 = load <4 x i8>, ptr %next.gep5975, align 1, !tbaa !81
  store <4 x i8> %wide.load5977, ptr %next.gep5976, align 1, !tbaa !81
  %index.next5978 = add nuw i64 %index5974, 4     ; 2 uses
  %i.dmc = icmp eq i64 %index.next5978, %n.vec5973
  br i1 %i.dmc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !310

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5979 = icmp eq i64 %.1.i68.lcssa, %n.vec5973
  br i1 %cmp.n5979, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363, label %.lr.ph2974.preheader

.lr.ph2974.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i712973.ph = phi i64 [ %.1.i68.lcssa, %iter.check ], [ %i.dlt, %vec.epilog.iter.check ], [ %i.dlz, %vec.epilog.middle.block ] ; 4 uses
  %.220.i702972.ph = phi ptr [ %.119.i67.lcssa, %iter.check ], [ %i.dlu, %vec.epilog.iter.check ], [ %i.dma, %vec.epilog.middle.block ] ; 2 uses
  %.223.i692971.ph = phi ptr [ %.122.i66.lcssa, %iter.check ], [ %i.dlv, %vec.epilog.iter.check ], [ %i.dmb, %vec.epilog.middle.block ] ; 2 uses
  %i.dmd = add nsw i64 %.2.i712973.ph, -1
  %xtraiter6874 = and i64 %.2.i712973.ph, 7       ; 2 uses
  %lcmp.mod6875.not = icmp eq i64 %xtraiter6874, 0
  br i1 %lcmp.mod6875.not, label %.lr.ph2974.prol.loopexit, label %.lr.ph2974.prol

.lr.ph2974.prol:                                  ; preds = %.lr.ph2974.preheader, %.lr.ph2974.prol
  %.2.i712973.prol = phi i64 [ %i.dmh, %.lr.ph2974.prol ], [ %.2.i712973.ph, %.lr.ph2974.preheader ]
  %.220.i702972.prol = phi ptr [ %i.dme, %.lr.ph2974.prol ], [ %.220.i702972.ph, %.lr.ph2974.preheader ] ; 2 uses
  %.223.i692971.prol = phi ptr [ %i.dmg, %.lr.ph2974.prol ], [ %.223.i692971.ph, %.lr.ph2974.preheader ] ; 2 uses
  %prol.iter6876 = phi i64 [ %prol.iter6876.next, %.lr.ph2974.prol ], [ 0, %.lr.ph2974.preheader ]
  %i.dme = getelementptr inbounds nuw i8, ptr %.220.i702972.prol, i64 1 ; 2 uses
  %i.dmf = load i8, ptr %.220.i702972.prol, align 1, !tbaa !81
  %i.dmg = getelementptr inbounds nuw i8, ptr %.223.i692971.prol, i64 1 ; 3 uses
  store i8 %i.dmf, ptr %.223.i692971.prol, align 1, !tbaa !81
  %i.dmh = add nsw i64 %.2.i712973.prol, -1       ; 2 uses
  %prol.iter6876.next = add i64 %prol.iter6876, 1 ; 2 uses
  %prol.iter6876.cmp.not = icmp eq i64 %prol.iter6876.next, %xtraiter6874
  br i1 %prol.iter6876.cmp.not, label %.lr.ph2974.prol.loopexit, label %.lr.ph2974.prol, !llvm.loop !311

.lr.ph2974.prol.loopexit:                         ; preds = %.lr.ph2974.prol, %.lr.ph2974.preheader
  %.lcssa6718.unr = phi ptr [ poison, %.lr.ph2974.preheader ], [ %i.dmg, %.lr.ph2974.prol ]
  %.2.i712973.unr = phi i64 [ %.2.i712973.ph, %.lr.ph2974.preheader ], [ %i.dmh, %.lr.ph2974.prol ]
  %.220.i702972.unr = phi ptr [ %.220.i702972.ph, %.lr.ph2974.preheader ], [ %i.dme, %.lr.ph2974.prol ]
  %.223.i692971.unr = phi ptr [ %.223.i692971.ph, %.lr.ph2974.preheader ], [ %i.dmg, %.lr.ph2974.prol ]
  %i.dmi = icmp ult i64 %i.dmd, 7
  br i1 %i.dmi, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363, label %.lr.ph2974

.lr.ph2966:                                       ; preds = %.lr.ph2966.preheader6626, %.lr.ph2966
  %.1.i682965 = phi i64 [ %i.dmm, %.lr.ph2966 ], [ %.1.i682965.ph, %.lr.ph2966.preheader6626 ]
  %.119.i672964 = phi ptr [ %i.dml, %.lr.ph2966 ], [ %.119.i672964.ph, %.lr.ph2966.preheader6626 ] ; 2 uses
  %.122.i662963 = phi ptr [ %i.dmk, %.lr.ph2966 ], [ %.122.i662963.ph, %.lr.ph2966.preheader6626 ] ; 2 uses
  %i.dmj = load i32, ptr %.119.i672964, align 1
  store i32 %i.dmj, ptr %.122.i662963, align 1
  %i.dmk = getelementptr inbounds nuw i8, ptr %.122.i662963, i64 4 ; 2 uses
  %i.dml = getelementptr inbounds nuw i8, ptr %.119.i672964, i64 4 ; 2 uses
  %i.dmm = add nsw i64 %.1.i682965, -4            ; 3 uses
  %i.dmn = icmp ugt i64 %i.dmm, 3
  br i1 %i.dmn, label %.lr.ph2966, label %.preheader1952, !llvm.loop !312

.lr.ph2974:                                       ; preds = %.lr.ph2974.prol.loopexit, %.lr.ph2974
  %.2.i712973 = phi i64 [ %i.dnm, %.lr.ph2974 ], [ %.2.i712973.unr, %.lr.ph2974.prol.loopexit ]
  %.220.i702972 = phi ptr [ %i.dnj, %.lr.ph2974 ], [ %.220.i702972.unr, %.lr.ph2974.prol.loopexit ] ; 9 uses
  %.223.i692971 = phi ptr [ %i.dnl, %.lr.ph2974 ], [ %.223.i692971.unr, %.lr.ph2974.prol.loopexit ] ; 9 uses
  %i.dmo = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 1
  %i.dmp = load i8, ptr %.220.i702972, align 1, !tbaa !81
  %i.dmq = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 1
  store i8 %i.dmp, ptr %.223.i692971, align 1, !tbaa !81
  %i.dmr = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 2
  %i.dms = load i8, ptr %i.dmo, align 1, !tbaa !81
  %i.dmt = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 2
  store i8 %i.dms, ptr %i.dmq, align 1, !tbaa !81
  %i.dmu = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 3
  %i.dmv = load i8, ptr %i.dmr, align 1, !tbaa !81
  %i.dmw = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 3
  store i8 %i.dmv, ptr %i.dmt, align 1, !tbaa !81
  %i.dmx = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 4
  %i.dmy = load i8, ptr %i.dmu, align 1, !tbaa !81
  %i.dmz = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 4
  store i8 %i.dmy, ptr %i.dmw, align 1, !tbaa !81
  %i.dna = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 5
  %i.dnb = load i8, ptr %i.dmx, align 1, !tbaa !81
  %i.dnc = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 5
  store i8 %i.dnb, ptr %i.dmz, align 1, !tbaa !81
  %i.dnd = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 6
  %i.dne = load i8, ptr %i.dna, align 1, !tbaa !81
  %i.dnf = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 6
  store i8 %i.dne, ptr %i.dnc, align 1, !tbaa !81
  %i.dng = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 7
  %i.dnh = load i8, ptr %i.dnd, align 1, !tbaa !81
  %i.dni = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 7
  store i8 %i.dnh, ptr %i.dnf, align 1, !tbaa !81
  %i.dnj = getelementptr inbounds nuw i8, ptr %.220.i702972, i64 8
  %i.dnk = load i8, ptr %i.dng, align 1, !tbaa !81
  %i.dnl = getelementptr inbounds nuw i8, ptr %.223.i692971, i64 8 ; 2 uses
  store i8 %i.dnk, ptr %i.dni, align 1, !tbaa !81
  %i.dnm = add nsw i64 %.2.i712973, -8            ; 2 uses
  %.not.i72.7 = icmp eq i64 %i.dnm, 0
  br i1 %.not.i72.7, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363, label %.lr.ph2974, !llvm.loop !313

_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363: ; preds = %.preheader1938, %.lr.ph2974.prol.loopexit, %.lr.ph2974, %.preheader1924, %bb.jp, %.lr.ph2951.prol.loopexit, %bb.kc, %bb.ke, %bb.lx, %.lr.ph3002.prol.loopexit, %bb.mk, %bb.mm, %middle.block, %vec.epilog.middle.block, %.preheader1952
  %.3.i284.lcssa.sink5255 = phi ptr [ %.122.i66.lcssa, %.preheader1952 ], [ %.8.i290, %bb.kc ], [ %.lcssa6790.unr, %.lr.ph3002.prol.loopexit ], [ %i.dmb, %vec.epilog.middle.block ], [ %i.dnl, %.lr.ph2974 ], [ %i.dlv, %middle.block ], [ %.lcssa6705.unr, %.lr.ph2951.prol.loopexit ], [ %.2.i194.lcssa, %.preheader1924 ], [ %.8.i202, %bb.mk ], [ %.8.i202, %bb.mm ], [ %i.ddm, %bb.lx ], [ %.8.i290, %bb.ke ], [ %i.cqd, %bb.jp ], [ %.lcssa6718.unr, %.lr.ph2974.prol.loopexit ], [ %.2.i282.lcssa, %.preheader1938 ] ; 4 uses
  %i.dnn = getelementptr inbounds nuw i8, ptr %.3.i284.lcssa.sink5255, i64 1
  store i8 34, ptr %.3.i284.lcssa.sink5255, align 1, !tbaa !81
  %i.dno = select i1 %.not525.i, i8 44, i8 58
  %i.dnp = getelementptr inbounds nuw i8, ptr %.3.i284.lcssa.sink5255, i64 2
  store i8 %i.dno, ptr %i.dnn, align 1, !tbaa !81
  %i.dnq = select i1 %.not525.i, i8 10, i8 32
  %i.dnr = getelementptr inbounds nuw i8, ptr %.3.i284.lcssa.sink5255, i64 3
  store i8 %i.dnq, ptr %i.dnp, align 1, !tbaa !81
  br label %bb.rz

bb.nj:                                            ; preds = %bb.ip
  %i.dns = trunc i64 %.01607 to i32
  %i.dnt = and i32 %i.dns, %i.cig
  %.not520.i = trunc nuw i32 %i.dnt to i1         ; 2 uses
  %i.dnu = select i1 %.not520.i, i64 32, i64 %i.cii ; 2 uses
  %i.dnv = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.dnu
  %.not521.i = icmp ult ptr %i.dnv, %.0478.i
  br i1 %.not521.i, label %bb.nl, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i:  ; preds = %bb.nj
  %i.dnw = lshr i64 %.0467.i, 1
  %i.dnx = tail call i64 @llvm.umax.i64(i64 %i.dnw, i64 %i.dnu)
  %i.dny = add i64 %i.dnx, 7
  %i.dnz = and i64 %i.dny, -8
  %i.doa = add i64 %i.dnz, %.0467.i               ; 4 uses
  %i.dob = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0450.i, i64 noundef %.0467.i, i64 noundef %i.doa), !inline_history !303 ; 6 uses
  %.not522.i = icmp eq ptr %i.dob, null
  br i1 %.not522.i, label %.loopexit1950, label %bb.nk, !prof !7

bb.nk:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit552.i
  %i.doc = ptrtoint ptr %.0489.i to i64
  %i.dod = ptrtoint ptr %.0478.i to i64           ; 2 uses
  %i.doe = sub i64 %i.doc, %i.dod                 ; 2 uses
  %i.dof = sub i64 %i.doa, %i.doe
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dob, i64 %i.dof ; 2 uses
  %i.doh = ptrtoint ptr %.0450.i to i64           ; 2 uses
  %i.doi = sub i64 %i.dod, %i.doh
  %i.doj = getelementptr inbounds i8, ptr %i.dob, i64 %i.doi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dog, ptr nonnull align 1 %i.doj, i64 %i.doe, i1 false)
  %i.dok = ptrtoint ptr %.0451.i to i64
  %i.dol = sub i64 %i.dok, %i.doh
  %i.dom = getelementptr inbounds i8, ptr %i.dob, i64 %i.dol
  %i.don = getelementptr inbounds nuw i8, ptr %i.dob, i64 %i.doa
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.2491.i = phi ptr [ %i.don, %bb.nk ], [ %.0489.i, %bb.nj ]
  %.2480.i = phi ptr [ %i.dog, %bb.nk ], [ %.0478.i, %bb.nj ]
  %.2469.i = phi i64 [ %i.doa, %bb.nk ], [ %.0467.i, %bb.nj ]
  %.3454.i = phi ptr [ %i.dom, %bb.nk ], [ %.0451.i, %bb.nj ] ; 3 uses
  %.2.i = phi ptr [ %i.dob, %bb.nk ], [ %.0450.i, %bb.nj ] ; 2 uses
  %.not.i12222912 = select i1 %.not520.i, i1 true, i1 %.not.i122229123961
  br i1 %.not.i12222912, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1223, label %select.unfold1699.preheader

select.unfold1699.preheader:                      ; preds = %bb.nl
  br i1 %lcmp.mod.not, label %select.unfold1699.prol.loopexit, label %select.unfold1699.prol

select.unfold1699.prol:                           ; preds = %select.unfold1699.preheader, %select.unfold1699.prol
  %.0.i12212914.prol = phi ptr [ %i.dop, %select.unfold1699.prol ], [ %.3454.i, %select.unfold1699.preheader ] ; 2 uses
  %.04.i12202913.prol = phi i64 [ %i.doo, %select.unfold1699.prol ], [ %.0465.i.ph, %select.unfold1699.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold1699.prol ], [ 0, %select.unfold1699.preheader ]
  %i.doo = add i64 %.04.i12202913.prol, -1        ; 2 uses
  store i32 538976288, ptr %.0.i12212914.prol, align 1
  %i.dop = getelementptr inbounds nuw i8, ptr %.0.i12212914.prol, i64 %i.chk ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold1699.prol.loopexit, label %select.unfold1699.prol, !llvm.loop !314

select.unfold1699.prol.loopexit:                  ; preds = %select.unfold1699.prol, %select.unfold1699.preheader
  %.lcssa6630.unr = phi ptr [ poison, %select.unfold1699.preheader ], [ %i.dop, %select.unfold1699.prol ]
  %.0.i12212914.unr = phi ptr [ %.3454.i, %select.unfold1699.preheader ], [ %i.dop, %select.unfold1699.prol ]
  %.04.i12202913.unr = phi i64 [ %.0465.i.ph, %select.unfold1699.preheader ], [ %i.doo, %select.unfold1699.prol ]
  br i1 %i.cil, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1223, label %select.unfold1699

select.unfold1699:                                ; preds = %select.unfold1699.prol.loopexit, %select.unfold1699
  %.0.i12212914 = phi ptr [ %i.doy, %select.unfold1699 ], [ %.0.i12212914.unr, %select.unfold1699.prol.loopexit ] ; 2 uses
  %.04.i12202913 = phi i64 [ %i.dox, %select.unfold1699 ], [ %.04.i12202913.unr, %select.unfold1699.prol.loopexit ]
  store i32 538976288, ptr %.0.i12212914, align 1
  %i.doq = getelementptr inbounds nuw i8, ptr %.0.i12212914, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.doq, align 1
  %i.dor = getelementptr inbounds nuw i8, ptr %i.doq, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dor, align 1
  %i.dos = getelementptr inbounds nuw i8, ptr %i.dor, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dos, align 1
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dos, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dot, align 1
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dot, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dou, align 1
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dou, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dov, align 1
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dov, i64 %i.chk ; 2 uses
  %i.dox = add i64 %.04.i12202913, -8             ; 2 uses
  store i32 538976288, ptr %i.dow, align 1
  %i.doy = getelementptr inbounds nuw i8, ptr %i.dow, i64 %i.chk ; 2 uses
  %.not.i1222.7 = icmp eq i64 %i.dox, 0
  br i1 %.not.i1222.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1223, label %select.unfold1699, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1223:  ; preds = %select.unfold1699.prol.loopexit, %select.unfold1699, %bb.nl
  %.0.i1221.lcssa = phi ptr [ %.3454.i, %bb.nl ], [ %.lcssa6630.unr, %select.unfold1699.prol.loopexit ], [ %i.doy, %select.unfold1699 ] ; 10 uses
  %i.doz = load i64, ptr %.0449.i, align 8, !tbaa !79 ; 2 uses
  %i.dpa = and i64 %i.doz, 16
  %.not.i542 = icmp eq i64 %i.dpa, 0
  %i.dpb = getelementptr inbounds nuw i8, ptr %.0449.i, i64 8
  %i.dpc = load i64, ptr %i.dpb, align 8, !tbaa !81 ; 10 uses
  br i1 %.not.i542, label %bb.qo, label %bb.nm

bb.nm:                                            ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1223
  %i.dpd = and i64 %i.dpc, 4503599627370495       ; 4 uses
  %i.dpe = lshr i64 %i.dpc, 52
  %i.dpf = trunc nuw nsw i64 %i.dpe to i32
  %i.dpg = and i32 %i.dpf, 2047                   ; 7 uses
  %i.dph = icmp eq i32 %i.dpg, 2047
  br i1 %i.dph, label %bb.nn, label %bb.nt, !prof !7

bb.nn:                                            ; preds = %bb.nm
  br i1 %.not1784, label %bb.np, label %bb.no, !prof !24

bb.no:                                            ; preds = %bb.nn
  store i32 1819047278, ptr %.0.i1221.lcssa, align 1
  %i.dpi = getelementptr inbounds nuw i8, ptr %.0.i1221.lcssa, i64 4
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

bb.np:                                            ; preds = %bb.nn
  br i1 %.not1785, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread1704, label %bb.nq, !prof !24

bb.nq:                                            ; preds = %bb.np
  %i.dpj = icmp eq i64 %i.dpd, 0
  br i1 %i.dpj, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  store i8 45, ptr %.0.i1221.lcssa, align 1, !tbaa !81
  %.lobit131.i642 = lshr i64 %i.dpc, 63
  %i.dpk = getelementptr inbounds nuw i8, ptr %.0.i1221.lcssa, i64 %.lobit131.i642 ; 2 uses
  store i64 8751735898823355977, ptr %i.dpk, align 1
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.dpk, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

bb.ns:                                            ; preds = %bb.nq
  store i32 5136718, ptr %.0.i1221.lcssa, align 1
  %i.dpm = getelementptr inbounds nuw i8, ptr %.0.i1221.lcssa, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

bb.nt:                                            ; preds = %bb.nm
  store i8 45, ptr %.0.i1221.lcssa, align 1, !tbaa !81
  %.lobit.i629 = lshr i64 %i.dpc, 63
  %i.dpn = getelementptr i8, ptr %.0.i1221.lcssa, i64 %.lobit.i629 ; 43 uses
  %.mask.i630 = and i64 %i.dpc, 9223372036854775807
  %i.dpo = icmp eq i64 %.mask.i630, 0
  br i1 %i.dpo, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  store i32 3157552, ptr %i.dpn, align 1
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dpn, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

bb.nv:                                            ; preds = %bb.nt
  %.not.i631 = icmp eq i32 %i.dpg, 0
  br i1 %.not.i631, label %bb.pr, label %bb.nw, !prof !7

bb.nw:                                            ; preds = %bb.nv
  %i.dpq = or disjoint i64 %i.dpd, 4503599627370496 ; 3 uses
  %i.dpr = add nsw i32 %i.dpg, -1023
  %or.cond.i632 = icmp ult i32 %i.dpr, 53
  br i1 %or.cond.i632, label %bb.nx, label %bb.on

bb.nx:                                            ; preds = %bb.nw
  %i.dps = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.dpq, i1 true)
  %i.dpt = trunc nuw nsw i64 %i.dps to i32
  %i.dpu = sub nuw nsw i32 1075, %i.dpg           ; 2 uses
  %.not127.i639 = icmp samesign ugt i32 %i.dpu, %i.dpt
  br i1 %.not127.i639, label %bb.on, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.dpv = zext nneg i32 %i.dpu to i64
  %i.dpw = lshr i64 %i.dpq, %i.dpv                ; 21 uses
  %i.dpx = icmp samesign ult i64 %i.dpw, 100000000
  br i1 %i.dpx, label %bb.nz, label %bb.og

bb.nz:                                            ; preds = %bb.ny
  %i.dpy = trunc nuw nsw i64 %i.dpw to i32        ; 4 uses
  %i.dpz = icmp samesign ult i64 %i.dpw, 100
  br i1 %i.dpz, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.dqa = icmp samesign ult i64 %i.dpw, 10       ; 2 uses
  %i.dqb = shl nuw nsw i64 %i.dpw, 1
  %i.dqc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dqb
  %.neg70.i1013 = sext i1 %i.dqa to i64
  %i.dqd = zext i1 %i.dqa to i64
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.dqc, i64 %i.dqd
  %i.dqf = load i16, ptr %i.dqe, align 1
  store i16 %i.dqf, ptr %i.dpn, align 1
  %i.dqg = getelementptr inbounds i8, ptr %i.dpn, i64 %.neg70.i1013
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.dqg, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit675

bb.ob:                                            ; preds = %bb.nz
  %i.dqi = icmp samesign ult i64 %i.dpw, 10000
  br i1 %i.dqi, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.dqj = mul nuw nsw i32 %i.dpy, 5243
  %i.dqk = lshr i32 %i.dqj, 19                    ; 2 uses
  %.neg68.i1011 = mul nsw i32 %i.dqk, -100
  %i.dql = add nsw i32 %.neg68.i1011, %i.dpy
  %i.dqm = icmp samesign ult i64 %i.dpw, 1000     ; 2 uses
  %i.dqn = shl nuw nsw i32 %i.dqk, 1
  %i.dqo = zext nneg i32 %i.dqn to i64
  %i.dqp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dqo
  %.neg69.i1012 = sext i1 %i.dqm to i64
  %i.dqq = zext i1 %i.dqm to i64
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.dqp, i64 %i.dqq
  %i.dqs = load i16, ptr %i.dqr, align 1
  store i16 %i.dqs, ptr %i.dpn, align 1
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.fnz = lshr i64 %i.fny, 40
  %i.foa = trunc nuw nsw i64 %i.fnz to i32        ; 3 uses
  %.neg.i1163 = mul i32 %i.foa, -10000
  %i.fob = add i32 %.neg.i1163, %i.fkm            ; 2 uses
  %i.foc = mul nuw i32 %i.foa, 5243
  %i.fod = lshr i32 %i.foc, 19                    ; 2 uses
  %i.foe = mul i32 %i.fob, 5243
  %i.fof = lshr i32 %i.foe, 19                    ; 2 uses
  %.neg17.i1164 = mul nsw i32 %i.fod, -100
  %i.fog = add nsw i32 %.neg17.i1164, %i.foa
  %.neg18.i1165 = mul i32 %i.fof, 2147483548
  %i.foh = add i32 %.neg18.i1165, %i.fob
  %i.foi = shl nuw nsw i32 %i.fod, 1
  %i.foj = zext nneg i32 %i.foi to i64
  %i.fok = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.foj
  %i.fol = load i16, ptr %i.fok, align 2
  store i16 %i.fol, ptr %.0.i1091, align 1
  %i.fom = getelementptr inbounds nuw i8, ptr %.0.i1091, i64 2
  %i.fon = shl nsw i32 %i.fog, 1
  %i.foo = zext i32 %i.fon to i64
  %i.fop = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.foo
  %i.foq = load i16, ptr %i.fop, align 2
  store i16 %i.foq, ptr %i.fom, align 1
  %i.for = getelementptr inbounds nuw i8, ptr %.0.i1091, i64 4
  %i.fos = shl nuw nsw i32 %i.fof, 1
  %i.fot = zext nneg i32 %i.fos to i64
  %i.fou = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fot
  %i.fov = load i16, ptr %i.fou, align 2
  store i16 %i.fov, ptr %i.for, align 1
  %i.fow = getelementptr inbounds nuw i8, ptr %.0.i1091, i64 6
  %i.fox = shl i32 %i.foh, 1
  %i.foy = zext i32 %i.fox to i64
  %i.foz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.foy
  %i.fpa = load i16, ptr %i.foz, align 2
  store i16 %i.fpa, ptr %i.fow, align 1
  %i.fpb = getelementptr inbounds nuw i8, ptr %.0.i1091, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

bb.re:                                            ; preds = %bb.qw
  %i.fpc = udiv i64 %i.fgw, 1000000000000         ; 4 uses
  %i.fpd = trunc nuw nsw i64 %i.fpc to i32        ; 2 uses
  %.neg27.i662 = mul nuw nsw i64 %i.fpc, 4294957296
  %i.fpe = add nuw nsw i64 %.neg27.i662, %i.fkk
  %i.fpf = trunc i64 %i.fpe to i32                ; 2 uses
  %i.fpg = icmp ult i64 %i.fgw, 1000000000000000000
  br i1 %i.fpg, label %bb.rf, label %bb.rg

bb.rf:                                            ; preds = %bb.re
  %i.fph = mul nuw nsw i64 %i.fpc, 429497
  %i.fpi = lshr i64 %i.fph, 32                    ; 2 uses
  %i.fpj = trunc nuw nsw i64 %i.fpi to i32
  %.neg44.i1182 = mul nsw i32 %i.fpj, -10000
  %i.fpk = add nsw i32 %.neg44.i1182, %i.fpd      ; 2 uses
  %i.fpl = mul i32 %i.fpk, 5243
  %i.fpm = lshr i32 %i.fpl, 19                    ; 2 uses
  %.neg45.i1183 = mul nsw i32 %i.fpm, -100
  %i.fpn = add nsw i32 %.neg45.i1183, %i.fpk
  %i.fpo = icmp samesign ult i64 %i.fgw, 100000000000000000 ; 2 uses
  %i.fpp = shl nuw nsw i64 %i.fpi, 1
  %i.fpq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fpp
  %.neg46.i1184 = sext i1 %i.fpo to i64
  %i.fpr = zext i1 %i.fpo to i64
  %i.fps = getelementptr inbounds nuw i8, ptr %i.fpq, i64 %i.fpr
  %i.fpt = load i16, ptr %i.fps, align 1
  store i16 %i.fpt, ptr %i.fgx, align 1
  %i.fpu = getelementptr inbounds i8, ptr %i.fgx, i64 %.neg46.i1184 ; 3 uses
  %i.fpv = getelementptr inbounds nuw i8, ptr %i.fpu, i64 2
  %i.fpw = shl nuw nsw i32 %i.fpm, 1
  %i.fpx = zext nneg i32 %i.fpw to i64
  %i.fpy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fpx
  %i.fpz = load i16, ptr %i.fpy, align 2
  store i16 %i.fpz, ptr %i.fpv, align 1
  %i.fqa = getelementptr inbounds nuw i8, ptr %i.fpu, i64 4
  %i.fqb = shl nsw i32 %i.fpn, 1
  %i.fqc = zext i32 %i.fqb to i64
  %i.fqd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fqc
  %i.fqe = load i16, ptr %i.fqd, align 2
  store i16 %i.fqe, ptr %i.fqa, align 1
  %i.fqf = getelementptr inbounds nuw i8, ptr %i.fpu, i64 6
  br label %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit1185

bb.rg:                                            ; preds = %bb.re
  %i.fqg = mul nuw nsw i64 %i.fpc, 109951163
  %i.fqh = lshr i64 %i.fqg, 40
  %i.fqi = trunc nuw nsw i64 %i.fqh to i32        ; 3 uses
  %.neg.i1177 = mul nsw i32 %i.fqi, -10000
  %i.fqj = add nsw i32 %.neg.i1177, %i.fpd        ; 2 uses
  %i.fqk = mul nuw nsw i32 %i.fqi, 5243
  %i.fql = lshr i32 %i.fqk, 19                    ; 2 uses
  %i.fqm = mul i32 %i.fqj, 5243
  %i.fqn = lshr i32 %i.fqm, 19                    ; 2 uses
  %.neg41.i1178 = mul nsw i32 %i.fql, -100
  %i.fqo = add nsw i32 %.neg41.i1178, %i.fqi
  %.neg42.i1179 = mul nsw i32 %i.fqn, -100
  %i.fqp = add nsw i32 %.neg42.i1179, %i.fqj
  %i.fqq = icmp ult i64 %i.fgw, -8446744073709551616 ; 2 uses
  %i.fqr = shl nuw nsw i32 %i.fql, 1
  %i.fqs = zext nneg i32 %i.fqr to i64
  %i.fqt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fqs
  %.neg43.i1180 = sext i1 %i.fqq to i64
  %i.fqu = zext i1 %i.fqq to i64
  %i.fqv = getelementptr inbounds nuw i8, ptr %i.fqt, i64 %i.fqu
  %i.fqw = load i16, ptr %i.fqv, align 1
  store i16 %i.fqw, ptr %i.fgx, align 1
  %i.fqx = getelementptr inbounds i8, ptr %i.fgx, i64 %.neg43.i1180 ; 4 uses
  %i.fqy = getelementptr inbounds nuw i8, ptr %i.fqx, i64 2
  %i.fqz = shl nsw i32 %i.fqo, 1
  %i.fra = zext i32 %i.fqz to i64
  %i.frb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fra
  %i.frc = load i16, ptr %i.frb, align 2
  store i16 %i.frc, ptr %i.fqy, align 1
  %i.frd = getelementptr inbounds nuw i8, ptr %i.fqx, i64 4
  %i.fre = shl nuw nsw i32 %i.fqn, 1
  %i.frf = zext nneg i32 %i.fre to i64
  %i.frg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frf
  %i.frh = load i16, ptr %i.frg, align 2
  store i16 %i.frh, ptr %i.frd, align 1
  %i.fri = getelementptr inbounds nuw i8, ptr %i.fqx, i64 6
  %i.frj = shl nsw i32 %i.fqp, 1
  %i.frk = zext i32 %i.frj to i64
  %i.frl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frk
  %i.frm = load i16, ptr %i.frl, align 2
  store i16 %i.frm, ptr %i.fri, align 1
  %i.frn = getelementptr inbounds nuw i8, ptr %i.fqx, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit1185

_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit1185: ; preds = %bb.rf, %bb.rg
  %.0.i1181 = phi ptr [ %i.fqf, %bb.rf ], [ %i.frn, %bb.rg ] ; 7 uses
  %i.fro = mul i32 %i.fpf, 5243
  %i.frp = lshr i32 %i.fro, 19                    ; 2 uses
  %.neg.i1196 = mul i32 %i.frp, 2147483548
  %i.frq = add i32 %.neg.i1196, %i.fpf
  %i.frr = shl nuw nsw i32 %i.frp, 1
  %i.frs = zext nneg i32 %i.frr to i64
  %i.frt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frs
  %i.fru = load i16, ptr %i.frt, align 2
  store i16 %i.fru, ptr %.0.i1181, align 1
  %i.frv = getelementptr inbounds nuw i8, ptr %.0.i1181, i64 2
  %i.frw = shl i32 %i.frq, 1
  %i.frx = zext i32 %i.frw to i64
  %i.fry = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frx
  %i.frz = load i16, ptr %i.fry, align 2
  store i16 %i.frz, ptr %i.frv, align 1
  %i.fsa = getelementptr inbounds nuw i8, ptr %.0.i1181, i64 4
  %i.fsb = and i64 %i.fkl, 4294967295
  %i.fsc = mul nuw nsw i64 %i.fsb, 109951163
  %i.fsd = lshr i64 %i.fsc, 40
  %i.fse = trunc nuw nsw i64 %i.fsd to i32        ; 3 uses
  %.neg.i1166 = mul i32 %i.fse, -10000
  %i.fsf = add i32 %.neg.i1166, %i.fkm            ; 2 uses
  %i.fsg = mul nuw i32 %i.fse, 5243
  %i.fsh = lshr i32 %i.fsg, 19                    ; 2 uses
  %i.fsi = mul i32 %i.fsf, 5243
  %i.fsj = lshr i32 %i.fsi, 19                    ; 2 uses
  %.neg17.i1167 = mul nsw i32 %i.fsh, -100
  %i.fsk = add nsw i32 %.neg17.i1167, %i.fse
  %.neg18.i1168 = mul i32 %i.fsj, 2147483548
  %i.fsl = add i32 %.neg18.i1168, %i.fsf
  %i.fsm = shl nuw nsw i32 %i.fsh, 1
  %i.fsn = zext nneg i32 %i.fsm to i64
  %i.fso = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fsn
  %i.fsp = load i16, ptr %i.fso, align 2
  store i16 %i.fsp, ptr %i.fsa, align 1
  %i.fsq = getelementptr inbounds nuw i8, ptr %.0.i1181, i64 6
  %i.fsr = shl nsw i32 %i.fsk, 1
  %i.fss = zext i32 %i.fsr to i64
  %i.fst = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fss
  %i.fsu = load i16, ptr %i.fst, align 2
  store i16 %i.fsu, ptr %i.fsq, align 1
  %i.fsv = getelementptr inbounds nuw i8, ptr %.0.i1181, i64 8
  %i.fsw = shl nuw nsw i32 %i.fsj, 1
  %i.fsx = zext nneg i32 %i.fsw to i64
  %i.fsy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fsx
  %i.fsz = load i16, ptr %i.fsy, align 2
  store i16 %i.fsz, ptr %i.fsv, align 1
  %i.fta = getelementptr inbounds nuw i8, ptr %.0.i1181, i64 10
  %i.ftb = shl i32 %i.fsl, 1
  %i.ftc = zext i32 %i.ftb to i64
  %i.ftd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ftc
  %i.fte = load i16, ptr %i.ftd, align 2
  store i16 %i.fte, ptr %i.fta, align 1
  %i.ftf = getelementptr inbounds nuw i8, ptr %.0.i1181, i64 12
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread: ; preds = %.lr.ph2918.preheader, %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781, %._crit_edge, %bb.qv, %bb.qu, %bb.qs, %bb.qq, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1098, %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit1185, %bb.pp, %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit675, %bb.nu, %bb.qn, %bb.ns, %bb.nr, %bb.no, %bb.pq
  %.0.i5431703 = phi ptr [ %i.dpi, %bb.no ], [ %i.esn, %bb.pq ], [ %i.fki, %bb.qv ], [ %i.fja, %bb.qu ], [ %i.fia, %bb.qs ], [ %i.fhi, %bb.qq ], [ %i.fpb, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1098 ], [ %i.ftf, %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit1185 ], [ %i.esc, %bb.pp ], [ %spec.select1763, %._crit_edge ], [ %i.dya, %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit675 ], [ %i.dpp, %bb.nu ], [ %i.fgs, %bb.qn ], [ %i.dpm, %bb.ns ], [ %i.dpl, %bb.nr ], [ %.0.i774, %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781 ], [ %.0.i774, %.lr.ph2918.preheader ] ; 3 uses
  %i.ftg = getelementptr inbounds nuw i8, ptr %.0.i5431703, i64 1
  store i8 44, ptr %.0.i5431703, align 1, !tbaa !81
  %i.fth = getelementptr inbounds nuw i8, ptr %.0.i5431703, i64 2
  store i8 10, ptr %i.ftg, align 1, !tbaa !81
  br label %bb.rz

bb.rh:                                            ; preds = %bb.ip
  %i.fti = and i8 %i.cir, 6
  %i.ftj = icmp eq i8 %i.fti, 6
  br i1 %i.ftj, label %bb.ri, label %bb.rp

bb.ri:                                            ; preds = %bb.rh
  %i.ftk = trunc i64 %.01607 to i32
  %i.ftl = and i32 %i.ftk, %i.cig
  %.not515.i = trunc nuw i32 %i.ftl to i1         ; 4 uses
  %i.ftm = lshr i64 %i.ciq, 8                     ; 2 uses
  %i.ftn = icmp eq i8 %i.cis, 7                   ; 4 uses
  %i.fto = icmp eq i64 %i.ftm, 0
  br i1 %i.fto, label %bb.rj, label %bb.rm, !prof !7

bb.rj:                                            ; preds = %bb.ri
  %i.ftp = select i1 %.not515.i, i64 16, i64 %i.cij ; 2 uses
  %i.ftq = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.ftp
  %.not518.i = icmp ult ptr %i.ftq, %.0478.i
  br i1 %.not518.i, label %bb.rl, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit550.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit550.i:  ; preds = %bb.rj
  %i.ftr = lshr i64 %.0467.i, 1
  %i.fts = tail call i64 @llvm.umax.i64(i64 %i.ftr, i64 %i.ftp)
  %i.ftt = add i64 %i.fts, 7
  %i.ftu = and i64 %i.ftt, -8
  %i.ftv = add i64 %i.ftu, %.0467.i               ; 4 uses
  %i.ftw = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0450.i, i64 noundef %.0467.i, i64 noundef %i.ftv), !inline_history !303 ; 6 uses
  %.not519.i = icmp eq ptr %i.ftw, null
  br i1 %.not519.i, label %.loopexit1950, label %bb.rk, !prof !7

bb.rk:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit550.i
  %i.ftx = ptrtoint ptr %.0489.i to i64
  %i.fty = ptrtoint ptr %.0478.i to i64           ; 2 uses
  %i.ftz = sub i64 %i.ftx, %i.fty                 ; 2 uses
  %i.fua = sub i64 %i.ftv, %i.ftz
  %i.fub = getelementptr inbounds nuw i8, ptr %i.ftw, i64 %i.fua ; 2 uses
  %i.fuc = ptrtoint ptr %.0450.i to i64           ; 2 uses
  %i.fud = sub i64 %i.fty, %i.fuc
  %i.fue = getelementptr inbounds i8, ptr %i.ftw, i64 %i.fud
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fub, ptr nonnull align 1 %i.fue, i64 %i.ftz, i1 false)
  %i.fuf = ptrtoint ptr %.0451.i to i64
  %i.fug = sub i64 %i.fuf, %i.fuc
  %i.fuh = getelementptr inbounds i8, ptr %i.ftw, i64 %i.fug
  %i.fui = getelementptr inbounds nuw i8, ptr %i.ftw, i64 %i.ftv
  br label %bb.rl

bb.rl:                                            ; preds = %bb.rk, %bb.rj
  %.3492.i = phi ptr [ %i.fui, %bb.rk ], [ %.0489.i, %bb.rj ]
  %.3481.i = phi ptr [ %i.fub, %bb.rk ], [ %.0478.i, %bb.rj ]
  %.3470.i = phi i64 [ %i.ftv, %bb.rk ], [ %.0467.i, %bb.rj ]
  %.4455.i = phi ptr [ %i.fuh, %bb.rk ], [ %.0451.i, %bb.rj ] ; 3 uses
  %.3.i = phi ptr [ %i.ftw, %bb.rk ], [ %.0450.i, %bb.rj ]
  %.not.i11993018 = select i1 %.not515.i, i1 true, i1 %.not.i119930183969
  br i1 %.not.i11993018, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit, label %select.unfold1707.preheader

select.unfold1707.preheader:                      ; preds = %bb.rl
  br i1 %lcmp.mod6891.not, label %select.unfold1707.prol.loopexit, label %select.unfold1707.prol

select.unfold1707.prol:                           ; preds = %select.unfold1707.preheader, %select.unfold1707.prol
  %.0.i11983020.prol = phi ptr [ %i.fuk, %select.unfold1707.prol ], [ %.4455.i, %select.unfold1707.preheader ] ; 2 uses
  %.04.i3019.prol = phi i64 [ %i.fuj, %select.unfold1707.prol ], [ %.0465.i.ph, %select.unfold1707.preheader ]
  %prol.iter6892 = phi i64 [ %prol.iter6892.next, %select.unfold1707.prol ], [ 0, %select.unfold1707.preheader ]
  %i.fuj = add i64 %.04.i3019.prol, -1            ; 2 uses
  store i32 538976288, ptr %.0.i11983020.prol, align 1
  %i.fuk = getelementptr inbounds nuw i8, ptr %.0.i11983020.prol, i64 %i.chk ; 3 uses
  %prol.iter6892.next = add i64 %prol.iter6892, 1 ; 2 uses
  %prol.iter6892.cmp.not = icmp eq i64 %prol.iter6892.next, %xtraiter6890
  br i1 %prol.iter6892.cmp.not, label %select.unfold1707.prol.loopexit, label %select.unfold1707.prol, !llvm.loop !318

select.unfold1707.prol.loopexit:                  ; preds = %select.unfold1707.prol, %select.unfold1707.preheader
  %.lcssa6799.unr = phi ptr [ poison, %select.unfold1707.preheader ], [ %i.fuk, %select.unfold1707.prol ]
  %.0.i11983020.unr = phi ptr [ %.4455.i, %select.unfold1707.preheader ], [ %i.fuk, %select.unfold1707.prol ]
  %.04.i3019.unr = phi i64 [ %.0465.i.ph, %select.unfold1707.preheader ], [ %i.fuj, %select.unfold1707.prol ]
  br i1 %i.cip, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit, label %select.unfold1707

select.unfold1707:                                ; preds = %select.unfold1707.prol.loopexit, %select.unfold1707
  %.0.i11983020 = phi ptr [ %i.fut, %select.unfold1707 ], [ %.0.i11983020.unr, %select.unfold1707.prol.loopexit ] ; 2 uses
  %.04.i3019 = phi i64 [ %i.fus, %select.unfold1707 ], [ %.04.i3019.unr, %select.unfold1707.prol.loopexit ]
  store i32 538976288, ptr %.0.i11983020, align 1
  %i.ful = getelementptr inbounds nuw i8, ptr %.0.i11983020, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ful, align 1
  %i.fum = getelementptr inbounds nuw i8, ptr %i.ful, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fum, align 1
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fum, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fun, align 1
  %i.fuo = getelementptr inbounds nuw i8, ptr %i.fun, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fuo, align 1
  %i.fup = getelementptr inbounds nuw i8, ptr %i.fuo, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fup, align 1
  %i.fuq = getelementptr inbounds nuw i8, ptr %i.fup, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fuq, align 1
  %i.fur = getelementptr inbounds nuw i8, ptr %i.fuq, i64 %i.chk ; 2 uses
  %i.fus = add i64 %.04.i3019, -8                 ; 2 uses
  store i32 538976288, ptr %i.fur, align 1
  %i.fut = getelementptr inbounds nuw i8, ptr %i.fur, i64 %i.chk ; 2 uses
  %.not.i1199.7 = icmp eq i64 %i.fus, 0
  br i1 %.not.i1199.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit, label %select.unfold1707, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit:      ; preds = %select.unfold1707.prol.loopexit, %select.unfold1707, %bb.rl
  %.0.i1198.lcssa = phi ptr [ %.4455.i, %bb.rl ], [ %.lcssa6799.unr, %select.unfold1707.prol.loopexit ], [ %i.fut, %select.unfold1707 ] ; 5 uses
  %i.fuu = select i1 %i.ftn, i8 32, i8 0          ; 2 uses
  %i.fuv = or disjoint i8 %i.fuu, 91
  %i.fuw = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 1
  store i8 %i.fuv, ptr %.0.i1198.lcssa, align 1, !tbaa !81
  %i.fux = or disjoint i8 %i.fuu, 93
  %i.fuy = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 2
  store i8 %i.fux, ptr %i.fuw, align 1, !tbaa !81
  %i.fuz = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 3
  store i8 44, ptr %i.fuy, align 1, !tbaa !81
  %i.fva = getelementptr inbounds nuw i8, ptr %.0.i1198.lcssa, i64 4
  store i8 10, ptr %i.fuz, align 1, !tbaa !81
  br label %bb.rz

bb.rm:                                            ; preds = %bb.ri
  %i.fvb = zext i1 %i.ftn to i8
  %i.fvc = select i1 %.not515.i, i64 32, i64 %i.cii ; 2 uses
  %i.fvd = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.fvc
  %.not516.i = icmp ult ptr %i.fvd, %.0478.i
  br i1 %.not516.i, label %bb.ro, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit548.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit548.i:  ; preds = %bb.rm
  %i.fve = lshr i64 %.0467.i, 1
  %i.fvf = tail call i64 @llvm.umax.i64(i64 %i.fve, i64 %i.fvc)
  %i.fvg = add i64 %i.fvf, 7
  %i.fvh = and i64 %i.fvg, -8
  %i.fvi = add i64 %i.fvh, %.0467.i               ; 4 uses
  %i.fvj = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0450.i, i64 noundef %.0467.i, i64 noundef %i.fvi), !inline_history !303 ; 6 uses
  %.not517.i = icmp eq ptr %i.fvj, null
  br i1 %.not517.i, label %.loopexit1950, label %bb.rn, !prof !7

bb.rn:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit548.i
  %i.fvk = ptrtoint ptr %.0489.i to i64
  %i.fvl = ptrtoint ptr %.0478.i to i64           ; 2 uses
  %i.fvm = sub i64 %i.fvk, %i.fvl                 ; 2 uses
  %i.fvn = sub i64 %i.fvi, %i.fvm
  %i.fvo = getelementptr inbounds nuw i8, ptr %i.fvj, i64 %i.fvn ; 2 uses
  %i.fvp = ptrtoint ptr %.0450.i to i64           ; 2 uses
  %i.fvq = sub i64 %i.fvl, %i.fvp
  %i.fvr = getelementptr inbounds i8, ptr %i.fvj, i64 %i.fvq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fvo, ptr nonnull align 1 %i.fvr, i64 %i.fvm, i1 false)
  %i.fvs = ptrtoint ptr %.0451.i to i64
  %i.fvt = sub i64 %i.fvs, %i.fvp
  %i.fvu = getelementptr inbounds i8, ptr %i.fvj, i64 %i.fvt
  %i.fvv = getelementptr inbounds nuw i8, ptr %i.fvj, i64 %i.fvi
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %.4493.i = phi ptr [ %i.fvv, %bb.rn ], [ %.0489.i, %bb.rm ]
  %.4482.i = phi ptr [ %i.fvo, %bb.rn ], [ %.0478.i, %bb.rm ]
  %.4471.i = phi i64 [ %i.fvi, %bb.rn ], [ %.0467.i, %bb.rm ]
  %.5456.i = phi ptr [ %i.fvu, %bb.rn ], [ %.0451.i, %bb.rm ] ; 3 uses
  %.4.i = phi ptr [ %i.fvj, %bb.rn ], [ %.0450.i, %bb.rm ]
  %i.fvw = getelementptr inbounds i8, ptr %.4482.i, i64 -8 ; 2 uses
  %i.fvx = zext nneg i8 %.01608.ph to i64
  %i.fvy = shl i64 %.01607, 1
  %i.fvz = or disjoint i64 %i.fvy, %i.fvx
  store i64 %i.fvz, ptr %i.fvw, align 8, !tbaa !319
  %i.fwa = zext i1 %i.ftn to i64
  %i.fwb = shl nuw nsw i64 %i.ftm, %i.fwa
  %.not.i120230253968 = icmp eq i64 %.0465.i.ph, 0
  %.not.i12023025 = select i1 %.not515.i, i1 true, i1 %.not.i120230253968
  br i1 %.not.i12023025, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203, label %select.unfold1708.preheader

select.unfold1708.preheader:                      ; preds = %bb.ro
  %xtraiter6893 = and i64 %.0465.i.ph, 7          ; 2 uses
  %lcmp.mod6894.not = icmp eq i64 %xtraiter6893, 0
  br i1 %lcmp.mod6894.not, label %select.unfold1708.prol.loopexit, label %select.unfold1708.prol

select.unfold1708.prol:                           ; preds = %select.unfold1708.preheader, %select.unfold1708.prol
  %.0.i12013027.prol = phi ptr [ %i.fwd, %select.unfold1708.prol ], [ %.5456.i, %select.unfold1708.preheader ] ; 2 uses
  %.04.i12003026.prol = phi i64 [ %i.fwc, %select.unfold1708.prol ], [ %.0465.i.ph, %select.unfold1708.preheader ]
  %prol.iter6895 = phi i64 [ %prol.iter6895.next, %select.unfold1708.prol ], [ 0, %select.unfold1708.preheader ]
  %i.fwc = add i64 %.04.i12003026.prol, -1        ; 2 uses
  store i32 538976288, ptr %.0.i12013027.prol, align 1
  %i.fwd = getelementptr inbounds nuw i8, ptr %.0.i12013027.prol, i64 %i.chk ; 3 uses
  %prol.iter6895.next = add i64 %prol.iter6895, 1 ; 2 uses
  %prol.iter6895.cmp.not = icmp eq i64 %prol.iter6895.next, %xtraiter6893
  br i1 %prol.iter6895.cmp.not, label %select.unfold1708.prol.loopexit, label %select.unfold1708.prol, !llvm.loop !321

select.unfold1708.prol.loopexit:                  ; preds = %select.unfold1708.prol, %select.unfold1708.preheader
  %.lcssa6847.unr = phi ptr [ poison, %select.unfold1708.preheader ], [ %i.fwd, %select.unfold1708.prol ]
  %.0.i12013027.unr = phi ptr [ %.5456.i, %select.unfold1708.preheader ], [ %i.fwd, %select.unfold1708.prol ]
  %.04.i12003026.unr = phi i64 [ %.0465.i.ph, %select.unfold1708.preheader ], [ %i.fwc, %select.unfold1708.prol ]
  %i.fwe = icmp ult i64 %i.cik, 7
  br i1 %i.fwe, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203, label %select.unfold1708

select.unfold1708:                                ; preds = %select.unfold1708.prol.loopexit, %select.unfold1708
  %.0.i12013027 = phi ptr [ %i.fwn, %select.unfold1708 ], [ %.0.i12013027.unr, %select.unfold1708.prol.loopexit ] ; 2 uses
  %.04.i12003026 = phi i64 [ %i.fwm, %select.unfold1708 ], [ %.04.i12003026.unr, %select.unfold1708.prol.loopexit ]
  store i32 538976288, ptr %.0.i12013027, align 1
  %i.fwf = getelementptr inbounds nuw i8, ptr %.0.i12013027, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwf, align 1
  %i.fwg = getelementptr inbounds nuw i8, ptr %i.fwf, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwg, align 1
  %i.fwh = getelementptr inbounds nuw i8, ptr %i.fwg, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwh, align 1
  %i.fwi = getelementptr inbounds nuw i8, ptr %i.fwh, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwi, align 1
  %i.fwj = getelementptr inbounds nuw i8, ptr %i.fwi, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwj, align 1
  %i.fwk = getelementptr inbounds nuw i8, ptr %i.fwj, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwk, align 1
  %i.fwl = getelementptr inbounds nuw i8, ptr %i.fwk, i64 %i.chk ; 2 uses
  %i.fwm = add i64 %.04.i12003026, -8             ; 2 uses
  store i32 538976288, ptr %i.fwl, align 1
  %i.fwn = getelementptr inbounds nuw i8, ptr %i.fwl, i64 %i.chk ; 2 uses
  %.not.i1202.7 = icmp eq i64 %i.fwm, 0
  br i1 %.not.i1202.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203, label %select.unfold1708, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203:  ; preds = %select.unfold1708.prol.loopexit, %select.unfold1708, %bb.ro
  %.0.i1201.lcssa = phi ptr [ %.5456.i, %bb.ro ], [ %.lcssa6847.unr, %select.unfold1708.prol.loopexit ], [ %i.fwn, %select.unfold1708 ] ; 3 uses
  %i.fwo = add i64 %.0465.i.ph, 1
  %i.fwp = select i1 %i.ftn, i8 123, i8 91
  %i.fwq = getelementptr inbounds nuw i8, ptr %.0.i1201.lcssa, i64 1
  store i8 %i.fwp, ptr %.0.i1201.lcssa, align 1, !tbaa !81
  %i.fwr = getelementptr inbounds nuw i8, ptr %.0.i1201.lcssa, i64 2
  store i8 10, ptr %i.fwq, align 1, !tbaa !81
  %i.fws = getelementptr inbounds nuw i8, ptr %.0449.i, i64 16
  br label %.outer1955.backedge

.outer1955.backedge:                              ; preds = %bb.sc, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203
  %.01608.ph.be = phi i8 [ %i.fvb, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %i.gcj, %bb.sc ]
  %.01607.ph.be = phi i64 [ %i.fwb, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %i.gck, %bb.sc ]
  %.0489.i.ph.be = phi ptr [ %.4493.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %.10499.i, %bb.sc ]
  %.0478.i.ph.be = phi ptr [ %i.fvw, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %i.gcf, %bb.sc ]
  %.0467.i.ph.be = phi i64 [ %.4471.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %.10477.i, %bb.sc ]
  %.0465.i.ph.be = phi i64 [ %i.fwo, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %i.gbp, %bb.sc ]
  %.0451.i.ph.be = phi ptr [ %i.fwr, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %i.gcm, %bb.sc ]
  %.0450.i.ph.be = phi ptr [ %.4.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %.10.i, %bb.sc ]
  %.0449.i.ph.be = phi ptr [ %i.fws, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1203 ], [ %i.gan, %bb.sc ]
  br label %.outer1955

bb.rp:                                            ; preds = %bb.rh
  switch i8 %i.cis, label %bb.sj [
    i8 3, label %bb.rq
    i8 2, label %bb.rt
    i8 1, label %bb.rw
  ]

bb.rq:                                            ; preds = %bb.rp
  %i.fwt = trunc i64 %.01607 to i32
  %i.fwu = and i32 %i.fwt, %i.cig
  %.not512.i = trunc nuw i32 %i.fwu to i1         ; 2 uses
  %i.fwv = select i1 %.not512.i, i64 16, i64 %i.cij ; 2 uses
  %i.fww = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.fwv
  %.not513.i = icmp ult ptr %i.fww, %.0478.i
  br i1 %.not513.i, label %bb.rs, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit546.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit546.i:  ; preds = %bb.rq
  %i.fwx = lshr i64 %.0467.i, 1
  %i.fwy = tail call i64 @llvm.umax.i64(i64 %i.fwx, i64 %i.fwv)
  %i.fwz = add i64 %i.fwy, 7
  %i.fxa = and i64 %i.fwz, -8
  %i.fxb = add i64 %i.fxa, %.0467.i               ; 4 uses
  %i.fxc = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0450.i, i64 noundef %.0467.i, i64 noundef %i.fxb), !inline_history !303 ; 6 uses
  %.not514.i = icmp eq ptr %i.fxc, null
  br i1 %.not514.i, label %.loopexit1950, label %bb.rr, !prof !7

bb.rr:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit546.i
  %i.fxd = ptrtoint ptr %.0489.i to i64
  %i.fxe = ptrtoint ptr %.0478.i to i64           ; 2 uses
  %i.fxf = sub i64 %i.fxd, %i.fxe                 ; 2 uses
  %i.fxg = sub i64 %i.fxb, %i.fxf
  %i.fxh = getelementptr inbounds nuw i8, ptr %i.fxc, i64 %i.fxg ; 2 uses
  %i.fxi = ptrtoint ptr %.0450.i to i64           ; 2 uses
  %i.fxj = sub i64 %i.fxe, %i.fxi
  %i.fxk = getelementptr inbounds i8, ptr %i.fxc, i64 %i.fxj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fxh, ptr nonnull align 1 %i.fxk, i64 %i.fxf, i1 false)
  %i.fxl = ptrtoint ptr %.0451.i to i64
  %i.fxm = sub i64 %i.fxl, %i.fxi
  %i.fxn = getelementptr inbounds i8, ptr %i.fxc, i64 %i.fxm
  %i.fxo = getelementptr inbounds nuw i8, ptr %i.fxc, i64 %i.fxb
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.rq
  %.5494.i = phi ptr [ %i.fxo, %bb.rr ], [ %.0489.i, %bb.rq ]
  %.5483.i = phi ptr [ %i.fxh, %bb.rr ], [ %.0478.i, %bb.rq ]
  %.5472.i = phi i64 [ %i.fxb, %bb.rr ], [ %.0467.i, %bb.rq ]
  %.6457.i = phi ptr [ %i.fxn, %bb.rr ], [ %.0451.i, %bb.rq ] ; 3 uses
  %.5.i = phi ptr [ %i.fxc, %bb.rr ], [ %.0450.i, %bb.rq ]
  %.not.i12063012 = select i1 %.not512.i, i1 true, i1 %.not.i120630123967
  br i1 %.not.i12063012, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207, label %select.unfold1709.preheader

select.unfold1709.preheader:                      ; preds = %bb.rs
  br i1 %lcmp.mod6888.not, label %select.unfold1709.prol.loopexit, label %select.unfold1709.prol

select.unfold1709.prol:                           ; preds = %select.unfold1709.preheader, %select.unfold1709.prol
  %.0.i12053014.prol = phi ptr [ %i.fxq, %select.unfold1709.prol ], [ %.6457.i, %select.unfold1709.preheader ] ; 2 uses
  %.04.i12043013.prol = phi i64 [ %i.fxp, %select.unfold1709.prol ], [ %.0465.i.ph, %select.unfold1709.preheader ]
  %prol.iter6889 = phi i64 [ %prol.iter6889.next, %select.unfold1709.prol ], [ 0, %select.unfold1709.preheader ]
  %i.fxp = add i64 %.04.i12043013.prol, -1        ; 2 uses
  store i32 538976288, ptr %.0.i12053014.prol, align 1
  %i.fxq = getelementptr inbounds nuw i8, ptr %.0.i12053014.prol, i64 %i.chk ; 3 uses
  %prol.iter6889.next = add i64 %prol.iter6889, 1 ; 2 uses
  %prol.iter6889.cmp.not = icmp eq i64 %prol.iter6889.next, %xtraiter6887
  br i1 %prol.iter6889.cmp.not, label %select.unfold1709.prol.loopexit, label %select.unfold1709.prol, !llvm.loop !322

select.unfold1709.prol.loopexit:                  ; preds = %select.unfold1709.prol, %select.unfold1709.preheader
  %.lcssa6798.unr = phi ptr [ poison, %select.unfold1709.preheader ], [ %i.fxq, %select.unfold1709.prol ]
  %.0.i12053014.unr = phi ptr [ %.6457.i, %select.unfold1709.preheader ], [ %i.fxq, %select.unfold1709.prol ]
  %.04.i12043013.unr = phi i64 [ %.0465.i.ph, %select.unfold1709.preheader ], [ %i.fxp, %select.unfold1709.prol ]
  br i1 %i.cio, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207, label %select.unfold1709

select.unfold1709:                                ; preds = %select.unfold1709.prol.loopexit, %select.unfold1709
  %.0.i12053014 = phi ptr [ %i.fxz, %select.unfold1709 ], [ %.0.i12053014.unr, %select.unfold1709.prol.loopexit ] ; 2 uses
  %.04.i12043013 = phi i64 [ %i.fxy, %select.unfold1709 ], [ %.04.i12043013.unr, %select.unfold1709.prol.loopexit ]
  store i32 538976288, ptr %.0.i12053014, align 1
  %i.fxr = getelementptr inbounds nuw i8, ptr %.0.i12053014, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxr, align 1
  %i.fxs = getelementptr inbounds nuw i8, ptr %i.fxr, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxs, align 1
  %i.fxt = getelementptr inbounds nuw i8, ptr %i.fxs, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxt, align 1
  %i.fxu = getelementptr inbounds nuw i8, ptr %i.fxt, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxu, align 1
  %i.fxv = getelementptr inbounds nuw i8, ptr %i.fxu, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxv, align 1
  %i.fxw = getelementptr inbounds nuw i8, ptr %i.fxv, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxw, align 1
  %i.fxx = getelementptr inbounds nuw i8, ptr %i.fxw, i64 %i.chk ; 2 uses
  %i.fxy = add i64 %.04.i12043013, -8             ; 2 uses
  store i32 538976288, ptr %i.fxx, align 1
  %i.fxz = getelementptr inbounds nuw i8, ptr %i.fxx, i64 %i.chk ; 2 uses
  %.not.i1206.7 = icmp eq i64 %i.fxy, 0
  br i1 %.not.i1206.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207, label %select.unfold1709, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207:  ; preds = %select.unfold1709.prol.loopexit, %select.unfold1709, %bb.rs
  %.0.i1205.lcssa = phi ptr [ %.6457.i, %bb.rs ], [ %.lcssa6798.unr, %select.unfold1709.prol.loopexit ], [ %i.fxz, %select.unfold1709 ] ; 2 uses
  %i.fya = load i64, ptr %.0449.i, align 8, !tbaa !79
  %i.fyb = and i64 %i.fya, 24
  %i.fyc = icmp ne i64 %i.fyb, 0                  ; 2 uses
  %.1832 = select i1 %i.fyc, i64 11185797034612, i64 2863564006908262
  store i64 %.1832, ptr %.0.i1205.lcssa, align 1
  %.neg.i552 = sext i1 %i.fyc to i64
  %i.fyd = getelementptr i8, ptr %.0.i1205.lcssa, i64 %.neg.i552
  %i.fye = getelementptr i8, ptr %i.fyd, i64 7
  br label %bb.rz

bb.rt:                                            ; preds = %bb.rp
  %i.fyf = trunc i64 %.01607 to i32
  %i.fyg = and i32 %i.fyf, %i.cig
  %.not509.i = trunc nuw i32 %i.fyg to i1         ; 2 uses
  %i.fyh = select i1 %.not509.i, i64 16, i64 %i.cij ; 2 uses
  %i.fyi = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.fyh
  %.not510.i = icmp ult ptr %i.fyi, %.0478.i
  br i1 %.not510.i, label %bb.rv, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit544.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit544.i:  ; preds = %bb.rt
  %i.fyj = lshr i64 %.0467.i, 1
  %i.fyk = tail call i64 @llvm.umax.i64(i64 %i.fyj, i64 %i.fyh)
  %i.fyl = add i64 %i.fyk, 7
  %i.fym = and i64 %i.fyl, -8
  %i.fyn = add i64 %i.fym, %.0467.i               ; 4 uses
  %i.fyo = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0450.i, i64 noundef %.0467.i, i64 noundef %i.fyn), !inline_history !303 ; 6 uses
  %.not511.i = icmp eq ptr %i.fyo, null
  br i1 %.not511.i, label %.loopexit1950, label %bb.ru, !prof !7

bb.ru:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit544.i
  %i.fyp = ptrtoint ptr %.0489.i to i64
  %i.fyq = ptrtoint ptr %.0478.i to i64           ; 2 uses
  %i.fyr = sub i64 %i.fyp, %i.fyq                 ; 2 uses
  %i.fys = sub i64 %i.fyn, %i.fyr
  %i.fyt = getelementptr inbounds nuw i8, ptr %i.fyo, i64 %i.fys ; 2 uses
  %i.fyu = ptrtoint ptr %.0450.i to i64           ; 2 uses
  %i.fyv = sub i64 %i.fyq, %i.fyu
  %i.fyw = getelementptr inbounds i8, ptr %i.fyo, i64 %i.fyv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fyt, ptr nonnull align 1 %i.fyw, i64 %i.fyr, i1 false)
  %i.fyx = ptrtoint ptr %.0451.i to i64
  %i.fyy = sub i64 %i.fyx, %i.fyu
  %i.fyz = getelementptr inbounds i8, ptr %i.fyo, i64 %i.fyy
  %i.fza = getelementptr inbounds nuw i8, ptr %i.fyo, i64 %i.fyn
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rt
  %.6495.i = phi ptr [ %i.fza, %bb.ru ], [ %.0489.i, %bb.rt ]
  %.6484.i = phi ptr [ %i.fyt, %bb.ru ], [ %.0478.i, %bb.rt ]
  %.6473.i = phi i64 [ %i.fyn, %bb.ru ], [ %.0467.i, %bb.rt ]
  %.7458.i = phi ptr [ %i.fyz, %bb.ru ], [ %.0451.i, %bb.rt ] ; 3 uses
  %.6.i = phi ptr [ %i.fyo, %bb.ru ], [ %.0450.i, %bb.rt ]
  %.not.i12103006 = select i1 %.not509.i, i1 true, i1 %.not.i121030063966
  br i1 %.not.i12103006, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211, label %select.unfold1710.preheader

select.unfold1710.preheader:                      ; preds = %bb.rv
  br i1 %lcmp.mod6885.not, label %select.unfold1710.prol.loopexit, label %select.unfold1710.prol

select.unfold1710.prol:                           ; preds = %select.unfold1710.preheader, %select.unfold1710.prol
  %.0.i12093008.prol = phi ptr [ %i.fzc, %select.unfold1710.prol ], [ %.7458.i, %select.unfold1710.preheader ] ; 2 uses
  %.04.i12083007.prol = phi i64 [ %i.fzb, %select.unfold1710.prol ], [ %.0465.i.ph, %select.unfold1710.preheader ]
  %prol.iter6886 = phi i64 [ %prol.iter6886.next, %select.unfold1710.prol ], [ 0, %select.unfold1710.preheader ]
  %i.fzb = add i64 %.04.i12083007.prol, -1        ; 2 uses
  store i32 538976288, ptr %.0.i12093008.prol, align 1
  %i.fzc = getelementptr inbounds nuw i8, ptr %.0.i12093008.prol, i64 %i.chk ; 3 uses
  %prol.iter6886.next = add i64 %prol.iter6886, 1 ; 2 uses
  %prol.iter6886.cmp.not = icmp eq i64 %prol.iter6886.next, %xtraiter6884
  br i1 %prol.iter6886.cmp.not, label %select.unfold1710.prol.loopexit, label %select.unfold1710.prol, !llvm.loop !323

select.unfold1710.prol.loopexit:                  ; preds = %select.unfold1710.prol, %select.unfold1710.preheader
  %.lcssa6797.unr = phi ptr [ poison, %select.unfold1710.preheader ], [ %i.fzc, %select.unfold1710.prol ]
  %.0.i12093008.unr = phi ptr [ %.7458.i, %select.unfold1710.preheader ], [ %i.fzc, %select.unfold1710.prol ]
  %.04.i12083007.unr = phi i64 [ %.0465.i.ph, %select.unfold1710.preheader ], [ %i.fzb, %select.unfold1710.prol ]
  br i1 %i.cin, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211, label %select.unfold1710

select.unfold1710:                                ; preds = %select.unfold1710.prol.loopexit, %select.unfold1710
  %.0.i12093008 = phi ptr [ %i.fzl, %select.unfold1710 ], [ %.0.i12093008.unr, %select.unfold1710.prol.loopexit ] ; 2 uses
  %.04.i12083007 = phi i64 [ %i.fzk, %select.unfold1710 ], [ %.04.i12083007.unr, %select.unfold1710.prol.loopexit ]
  store i32 538976288, ptr %.0.i12093008, align 1
  %i.fzd = getelementptr inbounds nuw i8, ptr %.0.i12093008, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzd, align 1
  %i.fze = getelementptr inbounds nuw i8, ptr %i.fzd, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fze, align 1
  %i.fzf = getelementptr inbounds nuw i8, ptr %i.fze, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzf, align 1
  %i.fzg = getelementptr inbounds nuw i8, ptr %i.fzf, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzg, align 1
  %i.fzh = getelementptr inbounds nuw i8, ptr %i.fzg, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzh, align 1
  %i.fzi = getelementptr inbounds nuw i8, ptr %i.fzh, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzi, align 1
  %i.fzj = getelementptr inbounds nuw i8, ptr %i.fzi, i64 %i.chk ; 2 uses
  %i.fzk = add i64 %.04.i12083007, -8             ; 2 uses
  store i32 538976288, ptr %i.fzj, align 1
  %i.fzl = getelementptr inbounds nuw i8, ptr %i.fzj, i64 %i.chk ; 2 uses
  %.not.i1210.7 = icmp eq i64 %i.fzk, 0
  br i1 %.not.i1210.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211, label %select.unfold1710, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211:  ; preds = %select.unfold1710.prol.loopexit, %select.unfold1710, %bb.rv
  %.0.i1209.lcssa = phi ptr [ %.7458.i, %bb.rv ], [ %.lcssa6797.unr, %select.unfold1710.prol.loopexit ], [ %i.fzl, %select.unfold1710 ] ; 2 uses
  store i64 11185913886062, ptr %.0.i1209.lcssa, align 1
  %i.fzm = getelementptr inbounds nuw i8, ptr %.0.i1209.lcssa, i64 6
  br label %bb.rz

bb.rw:                                            ; preds = %bb.rp
  %i.fzn = lshr i64 %i.ciq, 8                     ; 3 uses
  %i.fzo = getelementptr inbounds nuw i8, ptr %.0449.i, i64 8
  %i.fzp = load ptr, ptr %i.fzo, align 8, !tbaa !81
  %i.fzq = add nuw nsw i64 %i.fzn, 3              ; 2 uses
  %i.fzr = getelementptr inbounds nuw i8, ptr %.0451.i, i64 %i.fzq
  %.not507.i = icmp ult ptr %i.fzr, %.0478.i
  br i1 %.not507.i, label %bb.ry, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit542.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit542.i:  ; preds = %bb.rw
  %i.fzs = lshr i64 %.0467.i, 1
  %i.fzt = tail call i64 @llvm.umax.i64(i64 %i.fzs, i64 %i.fzq)
  %i.fzu = add nuw i64 %i.fzt, 7
  %i.fzv = and i64 %i.fzu, -8
  %i.fzw = add i64 %i.fzv, %.0467.i               ; 4 uses
  %i.fzx = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0450.i, i64 noundef %.0467.i, i64 noundef %i.fzw), !inline_history !303 ; 6 uses
  %.not508.i = icmp eq ptr %i.fzx, null
  br i1 %.not508.i, label %.loopexit1950, label %bb.rx, !prof !7

bb.rx:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit542.i
  %i.fzy = ptrtoint ptr %.0489.i to i64
  %i.fzz = ptrtoint ptr %.0478.i to i64           ; 2 uses
  %i.gaa = sub i64 %i.fzy, %i.fzz                 ; 2 uses
  %i.gab = sub i64 %i.fzw, %i.gaa
  %i.gac = getelementptr inbounds nuw i8, ptr %i.fzx, i64 %i.gab ; 2 uses
  %i.gad = ptrtoint ptr %.0450.i to i64           ; 2 uses
  %i.gae = sub i64 %i.fzz, %i.gad
  %i.gaf = getelementptr inbounds i8, ptr %i.fzx, i64 %i.gae
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gac, ptr nonnull align 1 %i.gaf, i64 %i.gaa, i1 false)
  %i.gag = ptrtoint ptr %.0451.i to i64
  %i.gah = sub i64 %i.gag, %i.gad
  %i.gai = getelementptr inbounds i8, ptr %i.fzx, i64 %i.gah
  %i.gaj = getelementptr inbounds nuw i8, ptr %i.fzx, i64 %i.fzw
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw
  %.7496.i = phi ptr [ %i.gaj, %bb.rx ], [ %.0489.i, %bb.rw ]
  %.7485.i = phi ptr [ %i.gac, %bb.rx ], [ %.0478.i, %bb.rw ]
  %.7474.i = phi i64 [ %i.fzw, %bb.rx ], [ %.0467.i, %bb.rw ]
  %.8459.i = phi ptr [ %i.gai, %bb.rx ], [ %.0451.i, %bb.rw ] ; 2 uses
  %.7.i = phi ptr [ %i.fzx, %bb.rx ], [ %.0450.i, %bb.rw ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.8459.i, ptr align 1 %i.fzp, i64 range(i64 0, 72057594037927936) %i.fzn, i1 false)
  %i.gak = getelementptr inbounds nuw i8, ptr %.8459.i, i64 %i.fzn ; 3 uses
  %i.gal = getelementptr inbounds nuw i8, ptr %i.gak, i64 1
  store i8 44, ptr %i.gak, align 1, !tbaa !81
  %i.gam = getelementptr inbounds nuw i8, ptr %i.gak, i64 2
  store i8 10, ptr %i.gal, align 1, !tbaa !81
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363
  %.8497.i = phi ptr [ %.1490.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363 ], [ %.2491.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread ], [ %.3492.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit ], [ %.5494.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207 ], [ %.6495.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211 ], [ %.7496.i, %bb.ry ] ; 2 uses
  %.8486.i = phi ptr [ %.1479.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363 ], [ %.2480.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread ], [ %.3481.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit ], [ %.5483.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207 ], [ %.6484.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211 ], [ %.7485.i, %bb.ry ] ; 2 uses
  %.8475.i = phi i64 [ %.1468.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363 ], [ %.2469.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread ], [ %.3470.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit ], [ %.5472.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207 ], [ %.6473.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211 ], [ %.7474.i, %bb.ry ] ; 2 uses
  %.9460.i = phi ptr [ %i.dnr, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363 ], [ %i.fth, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread ], [ %i.fva, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit ], [ %i.fye, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207 ], [ %i.fzm, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211 ], [ %i.gam, %bb.ry ] ; 2 uses
  %.8.i = phi ptr [ %.1.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit363 ], [ %.2.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread ], [ %.3.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit ], [ %.5.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1207 ], [ %.6.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit1211 ], [ %.7.i, %bb.ry ] ; 2 uses
  %i.gan = getelementptr inbounds nuw i8, ptr %.0449.i, i64 16 ; 2 uses
  %i.gao = add i64 %.01607, -1                    ; 2 uses
  %i.gap = icmp eq i64 %i.gao, 0
  br i1 %i.gap, label %.preheader1949.preheader, label %bb.ip, !prof !7

.preheader1949.preheader:                         ; preds = %bb.rz
  %i.gaq = add i64 %.0465.i.ph, -2
  br label %.preheader1949

.preheader1949:                                   ; preds = %.preheader1949.preheader, %bb.sc
  %indvar = phi i64 [ 0, %.preheader1949.preheader ], [ %indvar.next, %bb.sc ] ; 3 uses
  %.11609 = phi i8 [ %.01608.ph, %.preheader1949.preheader ], [ %i.gcj, %bb.sc ]
  %.9498.i = phi ptr [ %.8497.i, %.preheader1949.preheader ], [ %.10499.i, %bb.sc ] ; 2 uses
  %.9487.i = phi ptr [ %.8486.i, %.preheader1949.preheader ], [ %i.gcf, %bb.sc ] ; 3 uses
  %.9476.i = phi i64 [ %.8475.i, %.preheader1949.preheader ], [ %.10477.i, %bb.sc ] ; 4 uses
  %.1466.i = phi i64 [ %.0465.i.ph, %.preheader1949.preheader ], [ %i.gbp, %bb.sc ] ; 2 uses
  %.10461.i = phi ptr [ %.9460.i, %.preheader1949.preheader ], [ %i.gcm, %bb.sc ] ; 2 uses
  %.9.i = phi ptr [ %.8.i, %.preheader1949.preheader ], [ %.10.i, %bb.sc ] ; 4 uses
  %i.gar = sub i64 %i.cik, %indvar
  %i.gas = sub i64 %i.gaq, %indvar
  %i.gat = getelementptr inbounds i8, ptr %.10461.i, i64 -2
  %i.gau = getelementptr inbounds i8, ptr %.10461.i, i64 -1 ; 3 uses
  store i8 10, ptr %i.gat, align 1, !tbaa !81
  %i.gav = shl i64 %.1466.i, 2                    ; 2 uses
  %i.gaw = getelementptr inbounds nuw i8, ptr %i.gau, i64 %i.gav
  %.not532.i = icmp ult ptr %i.gaw, %.9487.i
  br i1 %.not532.i, label %bb.sb, label %_ZN13duckdb_yyjsonL13size_align_upEmm.exit540.i, !prof !24

_ZN13duckdb_yyjsonL13size_align_upEmm.exit540.i:  ; preds = %.preheader1949
  %i.gax = lshr i64 %.9476.i, 1
  %i.gay = tail call i64 @llvm.umax.i64(i64 %i.gax, i64 %i.gav)
  %i.gaz = add i64 %i.gay, 7
  %i.gba = and i64 %i.gaz, -8
  %i.gbb = add i64 %i.gba, %.9476.i               ; 4 uses
  %i.gbc = tail call noundef ptr %.sroa.6.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.9.i, i64 noundef %.9476.i, i64 noundef %i.gbb), !inline_history !303 ; 6 uses
  %.not533.i = icmp eq ptr %i.gbc, null
  br i1 %.not533.i, label %.loopexit1950, label %bb.sa, !prof !7

bb.sa:                                            ; preds = %_ZN13duckdb_yyjsonL13size_align_upEmm.exit540.i
  %i.gbd = ptrtoint ptr %.9498.i to i64
  %i.gbe = ptrtoint ptr %.9487.i to i64           ; 2 uses
  %i.gbf = sub i64 %i.gbd, %i.gbe                 ; 2 uses
  %i.gbg = sub i64 %i.gbb, %i.gbf
  %i.gbh = getelementptr inbounds nuw i8, ptr %i.gbc, i64 %i.gbg ; 2 uses
  %i.gbi = ptrtoint ptr %.9.i to i64              ; 2 uses
  %i.gbj = sub i64 %i.gbe, %i.gbi
  %i.gbk = getelementptr inbounds i8, ptr %i.gbc, i64 %i.gbj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gbh, ptr nonnull align 1 %i.gbk, i64 %i.gbf, i1 false)
  %i.gbl = ptrtoint ptr %i.gau to i64
  %i.gbm = sub i64 %i.gbl, %i.gbi
  %i.gbn = getelementptr inbounds i8, ptr %i.gbc, i64 %i.gbm
  %i.gbo = getelementptr inbounds nuw i8, ptr %i.gbc, i64 %i.gbb
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %.preheader1949
  %.10499.i = phi ptr [ %i.gbo, %bb.sa ], [ %.9498.i, %.preheader1949 ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.chb = ptrtoint ptr %.182.i.i to i64
  %i.chc = ptrtoint ptr %.080.i.i to i64
  %i.chd = sub i64 %i.chb, %i.chc
  store i64 %i.chd, ptr %4, align 8, !tbaa !91
  br label %.cont415

.cont415:                                         ; preds = %bb.ih, %.else417
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.ii:                                            ; preds = %bb.ie, %bb.ic, %bb.ia, %bb.hz, %bb.ec, %bb.i, %bb.g
  br i1 %.not29, label %.cont412, label %.else414

.else414:                                         ; preds = %bb.ii
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont412

.cont412:                                         ; preds = %bb.ii, %.else414
  store i32 2, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel430.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel430.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel430.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.28, ptr %.sroa.sel430.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

default.unreachable:                              ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i
  unreachable

bb.ij:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i
  br i1 %.not29, label %.cont418, label %.else420

.else420:                                         ; preds = %bb.ij
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont418

.cont418:                                         ; preds = %bb.ij, %.else420
  store i32 3, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel427.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel427.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel427.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.86, ptr %.sroa.sel427.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i.thread832: ; preds = %bb.eh
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %i.adk), !inline_history !338
  br i1 %.not29, label %.cont409, label %.else411

.else411:                                         ; preds = %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i.thread832
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont409

.cont409:                                         ; preds = %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i.thread832, %.else411
  store i32 4, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel433.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel433.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel433.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.87, ptr %.sroa.sel433.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

.loopexit:                                        ; preds = %.thread798, %.thread, %.thread808, %.thread818
  tail call void %.sroa.7.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef nonnull %i.z), !inline_history !338
  br i1 %.not29, label %.cont406, label %.else408

.else408:                                         ; preds = %.loopexit
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont406

.cont406:                                         ; preds = %.loopexit, %.else408
  store i32 7, ptr %i.b, align 8, !tbaa !282
  %.sroa.sel436.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %.sroa.sel436.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel436.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.88, ptr %.sroa.sel436.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  br label %_ZN13duckdb_yyjsonL23yyjson_mut_write_singleEPNS_14yyjson_mut_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.ik:                                            ; preds = %bb.c
  %i.che = and i32 %2, 65
  %.not31 = icmp eq i32 %i.che, 0
  %i.chf = and i32 %2, 2
  %.not967 = icmp eq i32 %i.chf, 0                ; 6 uses
  %i.chg = and i32 %2, 4
  %.not968 = icmp eq i32 %i.chg, 0                ; 4 uses
  br i1 %.not31, label %bb.tb, label %bb.il

bb.il:                                            ; preds = %bb.ik
  br i1 %.not967, label %bb.in, label %bb.im, !prof !24

bb.im:                                            ; preds = %bb.il
  %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i.i196 = select i1 %.not968, ptr @_ZN13duckdb_yyjsonL13enc_table_escE, ptr @_ZN13duckdb_yyjsonL19enc_table_esc_slashE, !prof !24
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i33

bb.in:                                            ; preds = %bb.il
  %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i.i32 = select i1 %.not968, ptr @_ZN13duckdb_yyjsonL13enc_table_cpyE, ptr @_ZN13duckdb_yyjsonL19enc_table_cpy_slashE, !prof !24
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i33

_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i33: ; preds = %bb.in, %bb.im
  %.0.i564.i = phi ptr [ %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i.i196, %bb.im ], [ %_ZN13duckdb_yyjsonL19enc_table_cpy_slashE._ZN13duckdb_yyjsonL13enc_table_cpyE.i.i32, %bb.in ] ; 28 uses
  %i.chh = icmp eq ptr %.0.i564.i, @_ZN13duckdb_yyjsonL13enc_table_cpyE
  %i.chi = and i32 %2, 32
  %.not951 = icmp eq i32 %i.chi, 0                ; 4 uses
  %i.chj = and i32 %2, 64
  %.not952 = icmp eq i32 %i.chj, 0
  %i.chk = select i1 %.not952, i64 4, i64 2, !prof !24 ; 63 uses
  %i.chl = and i32 %2, 128
  %.not953 = icmp eq i32 %i.chl, 0
  %i.chm = shl i64 %1, 5
  %i.chn = add i64 %i.chm, 64                     ; 3 uses
  %i.cho = tail call noundef ptr %.sroa.0490.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef %i.chn), !inline_history !350 ; 6 uses
  %.not.i = icmp eq ptr %i.cho, null
  br i1 %.not.i, label %.loopexit1129, label %bb.io

bb.io:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i33
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 %i.chn ; 2 uses
  %i.chq = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.chr = and i64 %i.chq, 7
  %i.chs = icmp eq i64 %i.chr, 7                  ; 4 uses
  %i.cht = zext i1 %i.chs to i8
  %i.chu = lshr i64 %i.chq, 8
  %i.chv = zext i1 %i.chs to i64
  %i.chw = shl nuw nsw i64 %i.chu, %i.chv
  %i.chx = select i1 %i.chs, i8 123, i8 91
  %i.chy = getelementptr inbounds nuw i8, ptr %i.cho, i64 1
  store i8 %i.chx, ptr %i.cho, align 1, !tbaa !81
  %i.chz = getelementptr inbounds nuw i8, ptr %i.cho, i64 2
  store i8 10, ptr %i.chy, align 1, !tbaa !81
  %i.cia = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cib = load ptr, ptr %i.cia, align 8, !tbaa !81 ; 2 uses
  br i1 %i.chs, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 16
  %i.cid = load ptr, ptr %i.cic, align 8, !tbaa !85
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.pn.i = phi ptr [ %i.cid, %bb.ip ], [ %i.cib, %bb.io ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.cie = load ptr, ptr %.in.i, align 8, !tbaa !85
  %i.cif = and i32 %2, 16
  %.not963 = icmp eq i32 %i.cif, 0
  %i.cig = and i32 %2, 8
  %.not964 = icmp eq i32 %i.cig, 0
  br label %.outer1134

.outer1134:                                       ; preds = %.outer1134.backedge, %bb.iq
  %.0784.ph = phi i8 [ %i.cht, %bb.iq ], [ %.0784.ph.be, %.outer1134.backedge ] ; 3 uses
  %.0783.ph = phi i64 [ %i.chw, %bb.iq ], [ %.0783.ph.be, %.outer1134.backedge ]
  %.0781.ph = phi ptr [ %0, %bb.iq ], [ %.0781.ph.be, %.outer1134.backedge ] ; 2 uses
  %.0494.i.ph = phi ptr [ %i.chp, %bb.iq ], [ %.0494.i.ph.be, %.outer1134.backedge ]
  %.0483.i.ph = phi ptr [ %i.chp, %bb.iq ], [ %.0483.i.ph.be, %.outer1134.backedge ]
  %.0472.i.ph = phi i64 [ %i.chn, %bb.iq ], [ %.0472.i.ph.be, %.outer1134.backedge ]
  %.0470.i.ph = phi i64 [ 1, %bb.iq ], [ %.0470.i.ph.be, %.outer1134.backedge ] ; 29 uses
  %.0456.i.ph = phi ptr [ %i.chz, %bb.iq ], [ %.0456.i.ph.be, %.outer1134.backedge ]
  %.0455.i.ph = phi ptr [ %i.cho, %bb.iq ], [ %.0455.i.ph.be, %.outer1134.backedge ]
  %.0454.i.ph = phi ptr [ %i.cie, %bb.iq ], [ %.0454.i.ph.be, %.outer1134.backedge ]
  %i.cih = zext nneg i8 %.0784.ph to i32          ; 6 uses
  %i.cii = shl i64 %.0470.i.ph, 2                 ; 2 uses
  %i.cij = add i64 %i.cii, 32                     ; 2 uses
  %i.cik = add i64 %i.cii, 16                     ; 4 uses
  %.not.i851.i20933148 = icmp eq i64 %.0470.i.ph, 0
  %.not.i855.i21003149 = icmp eq i64 %.0470.i.ph, 0
  %.not.i835.i21873153 = icmp eq i64 %.0470.i.ph, 0
  %.not.i839.i21933154 = icmp eq i64 %.0470.i.ph, 0
  %.not.i847.i21993156 = icmp eq i64 %.0470.i.ph, 0
  %i.cil = add i64 %.0470.i.ph, -1                ; 7 uses
  %xtraiter = and i64 %.0470.i.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cim = icmp ult i64 %i.cil, 7
  %xtraiter6057 = and i64 %.0470.i.ph, 7          ; 2 uses
  %lcmp.mod6058.not = icmp eq i64 %xtraiter6057, 0
  %i.cin = icmp ult i64 %i.cil, 7
  %xtraiter6077 = and i64 %.0470.i.ph, 7          ; 2 uses
  %lcmp.mod6078.not = icmp eq i64 %xtraiter6077, 0
  %i.cio = icmp ult i64 %i.cil, 7
  %xtraiter6080 = and i64 %.0470.i.ph, 7          ; 2 uses
  %lcmp.mod6081.not = icmp eq i64 %xtraiter6080, 0
  %i.cip = icmp ult i64 %i.cil, 7
  %xtraiter6083 = and i64 %.0470.i.ph, 7          ; 2 uses
  %lcmp.mod6084.not = icmp eq i64 %xtraiter6083, 0
  %i.ciq = icmp ult i64 %i.cil, 7
  br label %bb.ir

bb.ir:                                            ; preds = %.outer1134, %bb.sl
  %.0783 = phi i64 [ %i.gat, %bb.sl ], [ %.0783.ph, %.outer1134 ] ; 7 uses
  %.0494.i = phi ptr [ %.8502.i, %bb.sl ], [ %.0494.i.ph, %.outer1134 ] ; 14 uses
  %.0483.i = phi ptr [ %.8491.i, %bb.sl ], [ %.0483.i.ph, %.outer1134 ] ; 21 uses
  %.0472.i = phi i64 [ %.8480.i, %bb.sl ], [ %.0472.i.ph, %.outer1134 ] ; 28 uses
  %.0456.i = phi ptr [ %.9465.i, %bb.sl ], [ %.0456.i.ph, %.outer1134 ] ; 21 uses
  %.0455.i = phi ptr [ %.8.i, %bb.sl ], [ %.0455.i.ph, %.outer1134 ] ; 29 uses
  %.0454.i = phi ptr [ %i.gax, %bb.sl ], [ %.0454.i.ph, %.outer1134 ] ; 10 uses
  %i.cir = load i64, ptr %.0454.i, align 8, !tbaa !79 ; 5 uses
  %i.cis = trunc i64 %i.cir to i8                 ; 2 uses
  %i.cit = and i8 %i.cis, 7                       ; 3 uses
  switch i8 %i.cit, label %bb.rl [
    i8 5, label %bb.is
    i8 4, label %bb.nm
  ]

bb.is:                                            ; preds = %bb.ir
  %i.ciu = trunc i64 %.0783 to i32                ; 2 uses
  %i.civ = xor i32 %i.ciu, -1
  %i.ciw = and i32 %i.civ, %i.cih
  %.not532.i = icmp eq i32 %i.ciw, 0              ; 2 uses
  %i.cix = and i32 %i.ciu, %i.cih
  %.not533.i = trunc nuw i32 %i.cix to i1         ; 2 uses
  %i.ciy = lshr i64 %i.cir, 8                     ; 7 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %.0454.i, i64 8
  %i.cja = load ptr, ptr %i.ciz, align 8, !tbaa !81 ; 7 uses
  %i.cjb = ptrtoint ptr %i.cja to i64             ; 2 uses
  %i.cjc = mul nuw nsw i64 %i.ciy, 6
  %i.cjd = select i1 %.not533.i, i64 16, i64 %i.cik
  %i.cje = add i64 %i.cjd, %i.cjc                 ; 2 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.cje
  %.not534.i = icmp ult ptr %i.cjf, %.0483.i
  br i1 %.not534.i, label %bb.iv, label %bb.it, !prof !24

bb.it:                                            ; preds = %bb.is
  %i.cjg = lshr i64 %.0472.i, 1
  %i.cjh = tail call i64 @llvm.umax.i64(i64 %i.cjg, i64 %i.cje)
  %i.cji = add i64 %i.cjh, 15
  %i.cjj = and i64 %i.cji, -16
  %i.cjk = add i64 %i.cjj, %.0472.i               ; 4 uses
  %i.cjl = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0455.i, i64 noundef %.0472.i, i64 noundef %i.cjk), !inline_history !350 ; 6 uses
  %.not535.i = icmp eq ptr %i.cjl, null
  br i1 %.not535.i, label %.loopexit1129, label %bb.iu, !prof !7

bb.iu:                                            ; preds = %bb.it
  %i.cjm = ptrtoint ptr %.0494.i to i64
  %i.cjn = ptrtoint ptr %.0483.i to i64           ; 2 uses
  %i.cjo = sub i64 %i.cjm, %i.cjn                 ; 2 uses
  %i.cjp = sub i64 %i.cjk, %i.cjo
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjl, i64 %i.cjp ; 2 uses
  %i.cjr = ptrtoint ptr %.0455.i to i64           ; 2 uses
  %i.cjs = sub i64 %i.cjn, %i.cjr
  %i.cjt = getelementptr inbounds i8, ptr %i.cjl, i64 %i.cjs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cjq, ptr nonnull align 1 %i.cjt, i64 %i.cjo, i1 false)
  %i.cju = ptrtoint ptr %.0456.i to i64
  %i.cjv = sub i64 %i.cju, %i.cjr
  %i.cjw = getelementptr inbounds i8, ptr %i.cjl, i64 %i.cjv
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjl, i64 %i.cjk
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.is
  %.1495.i = phi ptr [ %i.cjx, %bb.iu ], [ %.0494.i, %bb.is ]
  %.1484.i = phi ptr [ %i.cjq, %bb.iu ], [ %.0483.i, %bb.is ]
  %.1473.i = phi i64 [ %i.cjk, %bb.iu ], [ %.0472.i, %bb.is ]
  %.1457.i = phi ptr [ %i.cjw, %bb.iu ], [ %.0456.i, %bb.is ] ; 3 uses
  %.1.i = phi ptr [ %i.cjl, %bb.iu ], [ %.0455.i, %bb.is ] ; 2 uses
  %.not.i855.i2100 = select i1 %.not533.i, i1 true, i1 %.not.i855.i21003149
  br i1 %.not.i855.i2100, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i, label %select.unfold835.preheader

select.unfold835.preheader:                       ; preds = %bb.iv
  br i1 %lcmp.mod6058.not, label %select.unfold835.prol.loopexit, label %select.unfold835.prol

select.unfold835.prol:                            ; preds = %select.unfold835.preheader, %select.unfold835.prol
  %.0.i854.i2102.prol = phi ptr [ %i.cjz, %select.unfold835.prol ], [ %.1457.i, %select.unfold835.preheader ] ; 2 uses
  %.04.i853.i2101.prol = phi i64 [ %i.cjy, %select.unfold835.prol ], [ %.0470.i.ph, %select.unfold835.preheader ]
  %prol.iter6059 = phi i64 [ %prol.iter6059.next, %select.unfold835.prol ], [ 0, %select.unfold835.preheader ]
  %i.cjy = add i64 %.04.i853.i2101.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i854.i2102.prol, align 1
  %i.cjz = getelementptr inbounds nuw i8, ptr %.0.i854.i2102.prol, i64 %i.chk ; 3 uses
  %prol.iter6059.next = add i64 %prol.iter6059, 1 ; 2 uses
  %prol.iter6059.cmp.not = icmp eq i64 %prol.iter6059.next, %xtraiter6057
  br i1 %prol.iter6059.cmp.not, label %select.unfold835.prol.loopexit, label %select.unfold835.prol, !llvm.loop !351

select.unfold835.prol.loopexit:                   ; preds = %select.unfold835.prol, %select.unfold835.preheader
  %.lcssa5825.unr = phi ptr [ poison, %select.unfold835.preheader ], [ %i.cjz, %select.unfold835.prol ]
  %.0.i854.i2102.unr = phi ptr [ %.1457.i, %select.unfold835.preheader ], [ %i.cjz, %select.unfold835.prol ]
  %.04.i853.i2101.unr = phi i64 [ %.0470.i.ph, %select.unfold835.preheader ], [ %i.cjy, %select.unfold835.prol ]
  br i1 %i.cin, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i, label %select.unfold835

select.unfold835:                                 ; preds = %select.unfold835.prol.loopexit, %select.unfold835
  %.0.i854.i2102 = phi ptr [ %i.cki, %select.unfold835 ], [ %.0.i854.i2102.unr, %select.unfold835.prol.loopexit ] ; 2 uses
  %.04.i853.i2101 = phi i64 [ %i.ckh, %select.unfold835 ], [ %.04.i853.i2101.unr, %select.unfold835.prol.loopexit ]
  store i32 538976288, ptr %.0.i854.i2102, align 1
  %i.cka = getelementptr inbounds nuw i8, ptr %.0.i854.i2102, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.cka, align 1
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cka, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ckb, align 1
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ckc, align 1
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.ckc, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ckd, align 1
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckd, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.cke, align 1
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.ckf, align 1
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckf, i64 %i.chk ; 2 uses
  %i.ckh = add i64 %.04.i853.i2101, -8            ; 2 uses
  store i32 538976288, ptr %i.ckg, align 1
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckg, i64 %i.chk ; 2 uses
  %.not.i855.i.7 = icmp eq i64 %i.ckh, 0
  br i1 %.not.i855.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i, label %select.unfold835, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i: ; preds = %select.unfold835.prol.loopexit, %select.unfold835, %bb.iv
  %.0.i854.i.lcssa = phi ptr [ %.1457.i, %bb.iv ], [ %.lcssa5825.unr, %select.unfold835.prol.loopexit ], [ %i.cki, %select.unfold835 ] ; 5 uses
  br i1 %i.chh, label %bb.ld, label %.split.i, !prof !24

.split.i:                                         ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit856.i
  %i.ckj = getelementptr inbounds nuw i8, ptr %i.cja, i64 %i.ciy ; 4 uses
  store i8 34, ptr %.0.i854.i.lcssa, align 1, !tbaa !81
  %i.ckk = ptrtoint ptr %i.ckj to i64             ; 5 uses
  %i.ckl = add i64 %i.ciy, %i.cjb
  br label %bb.iw

bb.iw:                                            ; preds = %bb.ki, %.split.i
  %.0244.i570.i = phi ptr [ %i.cja, %.split.i ], [ %i.cse, %bb.ki ] ; 3 uses
  %.pn.i571.i = phi ptr [ %.0.i854.i.lcssa, %.split.i ], [ %.8.i584.i, %bb.ki ]
  %.0243.i572.i = getelementptr inbounds nuw i8, ptr %.pn.i571.i, i64 1 ; 2 uses
  %i.ckm = ptrtoint ptr %.0244.i570.i to i64      ; 2 uses
  %i.ckn = sub i64 %i.ckk, %i.ckm                 ; 2 uses
  %i.cko = icmp sgt i64 %i.ckn, 15
  br i1 %i.cko, label %.lr.ph2121, label %.preheader1119

.preheader1119:                                   ; preds = %bb.jm, %bb.iw
  %.pre-phi3003 = phi i64 [ %i.ckn, %bb.iw ], [ %i.cnu, %bb.jm ]
  %.pre-phi3002 = phi i64 [ %i.ckm, %bb.iw ], [ %i.cnt, %bb.jm ]
  %.1245.i573.i.lcssa = phi ptr [ %.0244.i570.i, %bb.iw ], [ %i.cns, %bb.jm ] ; 2 uses
  %.1.i574.i.lcssa = phi ptr [ %.0243.i572.i, %bb.iw ], [ %i.cnr, %bb.jm ] ; 2 uses
  %i.ckp = icmp sgt i64 %.pre-phi3003, 3
  br i1 %i.ckp, label %.lr.ph2127, label %.preheader1117

.lr.ph2121:                                       ; preds = %bb.iw, %bb.jm
  %.1.i574.i2119 = phi ptr [ %i.cnr, %bb.jm ], [ %.0243.i572.i, %bb.iw ] ; 30 uses
  %.1245.i573.i2118 = phi ptr [ %i.cns, %bb.jm ], [ %.0244.i570.i, %bb.iw ] ; 46 uses
  %i.ckq = load i8, ptr %.1245.i573.i2118, align 1, !tbaa !81 ; 2 uses
  %i.ckr = zext i8 %i.ckq to i64
  %i.cks = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.ckr
  %i.ckt = load i8, ptr %i.cks, align 1, !tbaa !81
  %.not277.i641.i = icmp eq i8 %i.ckt, 0
  br i1 %.not277.i641.i, label %bb.ix, label %.preheader1114.preheader, !prof !24

bb.ix:                                            ; preds = %.lr.ph2121
  %i.cku = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 1
  %i.ckv = load i8, ptr %i.cku, align 1, !tbaa !81
  %i.ckw = zext i8 %i.ckv to i64
  %i.ckx = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.ckw
  %i.cky = load i8, ptr %i.ckx, align 1, !tbaa !81
  %.not278.i642.i = icmp eq i8 %i.cky, 0
  br i1 %.not278.i642.i, label %bb.iy, label %.loopexit1121, !prof !24

bb.iy:                                            ; preds = %bb.ix
  %i.ckz = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 2
  %i.cla = load i8, ptr %i.ckz, align 1, !tbaa !81
  %i.clb = zext i8 %i.cla to i64
  %i.clc = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clb
  %i.cld = load i8, ptr %i.clc, align 1, !tbaa !81
  %.not279.i643.i = icmp eq i8 %i.cld, 0
  br i1 %.not279.i643.i, label %bb.iz, label %.loopexit1122, !prof !24

bb.iz:                                            ; preds = %bb.iy
  %i.cle = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 3
  %i.clf = load i8, ptr %i.cle, align 1, !tbaa !81
  %i.clg = zext i8 %i.clf to i64
  %i.clh = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clg
  %i.cli = load i8, ptr %i.clh, align 1, !tbaa !81
  %.not280.i644.i = icmp eq i8 %i.cli, 0
  br i1 %.not280.i644.i, label %bb.ja, label %.loopexit1123, !prof !24

bb.ja:                                            ; preds = %bb.iz
  %i.clj = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 4
  %i.clk = load i8, ptr %i.clj, align 1, !tbaa !81
  %i.cll = zext i8 %i.clk to i64
  %i.clm = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cll
  %i.cln = load i8, ptr %i.clm, align 1, !tbaa !81
  %.not281.i645.i = icmp eq i8 %i.cln, 0
  br i1 %.not281.i645.i, label %bb.jb, label %bb.jt, !prof !24

bb.jb:                                            ; preds = %bb.ja
  %i.clo = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 5
  %i.clp = load i8, ptr %i.clo, align 1, !tbaa !81
  %i.clq = zext i8 %i.clp to i64
  %i.clr = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clq
  %i.cls = load i8, ptr %i.clr, align 1, !tbaa !81
  %.not282.i646.i = icmp eq i8 %i.cls, 0
  br i1 %.not282.i646.i, label %bb.jc, label %bb.ju, !prof !24

bb.jc:                                            ; preds = %bb.jb
  %i.clt = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 6
  %i.clu = load i8, ptr %i.clt, align 1, !tbaa !81
  %i.clv = zext i8 %i.clu to i64
  %i.clw = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.clv
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !81
  %.not283.i647.i = icmp eq i8 %i.clx, 0
  br i1 %.not283.i647.i, label %bb.jd, label %bb.jv, !prof !24

bb.jd:                                            ; preds = %bb.jc
  %i.cly = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 7
  %i.clz = load i8, ptr %i.cly, align 1, !tbaa !81
  %i.cma = zext i8 %i.clz to i64
  %i.cmb = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cma
  %i.cmc = load i8, ptr %i.cmb, align 1, !tbaa !81
  %.not284.i648.i = icmp eq i8 %i.cmc, 0
  br i1 %.not284.i648.i, label %bb.je, label %bb.jw, !prof !24

bb.je:                                            ; preds = %bb.jd
  %i.cmd = getelementptr inbounds nuw i8, ptr %.1245.i573.i2118, i64 8
  %i.cme = load i8, ptr %i.cmd, align 1, !tbaa !81
  %i.cmf = zext i8 %i.cme to i64
  %i.cmg = getelementptr inbounds nuw i8, ptr %.0.i564.i, i64 %i.cmf
  %i.cmh = load i8, ptr %i.cmg, align 1, !tbaa !81
  %.not285.i649.i = icmp eq i8 %i.cmh, 0
  br i1 %.not285.i649.i, label %bb.jf, label %bb.jx, !prof !24

bb.jf:                                            ; preds = %bb.je
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %wide.load5186 = load <4 x i32>, ptr %next.gep5184, align 1
  %wide.load5187 = load <4 x i32>, ptr %i.dlm, align 1
  %i.dln = getelementptr i8, ptr %next.gep5185, i64 16
  store <4 x i32> %wide.load5186, ptr %next.gep5185, align 1
  store <4 x i32> %wide.load5187, ptr %i.dln, align 1
  %index.next5188 = add nuw i64 %index5183, 8     ; 2 uses
  %i.dlo = icmp eq i64 %index.next5188, %n.vec5181
  br i1 %i.dlo, label %middle.block5189, label %vector.body5182, !llvm.loop !354

middle.block5189:                                 ; preds = %vector.body5182
  %cmp.n5190 = icmp eq i64 %i.dle, %n.vec5181
  br i1 %cmp.n5190, label %.preheader1131, label %.lr.ph2147.preheader5818

.lr.ph2147.preheader5818:                         ; preds = %.lr.ph2147.preheader, %middle.block5189
  %.1.i.i1042146.ph = phi i64 [ %.0.i565.i.lcssa, %.lr.ph2147.preheader ], [ %i.dlh, %middle.block5189 ]
  %.119.i.i1032145.ph = phi ptr [ %.018.i.i101.lcssa, %.lr.ph2147.preheader ], [ %i.dlj, %middle.block5189 ]
  %.122.i.i1022144.ph = phi ptr [ %.021.i.i100.lcssa, %.lr.ph2147.preheader ], [ %i.dlk, %middle.block5189 ]
  br label %.lr.ph2147

.lr.ph2140:                                       ; preds = %bb.nl, %.lr.ph2140
  %.0.i565.i2138 = phi i64 [ %i.dlr, %.lr.ph2140 ], [ %i.ciy, %bb.nl ]
  %.018.i.i1012137 = phi ptr [ %i.dlq, %.lr.ph2140 ], [ %i.cja, %bb.nl ] ; 2 uses
  %.021.i.i1002136 = phi ptr [ %i.dlp, %.lr.ph2140 ], [ %i.dkz, %bb.nl ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i1002136, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i1012137, i64 16, i1 false)
  %i.dlp = getelementptr inbounds nuw i8, ptr %.021.i.i1002136, i64 16 ; 2 uses
  %i.dlq = getelementptr inbounds nuw i8, ptr %.018.i.i1012137, i64 16 ; 2 uses
  %i.dlr = add nsw i64 %.0.i565.i2138, -16        ; 3 uses
  %i.dls = icmp ugt i64 %i.dlr, 15
  br i1 %i.dls, label %.lr.ph2140, label %.preheader1132, !llvm.loop !292

.preheader1131:                                   ; preds = %.lr.ph2147, %middle.block5189, %.preheader1132
  %.122.i.i102.lcssa = phi ptr [ %.021.i.i100.lcssa, %.preheader1132 ], [ %i.dlk, %middle.block5189 ], [ %i.dml, %.lr.ph2147 ] ; 7 uses
  %.119.i.i103.lcssa = phi ptr [ %.018.i.i101.lcssa, %.preheader1132 ], [ %i.dlj, %middle.block5189 ], [ %i.dmm, %.lr.ph2147 ] ; 6 uses
  %.1.i.i104.lcssa = phi i64 [ %.0.i565.i.lcssa, %.preheader1132 ], [ %i.dlh, %middle.block5189 ], [ %i.dmn, %.lr.ph2147 ] ; 11 uses
  %.not.i.i1082151 = icmp eq i64 %.1.i.i104.lcssa, 0
  br i1 %.not.i.i1082151, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %iter.check

iter.check:                                       ; preds = %.preheader1131
  %.119.i.i103.lcssa5157 = ptrtoaddr ptr %.119.i.i103.lcssa to i64
  %.122.i.i102.lcssa5156 = ptrtoaddr ptr %.122.i.i102.lcssa to i64
  %min.iters.check = icmp ult i64 %.1.i.i104.lcssa, 4
  %i.dlt = sub i64 %.122.i.i102.lcssa5156, %.119.i.i103.lcssa5157
  %diff.check = icmp ult i64 %i.dlt, 32
  %or.cond5409 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond5409, label %.lr.ph2155.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5158 = icmp ult i64 %.1.i.i104.lcssa, 32
  br i1 %min.iters.check5158, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.1.i.i104.lcssa, 28
  %n.vec = and i64 %.1.i.i104.lcssa, -32          ; 5 uses
  %i.dlu = and i64 %.1.i.i104.lcssa, 31
  %i.dlv = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %n.vec
  %i.dlw = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %index ; 2 uses
  %next.gep5159 = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %index ; 2 uses
  %i.dlx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !81
  %wide.load5160 = load <16 x i8>, ptr %i.dlx, align 1, !tbaa !81
  %i.dly = getelementptr i8, ptr %next.gep5159, i64 16
  store <16 x i8> %wide.load, ptr %next.gep5159, align 1, !tbaa !81
  store <16 x i8> %wide.load5160, ptr %i.dly, align 1, !tbaa !81
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dlz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dlz, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1.i.i104.lcssa, %n.vec
  br i1 %cmp.n, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2155.preheader, label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5164 = and i64 %.1.i.i104.lcssa, -4       ; 4 uses
  %i.dma = and i64 %.1.i.i104.lcssa, 3
  %i.dmb = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %n.vec5164
  %i.dmc = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %n.vec5164 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5169, %vec.epilog.vector.body ] ; 3 uses
  %next.gep5166 = getelementptr i8, ptr %.119.i.i103.lcssa, i64 %index5165
  %next.gep5167 = getelementptr i8, ptr %.122.i.i102.lcssa, i64 %index5165
  %wide.load5168 = load <4 x i8>, ptr %next.gep5166, align 1, !tbaa !81
  store <4 x i8> %wide.load5168, ptr %next.gep5167, align 1, !tbaa !81
  %index.next5169 = add nuw i64 %index5165, 4     ; 2 uses
  %i.dmd = icmp eq i64 %index.next5169, %n.vec5164
  br i1 %i.dmd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !356

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n5170 = icmp eq i64 %.1.i.i104.lcssa, %n.vec5164
  br i1 %cmp.n5170, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2155.preheader

.lr.ph2155.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.i.i1072154.ph = phi i64 [ %.1.i.i104.lcssa, %iter.check ], [ %i.dlu, %vec.epilog.iter.check ], [ %i.dma, %vec.epilog.middle.block ] ; 4 uses
  %.220.i.i1062153.ph = phi ptr [ %.119.i.i103.lcssa, %iter.check ], [ %i.dlv, %vec.epilog.iter.check ], [ %i.dmb, %vec.epilog.middle.block ] ; 2 uses
  %.223.i.i1052152.ph = phi ptr [ %.122.i.i102.lcssa, %iter.check ], [ %i.dlw, %vec.epilog.iter.check ], [ %i.dmc, %vec.epilog.middle.block ] ; 2 uses
  %i.dme = add nsw i64 %.2.i.i1072154.ph, -1
  %xtraiter6067 = and i64 %.2.i.i1072154.ph, 7    ; 2 uses
  %lcmp.mod6068.not = icmp eq i64 %xtraiter6067, 0
  br i1 %lcmp.mod6068.not, label %.lr.ph2155.prol.loopexit, label %.lr.ph2155.prol

.lr.ph2155.prol:                                  ; preds = %.lr.ph2155.preheader, %.lr.ph2155.prol
  %.2.i.i1072154.prol = phi i64 [ %i.dmi, %.lr.ph2155.prol ], [ %.2.i.i1072154.ph, %.lr.ph2155.preheader ]
  %.220.i.i1062153.prol = phi ptr [ %i.dmf, %.lr.ph2155.prol ], [ %.220.i.i1062153.ph, %.lr.ph2155.preheader ] ; 2 uses
  %.223.i.i1052152.prol = phi ptr [ %i.dmh, %.lr.ph2155.prol ], [ %.223.i.i1052152.ph, %.lr.ph2155.preheader ] ; 2 uses
  %prol.iter6069 = phi i64 [ %prol.iter6069.next, %.lr.ph2155.prol ], [ 0, %.lr.ph2155.preheader ]
  %i.dmf = getelementptr inbounds nuw i8, ptr %.220.i.i1062153.prol, i64 1 ; 2 uses
  %i.dmg = load i8, ptr %.220.i.i1062153.prol, align 1, !tbaa !81
  %i.dmh = getelementptr inbounds nuw i8, ptr %.223.i.i1052152.prol, i64 1 ; 3 uses
  store i8 %i.dmg, ptr %.223.i.i1052152.prol, align 1, !tbaa !81
  %i.dmi = add nsw i64 %.2.i.i1072154.prol, -1    ; 2 uses
  %prol.iter6069.next = add i64 %prol.iter6069, 1 ; 2 uses
  %prol.iter6069.cmp.not = icmp eq i64 %prol.iter6069.next, %xtraiter6067
  br i1 %prol.iter6069.cmp.not, label %.lr.ph2155.prol.loopexit, label %.lr.ph2155.prol, !llvm.loop !357

.lr.ph2155.prol.loopexit:                         ; preds = %.lr.ph2155.prol, %.lr.ph2155.preheader
  %.lcssa5910.unr = phi ptr [ poison, %.lr.ph2155.preheader ], [ %i.dmh, %.lr.ph2155.prol ]
  %.2.i.i1072154.unr = phi i64 [ %.2.i.i1072154.ph, %.lr.ph2155.preheader ], [ %i.dmi, %.lr.ph2155.prol ]
  %.220.i.i1062153.unr = phi ptr [ %.220.i.i1062153.ph, %.lr.ph2155.preheader ], [ %i.dmf, %.lr.ph2155.prol ]
  %.223.i.i1052152.unr = phi ptr [ %.223.i.i1052152.ph, %.lr.ph2155.preheader ], [ %i.dmh, %.lr.ph2155.prol ]
  %i.dmj = icmp ult i64 %i.dme, 7
  br i1 %i.dmj, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2155

.lr.ph2147:                                       ; preds = %.lr.ph2147.preheader5818, %.lr.ph2147
  %.1.i.i1042146 = phi i64 [ %i.dmn, %.lr.ph2147 ], [ %.1.i.i1042146.ph, %.lr.ph2147.preheader5818 ]
  %.119.i.i1032145 = phi ptr [ %i.dmm, %.lr.ph2147 ], [ %.119.i.i1032145.ph, %.lr.ph2147.preheader5818 ] ; 2 uses
  %.122.i.i1022144 = phi ptr [ %i.dml, %.lr.ph2147 ], [ %.122.i.i1022144.ph, %.lr.ph2147.preheader5818 ] ; 2 uses
  %i.dmk = load i32, ptr %.119.i.i1032145, align 1
  store i32 %i.dmk, ptr %.122.i.i1022144, align 1
  %i.dml = getelementptr inbounds nuw i8, ptr %.122.i.i1022144, i64 4 ; 2 uses
  %i.dmm = getelementptr inbounds nuw i8, ptr %.119.i.i1032145, i64 4 ; 2 uses
  %i.dmn = add nsw i64 %.1.i.i1042146, -4         ; 3 uses
  %i.dmo = icmp ugt i64 %i.dmn, 3
  br i1 %i.dmo, label %.lr.ph2147, label %.preheader1131, !llvm.loop !358

.lr.ph2155:                                       ; preds = %.lr.ph2155.prol.loopexit, %.lr.ph2155
  %.2.i.i1072154 = phi i64 [ %i.dnn, %.lr.ph2155 ], [ %.2.i.i1072154.unr, %.lr.ph2155.prol.loopexit ]
  %.220.i.i1062153 = phi ptr [ %i.dnk, %.lr.ph2155 ], [ %.220.i.i1062153.unr, %.lr.ph2155.prol.loopexit ] ; 9 uses
  %.223.i.i1052152 = phi ptr [ %i.dnm, %.lr.ph2155 ], [ %.223.i.i1052152.unr, %.lr.ph2155.prol.loopexit ] ; 9 uses
  %i.dmp = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 1
  %i.dmq = load i8, ptr %.220.i.i1062153, align 1, !tbaa !81
  %i.dmr = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 1
  store i8 %i.dmq, ptr %.223.i.i1052152, align 1, !tbaa !81
  %i.dms = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 2
  %i.dmt = load i8, ptr %i.dmp, align 1, !tbaa !81
  %i.dmu = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 2
  store i8 %i.dmt, ptr %i.dmr, align 1, !tbaa !81
  %i.dmv = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 3
  %i.dmw = load i8, ptr %i.dms, align 1, !tbaa !81
  %i.dmx = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 3
  store i8 %i.dmw, ptr %i.dmu, align 1, !tbaa !81
  %i.dmy = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 4
  %i.dmz = load i8, ptr %i.dmv, align 1, !tbaa !81
  %i.dna = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 4
  store i8 %i.dmz, ptr %i.dmx, align 1, !tbaa !81
  %i.dnb = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 5
  %i.dnc = load i8, ptr %i.dmy, align 1, !tbaa !81
  %i.dnd = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 5
  store i8 %i.dnc, ptr %i.dna, align 1, !tbaa !81
  %i.dne = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 6
  %i.dnf = load i8, ptr %i.dnb, align 1, !tbaa !81
  %i.dng = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 6
  store i8 %i.dnf, ptr %i.dnd, align 1, !tbaa !81
  %i.dnh = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 7
  %i.dni = load i8, ptr %i.dne, align 1, !tbaa !81
  %i.dnj = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 7
  store i8 %i.dni, ptr %i.dng, align 1, !tbaa !81
  %i.dnk = getelementptr inbounds nuw i8, ptr %.220.i.i1062153, i64 8
  %i.dnl = load i8, ptr %i.dnh, align 1, !tbaa !81
  %i.dnm = getelementptr inbounds nuw i8, ptr %.223.i.i1052152, i64 8 ; 2 uses
  store i8 %i.dnl, ptr %i.dnj, align 1, !tbaa !81
  %i.dnn = add nsw i64 %.2.i.i1072154, -8         ; 2 uses
  %.not.i.i108.7 = icmp eq i64 %i.dnn, 0
  br i1 %.not.i.i108.7, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i, label %.lr.ph2155, !llvm.loop !359

_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i: ; preds = %.preheader1117, %.lr.ph2155.prol.loopexit, %.lr.ph2155, %.preheader1103, %bb.js, %.lr.ph2132.prol.loopexit, %bb.kf, %bb.kh, %bb.ma, %.lr.ph2183.prol.loopexit, %bb.mn, %bb.mp, %middle.block, %vec.epilog.middle.block, %.preheader1131
  %.8.i584.i.lcssa.sink4444 = phi ptr [ %.8.i584.i, %bb.kf ], [ %.122.i.i102.lcssa, %.preheader1131 ], [ %i.dmc, %vec.epilog.middle.block ], [ %.lcssa5982.unr, %.lr.ph2183.prol.loopexit ], [ %i.dnm, %.lr.ph2155 ], [ %i.dlw, %middle.block ], [ %.lcssa5897.unr, %.lr.ph2132.prol.loopexit ], [ %.2.i567.i.lcssa, %.preheader1103 ], [ %.8.i.i121, %bb.mn ], [ %.8.i.i121, %bb.mp ], [ %i.ddn, %bb.ma ], [ %.8.i584.i, %bb.kh ], [ %i.cqe, %bb.js ], [ %.lcssa5910.unr, %.lr.ph2155.prol.loopexit ], [ %.2.i576.i.lcssa, %.preheader1117 ] ; 4 uses
  %i.dno = getelementptr inbounds nuw i8, ptr %.8.i584.i.lcssa.sink4444, i64 1
  store i8 34, ptr %.8.i584.i.lcssa.sink4444, align 1, !tbaa !81
  %i.dnp = select i1 %.not532.i, i8 44, i8 58
  %i.dnq = getelementptr inbounds nuw i8, ptr %.8.i584.i.lcssa.sink4444, i64 2
  store i8 %i.dnp, ptr %i.dno, align 1, !tbaa !81
  %i.dnr = select i1 %.not532.i, i8 10, i8 32
  %i.dns = getelementptr inbounds nuw i8, ptr %.8.i584.i.lcssa.sink4444, i64 3
  store i8 %i.dnr, ptr %i.dnq, align 1, !tbaa !81
  br label %bb.sk

bb.nm:                                            ; preds = %bb.ir
  %i.dnt = trunc i64 %.0783 to i32
  %i.dnu = and i32 %i.dnt, %i.cih
  %.not527.i = trunc nuw i32 %i.dnu to i1         ; 2 uses
  %i.dnv = select i1 %.not527.i, i64 32, i64 %i.cij ; 2 uses
  %i.dnw = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.dnv
  %.not528.i = icmp ult ptr %i.dnw, %.0483.i
  br i1 %.not528.i, label %bb.np, label %bb.nn, !prof !24

bb.nn:                                            ; preds = %bb.nm
  %i.dnx = lshr i64 %.0472.i, 1
  %i.dny = tail call i64 @llvm.umax.i64(i64 %i.dnx, i64 %i.dnv)
  %i.dnz = add i64 %i.dny, 15
  %i.doa = and i64 %i.dnz, -16
  %i.dob = add i64 %i.doa, %.0472.i               ; 4 uses
  %i.doc = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0455.i, i64 noundef %.0472.i, i64 noundef %i.dob), !inline_history !350 ; 6 uses
  %.not529.i = icmp eq ptr %i.doc, null
  br i1 %.not529.i, label %.loopexit1129, label %bb.no, !prof !7

bb.no:                                            ; preds = %bb.nn
  %i.dod = ptrtoint ptr %.0494.i to i64
  %i.doe = ptrtoint ptr %.0483.i to i64           ; 2 uses
  %i.dof = sub i64 %i.dod, %i.doe                 ; 2 uses
  %i.dog = sub i64 %i.dob, %i.dof
  %i.doh = getelementptr inbounds nuw i8, ptr %i.doc, i64 %i.dog ; 2 uses
  %i.doi = ptrtoint ptr %.0455.i to i64           ; 2 uses
  %i.doj = sub i64 %i.doe, %i.doi
  %i.dok = getelementptr inbounds i8, ptr %i.doc, i64 %i.doj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.doh, ptr nonnull align 1 %i.dok, i64 %i.dof, i1 false)
  %i.dol = ptrtoint ptr %.0456.i to i64
  %i.dom = sub i64 %i.dol, %i.doi
  %i.don = getelementptr inbounds i8, ptr %i.doc, i64 %i.dom
  %i.doo = getelementptr inbounds nuw i8, ptr %i.doc, i64 %i.dob
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nm
  %.2496.i = phi ptr [ %i.doo, %bb.no ], [ %.0494.i, %bb.nm ]
  %.2485.i = phi ptr [ %i.doh, %bb.no ], [ %.0483.i, %bb.nm ]
  %.2474.i = phi i64 [ %i.dob, %bb.no ], [ %.0472.i, %bb.nm ]
  %.3459.i = phi ptr [ %i.don, %bb.no ], [ %.0456.i, %bb.nm ] ; 3 uses
  %.2.i = phi ptr [ %i.doc, %bb.no ], [ %.0455.i, %bb.nm ] ; 2 uses
  %.not.i851.i2093 = select i1 %.not527.i, i1 true, i1 %.not.i851.i20933148
  br i1 %.not.i851.i2093, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i, label %select.unfold878.preheader

select.unfold878.preheader:                       ; preds = %bb.np
  br i1 %lcmp.mod.not, label %select.unfold878.prol.loopexit, label %select.unfold878.prol

select.unfold878.prol:                            ; preds = %select.unfold878.preheader, %select.unfold878.prol
  %.0.i850.i2095.prol = phi ptr [ %i.doq, %select.unfold878.prol ], [ %.3459.i, %select.unfold878.preheader ] ; 2 uses
  %.04.i849.i2094.prol = phi i64 [ %i.dop, %select.unfold878.prol ], [ %.0470.i.ph, %select.unfold878.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold878.prol ], [ 0, %select.unfold878.preheader ]
  %i.dop = add i64 %.04.i849.i2094.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i850.i2095.prol, align 1
  %i.doq = getelementptr inbounds nuw i8, ptr %.0.i850.i2095.prol, i64 %i.chk ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold878.prol.loopexit, label %select.unfold878.prol, !llvm.loop !360

select.unfold878.prol.loopexit:                   ; preds = %select.unfold878.prol, %select.unfold878.preheader
  %.lcssa5822.unr = phi ptr [ poison, %select.unfold878.preheader ], [ %i.doq, %select.unfold878.prol ]
  %.0.i850.i2095.unr = phi ptr [ %.3459.i, %select.unfold878.preheader ], [ %i.doq, %select.unfold878.prol ]
  %.04.i849.i2094.unr = phi i64 [ %.0470.i.ph, %select.unfold878.preheader ], [ %i.dop, %select.unfold878.prol ]
  br i1 %i.cim, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i, label %select.unfold878

select.unfold878:                                 ; preds = %select.unfold878.prol.loopexit, %select.unfold878
  %.0.i850.i2095 = phi ptr [ %i.doz, %select.unfold878 ], [ %.0.i850.i2095.unr, %select.unfold878.prol.loopexit ] ; 2 uses
  %.04.i849.i2094 = phi i64 [ %i.doy, %select.unfold878 ], [ %.04.i849.i2094.unr, %select.unfold878.prol.loopexit ]
  store i32 538976288, ptr %.0.i850.i2095, align 1
  %i.dor = getelementptr inbounds nuw i8, ptr %.0.i850.i2095, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dor, align 1
  %i.dos = getelementptr inbounds nuw i8, ptr %i.dor, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dos, align 1
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dos, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dot, align 1
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dot, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dou, align 1
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dou, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dov, align 1
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dov, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.dow, align 1
  %i.dox = getelementptr inbounds nuw i8, ptr %i.dow, i64 %i.chk ; 2 uses
  %i.doy = add i64 %.04.i849.i2094, -8            ; 2 uses
  store i32 538976288, ptr %i.dox, align 1
  %i.doz = getelementptr inbounds nuw i8, ptr %i.dox, i64 %i.chk ; 2 uses
  %.not.i851.i.7 = icmp eq i64 %i.doy, 0
  br i1 %.not.i851.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i, label %select.unfold878, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i: ; preds = %select.unfold878.prol.loopexit, %select.unfold878, %bb.np
  %.0.i850.i.lcssa = phi ptr [ %.3459.i, %bb.np ], [ %.lcssa5822.unr, %select.unfold878.prol.loopexit ], [ %i.doz, %select.unfold878 ] ; 10 uses
  %i.dpa = load i64, ptr %.0454.i, align 8, !tbaa !79 ; 2 uses
  %i.dpb = and i64 %i.dpa, 16
  %.not.i658.i = icmp eq i64 %i.dpb, 0
  %i.dpc = getelementptr inbounds nuw i8, ptr %.0454.i, i64 8
  %i.dpd = load i64, ptr %i.dpc, align 8, !tbaa !81 ; 10 uses
  br i1 %.not.i658.i, label %bb.qs, label %bb.nq

bb.nq:                                            ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit852.i
  %i.dpe = and i64 %i.dpd, 4503599627370495       ; 4 uses
  %i.dpf = lshr i64 %i.dpd, 52
  %i.dpg = trunc nuw nsw i64 %i.dpf to i32
  %i.dph = and i32 %i.dpg, 2047                   ; 7 uses
  %i.dpi = icmp eq i32 %i.dph, 2047
  br i1 %i.dpi, label %bb.nr, label %bb.nx, !prof !7

bb.nr:                                            ; preds = %bb.nq
  br i1 %.not963, label %bb.nt, label %bb.ns, !prof !24

bb.ns:                                            ; preds = %bb.nr
  store i32 1819047278, ptr %.0.i850.i.lcssa, align 1
  %i.dpj = getelementptr inbounds nuw i8, ptr %.0.i850.i.lcssa, i64 4
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.nt:                                            ; preds = %bb.nr
  br i1 %.not964, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread883, label %bb.nu, !prof !24

bb.nu:                                            ; preds = %bb.nt
  %i.dpk = icmp eq i64 %i.dpe, 0
  br i1 %i.dpk, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  store i8 45, ptr %.0.i850.i.lcssa, align 1, !tbaa !81
  %.lobit131.i.i82 = lshr i64 %i.dpd, 63
  %i.dpl = getelementptr inbounds nuw i8, ptr %.0.i850.i.lcssa, i64 %.lobit131.i.i82 ; 2 uses
  store i64 8751735898823355977, ptr %i.dpl, align 1
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.dpl, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.nw:                                            ; preds = %bb.nu
  store i32 5136718, ptr %.0.i850.i.lcssa, align 1
  %i.dpn = getelementptr inbounds nuw i8, ptr %.0.i850.i.lcssa, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.nx:                                            ; preds = %bb.nq
  store i8 45, ptr %.0.i850.i.lcssa, align 1, !tbaa !81
  %.lobit.i679.i = lshr i64 %i.dpd, 63
  %i.dpo = getelementptr i8, ptr %.0.i850.i.lcssa, i64 %.lobit.i679.i ; 43 uses
  %.mask.i.i34 = and i64 %i.dpd, 9223372036854775807
  %i.dpp = icmp eq i64 %.mask.i.i34, 0
  br i1 %i.dpp, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  store i32 3157552, ptr %i.dpo, align 1
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpo, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.nz:                                            ; preds = %bb.nx
  %.not.i680.i = icmp eq i32 %i.dph, 0
  br i1 %.not.i680.i, label %bb.pv, label %bb.oa, !prof !7

bb.oa:                                            ; preds = %bb.nz
  %i.dpr = or disjoint i64 %i.dpe, 4503599627370496 ; 3 uses
  %i.dps = add nsw i32 %i.dph, -1023
  %or.cond.i681.i = icmp ult i32 %i.dps, 53
  br i1 %or.cond.i681.i, label %bb.ob, label %bb.or

bb.ob:                                            ; preds = %bb.oa
  %i.dpt = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.dpr, i1 true)
  %i.dpu = trunc nuw nsw i64 %i.dpt to i32
  %i.dpv = sub nuw nsw i32 1075, %i.dph           ; 2 uses
  %.not127.i.i61 = icmp samesign ugt i32 %i.dpv, %i.dpu
  br i1 %.not127.i.i61, label %bb.or, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.dpw = zext nneg i32 %i.dpv to i64
  %i.dpx = lshr i64 %i.dpr, %i.dpw                ; 21 uses
  %i.dpy = icmp samesign ult i64 %i.dpx, 100000000
  br i1 %i.dpy, label %bb.od, label %bb.ok

bb.od:                                            ; preds = %bb.oc
  %i.dpz = trunc nuw nsw i64 %i.dpx to i32        ; 4 uses
  %i.dqa = icmp samesign ult i64 %i.dpx, 100
  br i1 %i.dqa, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.dqb = icmp samesign ult i64 %i.dpx, 10       ; 2 uses
  %i.dqc = shl nuw nsw i64 %i.dpx, 1
  %i.dqd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dqc
  %.neg70.i774.i = sext i1 %i.dqb to i64
  %i.dqe = zext i1 %i.dqb to i64
  %i.dqf = getelementptr inbounds nuw i8, ptr %i.dqd, i64 %i.dqe
  %i.dqg = load i16, ptr %i.dqf, align 1
  store i16 %i.dqg, ptr %i.dpo, align 1
  %i.dqh = getelementptr inbounds i8, ptr %i.dpo, i64 %.neg70.i774.i
  %i.dqi = getelementptr inbounds nuw i8, ptr %i.dqh, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i62

bb.of:                                            ; preds = %bb.od
  %i.dqj = icmp samesign ult i64 %i.dpx, 10000
  br i1 %i.dqj, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.dqk = mul nuw nsw i32 %i.dpz, 5243
  %i.dql = lshr i32 %i.dqk, 19                    ; 2 uses
  %.neg68.i772.i = mul nsw i32 %i.dql, -100
  %i.dqm = add nsw i32 %.neg68.i772.i, %i.dpz
  %i.dqn = icmp samesign ult i64 %i.dpx, 1000     ; 2 uses
  %i.dqo = shl nuw nsw i32 %i.dql, 1
  %i.dqp = zext nneg i32 %i.dqo to i64
  %i.dqq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dqp
  %.neg69.i773.i = sext i1 %i.dqn to i64
  %i.dqr = zext i1 %i.dqn to i64
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dqq, i64 %i.dqr
  %i.dqt = load i16, ptr %i.dqs, align 1
  store i16 %i.dqt, ptr %i.dpo, align 1
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.foa = lshr i64 %i.fnz, 40
  %i.fob = trunc nuw nsw i64 %i.foa to i32        ; 3 uses
  %.neg.i822.i = mul i32 %i.fob, -10000
  %i.foc = add i32 %.neg.i822.i, %i.fkn           ; 2 uses
  %i.fod = mul nuw i32 %i.fob, 5243
  %i.foe = lshr i32 %i.fod, 19                    ; 2 uses
  %i.fof = mul i32 %i.foc, 5243
  %i.fog = lshr i32 %i.fof, 19                    ; 2 uses
  %.neg17.i823.i = mul nsw i32 %i.foe, -100
  %i.foh = add nsw i32 %.neg17.i823.i, %i.fob
  %.neg18.i824.i = mul i32 %i.fog, 2147483548
  %i.foi = add i32 %.neg18.i824.i, %i.foc
  %i.foj = shl nuw nsw i32 %i.foe, 1
  %i.fok = zext nneg i32 %i.foj to i64
  %i.fol = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fok
  %i.fom = load i16, ptr %i.fol, align 2
  store i16 %i.fom, ptr %.0.i804.i, align 1
  %i.fon = getelementptr inbounds nuw i8, ptr %.0.i804.i, i64 2
  %i.foo = shl nsw i32 %i.foh, 1
  %i.fop = zext i32 %i.foo to i64
  %i.foq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fop
  %i.for = load i16, ptr %i.foq, align 2
  store i16 %i.for, ptr %i.fon, align 1
  %i.fos = getelementptr inbounds nuw i8, ptr %.0.i804.i, i64 4
  %i.fot = shl nuw nsw i32 %i.fog, 1
  %i.fou = zext nneg i32 %i.fot to i64
  %i.fov = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fou
  %i.fow = load i16, ptr %i.fov, align 2
  store i16 %i.fow, ptr %i.fos, align 1
  %i.fox = getelementptr inbounds nuw i8, ptr %.0.i804.i, i64 6
  %i.foy = shl i32 %i.foi, 1
  %i.foz = zext i32 %i.foy to i64
  %i.fpa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.foz
  %i.fpb = load i16, ptr %i.fpa, align 2
  store i16 %i.fpb, ptr %i.fox, align 1
  %i.fpc = getelementptr inbounds nuw i8, ptr %.0.i804.i, i64 8
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.ri:                                            ; preds = %bb.ra
  %i.fpd = udiv i64 %i.fgx, 1000000000000         ; 4 uses
  %i.fpe = trunc nuw nsw i64 %i.fpd to i32        ; 2 uses
  %.neg27.i.i85 = mul nuw nsw i64 %i.fpd, 4294957296
  %i.fpf = add nuw nsw i64 %.neg27.i.i85, %i.fkl
  %i.fpg = trunc i64 %i.fpf to i32                ; 2 uses
  %i.fph = icmp ult i64 %i.fgx, 1000000000000000000
  br i1 %i.fph, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.fpi = mul nuw nsw i64 %i.fpd, 429497
  %i.fpj = lshr i64 %i.fpi, 32                    ; 2 uses
  %i.fpk = trunc nuw nsw i64 %i.fpj to i32
  %.neg44.i.i91 = mul nsw i32 %i.fpk, -10000
  %i.fpl = add nsw i32 %.neg44.i.i91, %i.fpe      ; 2 uses
  %i.fpm = mul i32 %i.fpl, 5243
  %i.fpn = lshr i32 %i.fpm, 19                    ; 2 uses
  %.neg45.i.i92 = mul nsw i32 %i.fpn, -100
  %i.fpo = add nsw i32 %.neg45.i.i92, %i.fpl
  %i.fpp = icmp samesign ult i64 %i.fgx, 100000000000000000 ; 2 uses
  %i.fpq = shl nuw nsw i64 %i.fpj, 1
  %i.fpr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fpq
  %.neg46.i.i93 = sext i1 %i.fpp to i64
  %i.fps = zext i1 %i.fpp to i64
  %i.fpt = getelementptr inbounds nuw i8, ptr %i.fpr, i64 %i.fps
  %i.fpu = load i16, ptr %i.fpt, align 1
  store i16 %i.fpu, ptr %i.fgy, align 1
  %i.fpv = getelementptr inbounds i8, ptr %i.fgy, i64 %.neg46.i.i93 ; 3 uses
  %i.fpw = getelementptr inbounds nuw i8, ptr %i.fpv, i64 2
  %i.fpx = shl nuw nsw i32 %i.fpn, 1
  %i.fpy = zext nneg i32 %i.fpx to i64
  %i.fpz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fpy
  %i.fqa = load i16, ptr %i.fpz, align 2
  store i16 %i.fqa, ptr %i.fpw, align 1
  %i.fqb = getelementptr inbounds nuw i8, ptr %i.fpv, i64 4
  %i.fqc = shl nsw i32 %i.fpo, 1
  %i.fqd = zext i32 %i.fqc to i64
  %i.fqe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fqd
  %i.fqf = load i16, ptr %i.fqe, align 2
  store i16 %i.fqf, ptr %i.fqb, align 1
  %i.fqg = getelementptr inbounds nuw i8, ptr %i.fpv, i64 6
  br label %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit.i89

bb.rk:                                            ; preds = %bb.ri
  %i.fqh = mul nuw nsw i64 %i.fpd, 109951163
  %i.fqi = lshr i64 %i.fqh, 40
  %i.fqj = trunc nuw nsw i64 %i.fqi to i32        ; 3 uses
  %.neg.i828.i = mul nsw i32 %i.fqj, -10000
  %i.fqk = add nsw i32 %.neg.i828.i, %i.fpe       ; 2 uses
  %i.fql = mul nuw nsw i32 %i.fqj, 5243
  %i.fqm = lshr i32 %i.fql, 19                    ; 2 uses
  %i.fqn = mul i32 %i.fqk, 5243
  %i.fqo = lshr i32 %i.fqn, 19                    ; 2 uses
  %.neg41.i.i86 = mul nsw i32 %i.fqm, -100
  %i.fqp = add nsw i32 %.neg41.i.i86, %i.fqj
  %.neg42.i.i87 = mul nsw i32 %i.fqo, -100
  %i.fqq = add nsw i32 %.neg42.i.i87, %i.fqk
  %i.fqr = icmp ult i64 %i.fgx, -8446744073709551616 ; 2 uses
  %i.fqs = shl nuw nsw i32 %i.fqm, 1
  %i.fqt = zext nneg i32 %i.fqs to i64
  %i.fqu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fqt
  %.neg43.i.i88 = sext i1 %i.fqr to i64
  %i.fqv = zext i1 %i.fqr to i64
  %i.fqw = getelementptr inbounds nuw i8, ptr %i.fqu, i64 %i.fqv
  %i.fqx = load i16, ptr %i.fqw, align 1
  store i16 %i.fqx, ptr %i.fgy, align 1
  %i.fqy = getelementptr inbounds i8, ptr %i.fgy, i64 %.neg43.i.i88 ; 4 uses
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.fqy, i64 2
  %i.fra = shl nsw i32 %i.fqp, 1
  %i.frb = zext i32 %i.fra to i64
  %i.frc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frb
  %i.frd = load i16, ptr %i.frc, align 2
  store i16 %i.frd, ptr %i.fqz, align 1
  %i.fre = getelementptr inbounds nuw i8, ptr %i.fqy, i64 4
  %i.frf = shl nuw nsw i32 %i.fqo, 1
  %i.frg = zext nneg i32 %i.frf to i64
  %i.frh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frg
  %i.fri = load i16, ptr %i.frh, align 2
  store i16 %i.fri, ptr %i.fre, align 1
  %i.frj = getelementptr inbounds nuw i8, ptr %i.fqy, i64 6
  %i.frk = shl nsw i32 %i.fqq, 1
  %i.frl = zext i32 %i.frk to i64
  %i.frm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frl
  %i.frn = load i16, ptr %i.frm, align 2
  store i16 %i.frn, ptr %i.frj, align 1
  %i.fro = getelementptr inbounds nuw i8, ptr %i.fqy, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit.i89

_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit.i89: ; preds = %bb.rk, %bb.rj
  %.0.i829.i = phi ptr [ %i.fqg, %bb.rj ], [ %i.fro, %bb.rk ] ; 7 uses
  %i.frp = mul i32 %i.fpg, 5243
  %i.frq = lshr i32 %i.frp, 19                    ; 2 uses
  %.neg.i830.i = mul i32 %i.frq, 2147483548
  %i.frr = add i32 %.neg.i830.i, %i.fpg
  %i.frs = shl nuw nsw i32 %i.frq, 1
  %i.frt = zext nneg i32 %i.frs to i64
  %i.fru = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.frt
  %i.frv = load i16, ptr %i.fru, align 2
  store i16 %i.frv, ptr %.0.i829.i, align 1
  %i.frw = getelementptr inbounds nuw i8, ptr %.0.i829.i, i64 2
  %i.frx = shl i32 %i.frr, 1
  %i.fry = zext i32 %i.frx to i64
  %i.frz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fry
  %i.fsa = load i16, ptr %i.frz, align 2
  store i16 %i.fsa, ptr %i.frw, align 1
  %i.fsb = getelementptr inbounds nuw i8, ptr %.0.i829.i, i64 4
  %i.fsc = and i64 %i.fkm, 4294967295
  %i.fsd = mul nuw nsw i64 %i.fsc, 109951163
  %i.fse = lshr i64 %i.fsd, 40
  %i.fsf = trunc nuw nsw i64 %i.fse to i32        ; 3 uses
  %.neg.i825.i = mul i32 %i.fsf, -10000
  %i.fsg = add i32 %.neg.i825.i, %i.fkn           ; 2 uses
  %i.fsh = mul nuw i32 %i.fsf, 5243
  %i.fsi = lshr i32 %i.fsh, 19                    ; 2 uses
  %i.fsj = mul i32 %i.fsg, 5243
  %i.fsk = lshr i32 %i.fsj, 19                    ; 2 uses
  %.neg17.i826.i = mul nsw i32 %i.fsi, -100
  %i.fsl = add nsw i32 %.neg17.i826.i, %i.fsf
  %.neg18.i827.i = mul i32 %i.fsk, 2147483548
  %i.fsm = add i32 %.neg18.i827.i, %i.fsg
  %i.fsn = shl nuw nsw i32 %i.fsi, 1
  %i.fso = zext nneg i32 %i.fsn to i64
  %i.fsp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fso
  %i.fsq = load i16, ptr %i.fsp, align 2
  store i16 %i.fsq, ptr %i.fsb, align 1
  %i.fsr = getelementptr inbounds nuw i8, ptr %.0.i829.i, i64 6
  %i.fss = shl nsw i32 %i.fsl, 1
  %i.fst = zext i32 %i.fss to i64
  %i.fsu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fst
  %i.fsv = load i16, ptr %i.fsu, align 2
  store i16 %i.fsv, ptr %i.fsr, align 1
  %i.fsw = getelementptr inbounds nuw i8, ptr %.0.i829.i, i64 8
  %i.fsx = shl nuw nsw i32 %i.fsk, 1
  %i.fsy = zext nneg i32 %i.fsx to i64
  %i.fsz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.fsy
  %i.fta = load i16, ptr %i.fsz, align 2
  store i16 %i.fta, ptr %i.fsw, align 1
  %i.ftb = getelementptr inbounds nuw i8, ptr %.0.i829.i, i64 10
  %i.ftc = shl i32 %i.fsm, 1
  %i.ftd = zext i32 %i.ftc to i64
  %i.fte = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ftd
  %i.ftf = load i16, ptr %i.fte, align 2
  store i16 %i.ftf, ptr %i.ftb, align 1
  %i.ftg = getelementptr inbounds nuw i8, ptr %.0.i829.i, i64 12
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread: ; preds = %.lr.ph2099.preheader, %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54, %._crit_edge, %bb.qz, %bb.qy, %bb.qw, %bb.qu, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit811.i, %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit.i89, %bb.pt, %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i62, %bb.ny, %bb.qr, %bb.nw, %bb.nv, %bb.ns, %bb.pu
  %.0.i659.i882 = phi ptr [ %i.dpj, %bb.ns ], [ %i.eso, %bb.pu ], [ %i.fkj, %bb.qz ], [ %i.fjb, %bb.qy ], [ %i.fib, %bb.qw ], [ %i.fhj, %bb.qu ], [ %i.fpc, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit811.i ], [ %i.ftg, %_ZN13duckdb_yyjsonL17write_u64_len_5_8EjPh.exit.i89 ], [ %i.esd, %bb.pt ], [ %spec.select942, %._crit_edge ], [ %i.dyb, %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i62 ], [ %i.dpq, %bb.ny ], [ %i.fgt, %bb.qr ], [ %i.dpn, %bb.nw ], [ %i.dpm, %bb.nv ], [ %i.egu, %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54 ], [ %i.egu, %.lr.ph2099.preheader ] ; 3 uses
  %i.fth = getelementptr inbounds nuw i8, ptr %.0.i659.i882, i64 1
  store i8 44, ptr %.0.i659.i882, align 1, !tbaa !81
  %i.fti = getelementptr inbounds nuw i8, ptr %.0.i659.i882, i64 2
  store i8 10, ptr %i.fth, align 1, !tbaa !81
  br label %bb.sk

bb.rl:                                            ; preds = %bb.ir
  %i.ftj = and i8 %i.cis, 6
  %i.ftk = icmp eq i8 %i.ftj, 6
  br i1 %i.ftk, label %bb.rm, label %bb.rx

bb.rm:                                            ; preds = %bb.rl
  %i.ftl = trunc i64 %.0783 to i32
  %i.ftm = and i32 %i.ftl, %i.cih
  %.not520.i = trunc nuw i32 %i.ftm to i1         ; 4 uses
  %i.ftn = lshr i64 %i.cir, 8                     ; 2 uses
  %i.fto = icmp eq i8 %i.cit, 7                   ; 5 uses
  %i.ftp = icmp eq i64 %i.ftn, 0
  br i1 %i.ftp, label %bb.rn, label %bb.rr, !prof !7

bb.rn:                                            ; preds = %bb.rm
  %i.ftq = select i1 %.not520.i, i64 16, i64 %i.cik ; 2 uses
  %i.ftr = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.ftq
  %.not525.i = icmp ult ptr %i.ftr, %.0483.i
  br i1 %.not525.i, label %bb.rq, label %bb.ro, !prof !24

bb.ro:                                            ; preds = %bb.rn
  %i.fts = lshr i64 %.0472.i, 1
  %i.ftt = tail call i64 @llvm.umax.i64(i64 %i.fts, i64 %i.ftq)
  %i.ftu = add i64 %i.ftt, 15
  %i.ftv = and i64 %i.ftu, -16
  %i.ftw = add i64 %i.ftv, %.0472.i               ; 4 uses
  %i.ftx = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0455.i, i64 noundef %.0472.i, i64 noundef %i.ftw), !inline_history !350 ; 6 uses
  %.not526.i = icmp eq ptr %i.ftx, null
  br i1 %.not526.i, label %.loopexit1129, label %bb.rp, !prof !7

bb.rp:                                            ; preds = %bb.ro
  %i.fty = ptrtoint ptr %.0494.i to i64
  %i.ftz = ptrtoint ptr %.0483.i to i64           ; 2 uses
  %i.fua = sub i64 %i.fty, %i.ftz                 ; 2 uses
  %i.fub = sub i64 %i.ftw, %i.fua
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.ftx, i64 %i.fub ; 2 uses
  %i.fud = ptrtoint ptr %.0455.i to i64           ; 2 uses
  %i.fue = sub i64 %i.ftz, %i.fud
  %i.fuf = getelementptr inbounds i8, ptr %i.ftx, i64 %i.fue
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fuc, ptr nonnull align 1 %i.fuf, i64 %i.fua, i1 false)
  %i.fug = ptrtoint ptr %.0456.i to i64
  %i.fuh = sub i64 %i.fug, %i.fud
  %i.fui = getelementptr inbounds i8, ptr %i.ftx, i64 %i.fuh
  %i.fuj = getelementptr inbounds nuw i8, ptr %i.ftx, i64 %i.ftw
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.rn
  %.3497.i = phi ptr [ %i.fuj, %bb.rp ], [ %.0494.i, %bb.rn ]
  %.3486.i = phi ptr [ %i.fuc, %bb.rp ], [ %.0483.i, %bb.rn ]
  %.3475.i = phi i64 [ %i.ftw, %bb.rp ], [ %.0472.i, %bb.rn ]
  %.4460.i = phi ptr [ %i.fui, %bb.rp ], [ %.0456.i, %bb.rn ] ; 3 uses
  %.3.i = phi ptr [ %i.ftx, %bb.rp ], [ %.0455.i, %bb.rn ]
  %.not.i847.i2199 = select i1 %.not520.i, i1 true, i1 %.not.i847.i21993156
  br i1 %.not.i847.i2199, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i, label %select.unfold886.preheader

select.unfold886.preheader:                       ; preds = %bb.rq
  br i1 %lcmp.mod6084.not, label %select.unfold886.prol.loopexit, label %select.unfold886.prol

select.unfold886.prol:                            ; preds = %select.unfold886.preheader, %select.unfold886.prol
  %.0.i846.i2201.prol = phi ptr [ %i.ful, %select.unfold886.prol ], [ %.4460.i, %select.unfold886.preheader ] ; 2 uses
  %.04.i845.i2200.prol = phi i64 [ %i.fuk, %select.unfold886.prol ], [ %.0470.i.ph, %select.unfold886.preheader ]
  %prol.iter6085 = phi i64 [ %prol.iter6085.next, %select.unfold886.prol ], [ 0, %select.unfold886.preheader ]
  %i.fuk = add i64 %.04.i845.i2200.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i846.i2201.prol, align 1
  %i.ful = getelementptr inbounds nuw i8, ptr %.0.i846.i2201.prol, i64 %i.chk ; 3 uses
  %prol.iter6085.next = add i64 %prol.iter6085, 1 ; 2 uses
  %prol.iter6085.cmp.not = icmp eq i64 %prol.iter6085.next, %xtraiter6083
  br i1 %prol.iter6085.cmp.not, label %select.unfold886.prol.loopexit, label %select.unfold886.prol, !llvm.loop !364

select.unfold886.prol.loopexit:                   ; preds = %select.unfold886.prol, %select.unfold886.preheader
  %.lcssa5991.unr = phi ptr [ poison, %select.unfold886.preheader ], [ %i.ful, %select.unfold886.prol ]
  %.0.i846.i2201.unr = phi ptr [ %.4460.i, %select.unfold886.preheader ], [ %i.ful, %select.unfold886.prol ]
  %.04.i845.i2200.unr = phi i64 [ %.0470.i.ph, %select.unfold886.preheader ], [ %i.fuk, %select.unfold886.prol ]
  br i1 %i.ciq, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i, label %select.unfold886

select.unfold886:                                 ; preds = %select.unfold886.prol.loopexit, %select.unfold886
  %.0.i846.i2201 = phi ptr [ %i.fuu, %select.unfold886 ], [ %.0.i846.i2201.unr, %select.unfold886.prol.loopexit ] ; 2 uses
  %.04.i845.i2200 = phi i64 [ %i.fut, %select.unfold886 ], [ %.04.i845.i2200.unr, %select.unfold886.prol.loopexit ]
  store i32 538976288, ptr %.0.i846.i2201, align 1
  %i.fum = getelementptr inbounds nuw i8, ptr %.0.i846.i2201, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fum, align 1
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fum, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fun, align 1
  %i.fuo = getelementptr inbounds nuw i8, ptr %i.fun, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fuo, align 1
  %i.fup = getelementptr inbounds nuw i8, ptr %i.fuo, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fup, align 1
  %i.fuq = getelementptr inbounds nuw i8, ptr %i.fup, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fuq, align 1
  %i.fur = getelementptr inbounds nuw i8, ptr %i.fuq, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fur, align 1
  %i.fus = getelementptr inbounds nuw i8, ptr %i.fur, i64 %i.chk ; 2 uses
  %i.fut = add i64 %.04.i845.i2200, -8            ; 2 uses
  store i32 538976288, ptr %i.fus, align 1
  %i.fuu = getelementptr inbounds nuw i8, ptr %i.fus, i64 %i.chk ; 2 uses
  %.not.i847.i.7 = icmp eq i64 %i.fut, 0
  br i1 %.not.i847.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i, label %select.unfold886, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i: ; preds = %select.unfold886.prol.loopexit, %select.unfold886, %bb.rq
  %.0.i846.i.lcssa = phi ptr [ %.4460.i, %bb.rq ], [ %.lcssa5991.unr, %select.unfold886.prol.loopexit ], [ %i.fuu, %select.unfold886 ] ; 5 uses
  %i.fuv = select i1 %i.fto, i8 32, i8 0          ; 2 uses
  %i.fuw = or disjoint i8 %i.fuv, 91
  %i.fux = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 1
  store i8 %i.fuw, ptr %.0.i846.i.lcssa, align 1, !tbaa !81
  %i.fuy = or disjoint i8 %i.fuv, 93
  %i.fuz = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 2
  store i8 %i.fuy, ptr %i.fux, align 1, !tbaa !81
  %i.fva = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 3
  store i8 44, ptr %i.fuz, align 1, !tbaa !81
  %i.fvb = getelementptr inbounds nuw i8, ptr %.0.i846.i.lcssa, i64 4
  store i8 10, ptr %i.fva, align 1, !tbaa !81
  br label %bb.sk

bb.rr:                                            ; preds = %bb.rm
  %i.fvc = zext i1 %i.fto to i8
  %i.fvd = select i1 %.not520.i, i64 32, i64 %i.cij ; 2 uses
  %i.fve = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.fvd
  %.not521.i = icmp ult ptr %i.fve, %.0483.i
  br i1 %.not521.i, label %bb.ru, label %bb.rs, !prof !24

bb.rs:                                            ; preds = %bb.rr
  %i.fvf = lshr i64 %.0472.i, 1
  %i.fvg = tail call i64 @llvm.umax.i64(i64 %i.fvf, i64 %i.fvd)
  %i.fvh = add i64 %i.fvg, 15
  %i.fvi = and i64 %i.fvh, -16
  %i.fvj = add i64 %i.fvi, %.0472.i               ; 4 uses
  %i.fvk = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0455.i, i64 noundef %.0472.i, i64 noundef %i.fvj), !inline_history !350 ; 6 uses
  %.not522.i = icmp eq ptr %i.fvk, null
  br i1 %.not522.i, label %.loopexit1129, label %bb.rt, !prof !7

bb.rt:                                            ; preds = %bb.rs
  %i.fvl = ptrtoint ptr %.0494.i to i64
  %i.fvm = ptrtoint ptr %.0483.i to i64           ; 2 uses
  %i.fvn = sub i64 %i.fvl, %i.fvm                 ; 2 uses
  %i.fvo = sub i64 %i.fvj, %i.fvn
  %i.fvp = getelementptr inbounds nuw i8, ptr %i.fvk, i64 %i.fvo ; 2 uses
  %i.fvq = ptrtoint ptr %.0455.i to i64           ; 2 uses
  %i.fvr = sub i64 %i.fvm, %i.fvq
  %i.fvs = getelementptr inbounds i8, ptr %i.fvk, i64 %i.fvr
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fvp, ptr nonnull align 1 %i.fvs, i64 %i.fvn, i1 false)
  %i.fvt = ptrtoint ptr %.0456.i to i64
  %i.fvu = sub i64 %i.fvt, %i.fvq
  %i.fvv = getelementptr inbounds i8, ptr %i.fvk, i64 %i.fvu
  %i.fvw = getelementptr inbounds nuw i8, ptr %i.fvk, i64 %i.fvj
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.rr
  %.4498.i = phi ptr [ %i.fvw, %bb.rt ], [ %.0494.i, %bb.rr ]
  %.4487.i = phi ptr [ %i.fvp, %bb.rt ], [ %.0483.i, %bb.rr ] ; 2 uses
  %.4476.i = phi i64 [ %i.fvj, %bb.rt ], [ %.0472.i, %bb.rr ]
  %.5461.i = phi ptr [ %i.fvv, %bb.rt ], [ %.0456.i, %bb.rr ] ; 3 uses
  %.4.i = phi ptr [ %i.fvk, %bb.rt ], [ %.0455.i, %bb.rr ]
  %i.fvx = getelementptr inbounds i8, ptr %.4487.i, i64 -16 ; 2 uses
  %i.fvy = zext nneg i8 %.0784.ph to i64
  %i.fvz = shl i64 %.0783, 1
  %i.fwa = or disjoint i64 %i.fvz, %i.fvy
  store i64 %i.fwa, ptr %i.fvx, align 8, !tbaa !365
  %i.fwb = getelementptr inbounds i8, ptr %.4487.i, i64 -8
  store ptr %.0781.ph, ptr %i.fwb, align 8, !tbaa !367
  %i.fwc = zext i1 %i.fto to i64
  %i.fwd = shl nuw nsw i64 %i.ftn, %i.fwc
  %.not.i843.i22063155 = icmp eq i64 %.0470.i.ph, 0
  %.not.i843.i2206 = select i1 %.not520.i, i1 true, i1 %.not.i843.i22063155
  br i1 %.not.i843.i2206, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit844.i, label %select.unfold887.preheader

select.unfold887.preheader:                       ; preds = %bb.ru
  %xtraiter6086 = and i64 %.0470.i.ph, 7          ; 2 uses
  %lcmp.mod6087.not = icmp eq i64 %xtraiter6086, 0
  br i1 %lcmp.mod6087.not, label %select.unfold887.prol.loopexit, label %select.unfold887.prol

select.unfold887.prol:                            ; preds = %select.unfold887.preheader, %select.unfold887.prol
  %.0.i842.i2208.prol = phi ptr [ %i.fwf, %select.unfold887.prol ], [ %.5461.i, %select.unfold887.preheader ] ; 2 uses
  %.04.i841.i2207.prol = phi i64 [ %i.fwe, %select.unfold887.prol ], [ %.0470.i.ph, %select.unfold887.preheader ]
  %prol.iter6088 = phi i64 [ %prol.iter6088.next, %select.unfold887.prol ], [ 0, %select.unfold887.preheader ]
  %i.fwe = add i64 %.04.i841.i2207.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i842.i2208.prol, align 1
  %i.fwf = getelementptr inbounds nuw i8, ptr %.0.i842.i2208.prol, i64 %i.chk ; 3 uses
  %prol.iter6088.next = add i64 %prol.iter6088, 1 ; 2 uses
  %prol.iter6088.cmp.not = icmp eq i64 %prol.iter6088.next, %xtraiter6086
  br i1 %prol.iter6088.cmp.not, label %select.unfold887.prol.loopexit, label %select.unfold887.prol, !llvm.loop !368

select.unfold887.prol.loopexit:                   ; preds = %select.unfold887.prol, %select.unfold887.preheader
  %.lcssa6038.unr = phi ptr [ poison, %select.unfold887.preheader ], [ %i.fwf, %select.unfold887.prol ]
  %.0.i842.i2208.unr = phi ptr [ %.5461.i, %select.unfold887.preheader ], [ %i.fwf, %select.unfold887.prol ]
  %.04.i841.i2207.unr = phi i64 [ %.0470.i.ph, %select.unfold887.preheader ], [ %i.fwe, %select.unfold887.prol ]
  %i.fwg = icmp ult i64 %i.cil, 7
  br i1 %i.fwg, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit844.i, label %select.unfold887

select.unfold887:                                 ; preds = %select.unfold887.prol.loopexit, %select.unfold887
  %.0.i842.i2208 = phi ptr [ %i.fwp, %select.unfold887 ], [ %.0.i842.i2208.unr, %select.unfold887.prol.loopexit ] ; 2 uses
  %.04.i841.i2207 = phi i64 [ %i.fwo, %select.unfold887 ], [ %.04.i841.i2207.unr, %select.unfold887.prol.loopexit ]
  store i32 538976288, ptr %.0.i842.i2208, align 1
  %i.fwh = getelementptr inbounds nuw i8, ptr %.0.i842.i2208, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwh, align 1
  %i.fwi = getelementptr inbounds nuw i8, ptr %i.fwh, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwi, align 1
  %i.fwj = getelementptr inbounds nuw i8, ptr %i.fwi, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwj, align 1
  %i.fwk = getelementptr inbounds nuw i8, ptr %i.fwj, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwk, align 1
  %i.fwl = getelementptr inbounds nuw i8, ptr %i.fwk, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwl, align 1
  %i.fwm = getelementptr inbounds nuw i8, ptr %i.fwl, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fwm, align 1
  %i.fwn = getelementptr inbounds nuw i8, ptr %i.fwm, i64 %i.chk ; 2 uses
  %i.fwo = add i64 %.04.i841.i2207, -8            ; 2 uses
  store i32 538976288, ptr %i.fwn, align 1
  %i.fwp = getelementptr inbounds nuw i8, ptr %i.fwn, i64 %i.chk ; 2 uses
  %.not.i843.i.7 = icmp eq i64 %i.fwo, 0
  br i1 %.not.i843.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit844.i, label %select.unfold887, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit844.i: ; preds = %select.unfold887.prol.loopexit, %select.unfold887, %bb.ru
  %.0.i842.i.lcssa = phi ptr [ %.5461.i, %bb.ru ], [ %.lcssa6038.unr, %select.unfold887.prol.loopexit ], [ %i.fwp, %select.unfold887 ] ; 3 uses
  %i.fwq = add i64 %.0470.i.ph, 1
  %i.fwr = select i1 %i.fto, i8 123, i8 91
  %i.fws = getelementptr inbounds nuw i8, ptr %.0.i842.i.lcssa, i64 1
  store i8 %i.fwr, ptr %.0.i842.i.lcssa, align 1, !tbaa !81
  %i.fwt = getelementptr inbounds nuw i8, ptr %.0.i842.i.lcssa, i64 2
  store i8 10, ptr %i.fws, align 1, !tbaa !81
  %i.fwu = getelementptr inbounds nuw i8, ptr %.0454.i, i64 8
  %i.fwv = load ptr, ptr %i.fwu, align 8, !tbaa !81 ; 2 uses
  br i1 %i.fto, label %bb.rv, label %bb.rw

bb.rv:                                            ; preds = %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit844.i
  %i.fww = getelementptr inbounds nuw i8, ptr %i.fwv, i64 16
  %i.fwx = load ptr, ptr %i.fww, align 8, !tbaa !85
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit844.i
  %.pn524.i = phi ptr [ %i.fwx, %bb.rv ], [ %i.fwv, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit844.i ]
  %.in523.i = getelementptr inbounds nuw i8, ptr %.pn524.i, i64 16
  %i.fwy = load ptr, ptr %.in523.i, align 8, !tbaa !85
  br label %.outer1134.backedge

.outer1134.backedge:                              ; preds = %bb.sp, %bb.rw
  %.0784.ph.be = phi i8 [ %i.fvc, %bb.rw ], [ %i.gcs, %bb.sp ]
  %.0783.ph.be = phi i64 [ %i.fwd, %bb.rw ], [ %i.gcv, %bb.sp ]
  %.0781.ph.be = phi ptr [ %.0454.i, %bb.rw ], [ %i.gcu, %bb.sp ]
  %.0494.i.ph.be = phi ptr [ %.4498.i, %bb.rw ], [ %.10504.i, %bb.sp ]
  %.0483.i.ph.be = phi ptr [ %i.fvx, %bb.rw ], [ %i.gco, %bb.sp ]
  %.0472.i.ph.be = phi i64 [ %.4476.i, %bb.rw ], [ %.10482.i, %bb.sp ]
  %.0470.i.ph.be = phi i64 [ %i.fwq, %bb.rw ], [ %i.gbw, %bb.sp ]
  %.0456.i.ph.be = phi ptr [ %i.fwt, %bb.rw ], [ %i.gcx, %bb.sp ]
  %.0455.i.ph.be = phi ptr [ %.4.i, %bb.rw ], [ %.10.i, %bb.sp ]
  %.0454.i.ph.be = phi ptr [ %i.fwy, %bb.rw ], [ %i.gcn, %bb.sp ]
  br label %.outer1134

bb.rx:                                            ; preds = %bb.rl
  switch i8 %i.cit, label %bb.sx [
    i8 3, label %bb.ry
    i8 2, label %bb.sc
    i8 1, label %bb.sg
  ]

bb.ry:                                            ; preds = %bb.rx
  %i.fwz = trunc i64 %.0783 to i32
  %i.fxa = and i32 %i.fwz, %i.cih
  %.not517.i = trunc nuw i32 %i.fxa to i1         ; 2 uses
  %i.fxb = select i1 %.not517.i, i64 16, i64 %i.cik ; 2 uses
  %i.fxc = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.fxb
  %.not518.i = icmp ult ptr %i.fxc, %.0483.i
  br i1 %.not518.i, label %bb.sb, label %bb.rz, !prof !24

bb.rz:                                            ; preds = %bb.ry
  %i.fxd = lshr i64 %.0472.i, 1
  %i.fxe = tail call i64 @llvm.umax.i64(i64 %i.fxd, i64 %i.fxb)
  %i.fxf = add i64 %i.fxe, 15
  %i.fxg = and i64 %i.fxf, -16
  %i.fxh = add i64 %i.fxg, %.0472.i               ; 4 uses
  %i.fxi = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0455.i, i64 noundef %.0472.i, i64 noundef %i.fxh), !inline_history !350 ; 6 uses
  %.not519.i = icmp eq ptr %i.fxi, null
  br i1 %.not519.i, label %.loopexit1129, label %bb.sa, !prof !7

bb.sa:                                            ; preds = %bb.rz
  %i.fxj = ptrtoint ptr %.0494.i to i64
  %i.fxk = ptrtoint ptr %.0483.i to i64           ; 2 uses
  %i.fxl = sub i64 %i.fxj, %i.fxk                 ; 2 uses
  %i.fxm = sub i64 %i.fxh, %i.fxl
  %i.fxn = getelementptr inbounds nuw i8, ptr %i.fxi, i64 %i.fxm ; 2 uses
  %i.fxo = ptrtoint ptr %.0455.i to i64           ; 2 uses
  %i.fxp = sub i64 %i.fxk, %i.fxo
  %i.fxq = getelementptr inbounds i8, ptr %i.fxi, i64 %i.fxp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fxn, ptr nonnull align 1 %i.fxq, i64 %i.fxl, i1 false)
  %i.fxr = ptrtoint ptr %.0456.i to i64
  %i.fxs = sub i64 %i.fxr, %i.fxo
  %i.fxt = getelementptr inbounds i8, ptr %i.fxi, i64 %i.fxs
  %i.fxu = getelementptr inbounds nuw i8, ptr %i.fxi, i64 %i.fxh
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.ry
  %.5499.i = phi ptr [ %i.fxu, %bb.sa ], [ %.0494.i, %bb.ry ]
  %.5488.i = phi ptr [ %i.fxn, %bb.sa ], [ %.0483.i, %bb.ry ]
  %.5477.i = phi i64 [ %i.fxh, %bb.sa ], [ %.0472.i, %bb.ry ]
  %.6462.i = phi ptr [ %i.fxt, %bb.sa ], [ %.0456.i, %bb.ry ] ; 3 uses
  %.5.i = phi ptr [ %i.fxi, %bb.sa ], [ %.0455.i, %bb.ry ]
  %.not.i839.i2193 = select i1 %.not517.i, i1 true, i1 %.not.i839.i21933154
  br i1 %.not.i839.i2193, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i, label %select.unfold888.preheader

select.unfold888.preheader:                       ; preds = %bb.sb
  br i1 %lcmp.mod6081.not, label %select.unfold888.prol.loopexit, label %select.unfold888.prol

select.unfold888.prol:                            ; preds = %select.unfold888.preheader, %select.unfold888.prol
  %.0.i838.i2195.prol = phi ptr [ %i.fxw, %select.unfold888.prol ], [ %.6462.i, %select.unfold888.preheader ] ; 2 uses
  %.04.i837.i2194.prol = phi i64 [ %i.fxv, %select.unfold888.prol ], [ %.0470.i.ph, %select.unfold888.preheader ]
  %prol.iter6082 = phi i64 [ %prol.iter6082.next, %select.unfold888.prol ], [ 0, %select.unfold888.preheader ]
  %i.fxv = add i64 %.04.i837.i2194.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i838.i2195.prol, align 1
  %i.fxw = getelementptr inbounds nuw i8, ptr %.0.i838.i2195.prol, i64 %i.chk ; 3 uses
  %prol.iter6082.next = add i64 %prol.iter6082, 1 ; 2 uses
  %prol.iter6082.cmp.not = icmp eq i64 %prol.iter6082.next, %xtraiter6080
  br i1 %prol.iter6082.cmp.not, label %select.unfold888.prol.loopexit, label %select.unfold888.prol, !llvm.loop !369

select.unfold888.prol.loopexit:                   ; preds = %select.unfold888.prol, %select.unfold888.preheader
  %.lcssa5990.unr = phi ptr [ poison, %select.unfold888.preheader ], [ %i.fxw, %select.unfold888.prol ]
  %.0.i838.i2195.unr = phi ptr [ %.6462.i, %select.unfold888.preheader ], [ %i.fxw, %select.unfold888.prol ]
  %.04.i837.i2194.unr = phi i64 [ %.0470.i.ph, %select.unfold888.preheader ], [ %i.fxv, %select.unfold888.prol ]
  br i1 %i.cip, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i, label %select.unfold888

select.unfold888:                                 ; preds = %select.unfold888.prol.loopexit, %select.unfold888
  %.0.i838.i2195 = phi ptr [ %i.fyf, %select.unfold888 ], [ %.0.i838.i2195.unr, %select.unfold888.prol.loopexit ] ; 2 uses
  %.04.i837.i2194 = phi i64 [ %i.fye, %select.unfold888 ], [ %.04.i837.i2194.unr, %select.unfold888.prol.loopexit ]
  store i32 538976288, ptr %.0.i838.i2195, align 1
  %i.fxx = getelementptr inbounds nuw i8, ptr %.0.i838.i2195, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxx, align 1
  %i.fxy = getelementptr inbounds nuw i8, ptr %i.fxx, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxy, align 1
  %i.fxz = getelementptr inbounds nuw i8, ptr %i.fxy, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fxz, align 1
  %i.fya = getelementptr inbounds nuw i8, ptr %i.fxz, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fya, align 1
  %i.fyb = getelementptr inbounds nuw i8, ptr %i.fya, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fyb, align 1
  %i.fyc = getelementptr inbounds nuw i8, ptr %i.fyb, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fyc, align 1
  %i.fyd = getelementptr inbounds nuw i8, ptr %i.fyc, i64 %i.chk ; 2 uses
  %i.fye = add i64 %.04.i837.i2194, -8            ; 2 uses
  store i32 538976288, ptr %i.fyd, align 1
  %i.fyf = getelementptr inbounds nuw i8, ptr %i.fyd, i64 %i.chk ; 2 uses
  %.not.i839.i.7 = icmp eq i64 %i.fye, 0
  br i1 %.not.i839.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i, label %select.unfold888, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i: ; preds = %select.unfold888.prol.loopexit, %select.unfold888, %bb.sb
  %.0.i838.i.lcssa = phi ptr [ %.6462.i, %bb.sb ], [ %.lcssa5990.unr, %select.unfold888.prol.loopexit ], [ %i.fyf, %select.unfold888 ] ; 2 uses
  %i.fyg = load i64, ptr %.0454.i, align 8, !tbaa !79
  %i.fyh = and i64 %i.fyg, 24
  %i.fyi = icmp ne i64 %i.fyh, 0                  ; 2 uses
  %.1011 = select i1 %i.fyi, i64 11185797034612, i64 2863564006908262
  store i64 %.1011, ptr %.0.i838.i.lcssa, align 1
  %.neg.i.i195 = sext i1 %i.fyi to i64
  %i.fyj = getelementptr i8, ptr %.0.i838.i.lcssa, i64 %.neg.i.i195
  %i.fyk = getelementptr i8, ptr %i.fyj, i64 7
  br label %bb.sk

bb.sc:                                            ; preds = %bb.rx
  %i.fyl = trunc i64 %.0783 to i32
  %i.fym = and i32 %i.fyl, %i.cih
  %.not514.i = trunc nuw i32 %i.fym to i1         ; 2 uses
  %i.fyn = select i1 %.not514.i, i64 16, i64 %i.cik ; 2 uses
  %i.fyo = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.fyn
  %.not515.i = icmp ult ptr %i.fyo, %.0483.i
  br i1 %.not515.i, label %bb.sf, label %bb.sd, !prof !24

bb.sd:                                            ; preds = %bb.sc
  %i.fyp = lshr i64 %.0472.i, 1
  %i.fyq = tail call i64 @llvm.umax.i64(i64 %i.fyp, i64 %i.fyn)
  %i.fyr = add i64 %i.fyq, 15
  %i.fys = and i64 %i.fyr, -16
  %i.fyt = add i64 %i.fys, %.0472.i               ; 4 uses
  %i.fyu = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0455.i, i64 noundef %.0472.i, i64 noundef %i.fyt), !inline_history !350 ; 6 uses
  %.not516.i = icmp eq ptr %i.fyu, null
  br i1 %.not516.i, label %.loopexit1129, label %bb.se, !prof !7

bb.se:                                            ; preds = %bb.sd
  %i.fyv = ptrtoint ptr %.0494.i to i64
  %i.fyw = ptrtoint ptr %.0483.i to i64           ; 2 uses
  %i.fyx = sub i64 %i.fyv, %i.fyw                 ; 2 uses
  %i.fyy = sub i64 %i.fyt, %i.fyx
  %i.fyz = getelementptr inbounds nuw i8, ptr %i.fyu, i64 %i.fyy ; 2 uses
  %i.fza = ptrtoint ptr %.0455.i to i64           ; 2 uses
  %i.fzb = sub i64 %i.fyw, %i.fza
  %i.fzc = getelementptr inbounds i8, ptr %i.fyu, i64 %i.fzb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fyz, ptr nonnull align 1 %i.fzc, i64 %i.fyx, i1 false)
  %i.fzd = ptrtoint ptr %.0456.i to i64
  %i.fze = sub i64 %i.fzd, %i.fza
  %i.fzf = getelementptr inbounds i8, ptr %i.fyu, i64 %i.fze
  %i.fzg = getelementptr inbounds nuw i8, ptr %i.fyu, i64 %i.fyt
  br label %bb.sf

bb.sf:                                            ; preds = %bb.se, %bb.sc
  %.6500.i = phi ptr [ %i.fzg, %bb.se ], [ %.0494.i, %bb.sc ]
  %.6489.i = phi ptr [ %i.fyz, %bb.se ], [ %.0483.i, %bb.sc ]
  %.6478.i = phi i64 [ %i.fyt, %bb.se ], [ %.0472.i, %bb.sc ]
  %.7463.i = phi ptr [ %i.fzf, %bb.se ], [ %.0456.i, %bb.sc ] ; 3 uses
  %.6.i = phi ptr [ %i.fyu, %bb.se ], [ %.0455.i, %bb.sc ]
  %.not.i835.i2187 = select i1 %.not514.i, i1 true, i1 %.not.i835.i21873153
  br i1 %.not.i835.i2187, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i, label %select.unfold889.preheader

select.unfold889.preheader:                       ; preds = %bb.sf
  br i1 %lcmp.mod6078.not, label %select.unfold889.prol.loopexit, label %select.unfold889.prol

select.unfold889.prol:                            ; preds = %select.unfold889.preheader, %select.unfold889.prol
  %.0.i834.i2189.prol = phi ptr [ %i.fzi, %select.unfold889.prol ], [ %.7463.i, %select.unfold889.preheader ] ; 2 uses
  %.04.i833.i2188.prol = phi i64 [ %i.fzh, %select.unfold889.prol ], [ %.0470.i.ph, %select.unfold889.preheader ]
  %prol.iter6079 = phi i64 [ %prol.iter6079.next, %select.unfold889.prol ], [ 0, %select.unfold889.preheader ]
  %i.fzh = add i64 %.04.i833.i2188.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i834.i2189.prol, align 1
  %i.fzi = getelementptr inbounds nuw i8, ptr %.0.i834.i2189.prol, i64 %i.chk ; 3 uses
  %prol.iter6079.next = add i64 %prol.iter6079, 1 ; 2 uses
  %prol.iter6079.cmp.not = icmp eq i64 %prol.iter6079.next, %xtraiter6077
  br i1 %prol.iter6079.cmp.not, label %select.unfold889.prol.loopexit, label %select.unfold889.prol, !llvm.loop !370

select.unfold889.prol.loopexit:                   ; preds = %select.unfold889.prol, %select.unfold889.preheader
  %.lcssa5989.unr = phi ptr [ poison, %select.unfold889.preheader ], [ %i.fzi, %select.unfold889.prol ]
  %.0.i834.i2189.unr = phi ptr [ %.7463.i, %select.unfold889.preheader ], [ %i.fzi, %select.unfold889.prol ]
  %.04.i833.i2188.unr = phi i64 [ %.0470.i.ph, %select.unfold889.preheader ], [ %i.fzh, %select.unfold889.prol ]
  br i1 %i.cio, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i, label %select.unfold889

select.unfold889:                                 ; preds = %select.unfold889.prol.loopexit, %select.unfold889
  %.0.i834.i2189 = phi ptr [ %i.fzr, %select.unfold889 ], [ %.0.i834.i2189.unr, %select.unfold889.prol.loopexit ] ; 2 uses
  %.04.i833.i2188 = phi i64 [ %i.fzq, %select.unfold889 ], [ %.04.i833.i2188.unr, %select.unfold889.prol.loopexit ]
  store i32 538976288, ptr %.0.i834.i2189, align 1
  %i.fzj = getelementptr inbounds nuw i8, ptr %.0.i834.i2189, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzj, align 1
  %i.fzk = getelementptr inbounds nuw i8, ptr %i.fzj, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzk, align 1
  %i.fzl = getelementptr inbounds nuw i8, ptr %i.fzk, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzl, align 1
  %i.fzm = getelementptr inbounds nuw i8, ptr %i.fzl, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzm, align 1
  %i.fzn = getelementptr inbounds nuw i8, ptr %i.fzm, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzn, align 1
  %i.fzo = getelementptr inbounds nuw i8, ptr %i.fzn, i64 %i.chk ; 2 uses
  store i32 538976288, ptr %i.fzo, align 1
  %i.fzp = getelementptr inbounds nuw i8, ptr %i.fzo, i64 %i.chk ; 2 uses
  %i.fzq = add i64 %.04.i833.i2188, -8            ; 2 uses
  store i32 538976288, ptr %i.fzp, align 1
  %i.fzr = getelementptr inbounds nuw i8, ptr %i.fzp, i64 %i.chk ; 2 uses
  %.not.i835.i.7 = icmp eq i64 %i.fzq, 0
  br i1 %.not.i835.i.7, label %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i, label %select.unfold889, !llvm.loop !305

_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i: ; preds = %select.unfold889.prol.loopexit, %select.unfold889, %bb.sf
  %.0.i834.i.lcssa = phi ptr [ %.7463.i, %bb.sf ], [ %.lcssa5989.unr, %select.unfold889.prol.loopexit ], [ %i.fzr, %select.unfold889 ] ; 2 uses
  store i64 11185913886062, ptr %.0.i834.i.lcssa, align 1
  %i.fzs = getelementptr inbounds nuw i8, ptr %.0.i834.i.lcssa, i64 6
  br label %bb.sk

bb.sg:                                            ; preds = %bb.rx
  %i.fzt = lshr i64 %i.cir, 8                     ; 3 uses
  %i.fzu = getelementptr inbounds nuw i8, ptr %.0454.i, i64 8
  %i.fzv = load ptr, ptr %i.fzu, align 8, !tbaa !81
  %i.fzw = add nuw nsw i64 %i.fzt, 3              ; 2 uses
  %i.fzx = getelementptr inbounds nuw i8, ptr %.0456.i, i64 %i.fzw
  %.not512.i = icmp ult ptr %i.fzx, %.0483.i
  br i1 %.not512.i, label %bb.sj, label %bb.sh, !prof !24

bb.sh:                                            ; preds = %bb.sg
  %i.fzy = lshr i64 %.0472.i, 1
  %i.fzz = tail call i64 @llvm.umax.i64(i64 %i.fzy, i64 %i.fzw)
  %i.gaa = add nuw i64 %i.fzz, 15
  %i.gab = and i64 %i.gaa, -16
  %i.gac = add i64 %i.gab, %.0472.i               ; 4 uses
  %i.gad = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.0455.i, i64 noundef %.0472.i, i64 noundef %i.gac), !inline_history !350 ; 6 uses
  %.not513.i = icmp eq ptr %i.gad, null
  br i1 %.not513.i, label %.loopexit1129, label %bb.si, !prof !7

bb.si:                                            ; preds = %bb.sh
  %i.gae = ptrtoint ptr %.0494.i to i64
  %i.gaf = ptrtoint ptr %.0483.i to i64           ; 2 uses
  %i.gag = sub i64 %i.gae, %i.gaf                 ; 2 uses
  %i.gah = sub i64 %i.gac, %i.gag
  %i.gai = getelementptr inbounds nuw i8, ptr %i.gad, i64 %i.gah ; 2 uses
  %i.gaj = ptrtoint ptr %.0455.i to i64           ; 2 uses
  %i.gak = sub i64 %i.gaf, %i.gaj
  %i.gal = getelementptr inbounds i8, ptr %i.gad, i64 %i.gak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gai, ptr nonnull align 1 %i.gal, i64 %i.gag, i1 false)
  %i.gam = ptrtoint ptr %.0456.i to i64
  %i.gan = sub i64 %i.gam, %i.gaj
  %i.gao = getelementptr inbounds i8, ptr %i.gad, i64 %i.gan
  %i.gap = getelementptr inbounds nuw i8, ptr %i.gad, i64 %i.gac
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sg
  %.7501.i = phi ptr [ %i.gap, %bb.si ], [ %.0494.i, %bb.sg ]
  %.7490.i = phi ptr [ %i.gai, %bb.si ], [ %.0483.i, %bb.sg ]
  %.7479.i = phi i64 [ %i.gac, %bb.si ], [ %.0472.i, %bb.sg ]
  %.8464.i = phi ptr [ %i.gao, %bb.si ], [ %.0456.i, %bb.sg ] ; 2 uses
  %.7.i = phi ptr [ %i.gad, %bb.si ], [ %.0455.i, %bb.sg ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.8464.i, ptr align 1 %i.fzv, i64 range(i64 0, 72057594037927936) %i.fzt, i1 false)
  %i.gaq = getelementptr inbounds nuw i8, ptr %.8464.i, i64 %i.fzt ; 3 uses
  %i.gar = getelementptr inbounds nuw i8, ptr %i.gaq, i64 1
  store i8 44, ptr %i.gaq, align 1, !tbaa !81
  %i.gas = getelementptr inbounds nuw i8, ptr %i.gaq, i64 2
  store i8 10, ptr %i.gar, align 1, !tbaa !81
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i
  %.8502.i = phi ptr [ %.1495.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i ], [ %.2496.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread ], [ %.3497.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i ], [ %.5499.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i ], [ %.6500.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i ], [ %.7501.i, %bb.sj ] ; 2 uses
  %.8491.i = phi ptr [ %.1484.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i ], [ %.2485.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread ], [ %.3486.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i ], [ %.5488.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i ], [ %.6489.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i ], [ %.7490.i, %bb.sj ] ; 2 uses
  %.8480.i = phi i64 [ %.1473.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i ], [ %.2474.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread ], [ %.3475.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i ], [ %.5477.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i ], [ %.6478.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i ], [ %.7479.i, %bb.sj ] ; 2 uses
  %.9465.i = phi ptr [ %i.dns, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i ], [ %i.fti, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread ], [ %i.fvb, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i ], [ %i.fyk, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i ], [ %i.fzs, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i ], [ %i.gas, %bb.sj ] ; 2 uses
  %.8.i = phi ptr [ %.1.i, %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit657.i ], [ %.2.i, %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread ], [ %.3.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit848.i ], [ %.5.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit840.i ], [ %.6.i, %_ZN13duckdb_yyjsonL12write_indentEPhmm.exit836.i ], [ %.7.i, %bb.sj ] ; 2 uses
  %i.gat = add i64 %.0783, -1                     ; 2 uses
  %i.gau = icmp eq i64 %i.gat, 0
  br i1 %i.gau, label %.preheader1128.preheader, label %bb.sl, !prof !7

.preheader1128.preheader:                         ; preds = %bb.sk
  %i.gav = add i64 %.0470.i.ph, -2
  br label %.preheader1128

bb.sl:                                            ; preds = %bb.sk
  %i.gaw = getelementptr inbounds nuw i8, ptr %.0454.i, i64 16
  %i.gax = load ptr, ptr %i.gaw, align 8, !tbaa !85
  br label %bb.ir

.preheader1128:                                   ; preds = %.preheader1128.preheader, %bb.sp
  %indvar = phi i64 [ 0, %.preheader1128.preheader ], [ %indvar.next, %bb.sp ] ; 3 uses
  %.1785 = phi i8 [ %.0784.ph, %.preheader1128.preheader ], [ %i.gcs, %bb.sp ]
  %.1782 = phi ptr [ %.0781.ph, %.preheader1128.preheader ], [ %i.gcu, %bb.sp ]
  %.9503.i = phi ptr [ %.8502.i, %.preheader1128.preheader ], [ %.10504.i, %bb.sp ] ; 2 uses
  %.9492.i = phi ptr [ %.8491.i, %.preheader1128.preheader ], [ %i.gco, %bb.sp ] ; 3 uses
  %.9481.i = phi i64 [ %.8480.i, %.preheader1128.preheader ], [ %.10482.i, %bb.sp ] ; 4 uses
  %.1471.i = phi i64 [ %.0470.i.ph, %.preheader1128.preheader ], [ %i.gbw, %bb.sp ] ; 2 uses
  %.10466.i = phi ptr [ %.9465.i, %.preheader1128.preheader ], [ %i.gcx, %bb.sp ] ; 2 uses
  %.9.i = phi ptr [ %.8.i, %.preheader1128.preheader ], [ %.10.i, %bb.sp ] ; 4 uses
  %i.gay = sub i64 %i.cil, %indvar
  %i.gaz = sub i64 %i.gav, %indvar
  %i.gba = getelementptr inbounds i8, ptr %.10466.i, i64 -2
  %i.gbb = getelementptr inbounds i8, ptr %.10466.i, i64 -1 ; 3 uses
  store i8 10, ptr %i.gba, align 1, !tbaa !81
  %i.gbc = shl i64 %.1471.i, 2                    ; 2 uses
  %i.gbd = getelementptr inbounds nuw i8, ptr %i.gbb, i64 %i.gbc
  %.not539.i = icmp ult ptr %i.gbd, %.9492.i
  br i1 %.not539.i, label %bb.so, label %bb.sm, !prof !24

bb.sm:                                            ; preds = %.preheader1128
  %i.gbe = lshr i64 %.9481.i, 1
  %i.gbf = tail call i64 @llvm.umax.i64(i64 %i.gbe, i64 %i.gbc)
  %i.gbg = add i64 %i.gbf, 15
  %i.gbh = and i64 %i.gbg, -16
  %i.gbi = add i64 %i.gbh, %.9481.i               ; 4 uses
  %i.gbj = tail call noundef ptr %.sroa.6493.0.copyload(ptr noundef %.sroa.8.0.copyload, ptr noundef %.9.i, i64 noundef %.9481.i, i64 noundef %i.gbi), !inline_history !350 ; 6 uses
  %.not540.i = icmp eq ptr %i.gbj, null
  br i1 %.not540.i, label %.loopexit1129, label %bb.sn, !prof !7

bb.sn:                                            ; preds = %bb.sm
  %i.gbk = ptrtoint ptr %.9503.i to i64
  %i.gbl = ptrtoint ptr %.9492.i to i64           ; 2 uses
  %i.gbm = sub i64 %i.gbk, %i.gbl                 ; 2 uses
  %i.gbn = sub i64 %i.gbi, %i.gbm
  %i.gbo = getelementptr inbounds nuw i8, ptr %i.gbj, i64 %i.gbn ; 2 uses
  %i.gbp = ptrtoint ptr %.9.i to i64              ; 2 uses
  %i.gbq = sub i64 %i.gbl, %i.gbp
  %i.gbr = getelementptr inbounds i8, ptr %i.gbj, i64 %i.gbq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gbo, ptr nonnull align 1 %i.gbr, i64 %i.gbm, i1 false)
  %i.gbs = ptrtoint ptr %i.gbb to i64
  %i.gbt = sub i64 %i.gbs, %i.gbp
  %i.gbu = getelementptr inbounds i8, ptr %i.gbj, i64 %i.gbt
end_hunk_5
