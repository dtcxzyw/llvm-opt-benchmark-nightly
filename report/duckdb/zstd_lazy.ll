inline.NumInlined: 1254
inline.NumDeleted: 36
begin_hunk_0_@_ZN11duckdb_zstd23ZSTD_compressBlock_lazyEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef captures(none) initializes((300, 304)) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 22 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.neg.i = sub i64 %i.aa, %i.z
  %.neg516.i = trunc i64 %.neg.i to i32
  %i.ab = add i32 %i.h, %.neg516.i                ; 3 uses
  %5 = ptrtoint ptr %3 to i64                     ; 2 uses
  %i.ac = ptrtoint ptr %i.j to i64
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = add i64 %i.ac, %i.ad
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph164, %.critedge9.i
  %.0.i163 = phi ptr [ %i.an, %.lr.ph164 ], [ %.7.i, %.critedge9.i ] ; 10 uses
  %.0409.i162 = phi ptr [ %3, %.lr.ph164 ], [ %.6415.i, %.critedge9.i ] ; 11 uses
  %.2418.i161 = phi i32 [ %i.n, %.lr.ph164 ], [ %.9.i, %.critedge9.i ] ; 5 uses
  %.2426.i160 = phi i32 [ %i.p, %.lr.ph164 ], [ %.9433.i, %.critedge9.i ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0.i163, i64 1 ; 2 uses
  %7 = ptrtoint ptr %.0.i163 to i64               ; 2 uses
  %i.ba = sub i64 %7, %i.ao
  %i.bb = trunc i64 %i.ba to i32
  %reass.sub = sub i32 %i.bb, %.2418.i161
  %i.bc = add i32 %reass.sub, 1                   ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.0449.i = select i1 %i.bx, i64 %i.bv, i64 1    ; 2 uses
  %.0465.i = select i1 %i.bx, ptr %.0.i163, ptr %6 ; 2 uses
  %i.by = icmp ult ptr %.0.i163, %i.d
  br i1 %i.by, label %.lr.ph, label %.loopexit

bb.i:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit6
  %i.bz = ptrtoint ptr %.0409.i162 to i64
  %i.ca = sub i64 %7, %i.bz                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i163, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  store i32 %i.cf, ptr %i.ak, align 4, !tbaa !44
  br label %.critedge9.i

.lr.ph:                                           ; preds = %.preheader, %bb.ap
  %.1.i131 = phi ptr [ %i.cg, %bb.ap ], [ %.0.i163, %.preheader ] ; 2 uses
  %.5444.i130 = phi i64 [ %.0.i4, %bb.ap ], [ %.4443.i, %.preheader ] ; 5 uses
  %.1450.i129 = phi i64 [ %i.fz, %bb.ap ], [ %.0449.i, %.preheader ] ; 5 uses
  %.1466.i128 = phi ptr [ %i.cg, %bb.ap ], [ %.0465.i, %.preheader ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1.i131, i64 1 ; 10 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.ao
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %8 = icmp ult ptr %i.cg, %i.d
  br i1 %8, label %.lr.ph, label %.loopexit

bb.aq:                                            ; preds = %bb.ao, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef captures(none) initializes((300, 304)) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 22 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.neg.i = sub i64 %i.aa, %i.z
  %.neg516.i = trunc i64 %.neg.i to i32
  %i.ab = add i32 %i.h, %.neg516.i                ; 3 uses
  %5 = ptrtoint ptr %3 to i64                     ; 2 uses
  %i.ac = ptrtoint ptr %i.j to i64
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = add i64 %i.ac, %i.ad
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph164, %.critedge9.i
  %.0.i163 = phi ptr [ %i.an, %.lr.ph164 ], [ %.7.i, %.critedge9.i ] ; 10 uses
  %.0409.i162 = phi ptr [ %3, %.lr.ph164 ], [ %.6415.i, %.critedge9.i ] ; 11 uses
  %.2418.i161 = phi i32 [ %i.n, %.lr.ph164 ], [ %.9.i, %.critedge9.i ] ; 5 uses
  %.2426.i160 = phi i32 [ %i.p, %.lr.ph164 ], [ %.9433.i, %.critedge9.i ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0.i163, i64 1 ; 2 uses
  %7 = ptrtoint ptr %.0.i163 to i64               ; 2 uses
  %i.ba = sub i64 %7, %i.ao
  %i.bb = trunc i64 %i.ba to i32
  %reass.sub = sub i32 %i.bb, %.2418.i161
  %i.bc = add i32 %reass.sub, 1                   ; 4 uses
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.0449.i = select i1 %i.bx, i64 %i.bv, i64 1    ; 2 uses
  %.0465.i = select i1 %i.bx, ptr %.0.i163, ptr %6 ; 2 uses
  %i.by = icmp ult ptr %.0.i163, %i.d
  br i1 %i.by, label %.lr.ph, label %.loopexit

bb.i:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit6
  %i.bz = ptrtoint ptr %.0409.i162 to i64
  %i.ca = sub i64 %7, %i.bz                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i163, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  store i32 %i.cf, ptr %i.ak, align 4, !tbaa !44
  br label %.critedge9.i

.lr.ph:                                           ; preds = %.preheader, %bb.ap
  %.1.i131 = phi ptr [ %i.cg, %bb.ap ], [ %.0.i163, %.preheader ] ; 2 uses
  %.5444.i130 = phi i64 [ %.0.i4, %bb.ap ], [ %.4443.i, %.preheader ] ; 5 uses
  %.1450.i129 = phi i64 [ %i.fz, %bb.ap ], [ %.0449.i, %.preheader ] ; 5 uses
  %.1466.i128 = phi ptr [ %i.cg, %bb.ap ], [ %.0465.i, %.preheader ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1.i131, i64 1 ; 10 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.ao
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %8 = icmp ult ptr %i.cg, %i.d
  br i1 %8, label %.lr.ph, label %.loopexit

bb.aq:                                            ; preds = %bb.ao, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstd27ZSTD_compressBlock_lazy_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef captures(none) initializes((300, 304)) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 34 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.neg.i = sub i64 %i.ae, %i.ad
  %.neg516.i = trunc i64 %.neg.i to i32
  %i.af = add i32 %i.h, %.neg516.i                ; 3 uses
  %5 = ptrtoint ptr %3 to i64                     ; 2 uses
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = add i64 %i.ag, %i.ah
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph193, %.critedge9.i
  %.0.i192 = phi ptr [ %i.ao, %.lr.ph193 ], [ %.7.i, %.critedge9.i ] ; 16 uses
  %.0409.i191 = phi ptr [ %3, %.lr.ph193 ], [ %.6415.i, %.critedge9.i ] ; 11 uses
  %.2418.i190 = phi i32 [ %i.r, %.lr.ph193 ], [ %.9.i, %.critedge9.i ] ; 5 uses
  %.2426.i189 = phi i32 [ %i.t, %.lr.ph193 ], [ %.9433.i, %.critedge9.i ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0.i192, i64 1 ; 2 uses
  %7 = ptrtoint ptr %.0.i192 to i64               ; 2 uses
  %i.hp = sub i64 %7, %i.gz
  %i.hq = trunc i64 %i.hp to i32
  %reass.sub = sub i32 %i.hq, %.2418.i190
  %i.hr = add i32 %reass.sub, 1                   ; 4 uses
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.0449.i = select i1 %i.is, i64 %i.iq, i64 1    ; 2 uses
  %.0465.i = select i1 %i.is, ptr %.0.i192, ptr %6 ; 2 uses
  %i.it = icmp ult ptr %.0.i192, %i.d
  br i1 %i.it, label %.lr.ph158, label %.loopexit

bb.x:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit13
  %i.iu = ptrtoint ptr %.0409.i191 to i64
  %i.iv = sub i64 %7, %i.iu                       ; 2 uses
  %i.iw = lshr i64 %i.iv, 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i192, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
end_hunk_15
begin_hunk_16_@_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  store i32 %i.ja, ptr %i.ap, align 4, !tbaa !44
  br label %.critedge9.i

.lr.ph158:                                        ; preds = %.preheader, %bb.bn
  %.1.i157 = phi ptr [ %i.jb, %bb.bn ], [ %.0.i192, %.preheader ] ; 2 uses
  %.5444.i156 = phi i64 [ %.0.i11, %bb.bn ], [ %.4443.i, %.preheader ] ; 5 uses
  %.1450.i155 = phi i64 [ %i.na, %bb.bn ], [ %.0449.i, %.preheader ] ; 5 uses
  %.1466.i154 = phi ptr [ %i.jb, %bb.bn ], [ %.0465.i, %.preheader ] ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1.i157, i64 1 ; 16 uses
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.gz
end_hunk_16
begin_hunk_17_@_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %8 = icmp ult ptr %i.jb, %i.d
  br i1 %8, label %.lr.ph158, label %.loopexit

bb.bo:                                            ; preds = %bb.bm, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_17
begin_hunk_18_@_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef captures(none) initializes((300, 304)) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 34 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_18
begin_hunk_19_@_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.neg.i = sub i64 %i.ae, %i.ad
  %.neg516.i = trunc i64 %.neg.i to i32
  %i.af = add i32 %i.h, %.neg516.i                ; 3 uses
  %5 = ptrtoint ptr %3 to i64                     ; 2 uses
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = add i64 %i.ag, %i.ah
end_hunk_19
begin_hunk_20_@_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph193, %.critedge9.i
  %.0.i192 = phi ptr [ %i.ao, %.lr.ph193 ], [ %.7.i, %.critedge9.i ] ; 16 uses
  %.0409.i191 = phi ptr [ %3, %.lr.ph193 ], [ %.6415.i, %.critedge9.i ] ; 11 uses
  %.2418.i190 = phi i32 [ %i.r, %.lr.ph193 ], [ %.9.i, %.critedge9.i ] ; 5 uses
  %.2426.i189 = phi i32 [ %i.t, %.lr.ph193 ], [ %.9433.i, %.critedge9.i ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.0.i192, i64 1 ; 2 uses
  %7 = ptrtoint ptr %.0.i192 to i64               ; 2 uses
  %i.hp = sub i64 %7, %i.gz
  %i.hq = trunc i64 %i.hp to i32
  %reass.sub = sub i32 %i.hq, %.2418.i190
  %i.hr = add i32 %reass.sub, 1                   ; 4 uses
end_hunk_20
begin_hunk_21_@_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  %.0449.i = select i1 %i.is, i64 %i.iq, i64 1    ; 2 uses
  %.0465.i = select i1 %i.is, ptr %.0.i192, ptr %6 ; 2 uses
  %i.it = icmp ult ptr %.0.i192, %i.d
  br i1 %i.it, label %.lr.ph158, label %.loopexit

bb.x:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit13
  %i.iu = ptrtoint ptr %.0409.i191 to i64
  %i.iv = sub i64 %7, %i.iu                       ; 2 uses
  %i.iw = lshr i64 %i.iv, 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i192, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
end_hunk_21
begin_hunk_22_@_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a
  store i32 %i.ja, ptr %i.ap, align 4, !tbaa !44
  br label %.critedge9.i

.lr.ph158:                                        ; preds = %.preheader, %bb.bn
  %.1.i157 = phi ptr [ %i.jb, %bb.bn ], [ %.0.i192, %.preheader ] ; 2 uses
  %.5444.i156 = phi i64 [ %.0.i11, %bb.bn ], [ %.4443.i, %.preheader ] ; 5 uses
  %.1450.i155 = phi i64 [ %i.na, %bb.bn ], [ %.0449.i, %.preheader ] ; 5 uses
  %.1466.i154 = phi ptr [ %i.jb, %bb.bn ], [ %.0465.i, %.preheader ] ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.1.i157, i64 1 ; 16 uses
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.gz
end_hunk_22
begin_hunk_23_@_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm:bb.a

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %8 = icmp ult ptr %i.jb, %i.d
  br i1 %8, label %.lr.ph158, label %.loopexit

bb.bo:                                            ; preds = %bb.bm, %_ZN11duckdb_zstdL14ZSTD_searchMaxEPNS_17ZSTD_matchState_tEPKhS3_PmjjNS_14searchMethod_eENS_15ZSTD_dictMode_eE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_23
