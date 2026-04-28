inline.NumInlined: 2106
inline.NumDeleted: 554
begin_hunk_0_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %5 = and i64 %i.bg, -4294967296
  %6 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %7 = load atomic volatile i64, ptr %6 monotonic, align 8
  %i.bh = add i64 %7, %5
  %i.bi = ashr i64 %i.bh, 32                      ; 2 uses
  %.not127129 = icmp eq i64 %i.bi, 0
  br i1 %.not127129, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a
  %i.df = load i64, ptr %i.p, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  %8 = add i64 %i.de, 12884901888
  %9 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.di = ashr i64 %8, 32
  %i.dj = getelementptr inbounds [8 x i8], ptr %9, i64 %i.di ; 2 uses
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8 ; 5 uses
  %i.dl = sext i32 %.034132 to i64
  %i.dm = shl nsw i64 %i.dl, 32
end_hunk_1
begin_hunk_2_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %5 = and i64 %i.bg, -4294967296
  %6 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %7 = load atomic volatile i64, ptr %6 monotonic, align 8
  %i.bh = add i64 %7, %5
  %i.bi = ashr i64 %i.bh, 32                      ; 2 uses
  %.not136138 = icmp eq i64 %i.bi, 0
  br i1 %.not136138, label %._crit_edge, label %.lr.ph
end_hunk_2
begin_hunk_3_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashSetELi1EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  %i.df = load i64, ptr %i.p, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  %8 = add i64 %i.de, 12884901888
  %9 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.di = ashr i64 %8, 32
  %i.dj = getelementptr inbounds [8 x i8], ptr %9, i64 %i.di ; 2 uses
  %i.dk = load atomic volatile i64, ptr %i.dj monotonic, align 8 ; 5 uses
  %i.dl = sext i32 %.035141 to i64
  %i.dm = shl nsw i64 %i.dl, 32
end_hunk_3
begin_hunk_4_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %5 = and i64 %i.bg, -4294967296
  %6 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %7 = load atomic volatile i64, ptr %6 monotonic, align 8
  %i.bh = add i64 %7, %5
  %i.bi = ashr i64 %i.bh, 32                      ; 2 uses
  %.not127130 = icmp eq i64 %i.bi, 0
  br i1 %.not127130, label %._crit_edge, label %.lr.ph
end_hunk_4
begin_hunk_5_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a
  %i.dc = load i64, ptr %i.p, align 8
  %i.dd = add i64 %i.dc, -1
  %i.de = inttoptr i64 %i.dd to ptr
  %8 = add i64 %i.db, 12884901888
  %9 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.df = ashr i64 %8, 32
  %i.dg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.df ; 2 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8 ; 5 uses
  %i.di = sext i32 %.034133 to i64
  %i.dj = shl nsw i64 %i.di, 32
end_hunk_5
begin_hunk_6_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %5 = and i64 %i.bg, -4294967296
  %6 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %7 = load atomic volatile i64, ptr %6 monotonic, align 8
  %i.bh = add i64 %7, %5
  %i.bi = ashr i64 %i.bh, 32                      ; 2 uses
  %.not136139 = icmp eq i64 %i.bi, 0
  br i1 %.not136139, label %._crit_edge, label %.lr.ph
end_hunk_6
begin_hunk_7_@_ZN2v88internal16OrderedHashTableINS0_14OrderedHashMapELi2EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  %i.dc = load i64, ptr %i.p, align 8
  %i.dd = add i64 %i.dc, -1
  %i.de = inttoptr i64 %i.dd to ptr
  %8 = add i64 %i.db, 12884901888
  %9 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.df = ashr i64 %8, 32
  %i.dg = getelementptr inbounds [8 x i8], ptr %9, i64 %i.df ; 2 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8 ; 5 uses
  %i.di = sext i32 %.035142 to i64
  %i.dj = shl nsw i64 %i.di, 32
end_hunk_7
begin_hunk_8_@_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %4 = and i64 %i.p, -4294967296
  %5 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %6 = load atomic volatile i64, ptr %5 monotonic, align 8
  %i.q = add i64 %6, %4
  %i.r = ashr i64 %i.q, 32                        ; 2 uses
  %.not124127 = icmp eq i64 %i.r, 0
  br i1 %.not124127, label %._crit_edge, label %.lr.ph
end_hunk_8
begin_hunk_9_@_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6RehashINS0_6HandleEQsr3stdE16is_convertible_vITL0__IT_ENS0_12DirectHandleIS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESC_i:bb.a
  %i.bo = load i64, ptr %i.f, align 8
  %i.bp = add i64 %i.bo, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %7 = add i64 %i.bn, 17179869184
  %8 = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.br = ashr i64 %7, 32
  %i.bs = getelementptr inbounds [8 x i8], ptr %8, i64 %i.br ; 2 uses
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8 ; 5 uses
  %i.bu = sext i32 %.034130 to i64
  %i.bv = shl nsw i64 %i.bu, 32
end_hunk_9
begin_hunk_10_@_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %4 = and i64 %i.p, -4294967296
  %5 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %6 = load atomic volatile i64, ptr %5 monotonic, align 8
  %i.q = add i64 %6, %4
  %i.r = ashr i64 %i.q, 32                        ; 2 uses
  %.not133136 = icmp eq i64 %i.r, 0
  br i1 %.not133136, label %._crit_edge, label %.lr.ph
end_hunk_10
begin_hunk_11_@_ZN2v88internal16OrderedHashTableINS0_21OrderedNameDictionaryELi3EE6RehashINS0_12DirectHandleEQsr3stdE16is_convertible_vITL0__IT_ENS5_IS7_EEEEENT_IS2_E9MaybeTypeEPNS0_7IsolateESB_i:bb.a
  %i.bo = load i64, ptr %i.f, align 8
  %i.bp = add i64 %i.bo, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %7 = add i64 %i.bn, 17179869184
  %8 = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.br = ashr i64 %7, 32
  %i.bs = getelementptr inbounds [8 x i8], ptr %8, i64 %i.br ; 2 uses
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8 ; 5 uses
  %i.bu = sext i32 %.035139 to i64
  %i.bv = shl nsw i64 %i.bu, 32
end_hunk_11
begin_hunk_12_@_ZN2v88internal14OrderedHashSet18ConvertToKeysArrayEPNS0_7IsolateENS0_6HandleIS1_EENS0_17GetKeysConversionE:bb.a
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal16HeapObjectLayout7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit
  %3 = add i64 %i.i, 12884901888
  %4 = icmp eq i32 %2, 0
  %i.w = ashr i64 %3, 32                          ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us ], [ 0, %.lr.ph ] ; 4 uses
end_hunk_12
